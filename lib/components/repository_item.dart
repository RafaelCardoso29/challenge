import 'package:challenge/models/git_item.dart';
import 'package:flutter/material.dart';

class RepositoryItem extends StatefulWidget {
  final GitItem item;

  const RepositoryItem({Key key, this.item});
  @override
  _RepositoryItemState createState() => _RepositoryItemState();
}

class _RepositoryItemState extends State<RepositoryItem> {
  @override
  Widget build(BuildContext context) {
    return _buildRow();
  }

  _buildRow() {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(top: 25, bottom: 25, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                widget.item?.name ?? "No Information",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Text(widget.item?.description ?? "No Information"),
            ),
            Row(
              children: <Widget>[
                Image.network(
                  widget.item?.owner?.avatarUrl,
                  height: 45,
                  width: 45,
                  fit: BoxFit.contain,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    widget.item?.owner?.login ?? "No Information",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                  size: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.item?.stars?.toString() ?? "?"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
