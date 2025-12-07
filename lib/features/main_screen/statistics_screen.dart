import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        centerTitle: true,
        title: Text(
          'Reload',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade100,
              child: Icon(Icons.more_horiz, color: Colors.black),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Date
            const Text(
              'Jan 28 - May 28, 2025',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),

            const SizedBox(height: 16),

            // Dropdown
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Color(0xffe3dfff),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      "Monthly",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Chart
            SizedBox(
              height: 220,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 8000,
                  gridData: FlGridData(show: true, drawVerticalLine: false),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        interval: 2000,
                        getTitlesWidget: (value, _) => Text(
                          "${(value / 1000).round()}k",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: bottomTitles,
                      ),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  barGroups: chartData,
                ),
              ),
            ),

            const SizedBox(height: 16),

            Row(
              children: [
                Expanded(
                  child: statisticCard('15000 EG', 'Income', Icons.download),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: statisticCard('35000 EG', 'Outcome', Icons.upload),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Bottom Titles
  Widget bottomTitles(double value, TitleMeta meta) {
    const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May'];
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(months[value.toInt()], style: TextStyle(fontSize: 12)),
    );
  }

  // Statistic Card
  Widget statisticCard(String money, String label, IconData icon) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            child: Icon(icon, color: Colors.blue),
          ),
          SizedBox(height: 10),
          Text(
            money,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 6),
          Text(label, style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}

// Data for chart
List<BarChartGroupData> get chartData => [
  barGroup(0, 7500, 5000),
  barGroup(1, 7400, 4800),
  barGroup(2, 7600, 4700),
  barGroup(3, 7500, 4900),
  barGroup(4, 7700, 5000),
];

BarChartGroupData barGroup(int x, double income, double outcome) {
  return BarChartGroupData(
    x: x,
    barRods: [
      BarChartRodData(
        toY: income,
        color: Colors.blueAccent,
        width: 16,
        borderRadius: BorderRadius.circular(4),
      ),
      BarChartRodData(
        toY: outcome,
        color: Colors.indigo,
        width: 16,
        borderRadius: BorderRadius.circular(4),
      ),
    ],
  );
}
