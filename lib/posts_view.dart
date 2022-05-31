import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listview_bloc/post.dart';
import 'package:listview_bloc/posts_cubit.dart';

class PostsView extends StatefulWidget {


  @override
  State<PostsView> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview + Bloc + Http'),
      ),
      body:
      BlocBuilder<PostsCubit, List<Post>>(
        builder: (context, state) {
          if (state.isEmpty){
            return Center(child: CircularProgressIndicator(),);

          }
          return ListView.builder(
              itemCount: state.length,
              itemBuilder: (context, index) {
    Post post = state[index];
     return  Card(
    child: ListTile(
    leading: CircleAvatar(
    child: Text(state[index].id.toString()),
    ),
    title: Text(post.title, maxLines: 1,),
    subtitle: Text(post.body),
    ),

    );

              }
          );

        }),


    );
  }
}
