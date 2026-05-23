import 'package:flutter/material.dart';

import '../data/billsData.dart';
import '../widgets/billsWidget.dart';

class BillsScreen extends StatelessWidget {
  const BillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7FC),

      appBar: AppBar(
        centerTitle: true,
        title: Text("🏦 SecureBank", style: TextStyle(fontSize: 28)),
        actions: [Icon(Icons.settings, size: 30), SizedBox(width: 12)],
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: bills.length,
          itemBuilder: (context, index) {
            final bill = bills[index];
            return BillTile(bill: bill);
          },
        ),
      ),
    );
  }
}
