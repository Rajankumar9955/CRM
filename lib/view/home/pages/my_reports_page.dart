
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

class MyReportsPage extends StatelessWidget {
  const MyReportsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
     
      body: Stack(
        children: [
          // Gradient Background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF175F8E), Color(0xFF4BB0D0)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          // White Rounded Container
          Positioned(
            top: 50,
            left: 8,
            right: 8,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 8),
                ],
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // ==== HEADER CARD ====
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: _cardDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'My Reports',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'We are here to connect with you. Connect us freely.',
                            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildNavIcon(Icons.phone, 'Call Reports', const Color(0xFF1E3A8A)),
                              _buildNavIcon(Icons.follow_the_signs, 'Follow-up Reports', Colors.grey[700]!),
                              _buildNavIcon(Icons.trending_up, 'Activity Reports', Colors.grey[700]!),
                              _buildNavIcon(Icons.message, 'Message Act Reports', Colors.grey[700]!),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // ==== LOGIN REPORT ====
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: _cardDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Login Report',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black87),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Time : 4:00', style: TextStyle(fontSize: 14, color: Colors.grey[600])),
                                    const SizedBox(height: 8),
                                    Text('Description :', style: TextStyle(fontSize: 14, color: Colors.grey[600])),
                                    const Text('Late due to Stuck in traffic', style: TextStyle(fontSize: 14, color: Colors.black87)),
                                  ],
                                ),
                              ),
                              Text('Activity : Login', style: TextStyle(fontSize: 14, color: Colors.grey[600])),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // ==== CHART ====
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: _cardDecoration(),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF3B82F6),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  children: [
                                    Container(width: 8, height: 8, decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle)),
                                    const SizedBox(width: 4),
                                    const Text('200 Calls', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Text('Average Call 12m', style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                            ],
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            height: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                _buildBarChart('Jan', 80, const Color(0xFF3B82F6)),
                                _buildBarChart('Feb', 120, const Color(0xFF3B82F6)),
                                _buildBarChart('Mar', 100, const Color(0xFF3B82F6)),
                                _buildBarChart('Apr', 160, const Color(0xFF3B82F6)),
                                _buildBarChart('May', 140, const Color(0xFF3B82F6)),
                                _buildBarChart('Jun', 130, const Color(0xFF3B82F6)),
                                _buildBarChart('Jul', 110, const Color(0xFF3B82F6)),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text('85% Total month call records', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey[700])),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // ==== CALL REPORT ====
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: _cardDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Call Reports', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black87)),
                          const SizedBox(height: 16),
                          _buildStatRow('Total Calls Attempted', '400'),
                          _buildStatRow('Total Calls Connected', '352'),
                          _buildStatRow('Converted Leads', '40'),
                          _buildStatRow('Total Calls Time', '45 Min'),
                          _buildStatRow('Average Call Duration', '2 min'),
                          _buildStatRow('Average Start Call Time', '10:00 AM'),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(color: Colors.grey.withOpacity(0.1), spreadRadius: 1, blurRadius: 6, offset: const Offset(0, 2)),
      ],
    );
  }

  Widget _buildNavIcon(IconData icon, String label, Color color) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: color == const Color(0xFF1E3A8A) ? color : Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: color == const Color(0xFF1E3A8A) ? Colors.white : Colors.grey[600], size: 24),
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
    );
  }

  Widget _buildBarChart(String month, double height, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(width: 25, height: height, decoration: BoxDecoration(color: color, borderRadius: const BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4)))),
        const SizedBox(height: 8),
        Text(month, style: TextStyle(fontSize: 12, color: Colors.grey[600], fontWeight: FontWeight.w500)),
      ],
    );
  }

  Widget _buildStatRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 14, color: Colors.grey[700])),
          Text(value, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black87)),
        ],
      ),
    );
  }
}
