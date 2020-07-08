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

    return SafeArea(
      child: Flex(
        mainAxisAlignment: MainAxisAlignment.center,
        direction: Axis.vertical,
        children: [
          RepositoryItem(
            item: args,
          ),
        ],
      ),
    );
  }
}
