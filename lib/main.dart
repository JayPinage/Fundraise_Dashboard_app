import 'package:dashborad_app/Blocs/Announcement/bloc/announcement_bloc.dart';
import 'package:dashborad_app/Blocs/bloc/LeadersBoard/bloc/leadersboard_bloc.dart';
import 'package:dashborad_app/Blocs/bloc/navigation_bloc.dart';
import 'package:dashborad_app/Repository/Repo.dart';
import 'package:dashborad_app/Screens/bottomnavScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NavigationBloc()),
        BlocProvider(create: (context) => AnnouncementBloc(Repo())),
        BlocProvider(create: (context)=>LeadersboardBloc(Repo())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        ),
        home: Bottomnavscreen(),
      ),
    );
  }
}
