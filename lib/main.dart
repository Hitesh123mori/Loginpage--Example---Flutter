import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Login Screen"),
        ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Padding(
             padding: const EdgeInsets.only(bottom: 50.0),
             child: Text(
               "Login",
               style: TextStyle(
                 color: Colors.green,
                 fontSize: 35 ,
                 fontWeight: FontWeight.bold,

               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(bottom:30),
             child: Form(child: Column(
               children: [
                 TextFormField(
                   keyboardType: TextInputType.emailAddress,
                   decoration: InputDecoration(
                     labelText: "Email",
                     hintText: "Enter Email",
                     prefixIcon: Icon(Icons.email),
                     border: OutlineInputBorder(),
                   ),
                   onChanged: (String value){

                   },
                   validator: (value) {
                     return value!.isEmpty ? "Please Enter Email":null;
                   },

                 ),
               ],
             )),
           ),
           Padding(
             padding: const EdgeInsets.only(bottom: 80.0),
             child: Form(child: Column(
               children: [
                 TextFormField(
                   keyboardType: TextInputType.visiblePassword,
                   decoration: InputDecoration(
                     labelText: "PassWord",
                     hintText: "Enter Password",
                     prefixIcon: Icon(Icons.password),
                     border: OutlineInputBorder(),
                   ),
                   onChanged: (String value){

                   },
                   validator: (value) {
                     return value!.isEmpty ? "Please Enter Password":null;
                   },

                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 34.0),
                   child: MaterialButton(
                       onPressed: (){},
                       child: Text("Login")  ,
                      color: Colors.orange,
                     textColor: Colors.white,
                   ),
                 )
               ],
             )),
           ),
         ],
       ) ,
      ),
    );
  }
}


