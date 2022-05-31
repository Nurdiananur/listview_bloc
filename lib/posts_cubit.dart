import 'package:bloc/bloc.dart';
import 'package:listview_bloc/data_service.dart';
import 'package:listview_bloc/post.dart';
import 'package:meta/meta.dart';

part 'posts_state.dart';

class PostsCubit extends Cubit<List<Post>> {
  final _dataService = DataService();

  PostsCubit() : super([]);
  void get posts async => emit(await _dataService.getPosts());
}

















