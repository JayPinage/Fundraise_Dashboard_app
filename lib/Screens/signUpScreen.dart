import 'package:flutter/material.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});
  @override
  State<Signupscreen> createState() => _Signupscreen();
}

class _Signupscreen extends State<Signupscreen> {
  TextEditingController name=TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final userform = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SignUp ", style: TextStyle(fontSize: 30,color: Colors.blue))),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
          child: Form(
            key: userform,
            child: Column(
            
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width*0.9,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://png.pngtree.com/png-vector/20220526/ourmid/pngtree-online-registration-or-sign-up-login-for-account-on-smartphone-app-png-image_4740838.png',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: name,
                        
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Name ";
                    }
                  },
                  decoration: InputDecoration(
                     enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black87)),
                    hintText: "Enter Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.lightBlue),
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
                ElevatedButton(onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  minimumSize: Size(MediaQuery.of(context).size.width*0.9,50)
                ),
                 child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.black87),)),
            
                SizedBox(height: 20),
            
                Text("Not Have An Account ?",style: TextStyle(color: Colors.black87),),
            
                InkWell(
                  onTap: () {},
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
