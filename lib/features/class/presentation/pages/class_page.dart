import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/components/error_card.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../bloc/class/class_bloc.dart';
import '../widgets/class_card.dart';
import 'information_page.dart';

class ClassPage extends StatefulWidget {
  const ClassPage({super.key});

  @override
  State<ClassPage> createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  int? length;

  @override
  void initState() {
    super.initState();
    context.read<ClassBloc>().add(const ClassEvent.getClass());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Class',
        ),
      ),
      body: BlocBuilder<ClassBloc, ClassState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const SizedBox();
            },
            loading: () {
              return ListView.separated(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 16,
                ),
                itemCount: length ?? 3,
                itemBuilder: (context, index) {
                  return Shimmer(
                    child: Container(
                      height: 172,
                      decoration: BoxDecoration(
                        color: AppColors.shimer,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SpaceHeight(16),
              );
            },
            error: (message) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: RefreshIndicator(
                  onRefresh: () async {
                    context.read<ClassBloc>().add(const ClassEvent.getClass());
                  },
                  child: ErrorCard(
                    message: message,
                  ),
                ),
              );
            },
            getClassSuccess: (classResponseModel) {
              length = classResponseModel.data.length;
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<ClassBloc>().add(const ClassEvent.getClass());
                },
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 16,
                  ),
                  itemCount: classResponseModel.data.length,
                  itemBuilder: (context, index) {
                    return ClassCard(
                      onTap: () {
                        context.push(InformationPage(
                          id: classResponseModel.data[index].id,
                        ));
                      },
                      data: classResponseModel.data[index],
                    );
                  },
                  separatorBuilder: (context, index) => const SpaceHeight(16),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
