import 'dart:io';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:bengkod_mobile_app/features/courses/data/models/request/update_discussions_request_model%20.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/components/buttons.dart';
import '../../../../core/components/custom_text_field.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../data/models/request/create_discussions_request_model.dart';
import '../../data/models/response/discussions/discussion_response_model.dart';
import '../../data/models/response/discussions/dropdown_item.dart';
import '../bloc/discussions/discussions_bloc.dart';

class CreateDiscussionPage extends StatefulWidget {
  final int idCourse;
  final List<DropdownItem>? dropdownArticles;
  final DataDiscussions? discussion;
  const CreateDiscussionPage(
      {super.key,
      required this.idCourse,
      this.dropdownArticles,
      this.discussion});

  @override
  State<CreateDiscussionPage> createState() => _CreateDiscussionPageState();
}

class _CreateDiscussionPageState extends State<CreateDiscussionPage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  FilePickerResult? file;

  int? selectedArticleId;

  List<String> oldImages = [];
  List<String> deletedImages = [];

  @override
  void initState() {
    super.initState();
    if (widget.discussion != null) {
      titleController.text = widget.discussion?.title ?? '';
      contentController.text = widget.discussion?.comment ?? '';
      selectedArticleId = widget.discussion?.articleId;

      if (widget.discussion?.images != null) {
        oldImages = List<String>.from(widget.discussion?.images ?? []);
      }
    }
  }

  @override
  void dispose() {
    titleController.dispose();
    contentController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(widget.discussion != null ? 'Edit Diskusi' : 'Buat Diskusi'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Form(
            key: _keyForm,
            child: Container(
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
                  if (widget.dropdownArticles != null)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomDropdown<String>(
                          closedHeaderPadding: EdgeInsets.all(12),
                          decoration: CustomDropdownDecoration(
                            closedBorderRadius: BorderRadius.circular(8),
                            closedBorder: Border.all(
                              color: AppColors.primary,
                              width: 1,
                            ),
                            closedErrorBorderRadius: BorderRadius.circular(8),
                            errorStyle: TextStyle(
                              color: Colors.red[800],
                              fontSize: 12,
                            ),
                          ),
                          items: widget.dropdownArticles
                                  ?.map((e) => e.title)
                                  .whereType<String>()
                                  .toList() ??
                              [],
                          hintText: 'Pilih Artikel',
                          onChanged: (value) {
                            if (value != null) {
                              setState(() {
                                selectedArticleId = widget.dropdownArticles
                                    ?.firstWhere(
                                        (article) => article.title == value)
                                    .id;
                              });
                              print(selectedArticleId);
                            } else {
                              setState(() {
                                selectedArticleId = null;
                              });
                            }
                          },
                          validator: (p0) =>
                              p0 == null ? 'Artikel tidak boleh kosong' : null,
                        ),
                        SpaceHeight(20),
                      ],
                    ),
                  CustomTextField(
                    controller: titleController,
                    textInputAction: TextInputAction.next,
                    label: 'Judul Diskusi',
                    validator: (p0) =>
                        p0!.isEmpty ? 'Judul tidak boleh kosong' : null,
                  ),
                  SpaceHeight(20),
                  CustomTextField(
                    controller: contentController,
                    capizalize: TextCapitalization.sentences,
                    label: 'Isi Diskusi',
                    maxLines: 5,
                    validator: (p0) =>
                        p0!.isEmpty ? 'Isi diskusi tidak boleh kosong' : null,
                  ),
                  SpaceHeight(20),
                  GestureDetector(
                    onTap: () async {
                      final pickedFile = await FilePicker.platform
                          .pickFiles(allowMultiple: true);

                      // if (pickedFile != null) {
                      //   setState(() {
                      //     file = pickedFile;
                      //   });
                      // }

                      if (pickedFile != null) {
                        // Filter file berdasarkan extension yang diizinkan
                        final validFiles = pickedFile.files.where((file) {
                          final extension = file.extension?.toLowerCase();
                          return extension == 'jpg' ||
                              extension == 'jpeg' ||
                              extension == 'png';
                        }).toList();

                        if (validFiles.isNotEmpty) {
                          setState(() {
                            file = FilePickerResult(validFiles);
                          });
                        } else {
                          // Tampilkan error kalau semua file invalid
                          context.showAlert(false,
                              'Hanya file dengan ekstensi jpg, jpeg, png yang diizinkan');
                        }
                      }
                    },
                    child: DottedBorder(
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
                    ),
                  ),
                  if (file != null && file!.files.isNotEmpty ||
                      oldImages.isNotEmpty)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SpaceHeight(12),
                        if (oldImages.isNotEmpty)
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: oldImages.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  ;

                                  showDialog(
                                    context: context,
                                    builder: (_) {
                                      return AlertDialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        backgroundColor: AppColors.white,
                                        title: Text(
                                          Uri.parse(oldImages[index])
                                              .pathSegments
                                              .last,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: AppColors.primary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        content: Container(
                                          width: context.deviceWidth,
                                          constraints: BoxConstraints(
                                            minHeight: 100,
                                            maxHeight: 400,
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppColors.white,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl: oldImages[index],
                                            fit: BoxFit.contain,
                                            placeholder: (context, url) =>
                                                Center(
                                              child: CircularProgressIndicator(
                                                color: AppColors.primary,
                                              ),
                                            ),
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
                                          ),
                                        ),
                                        actions: [
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              backgroundColor:
                                                  AppColors.primary,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                            onPressed: () => context.pop(),
                                            child: Text(
                                              'OK',
                                              style: TextStyle(
                                                  color: AppColors.white),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: AppColors.greyMuda.withAlpha(70),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          Uri.parse(oldImages[index])
                                              .pathSegments
                                              .last,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.primary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                      ),
                                      SpaceWidth(10),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            String discussionPath =
                                                oldImages[index]
                                                    .split('/storage/')
                                                    .last;
                                            deletedImages.add(discussionPath);
                                            oldImages.removeAt(index);
                                          });
                                        },
                                        child: Icon(
                                          Icons.close_rounded,
                                          color: AppColors.primary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                SpaceHeight(12),
                          ),
                        if (file != null && file!.files.isNotEmpty)
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: file?.files.length ?? 0,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        backgroundColor: AppColors.white,
                                        title: Text(
                                          '${file!.files[index].name}',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: AppColors.primary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        content: Container(
                                          width: context.deviceWidth,
                                          constraints: BoxConstraints(
                                            minHeight: 100,
                                            maxHeight: 400,
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppColors.white,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Image.file(
                                            File(file!.files[index].path!),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        actions: [
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              backgroundColor:
                                                  AppColors.primary,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                            onPressed: () {
                                              context.pop();
                                            },
                                            child: Text(
                                              'OK',
                                              style: TextStyle(
                                                color: AppColors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: AppColors.greyMuda.withAlpha(70),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          file!.files[index].name,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.primary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            file?.files.removeAt(index);
                                          });
                                        },
                                        child: Icon(
                                          Icons.close_rounded,
                                          color: AppColors.primary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                SpaceHeight(12),
                          ),
                      ],
                    ),
                ],
              ),
            ),
          ),
          SpaceHeight(10),
          BlocConsumer<DiscussionsBloc, DiscussionsState>(
            listener: (context, state) {
              state.maybeWhen(
                createDiscussionsSuccess: (message) {
                  context.pop();
                  context.showAlert(true,
                      message.meta?.message ?? 'Berhasil membuat diskusi');
                  context.read<DiscussionsBloc>().add(
                        DiscussionsEvent.discussion(
                            widget.idCourse, 1, null, null, null),
                      );

                  titleController.clear();
                  contentController.clear();
                  setState(() {
                    file = null;
                  });
                },
                updateDiscussionsSuccess: (message) {
                  // context.pop();
                  // context.showAlert(true,
                  //     message.meta?.message ?? 'Berhasil mengubah diskusi');
                  // context.read<DiscussionsBloc>().add(
                  //       DiscussionsEvent.discussion(
                  //           widget.idCourse, 1, null, null, null),
                  //     );

                  titleController.clear();
                  contentController.clear();
                  setState(() {
                    file = null;
                  });
                },
                error: (message) {
                  context.showAlert(false, message);
                  context.read<DiscussionsBloc>().add(
                        DiscussionsEvent.discussion(
                            widget.idCourse, 1, null, null, null),
                      );
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () {
                  return Button.filled(
                    onPressed: () {},
                    label: 'Loading...',
                    isLoading: true,
                  );
                },
                orElse: () {
                  return Button.filled(
                    onPressed: () async {
                      if (_keyForm.currentState!.validate()) {
                        final fileDiscussions = file?.files.map((e) {
                          return File(e.path!);
                        }).toList();

                        if (widget.discussion != null) {
                          final update = UpdateDiscussionsRequestModel(
                            articleId: selectedArticleId ?? 0,
                            title: titleController.text,
                            comment: contentController.text,
                            images: fileDiscussions,
                            imagesDeleted: deletedImages,
                          );

                          context.read<DiscussionsBloc>().add(
                              DiscussionsEvent.updateDiscussions(update,
                                  widget.idCourse, widget.discussion?.id ?? 0));
                        } else {
                          final discussions = CreateDiscussionsRequestModel(
                            articleId: selectedArticleId ?? 0,
                            title: titleController.text,
                            comment: contentController.text,
                            images: fileDiscussions ?? null,
                          );

                          context.read<DiscussionsBloc>().add(
                              DiscussionsEvent.createDiscussions(
                                  discussions, widget.idCourse));
                        }
                      }
                    },
                    label: widget.discussion != null
                        ? 'Simpan Diskusi'
                        : 'Buat Diskusi',
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
