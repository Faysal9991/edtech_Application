import 'package:edtech_application/componnents/custom_appbar.dart';
import 'package:edtech_application/provider/home_provider.dart';
import 'package:edtech_application/screens/home/videos_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BookmarksScreen extends StatefulWidget {
  const BookmarksScreen({super.key});

  @override
  State<BookmarksScreen> createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<HomeProvider>(context, listen: false).getBookMark();
    });
  }

  int _playlistIndexFor(HomeProvider provider, String? collectionId) {
    final index = provider.documentId.indexOf(collectionId);
    return index < 0 ? 0 : index;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                customAppbar(context, provider),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: provider.bookMarkModel.isEmpty
                      ? SizedBox(
                          height: MediaQuery.of(context).size.height * 0.55,
                          child: Center(
                            child: Text(
                              'No bookmarks yet',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                        )
                      : ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: provider.bookMarkModel.length,
                          separatorBuilder: (context, index) {
                            return const SizedBox(height: 12);
                          },
                          itemBuilder: (context, index) {
                            final bookmark = provider.bookMarkModel[index];
                            final videoId =
                                YoutubePlayer.convertUrlToId(bookmark.link ?? '');
                            final playlistIndex = _playlistIndexFor(
                              provider,
                              bookmark.collctionId,
                            );

                            return Card(
                              clipBehavior: Clip.antiAlias,
                              child: InkWell(
                                onTap: () {
                                  PersistentNavBarNavigator.pushNewScreen(
                                    context,
                                    screen: VideoViewScreen(
                                      selectedIndex: playlistIndex,
                                      initialVideoIndex: bookmark.videoId ?? 0,
                                    ),
                                    withNavBar: false,
                                    pageTransitionAnimation:
                                        PageTransitionAnimation.cupertino,
                                  );
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (videoId != null)
                                      AspectRatio(
                                        aspectRatio: 16 / 9,
                                        child: Image.network(
                                          'https://img.youtube.com/vi/$videoId/0.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Saved lesson ${index + 1}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              provider.removeBookmark(index);
                                            },
                                            icon: const Icon(
                                              Icons.delete_outline_rounded,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
