import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const _Initial());
  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) =>
      event.when(
        started: _started,
      );

  Stream<ProfileState> _started() async* {
    yield const ProfileState.initial();
  }
}