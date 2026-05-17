void main() {
  void namePara({required var name, var age}) {
    print("Hi $name , and your age is $age");
  }

  namePara(name: "Hridoy");

  void optionalPara(String name, [var age = 10]) {
    print('Hi $name and your name is $age');
  }

  int square(int n) => n * n;
  int ans = square(4);
  print(ans);
}
