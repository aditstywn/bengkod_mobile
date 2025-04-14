import 'package:bengkod_mobile_app/core/components/spaces.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';

import '../../../../core/config/app_color.dart';
import '../widgets/forum_card.dart';
import 'package:flutter/material.dart';

import 'create_discussion_page.dart';

class DiscussionForumPage extends StatefulWidget {
  const DiscussionForumPage({super.key});

  @override
  State<DiscussionForumPage> createState() => _DiscussionForumPageState();
}

class _DiscussionForumPageState extends State<DiscussionForumPage> {
  final diskusi = {
    'Terbaru ': 'terbaru',
    'Terpopuler': 'terpopuler',
  };

  final kursus = {
    'Semua Kursus': 'semua',
    'Kursus 1': 'kursus1',
    'Kursus 2': 'kursus2',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forum Diskusi'),
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: 80,
        ),
        children: [
          TextField(
            onChanged: (value) {
              debugPrint(value);
            },
            decoration: InputDecoration(
              hintText: 'Cari Topik Diskusi',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(10),
            ),
          ),
          SpaceHeight(6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: CustomDropdown<String>(
                  closedHeaderPadding: EdgeInsets.all(8),
                  decoration: CustomDropdownDecoration(
                    closedBorderRadius: BorderRadius.circular(8),
                    closedBorder: Border.all(
                      color: AppColors.primary,
                      width: 1,
                    ),
                  ),
                  items: diskusi.keys.toList(),
                  hintText: 'Urutkan',
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
              SpaceWidth(10),
              Flexible(
                child: CustomDropdown<String>(
                  closedHeaderPadding: EdgeInsets.all(8),
                  decoration: CustomDropdownDecoration(
                    closedBorderRadius: BorderRadius.circular(8),
                    closedBorder: Border.all(
                      color: AppColors.primary,
                      width: 1,
                    ),
                  ),
                  items: kursus.keys.toList(),
                  hintText: 'Kursus',
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
              // Flexible(
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: AppColors.primary,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //     ),
              //     onPressed: () {},
              //     child: Text(
              //       'Buat',
              //       style: TextStyle(
              //         color: AppColors.white,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
          SpaceHeight(14),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return ForumCard();
            },
            separatorBuilder: (context, index) => SpaceHeight(10),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(
          Icons.add,
          size: 30,
          color: AppColors.white,
        ),
        onPressed: () {
          context.push(CreateDiscussionPage());
        },
      ),
    );
  }
}
