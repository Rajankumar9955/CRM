import 'package:flutter/material.dart';

class CallReportsPage extends StatelessWidget {
  const CallReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(top: 10, left: 12, right: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildLoginReport(screenWidth),

               SizedBox(height: 20),
              _buildMonthlyBarChart(),

               SizedBox(height: 10),
               Text(
                '85% Total month call records',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),

               SizedBox(height: 20),

              // Summary Report
              _buildReportCard(title: 'Call Reports', data: {
                'Total Calls Attempted': '400',
                'Total Calls Connected': '352',
                'Converted Leads': '40',
                'Total Calls Time': '45 Min',
                'Average Call Duration': '2 min',
                'Average Start Call Time': '10:00 AM',
              }, screenWidth: screenWidth),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginReport(double screenWidth) {
    return Container(
      width: screenWidth * 0.97,
      padding:  EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color:  Color.fromARGB(255, 199, 65, 65).withOpacity(0.1),
            blurRadius: 12,
            spreadRadius: 1,
            offset:  Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('Login Report', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
           SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _infoChip('Time :', '4:00'),
              _infoChip('Activity :', 'Login'),
            ],
          ),
           SizedBox(height: 12),
          Container(
            padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(5),
            ),
            child:  Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Description :  ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                Expanded(
                  child: Text(
                    'Late due to Stuck in traffic',
                    style: TextStyle(fontSize: 13),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoChip(String label, String value) {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        '$label $value',
        style:  TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget _buildMonthlyBarChart() {
    return Container(
      height: 180,
      padding:  EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _buildBar(70, 'Jan'),
            _buildBar(100, 'Feb'),
            _buildBar(80, 'Mar'),
            _buildBar(60, 'Apr'),
            _buildBar(60, 'May'),
            _buildBar(50, 'Jun'),
            _buildBar(60, 'Jul'),
            _buildBar(40, 'Aug'),
            _buildBar(90, 'Sep'),
            _buildBar(60, 'Oct'),
            _buildBar(20, 'Nov'),
            _buildBar(100, 'Dec'),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     const Icon(Icons.location_pin, color: Colors.blue, size: 20),
            //     Container(height: 100, width: 20, color: Colors.blue),
            //     const SizedBox(height: 4),
            //     const Text('Dec', style: TextStyle(fontSize: 12)),
            //   ],
            // ),
          ].expand((bar) => [bar, const SizedBox(width: 12)]).toList(),
        ),
      ),
    );
  }

  Widget _buildBar(double height, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(height: height, width: 20, color: Colors.blue),
         SizedBox(height: 4),
        Text(label, style:  TextStyle(fontSize: 12)),
      ],
    );
  }
  Widget _buildReportCard({
  required String title,
  required Map<String, String> data,
  required double screenWidth,
}) {
  final entries = data.entries.toList();

  return Container(
    width: screenWidth * 0.97,
    padding: const EdgeInsets.all(16),
    margin: const EdgeInsets.only(bottom: 16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
          ),
        const SizedBox(height: 12),

        ...List.generate(entries.length, (index) {
          final entry = entries[index];
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(entry.key, style: TextStyle(fontSize: 14, color: Colors.grey[800])),
                  Text(entry.value, style:  TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                ],
              ),
              if (index != entries.length - 1) // avoid divider after the last item
                 Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Divider(color: Colors.grey, height: 1),
                ),
            ],
          );
        }),
      ],
    ),
  );
}

}
