part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;
  const factory ProfileEvent.logOut() = _LogOut;
  const factory ProfileEvent.update(AppUser appUser) = _Update;
}
