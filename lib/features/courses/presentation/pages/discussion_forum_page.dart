import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/components/custom_pagination.dart';
import '../bloc/discussions/discussions_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/components/error_card.dart';
import '../../../../core/components/spaces.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import '../../../../core/extensions/build_context_ext.dart';

import '../../../../core/config/app_color.dart';
import '../../data/models/response/discussions/dropdown_item.dart';
import '../widgets/forum_card.dart';
import 'package:flutter/material.dart';

import 'create_discussion_page.dart';

class DiscussionForumPage extends StatefulWidget {
  final int? idCourse;
  final int? idArticle;
  final List<DropdownItem>? dropdownArticles;
  const DiscussionForumPage(
      {super.key, this.idCourse, this.dropdownArticles, this.idArticle});

  @override
  State<DiscussionForumPage> createState() => _DiscussionForumPageState();
}

class _DiscussionForumPageState extends State<DiscussionForumPage> {
  get onPageChanged => null;

  int? idArticle;
  int page = 1;

  final Map<String, String> sortBy = {
    'Terbaru': 'desc',
    'Terlama': 'asc',
  };

  String? selectedSort;

  @override
  void initState() {
    super.initState();

    setState(() {
      idArticle = widget.idArticle;
    });
    context.read<DiscussionsBloc>().add(
          DiscussionsEvent.discussion(
              widget.idCourse!, 1, null, widget.idArticle ?? null, null),
        );
  }

  @override
  Widget build(BuildContext context) {
    final List<DropdownItem> items = [
      DropdownItem(id: null, title: 'Semua Artikel'),
      ...widget.dropdownArticles ?? [],
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Forum Diskusi'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          print(selectedSort);
          context.read<DiscussionsBloc>().add(
                DiscussionsEvent.discussion(widget.idCourse!, page, null,
                    idArticle ?? null, selectedSort ?? null),
              );
        },
        child: ListView(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: 80,
          ),
          children: [
            TextField(
              onChanged: (value) {
                context.read<DiscussionsBloc>().add(
                      DiscussionsEvent.discussion(widget.idCourse!, 1, value,
                          idArticle ?? null, selectedSort ?? null),
                    );
                setState(() {});
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
              children: [
                Flexible(
                  flex: 4,
                  child: CustomDropdown<String>(
                    closedHeaderPadding: EdgeInsets.all(10),
                    decoration: CustomDropdownDecoration(
                      closedBorderRadius: BorderRadius.circular(8),
                      closedBorder: Border.all(
                        color: AppColors.primary,
                        width: 1,
                      ),
                    ),
                    items: items.map((item) => item.title ?? '').toList(),
                    hintText: 'Pilih Artikel',
                    onChanged: (value) {
                      if (value != null) {
                        if (value == 'Semua Artikel') {
                          context.read<DiscussionsBloc>().add(
                                DiscussionsEvent.discussion(
                                    widget.idCourse!, 1, null, null, null),
                              );
                        } else {
                          // Cari id berdasarkan title yang dipilih
                          final selectedArticle = widget.dropdownArticles
                              ?.firstWhere((article) => article.title == value);

                          context.read<DiscussionsBloc>().add(
                                DiscussionsEvent.discussion(widget.idCourse!, 1,
                                    null, selectedArticle?.id, null),
                              );

                          setState(() {
                            idArticle = selectedArticle?.id;
                          });
                        }
                      }

                      setState(() {});
                    },
                  ),
                ),
                SpaceWidth(10),
                Flexible(
                  flex: 2,
                  child: CustomDropdown<String>(
                    closedHeaderPadding: EdgeInsets.all(10),
                    decoration: CustomDropdownDecoration(
                      closedBorderRadius: BorderRadius.circular(8),
                      closedBorder: Border.all(
                        color: AppColors.primary,
                        width: 1,
                      ),
                    ),
                    items: sortBy.keys.toList(),
                    hintText: 'Urutkan',
                    onChanged: (value) {
                      if (value != null) {
                        final selectedSortValue = sortBy[value];
                        context.read<DiscussionsBloc>().add(
                              DiscussionsEvent.discussion(
                                  widget.idCourse!,
                                  1,
                                  null,
                                  idArticle ?? null,
                                  selectedSortValue ?? null),
                            );
                        setState(() {
                          selectedSort = selectedSortValue;
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
            SpaceHeight(14),
            BlocConsumer<DiscussionsBloc, DiscussionsState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  updateDiscussionsSuccess: (discussions) {
                    context.pop();
                    context.showAlert(
                        true, discussions.meta?.message ?? 'Berhasil');
                    context.read<DiscussionsBloc>().add(
                          DiscussionsEvent.discussion(widget.idCourse!, 1, null,
                              null, selectedSort ?? null),
                        );
                  },
                  deleteDiscussionsSuccess: (message) {
                    context.showAlert(
                        true, message.meta?.message ?? 'Berhasil');
                    context.read<DiscussionsBloc>().add(
                          DiscussionsEvent.discussion(widget.idCourse!, 1, null,
                              null, selectedSort ?? null),
                        );
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => SizedBox(),
                  loading: () => Shimmer(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.shimer,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: context.deviceHeight,
                    ),
                  ),
                  error: (message) {
                    return RefreshIndicator(
                      onRefresh: () async {
                        context.read<DiscussionsBloc>().add(
                              DiscussionsEvent.discussion(widget.idCourse!, 1,
                                  null, null, selectedSort ?? null),
                            );
                      },
                      child: ErrorCard(
                        message: message,
                      ),
                    );
                  },
                  discussionSuccess: (discussions) {
                    if (discussions.data?.isEmpty == true) {
                      return Center(
                        child: Text(
                          'Tidak ada diskusi',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey,
                          ),
                        ),
                      );
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: discussions.data?.length ?? 0,
                          itemBuilder: (context, index) {
                            return ForumCard(
                              discussion: discussions.data?[index],
                            );
                          },
                          separatorBuilder: (context, index) => SpaceHeight(10),
                        ),
                        if ((discussions.meta?.pagination?.totalPages ?? 0) > 1)
                          CustomPagination(
                            currentPage:
                                discussions.meta?.pagination?.currentPage ?? 0,
                            totalPages:
                                discussions.meta?.pagination?.totalPages ?? 0,
                            onPageChanged: (pages) {
                              setState(() {
                                page = pages;
                              });
                              context.read<DiscussionsBloc>().add(
                                    DiscussionsEvent.discussion(
                                        widget.idCourse!,
                                        pages,
                                        null,
                                        idArticle ?? null,
                                        selectedSort ?? null),
                                  );
                            },
                          )
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
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
          context.push(CreateDiscussionPage(
            idCourse: widget.idCourse!,
            dropdownArticles: widget.dropdownArticles,
          ));
        },
      ),
    );
  }
}
