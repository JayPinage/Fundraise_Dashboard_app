

import 'package:flutter/material.dart';

class Loginscreen extends  StatefulWidget{
  const Loginscreen({super.key});
  @override

  State<Loginscreen>createState()=>_Loginscreen();

}

class _Loginscreen extends State<Loginscreen>{
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Login ",style: TextStyle(fontSize: 20),),
          ),
          body: Center(
            child: 
            Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.lightBlueAccent)
                    )
                  ),
                  
                )
              ],
            ),
          ),

    );
  }
}