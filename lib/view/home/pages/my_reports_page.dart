
// import 'package:crm/view/home/pages/Calling_page.dart';
// import 'package:flutter/material.dart';
// import 'package:crm/view/home/pages/drawer.dart';
// import 'package:crm/view/home/pages/notifications_page.dart';

// class MyReportsPage extends StatefulWidget {
//   const MyReportsPage({super.key});

//   @override
//   State<MyReportsPage> createState() => _MyReportsPageState();
// }

// class _MyReportsPageState extends State<MyReportsPage> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: Stack(
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Color(0xFF175F8E), Color(0xFF4BB0D0)],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//               ),
//             ),
//           ),


//           // Main Container
//           Positioned(
//             top: 50,
//             left: 9,
//             right: 9,
//             bottom: 0,
//             child: Container(
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(25),
//                 boxShadow: const [
//                   BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 8,
//                   ),
//                 ],
//               ),
              

                





//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class MyReportsPage extends StatefulWidget {
  const MyReportsPage({Key? key}) : super(key: key);

  @override
  State<MyReportsPage> createState() => _MyReportsPageState();
}

class _MyReportsPageState extends State<MyReportsPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF175F8E), Color(0xFF4BB0D0)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 9,
            right: 9,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'My Reports',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'We are here to connect with you. Connect us freely.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildNavIcon(Icons.phone, 'Call Reports', 0),
                      _buildNavIcon(Icons.follow_the_signs, 'Follow-up Reports', 1),
                      _buildNavIcon(Icons.trending_up, 'Activity Reports', 2),
                      _buildNavIcon(Icons.message, 'Message Act Reports', 3),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          if (_selectedIndex == 0) _buildCallReports(screenWidth),
                          if (_selectedIndex == 1) _buildFollowUpReports(screenWidth),
                          if (_selectedIndex == 2) _buildActivityReports(screenWidth),
                          if (_selectedIndex == 3) _buildMessageReports(screenWidth),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavIcon(IconData icon, String label, int index) {
    final isSelected = _selectedIndex == index;
    final primaryColor = const Color(0xFF175F8E);

    return GestureDetector(
      onTap: () => setState(() => _selectedIndex = index),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: isSelected ? primaryColor : Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: isSelected ? Colors.white : Colors.grey[600]),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 60,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10, color: Colors.grey[600], fontWeight: FontWeight.w500),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCallReports(double screenWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: screenWidth * 0.97,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 199, 65, 65).withOpacity(0.1),
                blurRadius: 12,
                spreadRadius: 1,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Login Report', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _infoChip('Time :', '4:00'),
                  _infoChip('Activity :', 'Login'),
                ],
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Description :  ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
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
        ),
        const SizedBox(height: 15),
        Container(
          width: screenWidth * 0.97,
          height: 180,
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildBar(10, 'Jan'),
              _buildBar(100, 'Feb'),
              _buildBar(80, 'Mar'),
              _buildBar(60, 'Apr'),
              _buildBar(60, 'may'),
              _buildBar(50, 'jun'),
              _buildBar(60, 'july'),
              _buildBar(40, 'Aug'),
              _buildBar(90, 'Sep'),
              _buildBar(60, 'Oct'),
              _buildBar(20, 'Nov'),
              _buildBar(100, 'Dec'),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     const Icon(Icons.location_pin, color: Colors.blue, size: 20),
              //     Container(height: 120, width: 20, color: Colors.blue),
              //     const SizedBox(height: 4),
              //     const Text('May', style: TextStyle(fontSize: 12)),
              //   ],
              // ),
              // _buildBar(90, 'Jun'),
              // _buildBar(65, 'Jul'),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 12),
          child: Center(
            child: Text('85% Total month call records',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
          ),
        ),
        _buildReportCard(title: 'Call Reports', data: {
          'Total Calls Attempted': '400',
          'Total Calls Connected': '352',
          'Converted Leads': '40',
          'Total Calls Time': '45 Min',
          'Average Call Duration': '2 min',
          'Average Start Call Time': '10:00 AM',
        }, screenWidth: screenWidth),
      ],
    );
  }

  Widget _buildBar(double height, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(height: height, width: 20, color: Colors.grey[400]),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _infoChip(String label, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text('$label $value',
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
    );
  }

  Widget _buildFollowUpReports(double screenWidth) => _buildReportCard(title: 'Follow-up Reports', data: {
    'Total Follow-ups': '120',
    'Completed': '98',
    'Pending': '22',
  }, screenWidth: screenWidth);

  Widget _buildActivityReports(double screenWidth) => _buildReportCard(title: 'Activity Reports', data: {
    'Total Activities': '50',
    'Meetings Scheduled': '15',
    'Tasks Done': '35',
  }, screenWidth: screenWidth);

  Widget _buildMessageReports(double screenWidth) => _buildReportCard(title: 'Message Activity Reports', data: {
    'Messages Sent': '300',
    'Messages Delivered': '280',
    'Replies Received': '75',
  }, screenWidth: screenWidth);

  Widget _buildReportCard({required String title, required Map<String, String> data, required double screenWidth}) {
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
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          ...data.entries.map((entry) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(entry.key, style: TextStyle(fontSize: 14, color: Colors.grey[800])),
                    Text(entry.value,
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

