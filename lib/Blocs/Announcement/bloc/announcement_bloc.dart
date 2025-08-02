import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dashborad_app/Repository/Repo.dart';
import 'package:dashborad_app/models/messagemodel.dart';
import 'package:meta/meta.dart';

part 'announcement_event.dart';
part 'announcement_state.dart';

class AnnouncementBloc extends Bloc<AnnouncementEvent, AnnouncementState> {
  final Repo repo;
  AnnouncementBloc(this.repo) : super(AnnouncementInitial()) {
    on<LoadedAnnouncementEvent>(_LoadedAnnouncementEvent);
  }

  FutureOr<void> _LoadedAnnouncementEvent(
    LoadedAnnouncementEvent event,
    Emitter<AnnouncementState> emit,
  ) async {
    emit(LoadingAnnouncementState());
    try {
      final getmdata = await repo.getmessagedata();

      emit(SuccessAnnouncementState(mdata: getmdata));
    } catch (e) {
      print(e);
      emit(FailureAnnouncementState(error: '$e'));
    }
  }
}
