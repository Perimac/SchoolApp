class Student{
  String studentName='';
  String studentAge='';
  String studentId='';
  String studentCourse = '';
  bool isNSS=false;
  String studentLevel='';
  String studentEmail='';

  set setStudentEmail(String newEmail){ 
    studentEmail  = newEmail;
  }
  
  
get getStudentEmail{
  return studentEmail;
}

set setStudentName(String newName){
  studentName = newName;
}

get getStudentName{
  return studentName;
}

set setstudentAge(String newAge){
  studentAge = newAge;
}

get getStudentAge{
  return studentAge;
}

set setStudentId(String newStudentId){
  studentId = newStudentId;
}

get getStudentId{
  return studentId;
}

set setStudentCourse(String newStdCourse){
  studentCourse = newStdCourse;
}

get getStudentCourse{
  return studentCourse;
}

set setIsNss(bool newIsNss){
  isNSS = newIsNss;
}

get getIsNss{
  return isNSS;
}

set setStudentLevel(String newstudentLevel){
  studentLevel = newstudentLevel;
}

get getLevel{
  return studentLevel;
}








}