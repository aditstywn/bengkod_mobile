import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';

class ReplyLoading extends StatelessWidget {
  const ReplyLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Shimmer(
              child: Container(
                height: 20,
                width: 100,
                decoration: BoxDecoration(
                    color: AppColors.shimer,
                    borderRadius: BorderRadius.circular(2)),
              ),
            ),
            Shimmer(
              child: Container(
                height: 14,
                width: 70,
                decoration: BoxDecoration(
                  color: AppColors.shimer,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ],
        ),
        SpaceHeight(10),
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Shimmer(
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.shimer,
                      ),
                    ),
                    SpaceWidth(10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Shimmer(
                              child: Container(
                            height: 20,
                            width: 178,
                            decoration: BoxDecoration(
                                color: AppColors.shimer,
                                borderRadius: BorderRadius.circular(
                                  2,
                                )),
                          )),
                          SpaceHeight(4),
                          Shimmer(
                              child: Container(
                            height: 14,
                            width: 53,
                            decoration: BoxDecoration(
                              color: AppColors.shimer,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
                SpaceHeight(10),
                Shimmer(
                    child: Container(
                  height: 17,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.shimer,
                    borderRadius: BorderRadius.circular(2),
                  ),
                )),
                SpaceHeight(10),
                Shimmer(
                    child: Container(
                  height: 14,
                  width: 79,
                  decoration: BoxDecoration(
                    color: AppColors.shimer,
                    borderRadius: BorderRadius.circular(2),
                  ),
                )),
              ],
            );
          },
          separatorBuilder: (context, index) => SpaceHeight(20),
        ),
      ],
    );
  }
}
