part of 'navigation_bloc.dart';

@immutable
sealed class NavigationEvent {}

class NavigateToDashBoard extends NavigationEvent{}

class NavigateToLeadersBoard extends NavigationEvent{}


class NavigateToAnnouncement extends NavigationEvent{}
