import 'package:dashborad_app/Blocs/Announcement/bloc/announcement_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Announcementscreen extends StatefulWidget {
  const Announcementscreen({super.key});
  @override
  State<Announcementscreen> createState() => _Announcementscreen();
}

class _Announcementscreen extends State<Announcementscreen> {

  @override
  void initState() {
    context.read<AnnouncementBloc>().add(LoadedAnnouncementEvent());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Announcement",
          style: TextStyle(fontSize: 30, color: Colors.blue),
        ),
      ),
      body: BlocBuilder<AnnouncementBloc, AnnouncementState>(
        builder: (context, state) {
          if(state is LoadingAnnouncementState){
            return Center(child: CircularProgressIndicator(),);
          }
          if(state is SuccessAnnouncementState){
             return ListView.builder(
              itemCount: state.mdata.length,
              itemBuilder: (context,int index){
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 145, 193, 231),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(padding: EdgeInsets.all(14),
                    child: Text(state.mdata[index].message,style: TextStyle(fontSize: 25),),),
                  ),
                ),
              );

             });
          }
          return Text("");
        },
      ),
    );
  }
}
