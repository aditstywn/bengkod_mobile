import 'package:bengkod_mobile_app/core/components/spaces.dart';
import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/app_color.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ujian Akhir'),
        actions: [
          Text(
            '0:00:00',
            style: TextStyle(
                color: AppColors.primary,
                fontSize: 14,
                fontWeight: FontWeight.w700),
          ),
          SpaceWidth(16),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 70,
              left: 16,
              right: 16,
            ),
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: LinearProgressIndicator(
                            value: 0.5,
                            color: AppColors.primary,
                            minHeight: 5,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  backgroundColor: AppColors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  title: const Text(
                                    'Daftar Soal',
                                    style: TextStyle(
                                      color: AppColors.primary,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  content: SizedBox(
                                    width: context.deviceWidth * 0.8,
                                    child: GridView.builder(
                                      itemCount: 20,
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 4,
                                      ),
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            margin: const EdgeInsets.all(4.0),
                                            padding: const EdgeInsets.all(8.0),
                                            decoration: BoxDecoration(
                                              color: isSelected
                                                  ? AppColors.primary
                                                  : AppColors.white,
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              border: Border.all(
                                                color: AppColors.primary,
                                                width: 2,
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '${index + 1}',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: isSelected
                                                      ? AppColors.white
                                                      : AppColors.primary,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4.0,
                              horizontal: 8.0,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              '10 / 20',
                              style: const TextStyle(
                                fontSize: 14,
                                color: AppColors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SpaceHeight(16),
                    Container(
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
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam accumsan sem ut ligula tempus, a vehicula dui ullamcorper. Nunc eget lacinia Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam accumsan sem ut ligula  ullamcorper. Nunc eget lacinia Lorem ipsum dolor sit amet, conum dolor sit amet, consectetur adipiscing elit. Nullam accumsan sem ut ligula tempus, a vehicula dui ullamcorper. Nunc eget lacinia ',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SpaceHeight(16),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 24.0),
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
                          color: isSelected
                              ? AppColors.lightGreen
                              : AppColors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                'A. Lorem ipsum dolor sit amet ',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              width: 24,
                              height: 24,
                              decoration: ShapeDecoration(
                                color: isSelected
                                    ? AppColors.green
                                    : AppColors.white,
                                shape: OvalBorder(
                                  side: BorderSide(
                                    width: isSelected ? 0 : 2,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ),
                              child: isSelected
                                  ? const Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 18,
                                    )
                                  : null,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SpaceHeight(16),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 24.0),
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
                          color: isSelected
                              ? AppColors.assignBgPink
                              : AppColors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                'A. Lorem ipsum dolor sit amet ',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              width: 24,
                              height: 24,
                              decoration: ShapeDecoration(
                                color: isSelected
                                    ? AppColors.red
                                    : AppColors.white,
                                shape: OvalBorder(
                                  side: BorderSide(
                                    width: isSelected ? 0 : 2,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ),
                              child: isSelected
                                  ? const Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 18,
                                    )
                                  : null,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SpaceHeight(16),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 24.0),
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
                          color: isSelected
                              ? AppColors.assignSkyBlue
                              : AppColors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                'A. Lorem ipsum dolor sit amet ',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              width: 24,
                              height: 24,
                              decoration: ShapeDecoration(
                                color:
                                    isSelected ? Colors.white : AppColors.white,
                                shape: OvalBorder(
                                  side: BorderSide(
                                    width: isSelected ? 2 : 2,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ),
                              child: isSelected
                                  ? const Icon(
                                      Icons.circle,
                                      color: AppColors.primary,
                                      size: 18,
                                    )
                                  : null,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SpaceHeight(16),
                  ],
                ),
              ),
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
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Kembali',
                        style: TextStyle(color: AppColors.white),
                      ),
                    ),
                  ),
                  Flexible(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(110, 40),
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Lanjutkan',
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
