import 'dart:io';

import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/components/buttons.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../data/models/request/izin_request_model.dart';
import '../../data/models/response/presences_response_model.dart';
import '../bloc/absence/absence_bloc.dart';
import '../widgets/izin_text_field.dart';

class IzinPage extends StatefulWidget {
  final PresencesDatum presence;
  final String className;
  const IzinPage({
    super.key,
    required this.presence,
    required this.className,
  });

  @override
  State<IzinPage> createState() => _IzinPageState();
}

class _IzinPageState extends State<IzinPage> {
  FilePickerResult? file;
  String _result = 'Upload File';
  final TextEditingController catatanController = TextEditingController();
  String? selectedKeteranganIzin;

  @override
  void dispose() {
    catatanController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Izin'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          IzinTextField(
            label: 'Kelas',
            value: widget.className,
          ),
          const SpaceHeight(16),
          IzinTextField(
            label: 'Pertemuan',
            value: 'Pertemuan ke-${widget.presence.week}',
          ),
          const SpaceHeight(16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30,
                width: 130,
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Keterangan Izin',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: ['Sakit', 'Izin', 'Lainnya'].map((String value) {
                    return Expanded(
                      child: RadioListTile<String>(
                        title: Text(
                          value,
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontSize: 15,
                          ),
                        ),
                        value: value.toUpperCase(),
                        groupValue: selectedKeteranganIzin,
                        onChanged: (String? value) {
                          setState(() {
                            selectedKeteranganIzin = value;
                          });
                        },
                        dense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 0.0,
                        ),
                        visualDensity: const VisualDensity(
                          horizontal: -4.0,
                          vertical: 0,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SpaceHeight(16),
              IzinTextField(
                controller: catatanController,
                label: 'Catatan',
                hintText: 'Masukkan catatan izin...',
              ),
            ],
          ),
          const SpaceHeight(16),
          const Text(
            'Upload File',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
          const SpaceHeight(10),
          Button.outlined(
            onPressed: () async {
              file = await FilePicker.platform.pickFiles(allowMultiple: false);
              setState(() {
                _result = file != null
                    ? file!.files.map((element) => element.name).join(", ")
                    : "Upload File";
              });
              print('imgPath: ${_result}');
            },
            label: _result,
            icon: SvgPicture.asset('assets/icons/icons_fileUpload.svg'),
            height: 90,
            color: Colors.transparent,
          ),
          const SpaceHeight(16),
          BlocConsumer<AbsenceBloc, AbsenceState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                absenceSuccess: (absenceResponseModel) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Izin berhasil dikirim'),
                      backgroundColor: AppColors.green,
                    ),
                  );
                  context.pop();
                },
                error: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: AppColors.red,
                    ),
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () {
                  return Button.filled(
                    onPressed: () {},
                    label: 'Loading...',
                    isLoading: true,
                  );
                },
                orElse: () {
                  return Button.filled(
                    onPressed: file != null
                        ? widget.presence.id != null
                            ? () {
                                final fileIzin = File(file!.files.single.path!);

                                if (selectedKeteranganIzin == null) {
                                  context.showAlert(
                                    false,
                                    'Pilih keterangan izin',
                                    50,
                                  );
                                  return;
                                }
                                final izin = IzinRequestModel(
                                  presenceId: widget.presence.id!,
                                  absenceType: selectedKeteranganIzin!,
                                  notes: catatanController.text,
                                  file: fileIzin,
                                );

                                context.read<AbsenceBloc>().add(
                                      AbsenceEvent.absence(izin),
                                    );
                              }
                            : () {}
                        : () {
                            context.showAlert(
                              false,
                              'File tidak boleh kosong',
                              50,
                            );
                          },
                    label: 'Kirim',
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
