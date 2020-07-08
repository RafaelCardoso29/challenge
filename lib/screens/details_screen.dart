import 'package:challenge/components/repository_item.dart';
import 'package:challenge/models/git_item.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  static const routeName = '/details';

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final GitItem args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Repository Detail's",
            style: TextStyle(fontWeight: FontWeight.w800)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RepositoryItem(
              item: args,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Repository URL :',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, left: 12),
                    child: Text(
                      args.url,
                      style: TextStyle(
                          backgroundColor: Colors.grey[100],
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      'Created at:',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, left: 12),
                    child: Text(
                      args.createdAt.split("T").removeAt(0),
                      style: TextStyle(
                          backgroundColor: Colors.grey[100],
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      'Watchers :',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 12, left: 12),
                        child: Icon(Icons.visibility),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12, left: 12),
                        child: Text(
                          args.watchers.toString(),
                          style: TextStyle(
                              backgroundColor: Colors.grey[100],
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      'Owner URL :',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, left: 12),
                    child: Text(
                      args.owner.profileUrl,
                      style: TextStyle(
                          backgroundColor: Colors.grey[100],
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
