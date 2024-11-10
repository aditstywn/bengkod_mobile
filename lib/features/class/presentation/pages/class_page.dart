import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../bloc/class/class_bloc.dart';
import '../widgets/class_card.dart';

class ClassPage extends StatefulWidget {
  const ClassPage({super.key});

  @override
  State<ClassPage> createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  @override
  void initState() {
    context.read<ClassBloc>().add(const ClassEvent.getClass());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: const Text(
          'Class',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<ClassBloc, ClassState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const SizedBox();
            },
            getClassSuccess: (classResponseModel) {
              return ListView.separated(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                itemCount: classResponseModel.data.length,
                itemBuilder: (context, index) {
                  return ClassCard(
                    data: classResponseModel.data[index],
                  );
                },
                separatorBuilder: (context, index) => const SpaceHeight(16),
              );
            },
          );
        },
      ),
    );
  }
}
