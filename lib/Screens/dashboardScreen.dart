import 'package:dashborad_app/widgets/Dashboardcard.dart';
import 'package:dashborad_app/widgets/Rewardcard.dart';
import 'package:flutter/material.dart';

class Dashboardscreen extends StatelessWidget {
  const Dashboardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard",style: TextStyle(fontSize: 30,color: Colors.blue),),
      
      
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DashboardCard(title: "Intern Name", value: "Jay Pinage"),
            DashboardCard(title: "Referral Code", value: "jay2025"),
            DashboardCard(title: "Total Donations", value: "₹10,000"),
            const Text(
              "Rewards / Unlockables",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                RewardIcon(icon: Icons.star, label: "Badge 1"),
                RewardIcon(icon: Icons.emoji_events, label: "Trophy"),
                RewardIcon(icon: Icons.lock_open, label: "Unlocked"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}