// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:newsapp/provider/news_provider.dart';
import 'package:newsapp/screen/detail_page.dart';
import 'package:provider/provider.dart';

class NewsAppScreen extends StatefulWidget {
  const NewsAppScreen({Key? key}) : super(key: key);

  @override
  State<NewsAppScreen> createState() => _NewsAppScreenState();
}

class _NewsAppScreenState extends State<NewsAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("191011401222_YULIAN ISLAM PRAYOGA")),
        ),
        body: Consumer<NewsProvider>(builder: (context, provider, _) {
          // ignore: dead_code
          return ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  color: Colors.grey[200],
                  height: 100,
                  width: 100,
                ),
                title: Text(
                  'Title',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  'Description',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (c) => DetailPage(
                          // url: _get[index]['url'],
                          // title: _get[index]['title'],
                          // content: _get[index]['content'],
                          // urlToImage: _get[index]['urlToImage'],
                          // author: _get[index]['author'],
                          // publishedAt: _get[index]['publishedAt'],
                          ),
                    ),
                  );
                },
              );
            },
          );
        }));
  }
}
