class Student {
  final int rollNo;

  Student(this.rollNo);

  int get getRollNum => this.rollNo;
}

class Test extends Student {
  final double sub1Marks;
  final double sub2Marks;

  Test(this.sub1Marks, this.sub2Marks, super.rollNo);

  double get getSub1Marks => this.sub1Marks;
  double get getSub2Marks => this.sub2Marks;
}

class Result extends Test {
  double totalMarks;

  Result(super.sub1, super.sub2, super.rollNo, this.totalMarks);

  void display() {
    totalMarks = sub1Marks + sub2Marks;
    print("Total marks ==> $totalMarks");
  }
}

void main(List<String> args) {
  Result result = Result(88, 99, 2343, 187);
  print(result.getRollNum);
  print(result.getSub1Marks);
  print(result.sub2Marks);
  print(result.totalMarks);
  result.display();
}

//Sum of 88 and 99 will be?