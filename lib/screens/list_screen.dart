import 'package:challenge/components/repository_item.dart';
import 'package:challenge/services/git_api.dart';
import 'package:flutter/material.dart';

import 'detailsScreen.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trending Repos",
            style: TextStyle(fontWeight: FontWeight.w800)),
        centerTitle: true,
      ),
      body: SafeArea(child: _buildRepositoryList()),
    );
  }
}

_buildRepositoryList() {
  return FutureBuilder(
      future: GitApi().getGitRepo(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return SizedBox(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data.items.length,
              itemBuilder: (BuildContext context, int i) => RepositoryItem(
                item: snapshot.data.items[i],
                onTap: () => Navigator.pushNamed(
                  context,
                  DetailsScreen.routeName,
                  arguments: snapshot.data.items[i],
                ),
              ),
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      });
}
