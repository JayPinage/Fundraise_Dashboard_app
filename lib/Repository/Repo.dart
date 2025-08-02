import 'dart:convert';

import 'package:dashborad_app/models/leadermodel.dart';
import 'package:dashborad_app/models/messagemodel.dart';
import 'package:flutter/services.dart';

class Repo {
  Future<List<Leadermodel>> getleadersdata() async {
    final data = await rootBundle.loadString("assets/data/leadersboard.json");
    

    final List<dynamic> datalist = jsonDecode(data);
    

    return datalist.map((e) => Leadermodel.fromJson(e)).toList();
  }


  Future<List<Messagemodel>> getmessagedata()async{

    final mdata=await rootBundle.loadString("assets/data/message.json");

    final List<dynamic> mdatalist= jsonDecode(mdata);

    return mdatalist.map((e)=>Messagemodel.fromJson(e)).toList();
    
  }
}
