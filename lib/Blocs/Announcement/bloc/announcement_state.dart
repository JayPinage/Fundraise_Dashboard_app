part of 'announcement_bloc.dart';

@immutable
sealed class AnnouncementState {}

final class AnnouncementInitial extends AnnouncementState {}

class LoadingAnnouncementState extends AnnouncementState{}

class SuccessAnnouncementState extends AnnouncementState{
  final List<Messagemodel>mdata;

  SuccessAnnouncementState({required this.mdata});
}

class FailureAnnouncementState extends AnnouncementState{
  final String error;

  FailureAnnouncementState({required this.error});
  
}
