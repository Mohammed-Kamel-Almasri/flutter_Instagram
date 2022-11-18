import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/%20%20Instagram/InstagramPost.dart';
import 'package:flutter_application_2/%20%20Instagram/PostModel.dart';
import 'package:flutter_application_2/%20%20Instagram/post.dart';
import 'InstagramAppBar.dart';

class Instagram extends StatelessWidget {
  // List<PostModel> convertDataToPosts() {
  //   return posts.map((e) {
  //     return PostModel.fromMap(e);
  //   }).toList();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InstagramAppBar(),
          body: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context , index){
              return InstagramPost(PostModel.fromMap(posts[index]));
            }
      ),
    );
  }
}
