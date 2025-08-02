import 'package:dashborad_app/Blocs/bloc/NavigationState.dart';
import 'package:dashborad_app/Blocs/bloc/navigation_bloc.dart';
import 'package:dashborad_app/Screens/announcementScreen.dart';
import 'package:dashborad_app/Screens/dashboardScreen.dart';
import 'package:dashborad_app/Screens/leaderboardScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});
  @override
  State<Bottomnavscreen> createState() => _Bottomnavscreen();
}

class _Bottomnavscreen extends State<Bottomnavscreen> {
  final List<Widget> pages = [
    Dashboardscreen(),
    Leaderboardscreen(),
    Announcementscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        int Currentindex;
        Widget Currentpage;

        if (state is DashBoardState) {
          Currentindex = 0;
          Currentpage = Dashboardscreen();
        } else if (state is LeadersBoardState) {
          Currentindex = 1;
          Currentpage = Leaderboardscreen();
        } else {
          Currentindex = 2;
          Currentpage = Announcementscreen();
        }
        return Scaffold(
          body: Currentpage,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: Currentindex,
            onTap: (value) {
              switch (value) {
                case 0:
                  context.read<NavigationBloc>().add(NavigateToDashBoard());
                  break;
                case 1:
                  context.read<NavigationBloc>().add(NavigateToLeadersBoard());
                  break;

                case 2:
                  context.read<NavigationBloc>().add(NavigateToAnnouncement());
                  break;
              }
            },

            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.black87,

                icon: Icon(Icons.dashboard),
                label: "Dashboard",
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.black87,

                icon: Icon(Icons.leaderboard_outlined),
                label: "Leadersboard",
              ),

              BottomNavigationBarItem(
                backgroundColor: Colors.black87,
                icon: Icon(Icons.message),
                label: "Announcement",
              ),
            ],
          ),
        );
      },
    );
  }
}
