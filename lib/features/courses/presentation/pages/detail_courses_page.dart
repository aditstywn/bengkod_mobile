import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_markdown_latex/flutter_markdown_latex.dart';
import 'package:html2md/html2md.dart' as html;
import 'package:markdown/markdown.dart' as md;
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/extensions/string_truncut_ext.dart';

import '../../../../core/components/error_card.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../bloc/article/article_bloc.dart';

class DetailCoursesPage extends StatefulWidget {
  final int idCourses;
  final int idArticle;
  const DetailCoursesPage(
      {super.key, required this.idCourses, required this.idArticle});

  @override
  State<DetailCoursesPage> createState() => _DetailCoursesPageState();
}

class _DetailCoursesPageState extends State<DetailCoursesPage> {
  @override
  void initState() {
    super.initState();
    context
        .read<ArticleBloc>()
        .add(ArticleEvent.getArticle(widget.idCourses, widget.idArticle));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: const Text('Detail Kursus'),
      ),
      body: BlocBuilder<ArticleBloc, ArticleState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            loading: () => Shimmer(
              child: Column(
                children: [
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                        left: 16,
                        right: 16,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.shimer,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 34,
                          width: 125.6,
                          decoration: BoxDecoration(
                            color: AppColors.shimer,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 34,
                          width: 125.6,
                          decoration: BoxDecoration(
                            color: AppColors.shimer,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            error: (message) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: RefreshIndicator(
                  onRefresh: () async {
                    context.read<ArticleBloc>().add(ArticleEvent.getArticle(
                        widget.idCourses, widget.idArticle));
                  },
                  child: ErrorCard(
                    message: message,
                  ),
                ),
              );
            },
            getArticleSuccess: (articleResponseModel) {
              final htmlContent = md.markdownToHtml(
                articleResponseModel.data.content.replaceAll('\\n', '\n'),
                blockSyntaxes: [
                  const md.TableSyntax(),
                  LatexBlockSyntax(),
                ],
                extensionSet: md.ExtensionSet.gitHubFlavored,
              );

              final dataContent = html.convert(htmlContent);

              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 55,
                      left: 16,
                      right: 16,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 16,
                          ),
                          child: MarkdownBody(
                            data: dataContent.replaceAll('<br>', '\n'),
                            // data: articleResponseModel.data.content,
                            selectable: true,
                            styleSheet: MarkdownStyleSheet(
                              p: const TextStyle(
                                fontSize: 14,
                                color: AppColors.black,
                              ),
                              h1: const TextStyle(
                                fontSize: 24,
                                color: AppColors.black,
                                // fontWeight: FontWeight.bold,
                              ),
                              h2: const TextStyle(
                                fontSize: 22,
                                color: AppColors.black,
                              ),
                              h3: const TextStyle(
                                fontSize: 20,
                                color: AppColors.black,
                              ),
                              h4: const TextStyle(
                                fontSize: 18,
                                color: AppColors.black,
                              ),
                              h5: const TextStyle(
                                fontSize: 16,
                                color: AppColors.black,
                              ),
                              h6: const TextStyle(
                                fontSize: 14,
                                color: AppColors.black,
                              ),
                              blockquote: const TextStyle(
                                fontSize: 16,
                                color: AppColors.black,
                              ),
                              code: const TextStyle(
                                fontSize: 12,
                                color: AppColors.black,
                              ),
                              em: const TextStyle(
                                fontSize: 16,
                                color: AppColors.black,
                              ),
                              strong: const TextStyle(
                                fontSize: 16,
                                color: AppColors.black,
                              ),
                              del: const TextStyle(
                                fontSize: 16,
                                color: AppColors.black,
                              ),
                              tableHead: const TextStyle(
                                fontSize: 12,
                                color: AppColors.black,
                              ),
                              tableBody: const TextStyle(
                                fontSize: 10,
                                color: AppColors.black,
                              ),
                              tableHeadAlign: TextAlign.center,
                            ),
                            builders: {
                              'latex': LatexElementBuilder(
                                textStyle: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w100,
                                ),
                                textScaleFactor: 1.2,
                              ),
                            },
                            imageBuilder: (uri, title, alt) {
                              return Center(
                                child: Image.network(
                                  uri.toString(),
                                  errorBuilder: (context, error, stackTrace) {
                                    return const Text('Gagal memuat gambar',
                                        style: TextStyle(color: Colors.red));
                                  },
                                ),
                              );
                            },
                            extensionSet: md.ExtensionSet(
                              [
                                const md.TableSyntax(),
                                const md.FencedCodeBlockSyntax(),
                                LatexBlockSyntax(),
                              ],
                              [
                                LatexInlineSyntax(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // if (articleResponseModel.data.prev != null) ...[
                  // Positioned(
                  //   left: 16,
                  //   bottom: 10,
                  //   child: InkWell(
                  //     onTap: () {
                  //       if (articleResponseModel.data.prev != null) {
                  //         context.pushReplacement(
                  //           DetailCoursesPage(
                  //             idCourses: widget.idCourses,
                  //             idArticle: articleResponseModel.data.prev!.id,
                  //           ),
                  //         );
                  //       }
                  //     },
                  //     child: Container(
                  //       padding: const EdgeInsets.symmetric(
                  //           horizontal: 12, vertical: 8),
                  //       decoration: BoxDecoration(
                  //         color: AppColors.primary,
                  //         borderRadius: BorderRadius.circular(8),
                  //       ),
                  //       child: Row(
                  //         children: [
                  //           const Icon(
                  //             Icons.arrow_back,
                  //             size: 18,
                  //             color: Colors.white,
                  //           ),
                  //           const SizedBox(width: 8),
                  //           Text(
                  //             articleResponseModel.data.prev!.name
                  //                 .truncateCharacters(10),
                  //             style: const TextStyle(
                  //               fontSize: 12,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // ],
                  // if (articleResponseModel.data.next != null) ...[
                  //   Positioned(
                  //     right: 16,
                  //     bottom: 10,
                  //     child: InkWell(
                  //       onTap: () {
                  //         if (articleResponseModel.data.next != null) {
                  //           context.pushReplacement(
                  //             DetailCoursesPage(
                  //               idCourses: widget.idCourses,
                  //               idArticle: articleResponseModel.data.next!.id,
                  //             ),
                  //           );
                  //         }
                  //       },
                  //       child: Container(
                  //         padding: const EdgeInsets.symmetric(
                  //             horizontal: 12, vertical: 8),
                  //         decoration: BoxDecoration(
                  //           color: AppColors.primary,
                  //           borderRadius: BorderRadius.circular(8),
                  //         ),
                  //         child: Row(
                  //           children: [
                  //             Text(
                  //               articleResponseModel.data.next!.name
                  //                   .truncateCharacters(10),
                  //               style: const TextStyle(
                  //                 fontSize: 12,
                  //                 color: Colors.white,
                  //               ),
                  //               maxLines: 1,
                  //             ),
                  //             const SizedBox(width: 8),
                  //             const Icon(
                  //               Icons.arrow_forward,
                  //               size: 18,
                  //               color: Colors.white,
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ],
                  if (articleResponseModel.data.prev != null ||
                      articleResponseModel.data.next != null)
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (articleResponseModel.data.prev != null)
                              InkWell(
                                onTap: () {
                                  if (articleResponseModel.data.prev != null) {
                                    context.pushReplacement(
                                      DetailCoursesPage(
                                        idCourses: widget.idCourses,
                                        idArticle:
                                            articleResponseModel.data.prev!.id,
                                      ),
                                    );
                                  }
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.arrow_back,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        articleResponseModel.data.prev!.name
                                            .truncateCharacters(10),
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            else
                              const SizedBox(
                                width: 48,
                              ),
                            const Spacer(),
                            if (articleResponseModel.data.next != null)
                              InkWell(
                                onTap: () {
                                  if (articleResponseModel.data.next != null) {
                                    context.pushReplacement(
                                      DetailCoursesPage(
                                        idCourses: widget.idCourses,
                                        idArticle:
                                            articleResponseModel.data.next!.id,
                                      ),
                                    );
                                  }
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        articleResponseModel.data.next!.name
                                            .truncateCharacters(10),
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                        maxLines: 1,
                                      ),
                                      const SizedBox(width: 8),
                                      const Icon(
                                        Icons.arrow_forward,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            else
                              const SizedBox(
                                width: 48,
                              )
                          ],
                        ),
                      ),
                    ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
