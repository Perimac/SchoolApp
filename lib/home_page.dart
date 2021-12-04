import 'package:flutter/material.dart';
import 'package:schoolapp/student_profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.blue[900],
      elevation: 0.0,
      title: const Text('Profile',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:22,)),
      centerTitle: true,
      leading: const Icon(Icons.arrow_back,color: Colors.white),
      actions: const[
         IconButton(onPressed: null, icon: Icon(Icons.settings,color: Colors.white,))],),
    body: const StudentProfile(),
    );
  }
}
