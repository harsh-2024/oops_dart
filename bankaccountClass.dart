class BankAccount {
  num? balance;
  void getbalance() => print(balance);
}

// *******************ENCAPSULATION***********************//

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

//************************** ABSTRACTION******************** */

class BankAccount {
  num? _balance =
      0; // now this balance is not directly accessible.(using underscore before it.)
  /* In this we can only dive into openBankAccount method without having any knowledge of its inside methods (submit pprs, updating DB, approving by mngr) */

  void OpenBankAccount(String name) {
    _submitPprs();
    _approvalByMngr();
    _updateDB();
  }

  bool _submitPprs() {
    return true;
  }

  bool _approvalByMngr() {
    return true;
  }

  bool _updateDB() {
    return true;
  }

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
