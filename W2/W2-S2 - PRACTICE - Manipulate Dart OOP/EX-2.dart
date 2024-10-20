class BankAccount {
  int _accountId;
  String _accountOwner;
  double _balance;

  BankAccount(
      {required int accountId, required String accountOwner, double? balance})
      : _accountId = accountId,
        _accountOwner = accountOwner,
        _balance = 0;

  double get balance => _balance;

  void withdraw(double amount) {
    try {
      if (amount > _balance) {
        throw Exception('balance insuffcient');
      } else {
        _balance -= amount;
        print('success');
      }
    } catch (e) {
      print(e);
    }
  }

  void credit(double amount) {
    _balance += amount;
    print('success new amount : $balance');
  }

  @override
  String toString() {
    return '$_accountId, $_accountOwner';
  }
}

class Bank {
  String? _name;
  List<BankAccount> _bankAccount = [];

  Bank({required String name}) : _name = name;

  List<BankAccount> get bankAccount => _bankAccount;

  BankAccount createAccount(
      {required int accountId, required String accountOwner}) {
    try {
      for (var account in _bankAccount) {
        if (account._accountId == accountId) {
          throw Exception('ID alrdy existed');
        }
      }
      _bankAccount
          .add(BankAccount(accountId: accountId, accountOwner: accountOwner));
      print('added successfully');
    } catch (e) {
      print(e);
    }

    return BankAccount(accountId: accountId, accountOwner: accountOwner);
  }

  @override
  String toString() {
    for (var acc in _bankAccount) {
      return '$acc';
    }
    return '$_name';
  }
}

void main() {
  Bank myBank = Bank(name: "CADT Bank");
  BankAccount ronanAccount =
      myBank.createAccount(accountId: 100, accountOwner: 'Ronan');

  BankAccount hi = BankAccount(accountId: 12, accountOwner: 'hi');
  Bank newBank = Bank(name: "err");
  BankAccount myAccount =
      newBank.createAccount(accountId: 1, accountOwner: 'VOng');

  print(ronanAccount.balance); // Balance: $0
  ronanAccount.credit(100);
  print(ronanAccount.balance); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance); // Balance: $50

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount(
        accountId: 100, accountOwner: 'Honlgy'); // This will throw an exception
    myBank.createAccount(accountId: 1010, accountOwner: 'Honlgy');
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }

  print('${myBank.bankAccount}');
  print('======================================');
  print('${newBank.bankAccount}');
}
