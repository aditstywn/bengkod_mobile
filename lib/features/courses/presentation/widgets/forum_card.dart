import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';

class ForumCard extends StatelessWidget {
  const ForumCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.greyMuda,
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: '',
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                    alignment: Alignment.topCenter,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              SpaceWidth(10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            'Nama Pengguna ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.black,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SpaceWidth(4),
                        Text(
                          ' 2 hari lalu',
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Mahasiswa',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SpaceHeight(10),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet.',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
            ),
            textAlign: TextAlign.justify,
          ),
          SpaceHeight(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.comment_rounded,
                color: AppColors.primary,
                size: 16,
              ),
              SpaceWidth(4),
              Text(
                '12 Pembahasan',
                style: TextStyle(
                  fontSize: 10,
                  color: AppColors.primary,
                ),
              ),
              SpaceWidth(10),
              Icon(
                Icons.thumb_up,
                color: AppColors.primary,
                size: 16,
              ),
              SpaceWidth(4),
              Text(
                '2',
                style: TextStyle(
                  fontSize: 10,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
