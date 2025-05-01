import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';

class LoadingQuizPage extends StatelessWidget {
  const LoadingQuizPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 16,
              right: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: LinearProgressIndicator(
                        value: 5,
                        color: AppColors.shimer,
                        minHeight: 5,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    SpaceWidth(16.0),
                    Container(
                      height: 28,
                      width: 45,
                      padding: const EdgeInsets.symmetric(
                        vertical: 4.0,
                        horizontal: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.shimer,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    )
                  ],
                ),
                SpaceHeight(16),
                Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    minHeight: context.deviceHeight * 0.2,
                  ),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: AppColors.shimer,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.grey.withAlpha(100),
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                ),
                SpaceHeight(16),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 48,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 24.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.grey.withAlpha(100),
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                        color: AppColors.shimer,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SpaceHeight(16),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(110, 40),
                        backgroundColor: AppColors.shimer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        '',
                        style: TextStyle(color: AppColors.white),
                      ),
                    ),
                  ),
                  Flexible(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(110, 40),
                        backgroundColor: AppColors.shimer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        '',
                        style: TextStyle(color: AppColors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
