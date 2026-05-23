import 'package:bankapp/data/transactionData.dart';
import 'package:flutter/material.dart';

import '../widgets/HomeChip.dart';
import '../widgets/transactionCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("🏦SecureBank")),
        actions: [Icon(Icons.settings)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.blue.shade800),
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back,",
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Alex John",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Balance",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "\$ 1234.5",
                          style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Card Number",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "••••  ••••  ••••  4829",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Text("💳", style: TextStyle(fontSize: 32)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Quick Actions",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,fontSize: 15
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeChip(icon: "💸", title: "Send"),
                  HomeChip(icon: "📱", title: "Pay"),
                  HomeChip(icon: "💰", title: "Invest"),
                  HomeChip(icon: "🎁", title: "Reward"),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Recent Transactions",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,fontSize: 15,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(shrinkWrap: true,
                  itemCount: transactions.length,
                  itemBuilder: (context, index) {
                    final transaction = transactions[index];
                    return TransactionTile(transaction: transaction);
                  },
                ),
            ),

          ],
        ),
      ),
    );
  }
}
