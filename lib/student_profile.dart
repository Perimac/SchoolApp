import 'package:flutter/material.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.width * 0.65,
          decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18)
            )
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             const CircleAvatar(
                backgroundImage: AssetImage("drawable/me.jpg"),
                radius: 50,
              ),
              const Text(
                "Student Name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
                
                ),
              const Text(
                "Student Course",
                style: TextStyle(
                  fontSize: 13.0,
                  color: Colors.white70
                ),
                
                ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const[
                      Text("1000",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                      Text(" Followers",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,)),
                      VerticalDivider(
                        color: Colors.white70,
                        thickness: 1,
                      ),
                      // Text("|",style: TextStyle(color: Colors.white),),
                      Text("1200",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                      Text(" Following",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,)),
                    ],
                  ),
                ),
              )
            ],
        ),
          ),
        ),

        ListTile(
          leading: Icon(Icons.email_rounded),
          title: Text("Micheal Stoughton"),
          subtitle: Text("mike@gmail.com"),
        ),
        Divider(),
         ListTile(
          leading: Icon(Icons.email_rounded),
          title: Text("Micheal Stoughton"),
          subtitle: Text("mike@gmail.com"),
        ),
        Divider(), ListTile(
          leading: Icon(Icons.email_rounded),
          title: Text("Micheal Stoughton"),
          subtitle: Text("mike@gmail.com"),
        ),
        Divider(), ListTile(
          leading: Icon(Icons.email_rounded),
          title: Text("Micheal Stoughton"),
          subtitle: Text("mike@gmail.com"),
        ),
        Divider(), ListTile(
          leading: Icon(Icons.email_rounded),
          title: Text("Micheal Stoughton"),
          subtitle: Text("mike@gmail.com"),
        ),
        Divider(), ListTile(
          leading: Icon(Icons.email_rounded),
          title: Text("Micheal Stoughton"),
          subtitle: Text("mike@gmail.com"),
        ),
        Divider(), ListTile(
          leading: Icon(Icons.email_rounded),
          title: Text("Micheal Stoughton"),
          subtitle: Text("mike@gmail.com"),
        ),
        Divider(),
       
      ],
    );
  }
}