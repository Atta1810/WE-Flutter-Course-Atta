import 'dart:io';

void main() {
  String z = "OIL";
  int pz = 30;
  int nx = 0;
  String x = "BUTTER";
  int px = 100;
  int nc = 0;
  String c = "pizza";
  int pc = 60;
  int nv = 0;
  String v = "vanilla";
  int pv = 15;
  String o = "y";
  while (o == "y") {
    print("1. ${z} price = ${pz}");
    print("2. ${x} price = ${px}");
    print("3. ${c} price = ${pc}");
    print("4. ${v} price = ${pv}");
    print("Enter Number Of Product You want");
    int ? n = int.parse(stdin.readLineSync()!);
    if (n == 1) {
      print("Enter The Quantity of ${z} ");
      int ? q= int.parse(stdin.readLineSync()!);
      nz=nz+q;
    }
    else if (n == 2) {
      print("Enter The Quantity of ${x} ");
      int ? q= int.parse(stdin.readLineSync()!);
      nx=nx+q;
    }
    else if (n == 3) {
      print("Enter The Quantity of ${c} ");
      int ? q= int.parse(stdin.readLineSync()!);
      nc=nc+q;}
    else if(n==4){
      print("Enter The Quantity of ${v} ");
      int ? q= int.parse(stdin.readLineSync()!);
      nv=nv+q;}
    else{
      print("Please Enter A Valid Product Number ");
    }
    print("another order? (y/n)");
    o = stdin.readLineSync()!;
  }

  int total=0;
  if (nz > 0) {
    int totalz = nz * pz;
    print("TOTAL of OIL  Q $nz  is $totalz ");
    total = total + totalz;
  }

  if (nx > 0) {
    int totalx = nx * px;
    print("TOTAL of BUTTER  Q $nx is $totalx ");
    total = total + totalx;
  }

  if (nc > 0) {
    int totalc = nc * pc;
    print("TOTAL of PIZZA Q $nc  is $totalc ");
    total = total + totalc;
  }

  if (nv > 0) {
    int totalv = nv * pv;
    print("TOTAL of VANILLA  Q $nv  is $totalv");
    total = total + totalv;
  }

  print("Total Price is $total ");

}