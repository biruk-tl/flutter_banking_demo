import 'package:final_demo/domain/models/models.dart';
import 'package:final_demo/domain/models/TransactionHistory.dart';
import 'package:final_demo/insfrastructure/data_provider/auth/accountProvider.dart';

class AccountRepository {
  final AccountDataProvider dataProvider;

  AccountRepository({required this.dataProvider});

  Future login(String username, String password) async {
    return await dataProvider.login(username, password);
  }

  Future registerAgent(Agent agent) async {
    return await dataProvider.registerAgent(agent);
  }

  Future registerClient(Client client) async {
    return await dataProvider.registerClient(client);
  }

  Future getAccount(String accountNumber) async {
    return await dataProvider.getAccount(accountNumber);
  }

  Future changePassword(String newPassword) async {
    return await dataProvider.changePassword(newPassword);
  }

  Future saveAccount(String accountNumber) async {
    return await dataProvider.saveAccount(accountNumber);
  }

  Future removeSavedAccount(String accountNumber) async {
    return await dataProvider.removeSaveAccount(accountNumber);
  }

  Future getCurrentUser() async {
    return await dataProvider.getCurrentUser();
  }
}

class NetworkError extends Error {}
