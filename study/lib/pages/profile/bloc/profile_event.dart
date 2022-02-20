part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started(List<String> uid, List<String> uidSub) =
      _Started;
  const factory ProfileEvent.logOut() = _LogOut;
  const factory ProfileEvent.update(AppUser appUser) = _Update;
  const factory ProfileEvent.load(List<String> uid, List<String> uidSub) =
      _Load;
}
