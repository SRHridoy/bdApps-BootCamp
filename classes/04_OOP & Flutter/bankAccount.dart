class Bankaccount {
  String owner;
  double _balance;
  double get balance => _balance;
  set balance(double value) => _balance = value;
  Bankaccount(this.owner, this._balance);
}

void main() {
  var acc = Bankaccount("Umar", 100000000);
  print("${acc.owner}'s balance is ${acc._balance}");
  
}
