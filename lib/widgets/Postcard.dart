import '../app.dart';
import 'package:flutter/material.dart';
import '../models/Post.dart';

class PostCard extends StatelessWidget {
  final Post post;
  final VoidCallback onRead;

  const PostCard({Key key, this.post, this.onRead}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        child: Column(
          children: <Widget>[
            this.post.image == placeholder
                ? Image.asset(this.post.image)
                : Image.network(this.post.image),
            ListTile(
              title: Text(this.post.title),
            ),
          ],
        ),
        onTap: onRead,
      ),
    );
  }
}
