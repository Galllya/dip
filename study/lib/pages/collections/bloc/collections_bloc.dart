import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collections_event.dart';
part 'collections_state.dart';
part 'collections_bloc.freezed.dart';

class CollectionsBloc extends Bloc<CollectionsEvent, CollectionsState> {
  CollectionsBloc() : super(_Initial());
}
