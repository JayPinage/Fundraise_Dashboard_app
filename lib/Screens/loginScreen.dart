import 'package:dashborad_app/Screens/signUpScreen.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});
  @override
  State<Loginscreen> createState() => _Loginscreen();
}

class _Loginscreen extends State<Loginscreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final userform = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login ", style: TextStyle(fontSize: 30,color: Colors.blue))),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
          child: Form(
            key: userform,
            child: Column(
            
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  
                  width: MediaQuery.of(context).size.width*0.9,
                  height: 250,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/3660/3660729.png',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
            
                TextFormField(
                  controller: email,
                        
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Email ";
                    }
                  },
                  decoration: InputDecoration(
                     enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black87)),
                    hintText: "Enter Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.lightBlue),
                    ),
                  ),
                ),
                SizedBox(height: 20),
            
                TextFormField(
                  obscureText: true,
                  controller: password,
                        
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Password ";
                    }
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black87)),
                    
                    hintText: "Enter Password",
                    border: OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: const Color.fromARGB(255, 144, 204, 232)),
                    ),
                  ),
                ),
            
                SizedBox(height: 20),
                ElevatedButton(onPressed: () {
                 
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  minimumSize: Size(MediaQuery.of(context).size.width*0.9,50)
                ),
                 child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.black87),)),
            
                SizedBox(height: 20),
            
                Text("Not Have An Account ?",style: TextStyle(color: Colors.black87),),
            
                InkWell(
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Signupscreen()));
                  },
                  child: Text(
                    "Create An Account",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

