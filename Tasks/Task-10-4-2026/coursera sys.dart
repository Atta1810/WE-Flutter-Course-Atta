import 'dart:io';

class Lecture {
  String name;
  String description;
  String fileName;

  Lecture(this.name, this.description, this.fileName);
}

class Sheet {
  int number;
  String description;
  String fileName;

  Sheet(this.number, this.description, this.fileName);
}

class Course {
  String name;
  String description;
  List<Lecture> lectures = [];
  List<Sheet> sheets = [];

  Course(this.name, this.description);

  void addLecture(Lecture l) {
    lectures.add(l);
    print("Lecture added to " + name);
  }

  void addSheet(Sheet s) {
    sheets.add(s);
    print("Sheet added to " + name);
  }
}

class Teacher {
  String name;
  String email;
  String password;
  List<Course> courses = [];

  Teacher(this.name, this.email, this.password);

  void addCourse(Course c) {
    courses.add(c);
    print("Course  ${c.name} added to your profile.");
  }
}

class Coursera {
  List<Teacher> teachers = [];

  void register(String n, String e, String p) {
    Teacher newTeacher = Teacher(n, e, p);
    teachers.add(newTeacher);
    print("Success: Teacher '" + n + "' registered on Coursera!");
  }

  Teacher? login(String n, String p) {
    for (int i = 0; i < teachers.length; i++) {
      Teacher t = teachers[i];
      if (t.name == n && t.password == p) {
        return t;
      }
    }
    return null;
  }
}

void main() {
  Coursera app = Coursera();
  print("--- Welcome to Coursera System Management ---");
  print("[Registration]");
  print("Enter Name:");
  String regName = stdin.readLineSync()!;
  print("Enter Email:");
  String regEmail = stdin.readLineSync()!;
  print("Enter Password:");
  String regPass = stdin.readLineSync()!;
  app.register(regName, regEmail, regPass);
  print("[Login]");
  print("Enter Username:");
  String lName = stdin.readLineSync()!;
  print("Enter Password:");
  String lPass = stdin.readLineSync()!;
  Teacher? currentTeacher = app.login(lName, lPass);
  if (currentTeacher != null) {
    print("Welcome ${currentTeacher.name}" );
    print("Create Course");
    print("Enter Course Name:");
    String cName = stdin.readLineSync()!;
    print("Enter Course Description:");
    String cDesc = stdin.readLineSync()!;
    Course myCourse = Course(cName, cDesc);
    currentTeacher.addCourse(myCourse);
    print("Add Lecture");
    print("Enter Lecture Name:");
    String lecName = stdin.readLineSync()!;
    print("Enter Lecture Filename:");
    String lecFName = stdin.readLineSync()!;
    Lecture newLec = Lecture(lecName, "Lecture Content", lecFName);
    myCourse.addLecture(newLec);
    print("[Add Sheet]");
    print("Enter Sheet Number:");
    int sNum = int.parse(stdin.readLineSync()!);
    print("Enter Sheet Filename:");
    String sFName = stdin.readLineSync()!;
    Sheet newSheet = Sheet(sNum, "Assignment Sheet", sFName);
    myCourse.addSheet(newSheet);
    print("===========================");
    print("FINAL SUMMARY");
    print("Teacher: " + currentTeacher.name);
    print("Course: " + myCourse.name);
    print("Lectures: " + myCourse.lectures.length.toString());
    print("Sheets: " + myCourse.sheets.length.toString());
    print("=" * 30);
  } else {
    print("Login failed! Wrong username or password.");
  }
}
