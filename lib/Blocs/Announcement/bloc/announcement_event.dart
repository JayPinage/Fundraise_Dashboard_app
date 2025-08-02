part of 'announcement_bloc.dart';

@immutable
sealed class AnnouncementEvent {}


class LoadedAnnouncementEvent extends AnnouncementEvent{}