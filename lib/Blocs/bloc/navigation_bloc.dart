import 'package:bloc/bloc.dart';
import 'package:dashborad_app/Blocs/bloc/NavigationState.dart';
import 'package:meta/meta.dart';

part 'navigation_event.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationInitial()) {
    on<NavigateToDashBoard>((event, emit) =>emit(DashBoardState()));
    on<NavigateToLeadersBoard>((event, emit) => emit(LeadersBoardState()));
    on<NavigateToAnnouncement>((event, emit) => emit(AnnouncementState()));
  }
}
