import 'package:flutter/material.dart';
import 'package:schoolapp/home_page.dart';
import 'package:schoolapp/student.dart';

class StudentList extends StatelessWidget {
  const StudentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          // 'Student No. '+dataList.length.toString(),
          'Student (${dataList.length.toString()})',
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context,index){
          return  GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage(
                  studentList: dataList[index],
                );
              }));
            },
            child:  Card(
              elevation: 5.0,
              child: ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage(dataList[index].std_avatar)),
                title: Text(dataList[index].std_name),
                subtitle: Text(dataList[index].std_course),
                trailing: const Icon(Icons.arrow_forward_ios, size: 15),
              ),
            ),
          );
        }
      )
    );
  }
}
