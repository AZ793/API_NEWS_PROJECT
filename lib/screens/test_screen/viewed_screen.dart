import 'package:flutter/material.dart';
import 'package:new_project/network/methods/network_api.dart';
import 'package:new_project/network/model/all_data_model.dart';


class ViewedScreen extends StatefulWidget {
  const ViewedScreen({super.key});

  @override
  ViewedScreenState createState() => ViewedScreenState();
}

class ViewedScreenState extends State<ViewedScreen> {
  Future<AllDataModel>? _articles;
  final NetworkApi networkApi = NetworkApi();

  @override
  void initState() {
    super.initState();
    _articles = networkApi.sharedApi.getSharedArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NY Times ViewedArticles')),
      body: FutureBuilder<AllDataModel>(
        future: _articles,
        builder: (context, dataload) {
          if (dataload.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (dataload.hasError) {
            return Center(child: Text('Error: ${dataload.error}'));
          } else if (dataload.hasData) {
            final allData = dataload.data!;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Total Results: ${allData.numResults}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: allData.results.length,
                    itemBuilder: (context, index) {
                      final article = allData.results[index];
                      return Card(
                        margin: EdgeInsets.symmetric(
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
            );
          } else {
            return Center(child: Text('No articles found.'));
          }
        },
      ),
    );
  }
}
