import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:new_project/layer/shared_layer.dart';
import 'package:new_project/utils/snackso.dart';

//=====================================================================
//=================== HELLO RAND PLEASE DELETE THIS TEST ===============
//===================   SCREEN AFTER YOU COMPLETE THE UI  =============
//======================================================== Abdulaziz ==

class SharedScreen extends StatefulWidget {
  const SharedScreen({super.key});

  @override
  SharedScreenState createState() => SharedScreenState();
}

class SharedScreenState extends State<SharedScreen> {
  bool isLoading = false;
  final sharedLayer = GetIt.I.get<SharedLayer>();

  @override
  void initState() {
    super.initState();
    _loadArticles();
  }

  Future<void> _loadArticles() async {
    setState(() => isLoading = true);

    // safeCall will catch Dio/network errors automatically
    final result = await sharedLayer.getSharedrticles(period: 1);

    result
        .onSuccess((data) {
          Snackso.show(
            context,
            message: "UPDATAED ❤️",
            backgroundColor: Colors.lightGreen,
          );
          setState(() {});
        })
        .onFailure((error) {
          // show clean error message from safeCall or DioErrorHandler
          Snackso.show(
            context,
            message: "Check Your Network ",
            backgroundColor: Colors.red.shade400,
          );
        });

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NY Times Shared Articles'),
        actions: [
          IconButton(icon: const Icon(Icons.refresh), onPressed: _loadArticles),
        ],
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : !sharedLayer.hasData()
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.article_outlined,
                    size: 64,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 16),
                  const Text('No articles loaded'),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _loadArticles,
                    child: const Text('Load Articles'),
                  ),
                ],
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Total Results: ${sharedLayer.totalResults()}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: sharedLayer.articles().length,
                    itemBuilder: (context, index) {
                      final article = sharedLayer.articles()[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 8,
                        ),
                        child: ListTile(
                          title: Text(article.title),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(article.byline),
                              Text('Section: ${article.section}'),
                              if (article.subsection != null &&
                                  article.subsection!.isNotEmpty)
                                Text('Subsection: ${article.subsection}'),
                              Text('Published: ${article.publishedDate}'),
                              Text(
                                article.abstract,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
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
    );
  }
}
