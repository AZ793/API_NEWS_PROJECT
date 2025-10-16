import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:new_project/layer/shared_layer.dart';

class SharedScreen extends StatefulWidget {
  const SharedScreen({super.key});

  @override
  SharedScreenState createState() => SharedScreenState();
}

class SharedScreenState extends State<SharedScreen> {
  bool isLoading = false;
  final emailedLayer = GetIt.I.get<SharedLayer>();

  @override
  void initState() {
    super.initState();
    _loadArticles();
  }

  Future<void> _loadArticles() async {
    setState(() => isLoading = true);

    (await emailedLayer.getSharedrticles(period: 1))
        .onSuccess((data) {
          setState(() {});
        })
        .onFailure((error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error: ${error.toString()}'),
              backgroundColor: Colors.red,
            ),
          );
        });

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NY Times ShardArticles'),
        actions: [
          IconButton(icon: Icon(Icons.refresh), onPressed: _loadArticles),
        ],
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : !emailedLayer.hasData() // will () because is a method
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.article_outlined, size: 64, color: Colors.grey),
                  SizedBox(height: 16),
                  Text('No articles loaded'),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _loadArticles,
                    child: Text('Load Articles'),
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
                    'Total Results: ${emailedLayer.totalResults()}', // will () because is a method
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: emailedLayer.articles().length, // will () because is a method
                    itemBuilder: (context, index) {
                      final article = emailedLayer.articles()[index]; // will () because is a method
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
            ),
    );
  }
}
