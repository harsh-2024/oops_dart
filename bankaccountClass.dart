// class BankAccount {
//   num? balance;
//   void getbalance() => print(balance);
// }

class BankAccount {
  num? _balance =
      0; // now this balance is not directly accessible.(using underscore before it.)
  void setBalance(num amount) {
    if (amount > 0) {
      _balance = _balance! +
          amount; // because balance can be null so here _balance! is used

    } else {
      throw Exception("Amount to be deposited should be non-negative");
    }
  }

  num? getbalance() => _balance;
}
