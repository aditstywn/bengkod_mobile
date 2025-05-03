// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';

import '../../../../core/config/location_service.dart';
import '../../data/models/request/scan_qr_request_model.dart';
import '../bloc/scanQr/scan_qr_bloc.dart';
import '../widgets/scaner_barcode_label.dart';
import '../widgets/scaner_error_widget.dart';
import '../widgets/scaner_widget_button.dart';

class ScanerPage extends StatefulWidget {
  const ScanerPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ScanerPage> createState() => _ScanerPageState();
}

class _ScanerPageState extends State<ScanerPage> {
  final LocationService _loc = LocationService();
  Position? currentPosition;

  Future<void> _getCurrentLocation() async {
    try {
      final position = await _loc.getCurrentLocation();
      setState(() {
        currentPosition = position;
      });
    } catch (e) {
      if (mounted) {
        context.pop();
        context.showAlert(
          false,
          'Gagal mendapatkan lokasi, silahkan aktifkan GPS dan coba lagi',
        );
      }
    }
  }

  @override
  void initState() {
    _getCurrentLocation();
    super.initState();
  }

  final MobileScannerController controller = MobileScannerController(
    torchEnabled: false,
    formats: [BarcodeFormat.qrCode],
  );

  double _zoomFactor = 0.0;

  Widget _buildZoomScaleSlider() {
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (context, state, child) {
        if (!state.isInitialized || !state.isRunning) {
          return const SizedBox.shrink();
        }

        final TextStyle labelStyle =
            Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.white,
                  fontSize: 20,
                );

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            children: [
              Text(
                '${(_zoomFactor * 100).toStringAsFixed(0)}%',
                overflow: TextOverflow.fade,
                style: labelStyle,
              ),
              Expanded(
                child: Slider(
                  value: _zoomFactor,
                  min: 0.0,
                  max: 1.0,
                  onChanged: (value) {
                    setState(() {
                      _zoomFactor = value;
                      controller.setZoomScale(value);
                    });
                  },
                ),
              ),
              Text(
                '100%',
                overflow: TextOverflow.fade,
                style: labelStyle,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocConsumer<ScanQrBloc, ScanQrState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            scanQrSuccess: (scanQrResponseModel) {
              context.pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Center(
                    child: Text(
                      'Scan QR Success',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  behavior: SnackBarBehavior.floating,
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 16,
                    right: 16,
                    bottom: 80,
                  ),
                ),
              );
            },
            error: (message) {
              context.pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Center(
                    child: Text(
                      message,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  behavior: SnackBarBehavior.floating,
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 16,
                    right: 16,
                    bottom: 80,
                  ),
                ),
              );
            },
          );
        },
        builder: (context, state) {
          String? lastQrValue;
          return state.maybeWhen(
            orElse: () {
              return Stack(
                children: [
                  MobileScanner(
                    controller: controller,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, child) {
                      return ScannerErrorWidget(error: error);
                    },
                    onDetect: (barcodes) {
                      if (barcodes.barcodes.isNotEmpty) {
                        if (lastQrValue !=
                            barcodes.barcodes.first.displayValue) {
                          lastQrValue = barcodes.barcodes.first.displayValue;
                          print(
                            'Barcode found! ${barcodes.barcodes.first.displayValue}',
                          );

                          final scanQr = ScanQrRequestModel(
                            code: barcodes.barcodes.first.displayValue ?? '',
                            longitude: currentPosition?.longitude ?? 0.0,
                            latitude: currentPosition?.latitude ?? 0.0,
                          );
                          context.read<ScanQrBloc>().add(
                                ScanQrEvent.scanQr(
                                  scanQr,
                                ),
                              );
                        }
                      }
                    },
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 150,
                      color: Colors.black.withOpacity(0.4),
                      child: Column(
                        children: [
                          if (!kIsWeb) _buildZoomScaleSlider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ToggleFlashlightButton(controller: controller),
                              SwitchCameraButton(controller: controller),
                            ],
                          ),
                          Expanded(
                            child: Center(
                              child: ScannedBarcodeLabel(
                                barcodes: controller.barcodes,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    await controller.dispose();
  }
}
