import 'package:flutter/material.dart';
import 'package:schoolapp/student.dart';
import 'package:schoolapp/student_profile.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
    // final Student profile;
    final StudentData studentList;
   HomePage({Key? key, required this.studentList}) : super(key: key);
    // Student profile = Student();


  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
  var nameController = TextEditingController();
  var idController = TextEditingController();
  var ageController = TextEditingController();
  var titleController = TextEditingController();
  var levelController = TextEditingController();
  var emailController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Student studentclass = widget.profile;
  StudentData data = widget.studentList;
  bool isNssChecked = false;

    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.blue[900],
      elevation: 0.0,
      title: const Text('Profile',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:22,)),
      centerTitle: true,
      // leading: const Icon(Icons.arrow_back,color: Colors.white),
      actions: const[
         IconButton(onPressed: null, icon: Icon(Icons.settings,color: Colors.white,))],),

      floatingActionButton:  FloatingActionButton(
      onPressed: (){
        showModalBottomSheet(
          context: context, 
          builder: (context){
            return Form(
              key: formKey,
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  TextFormField(
                    controller: idController,
                    decoration: const InputDecoration(
                      hintText: "Student ID:",
                      border: OutlineInputBorder()
                    ),
                    validator: (data){
                      if(data!.isEmpty){
                        return 'Student ID is required';
                      }
                    },
                  ),
                  const SizedBox(height: 15,),
                  TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      hintText: ' Student Name: ',
                      border: OutlineInputBorder()
                    ),
                    validator: (data){
                      if(data!.isEmpty){
                        return 'Student Name is required';
                      }
                    },
                  ),
                   const SizedBox(height: 15,),
                  TextFormField(
                    controller: ageController,
                    decoration: const InputDecoration(
                      hintText: "Student Age:",
                      border: OutlineInputBorder()
                    ),
                    validator: (data){
                      if (data!.isEmpty){
                        return 'Student Age is required';
                      }
                    }
                  ),
                   const SizedBox(height: 15,),
                  TextFormField(
                    controller: titleController,
                    decoration: const InputDecoration(
                      hintText: "Course Title: ",
                      border: OutlineInputBorder()
                    ),
                    validator: (data){
                      if(data!.isEmpty){
                        return 'Course Title is required';
                      }
                    }
                  ),
                   const SizedBox(height: 15,),
                  TextFormField(
                    controller: levelController,
                    decoration: const InputDecoration(
                      hintText: "Student Level: ",
                      border: OutlineInputBorder()
                    ),
                    validator: (data){
                      if(data!.isEmpty){
                        return 'Student level is required';
                      }
                    }
                  ),

                   const SizedBox(height: 15,),
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        hintText: "Student Email: ",
                        border: OutlineInputBorder()
                      ),
                      validator: (data){
                        if(data!.isEmpty){
                          return 'Student level is required';
                        }else if(!data.contains('@')){
                          return 'Invalid Email';
                        }
                      }
                    ),

                    StatefulBuilder(
                      builder:(BuildContext context,StateSetter setState){
                        return CheckboxListTile(
                         title: const Text("Are you NSS?"),
                         checkColor: Colors.white,
                          value: isNssChecked,
                          onChanged: (bool? value) { 
                            setState((){
                              isNssChecked = value!;
                            });
                          }, 
                        );
                      }
                    ),

                  const SizedBox(height: 15,),
                  SizedBox(
                    height: 50,
                    child: TextButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){
                           setState(() {
                              // studentclass.setStudentName = nameController.text;
                              // studentclass.setStudentId = idController.text;
                              // studentclass.setstudentAge = int.parse(ageController.text);
                              // studentclass.setStudentCourse = titleController.text;
                              // studentclass.setStudentLevel = levelController.text;
                              // studentclass.setStudentEmail = emailController.text;
                              // studentclass.setIsNss = isNssChecked;
                           });
                        }
                      },
                      style:ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue[900]),
                      ),
                      child: const Text(
                        "Submit",
                        style:TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold,)
                        )),
                  )
                ]
              ),
            );
          }
          );
      }, 
      backgroundColor: Colors.blue[900],
      child: const Icon(Icons.edit,color: Colors.white),),
    
    body: StudentProfile(
      studentName: data.std_name,
      studentCourse: data.std_course,
      studentEmail: data.std_email,
      studentLevel: data.std_level,
      studentAge: data.std_age,
      studentAvatar: data.std_avatar,
      studentId: data.std_id,
      isNss: data.std_isNss,
      // studentName: studentclass.getStudentName,
      // studentCourse: studentclass.getStudentCourse,
      // studentEmail: studentclass.getStudentEmail,
      // studentLevel: studentclass.getLevel,
      // studentAge: studentclass.getStudentAge,
      // studentId: studentclass.getStudentId,
      // isNss: studentclass.getIsNss,
    ),
    );
  }
}
