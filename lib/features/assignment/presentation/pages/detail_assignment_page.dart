// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bengkod_mobile_app/core/components/buttons.dart';
import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';

class DetailAssignmentPage extends StatefulWidget {
  final bool? questionFile;
  final bool? uploadFile;
  const DetailAssignmentPage({
    super.key,
    required this.questionFile,
    required this.uploadFile,
  });

  @override
  State<DetailAssignmentPage> createState() => _DetailAssignmentPageState();
}

class _DetailAssignmentPageState extends State<DetailAssignmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          children: [
            Row(
              children: [
                TextButton.icon(
                  onPressed: context.pop,
                  label: const Text(
                    'Back',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.grey,
                    ),
                  ),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.grey,
                    size: 16,
                  ),
                ),
                const Spacer(),
                const Text(
                  'Detail Assignment',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                const Spacer(),
                const Spacer(),
              ],
            ),
            const SpaceHeight(16),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
              ),
              height: 65,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Studi Kasus Mobile Developer - Ready to Upload',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SpaceHeight(16),
            Card(
              elevation: 1,
              color: AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SpaceHeight(10),
                    const Text(
                      'Quiz 1 Bengkel Koding Mobile Quiz ini ditujukan untuk mengukur pemahaman mahasiswa terkait modul mobile Bengkel Koding. Diharapkan bisa dikerjakan sendiri dan dikerjakan dengan sungguh-sungguh.Semangat!',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SpaceHeight(10),
                    const Text(
                      'Link : ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SpaceHeight(4),
                    const Text(
                      'https://docs.google.com/forms/d/e/1FAIpQLScHV67ltxI_QoHBND0XEPWUc6fLvnvm6zQwLsn3aArzg3CqEQ/viewform',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.blue,
                      ),
                    ),
                    const SpaceHeight(10),
                    const Text(
                      'Start : ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text(
                      'Date : Jum’at, 29 Maret 2024',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const Text(
                      'Time : 12:00 WIB',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const SpaceHeight(10),
                    const Text(
                      'Deadline : ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text(
                      'Date : Jum’at, 29 Maret 2024',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const Text(
                      'Time : 12:00 WIB',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const SpaceHeight(20),
                    const Text(
                      'Question File',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SpaceHeight(10),
                    Button.filled(
                      onPressed: () {},
                      label: widget.questionFile == true
                          ? 'Click to Download Question File'
                          : 'File Not Available',
                      color:
                          widget.questionFile == true ? null : AppColors.grey,
                    ),
                    const SpaceHeight(20),
                    const Text(
                      'Upload File',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SpaceHeight(10),
                    widget.uploadFile! == true
                        ? Button.filled(
                            onPressed: () {},
                            label: 'Click to Download your File',
                            color: AppColors.assignGreen,
                          )
                        : Column(
                            children: [
                              Button.outlined(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    'assets/icons/icons_fileUpload.svg'),
                                label: 'Upload your File',
                                height: 75,
                              ),
                              const SpaceHeight(10),
                              Button.filled(
                                onPressed: () {},
                                label: 'Upload Assignment',
                                color: AppColors.assignment,
                              ),
                              const SpaceHeight(10),
                              Button.filled(
                                onPressed: () {},
                                label: 'Submit',
                              ),
                            ],
                          )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
