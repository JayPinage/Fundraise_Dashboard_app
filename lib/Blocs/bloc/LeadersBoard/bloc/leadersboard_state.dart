part of 'leadersboard_bloc.dart';
 class LeadersboardState {}

final class LeadersboardInitial extends LeadersboardState {}

class LodingLeadersboardState extends LeadersboardState{}

class SuccessLeadersboardState extends LeadersboardState{
  final  List<Leadermodel>data;

  SuccessLeadersboardState({required this.data});
}

class ErrorLeadersboardState extends LeadersboardState{
  final String error;

  ErrorLeadersboardState({required this.error});
  
}
