import 'package:bengkod_mobile_app/core/components/custom_text_field.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/buttons.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';

class CreateDiscussionPage extends StatefulWidget {
  const CreateDiscussionPage({super.key});

  @override
  State<CreateDiscussionPage> createState() => _CreateDiscussionPageState();
}

class _CreateDiscussionPageState extends State<CreateDiscussionPage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buat Diskusi'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: AppColors.grey.withAlpha(100),
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  controller: titleController,
                  label: 'Judul Diskusi',
                ),
                SpaceHeight(10),
                CustomTextField(
                  controller: contentController,
                  label: 'Isi Diskusi',
                  maxLines: 5,
                ),
                SpaceHeight(10),
                DottedBorder(
                  color: AppColors.primary,
                  strokeWidth: 1.5,
                  dashPattern: const [5, 5],
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(8),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors.greyMuda.withAlpha(100),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Upload File',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SpaceHeight(10),
          Button.filled(
            onPressed: () {},
            label: 'Buat Diskusi',
          ),
        ],
      ),
    );
  }
}
