// import 'bankaccountClass.dart';

// BankAccount harshaccount = BankAccount();

// void main() {
//   harshaccount.balance = 100;    // anyone can access your balance in your account from here.
//   print(harshaccount.balance);
// }

// Now implementing Encapsulation so that direct balance cannot by accessible...

import 'bankaccountClass.dart';

BankAccount harshaccount = BankAccount();

void main() {
  print(harshaccount.getbalance()); // after encapsulating balance field.
  harshaccount.setBalance(100);
  print(harshaccount.getbalance());
}
