import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../core/components/custom_pagination.dart';
import '../../../../core/components/error_card.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/components/url_launcer.dart';
import '../../../../core/config/app_color.dart';
import '../bloc/certificate_bloc.dart';

class CertificatePage extends StatefulWidget {
  const CertificatePage({super.key});

  @override
  State<CertificatePage> createState() => _CertificatePageState();
}

class _CertificatePageState extends State<CertificatePage> {
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context
        .read<CertificateBloc>()
        .add(const CertificateEvent.certificate(null));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sertifikat'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context
              .read<CertificateBloc>()
              .add(const CertificateEvent.certificate(null));
        },
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Cari sertifikat',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: AppColors.white,
                contentPadding: EdgeInsets.all(10),
              ),
              onChanged: (value) {
                context.read<CertificateBloc>().add(
                      CertificateEvent.certificate(value),
                    );
              },
            ),
            SpaceHeight(16),
            BlocBuilder<CertificateBloc, CertificateState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => SizedBox(),
                  error: (message) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: RefreshIndicator(
                        onRefresh: () async {},
                        child: ErrorCard(
                          message: message,
                        ),
                      ),
                    );
                  },
                  loading: () => ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    separatorBuilder: (context, index) => SpaceHeight(16),
                    itemBuilder: (context, index) {
                      return Shimmer(
                        child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                            color: AppColors.shimer,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      );
                    },
                  ),
                  certificateSuccess: (certificate) {
                    if (certificate.data?.isEmpty == true) {
                      return Center(
                        child: Text(
                          'Tidak Ada Sertifikat',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.grey,
                          ),
                        ),
                      );
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: certificate.data?.length ?? 0,
                          separatorBuilder: (context, index) => SpaceHeight(16),
                          itemBuilder: (context, index) {
                            return Container(
                              height: 250,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.grey.withAlpha(100),
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: SfPdfViewer.network(
                                      certificate.data?[index].certificateUrl ??
                                          '',
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          AppColors.primary.withAlpha(200),
                                          AppColors.white.withAlpha(20),
                                        ],
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                certificate.data?[index].course
                                                        ?.title ??
                                                    '-',
                                                style: TextStyle(
                                                  color: AppColors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              SpaceHeight(2),
                                              Text(
                                                certificate.data?[index].course
                                                        ?.level ??
                                                    '-',
                                                style: TextStyle(
                                                  color: AppColors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              SpaceHeight(2),
                                              Text(
                                                'Diterbitkan pada ${DateFormat('dd MMMM yyyy').format(certificate.data?[index].createdAt ?? DateTime.now())}',
                                                style: TextStyle(
                                                  color: AppColors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            UrlLauncer().launchInBrowser(
                                                Uri.parse(certificate
                                                        .data?[index]
                                                        .certificateUrl ??
                                                    ''),
                                                context);
                                          },
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: Icon(
                                              Icons.download,
                                              color: AppColors.white,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        if ((certificate.pagination?.totalPages ?? 0) > 1)
                          CustomPagination(
                            currentPage:
                                certificate.pagination?.currentPage ?? 1,
                            totalPages: certificate.pagination?.total ?? 0,
                            onPageChanged: (pages) {},
                          )
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
