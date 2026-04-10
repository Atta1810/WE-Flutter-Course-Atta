double check({double? n1,double? n2,double? n3,double? n4}){
  List<double?>arg=[n1,n2,n3,n4];
  List<double>num=[];
  for (int i = 0; i < arg.length; i++) {
    if (arg[i] != null) {
      num.add(arg[i]!);
    }
  }
  int l=num.length;
  if(l==0){
    return 1;
  }
  if(l==1){
    double x=num[0];
    double sum=0;
    for(int i=1; i<=x; i++){
      sum+=i;
    }
    return sum;
  }
  if(l==2){
    double div=num[0]/num[1];
    if(div>1){
      return div;
    }else {
      print("Error the result must be positive");
    }
  }
  if(l==3){
    double dup=1;
    for(int i=0; i<num.length; i++){
      dup*=num[i];
    }
    return dup;
  }
  if(l==4){
    double total=0;
    for(int i=0; i<num.length; i++){
      total+=num[i];
    }
    return total;
  }
  return 0;
}
void main(){
  print("the output of the results");
  print("0 args: ${check()}");
  print("1 arg : ${check(n1: 5)}");
  print("2 args : ${check(n1: 10, n2: 2)}");
  print("3 args : ${check(n3: 2, n2: 3, n1: 4)}");
  print("4 args : ${check(n4: 1, n3: 2, n2: 3, n1: 4)}");
}