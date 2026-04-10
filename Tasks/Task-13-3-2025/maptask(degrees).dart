import 'dart:io';

void main(){
  print("Welcome please enter the number of students you want to test");
  int n=int.parse(stdin.readLineSync()!);
  List<Map>students=[];
  for(int i=1;i<=n;i++){
    print("---student num ${i} ---");
    print("enter the id of the student");
    int id=int.parse(stdin.readLineSync()!);
    print("enter the name of the student");
    String? name=stdin.readLineSync();
    print("enter the number of subjects that student has");
    int s=int.parse(stdin.readLineSync()!);
    if(s>=3){
      List<double>degree=[];
      double sum=0;
      for(int j=1;j<=s;j++){
        print("enter the degree of subject numb ${j}");
        double d=double.parse(stdin.readLineSync()!);
        degree.add(d);
        sum=sum+d;
      }
      double per=(sum/(s*100))*100;
      students.add({
        'id':id,
        'name':name,
        'degree':degree,
        'total':sum,
        'per':per,
      });
    }else{
      print("sorry you arent qualified to the survey");
    }
  }
  print("--- the final marks ---");
  var max=students[0];
  var min=students[0];
  for(int i=0;i<students.length;i++){
    var student=students[i];
    print("ID : ${student['id']} --- Name / ${student['name']}");
    print("Total = ${student['total']}");
    print("Percentage = ${student['per']}");
    if (student['per'] >= 85) print("Grade: Excellent");
    else if (student['per'] >= 75) print("Grade: Very Good");
    else if (student['per'] >= 65) print("Grade: Good");
    else if (student['per'] >= 50) print("Grade: Pass");
    else print("Grade: Fail");
    if (student['per'] >max['per']){
      max=student;
    }
    if (student['per'] <min['per']){
      min=student;
    }
  }
  print("Max Student: ${max['name']} with ${max['per']}%");
  print("Min Student: ${min['name']} with ${min['per']}%");
}