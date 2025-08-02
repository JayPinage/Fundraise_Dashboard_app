import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dashborad_app/Repository/Repo.dart';
import 'package:dashborad_app/models/leadermodel.dart';

part 'leadersboard_event.dart';
part 'leadersboard_state.dart';

class LeadersboardBloc extends Bloc<LeadersboardEvent, LeadersboardState> {
  final Repo repo;

  LeadersboardBloc(this.repo) : super(LeadersboardInitial()) {
    on<LoadedLeadersboardEvent>(_LoadedLeadersboardEvent);
  }

  FutureOr<void> _LoadedLeadersboardEvent(
    LoadedLeadersboardEvent event,
    Emitter<LeadersboardState> emit,
  ) async {
    emit(LodingLeadersboardState());
    try {
      final getdata = await repo.getleadersdata();

      emit(SuccessLeadersboardState(data: getdata));
    } catch (e) {
      emit(ErrorLeadersboardState(error: '$e'));
    }
  }
}
