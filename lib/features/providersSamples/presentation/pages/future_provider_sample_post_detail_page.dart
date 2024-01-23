import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter/features/providersSamples/presentation/providers/post_provider/post_future_provider.dart';

class PostDetailPage extends ConsumerWidget {
  const PostDetailPage({
    super.key,
    required this.postid,
  });

  final String postid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postDetail = ref.watch(
      getPostDetailsProvider(
        postId: postid,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Detail!'),
      ),
      body: postDetail.when(
        skipError: true,
        data: (post) => Center(
          child: Padding(
            padding: const EdgeInsets.all(
              20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  post.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  post.body,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (Object error, StackTrace stackTrace) {
          return Text("Error while fetching post detail! ${error}");
        },
      ),
    );
  }
}
