import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listview_bloc/posts_cubit.dart';
import 'package:listview_bloc/posts_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<PostsCubit>(
        create: (context) => PostsCubit()..posts,
        child: PostsView(),
      )

    );
  }
}

