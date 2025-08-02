import 'package:dashborad_app/Blocs/bloc/LeadersBoard/bloc/leadersboard_bloc.dart';
import 'package:dashborad_app/widgets/leaderboardcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Leaderboardscreen extends StatefulWidget {
  const Leaderboardscreen({super.key});
  @override
  State<Leaderboardscreen> createState() => _Leaderboardscreen();
}

class _Leaderboardscreen extends State<Leaderboardscreen> {
  @override
  void initState() {
    Future.microtask(() {
      context.read<LeadersboardBloc>().add(LoadedLeadersboardEvent());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Leader's Board",
          style: TextStyle(fontSize: 30, color: Colors.blue),
        ),
      ),
      body: BlocBuilder<LeadersboardBloc, LeadersboardState>(
        builder: (context, state) {
          if (state is LodingLeadersboardState) {
            return Center(child: CircularProgressIndicator());
          }
          if (state is SuccessLeadersboardState) {
            return Center(
              child: ListView.builder(
                itemCount: state.data.length,
                itemBuilder: (context, int index) {
                  return Leaderboardcard(
                    id: state.data[index].id.toString(),
                    name: state.data[index].name,
                    score: state.data[index].score.toString(),
                  );
                },
              ),
            );
          }
          return Text("");
        },
      ),
    );
  }
}
