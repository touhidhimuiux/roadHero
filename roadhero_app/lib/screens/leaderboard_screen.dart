import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E60D1), foregroundColor: Colors.white,
        title: const Text('Road Hero Leaderboard', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(icon: const Icon(Icons.workspace_premium, color: Colors.amber), onPressed: () {})
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Top Badges Display
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildBadge(Icons.shield, 'Scout', Colors.amber),
                _buildBadge(Icons.verified_user, 'Guardian', Colors.green),
                _buildBadge(Icons.military_tech, 'Road Hero', Colors.blue),
              ],
            ),
            const SizedBox(height: 30),
            
            // Rankings List
            _buildRankCard('1', 'Farjana', '1,205 pts', const Color(0xFFFF9800), false),
            const SizedBox(height: 10),
            _buildRankCard('2', 'Himu', '950 pts', Colors.grey[600]!, false),
            const SizedBox(height: 10),
            _buildRankCard('3', 'Asif (You)', '840 pts', const Color(0xFFFF9800), true),
            
            const Spacer(),
            
            // Personal Stats Card
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15),
                boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10)]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Rewards: 20', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      Text('Badges unlocked', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(20)),
                    child: const Row(
                      children: [
                        Icon(Icons.favorite, color: Colors.blue, size: 20),
                        SizedBox(width: 5),
                        Text('30', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBadge(IconData icon, String label, Color color) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(color: color.withAlpha(50), shape: BoxShape.circle),
          child: Icon(icon, color: color, size: 30),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
      ],
    );
  }

  Widget _buildRankCard(String rank, String name, String pts, Color rankColor, bool isYou) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10),
        border: isYou ? Border.all(color: const Color(0xFFFF9800), width: 2) : null,
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Row(
        children: [
          Container(
            width: 35, height: 35,
            decoration: BoxDecoration(color: rankColor, borderRadius: BorderRadius.circular(8)),
            alignment: Alignment.center,
            child: Text(rank, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: isYou ? const Color(0xFFFF9800) : Colors.black87)),
          ),
          Text(pts, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
        ],
      ),
    );
  }
}