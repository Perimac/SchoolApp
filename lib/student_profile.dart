import 'package:flutter/material.dart';


class StudentProfile extends StatelessWidget{
    final String studentName;
    final String studentCourse;
    final String studentEmail;
    final String studentLevel;
    final String studentAvatar;
    final int studentAge;
    final String studentId;
    final bool isNss;

    const StudentProfile({Key? key,
    required this.studentName,
    required this.studentAvatar,
    required this.studentCourse,
    required this.studentEmail,
    required this.studentLevel,
    required this.studentAge,
    required this.studentId,
    required this.isNss,
    }) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.35,
          decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18)
            )
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(studentAvatar),
                radius: 50,
              ),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10,horizontal:10),
                 child: Text(
                   studentName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),
                  ),
               ),
               Text(
                 studentCourse,
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.white70
                ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal:10),
                  child: Text(
                    studentId,
                    style: const TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize:13.0)
                  ),
                ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Age ",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,)),
                      Text(studentAge.toString(),style:  const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
                      
                      const VerticalDivider(
                        color: Colors.white70,
                        thickness: 1,
                      ),
                      // ,
                      const Text("Level ",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,)),
                      Text(studentLevel,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
                    ],
                  ),
                ),
              )
            ],
        ),
          ),
        ),

         ListTile(
          leading: const Icon(Icons.email_rounded,color: Colors.orangeAccent),
          title: Text(studentName),
          subtitle: Text(studentEmail),
          trailing: Text(isNss ? 'Yes' : 'No'),
        ),
        const Divider(),
          ListTile(
          leading: const Icon(Icons.attach_email_rounded,color: Colors.purpleAccent),
          title: const Text("Micheal Stoughton"),
          subtitle: const Text("mike@gmail.com"),
          trailing: Text(isNss ? 'Yes' : 'No'),
        ),
       const Divider(), 

         ListTile(
          leading: const Icon(Icons.alternate_email_rounded,color: Colors.greenAccent),
          title: const Text("Perimac Codex"),
          subtitle: const Text("perimac03@gmail.com"),
          trailing: Text(isNss ? 'Yes' : 'No'),
        ),
      ],
    );
  }
}