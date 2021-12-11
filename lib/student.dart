class Student{
  String studentName='Unknown';
  int studentAge=0;
  String studentId='null';
  String studentCourse = 'null';
  bool isNSS=false;
  String studentLevel='null';
  String studentEmail='null';

set setStudentEmail(String newEmail){ 
    studentEmail  = newEmail;
  }
  
get getStudentEmail => studentEmail;

set setStudentName(String newName){
  studentName = newName;
}

get getStudentName => studentName;


set setstudentAge(int newAge){
  studentAge = newAge;
}

get getStudentAge => studentAge;

set setStudentId(String newStudentId){
  studentId = newStudentId;
}

get getStudentId => studentId;

set setStudentCourse(String newStdCourse){
  studentCourse = newStdCourse;
}

get getStudentCourse => studentCourse;

set setIsNss(bool newIsNss){
  isNSS = newIsNss;
}

get getIsNss => isNSS;

set setStudentLevel(String newstudentLevel){
  studentLevel = newstudentLevel;
}

get getLevel => studentLevel;

}
  List student_data = [
      {
        'student_name': 'Merlin Nicci',
        'age': 20,
        'course': 'Business',
        'email': 'merlin23@gmail.com',
        'profile': 'drawable/abc1.jpg'
      },
      {
        'student_name':'Alivezole',
        'age': 34,
        'course': 'Artificail Intelligence',
        'email': 'alivezole24@gmail.com',
        'profile': 'drawable/abc2.jfif'

      },
      {
        'student_name': 'John Doe',
        'age': 28,
        'course': 'Comp',
        'email': 'merlin23@gmail.com',
        'profile': 'drawable/abc3.jfif'

      },
    ];



class StudentData{
  final String std_name;
  final String std_email;
  final String std_level;
  final String std_course;
  final String std_id;
  final String std_avatar;
  final int std_age;
  final bool std_isNss;

  StudentData(this.std_name, this.std_email, this.std_level,this.std_avatar,
  this.std_course,this.std_id,this.std_age,this.std_isNss);
}

List<StudentData> dataList = [
  StudentData("Merlin Nicci", "merlin@gmai.com", "400", "drawable/abc1.jpg","Computer Science", "CS040917043", 23, false),
  StudentData("Mark Stoughton", "markstou@gmail.com", "200", "drawable/abc2.jfif", "Information Tech", "IT443671", 19, true),
  StudentData("John Doe", "doe12@gmail.com", "100", "drawable/abc3.jfif", "Computer Architecture", "CA12345", 27, true),
  StudentData("Nigel Ohio", "nioho@gmail.com", "300", "drawable/not.jpg", "Artificial Intelligence", "AI35672", 24, false)
];