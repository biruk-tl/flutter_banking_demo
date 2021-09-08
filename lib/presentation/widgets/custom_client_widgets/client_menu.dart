import 'package:final_demo/presentation/config/route_generator.dart';
import 'package:final_demo/presentation/screens/client_pages/client_home.dart';
import 'package:final_demo/presentation/screens/history_page.dart';
import 'package:final_demo/presentation/screens/transfer_screen.dart';
import 'package:final_demo/presentation/widgets/menu_card_layout.dart';
import 'package:final_demo/presentation/widgets/route_cards.dart';
import 'package:flutter/material.dart';

class ClientMenuLayout extends StatelessWidget {
  const ClientMenuLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: MenuCardLayout(
      InkWell(
          child: RouteCard(
              "Transfer",
              Icon(
                Icons.import_export,
                color: Colors.lightGreen[800],
              ),
              Colors.blue),
          onTap: () {
            // Navigator.of(context).pushNamed('/userhome');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TransferPage()),
            );
          }),
      InkWell(
        child: RouteCard(
            "Instant Loan",
            Icon(Icons.monetization_on, color: Colors.blue[800]),
            Colors.lightGreen),
      ),
      InkWell(
        child: RouteCard(
            "Rquest Withdraw",
            Icon(Icons.money_rounded, color: Colors.lightGreen[800]),
            Colors.blue),
      ),
      InkWell(
        child: RouteCard("Transactions",
            Icon(Icons.history, color: Colors.blue[800]), Colors.lightGreen),
        onTap: () {
          // Navigator.of(context).pushNamed('/userhome');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HistoryPage()),
          );
        },
      ),
    ));
  }
}
