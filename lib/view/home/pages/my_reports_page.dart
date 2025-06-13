
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





// import 'package:flutter/material.dart';

// class MyReportsPage extends StatefulWidget {
//   const MyReportsPage({Key? key}) : super(key: key);

//   @override
//   State<MyReportsPage> createState() => _MyReportsPageState();
// }

// class _MyReportsPageState extends State<MyReportsPage> {
//   int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;

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
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'My Reports',
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                     ),
//                   ),
//                   const SizedBox(height: 6),
//                   Text(
//                     'We are here to connect with you. Connect us freely.',
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: Colors.grey[600],
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       _buildNavIcon(Icons.phone, 'Call Reports', 0),
//                       _buildNavIcon(Icons.follow_the_signs, 'Follow-up Reports', 1),
//                       _buildNavIcon(Icons.trending_up, 'Activity Reports', 2),
//                       _buildNavIcon(Icons.message, 'Message Act Reports', 3),
//                     ],
//                   ),
//                   const SizedBox(height: 20),
//                   Expanded(
//                     child: SingleChildScrollView(
//                       child: Column(
//                         children: [
//                           if (_selectedIndex == 0) _buildCallReports(screenWidth),
//                           if (_selectedIndex == 1) _buildFollowUpReports(screenWidth),
//                           if (_selectedIndex == 2) _buildActivityReports(screenWidth),
//                           if (_selectedIndex == 3) _buildMessageReports(screenWidth),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildNavIcon(IconData icon, String label, int index) {
//     final isSelected = _selectedIndex == index;
//     final primaryColor = const Color(0xFF175F8E);

//     return GestureDetector(
//       onTap: () => setState(() => _selectedIndex = index),
//       child: Column(
//         children: [
//           Container(
//             width: 50,
//             height: 50,
//             decoration: BoxDecoration(
//               color: isSelected ? primaryColor : Colors.grey[100],
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Icon(icon, color: isSelected ? Colors.white : Colors.grey[600]),
//           ),
//           const SizedBox(height: 8),
//           SizedBox(
//             width: 60,
//             child: Text(
//               label,
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 10, color: Colors.grey[600], fontWeight: FontWeight.w500),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildCallReports(double screenWidth) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           width: screenWidth * 0.97,
//           padding: const EdgeInsets.all(16),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(12),
//             boxShadow: [
//               BoxShadow(
//                 color: const Color.fromARGB(255, 199, 65, 65).withOpacity(0.1),
//                 blurRadius: 12,
//                 spreadRadius: 1,
//                 offset: const Offset(0, 6),
//               ),
//             ],
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text('Login Report', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//               const SizedBox(height: 12),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   _infoChip('Time :', '4:00'),
//                   _infoChip('Activity :', 'Login'),
//                 ],
//               ),
//               const SizedBox(height: 12),
//               Container(
//                 padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//                 decoration: BoxDecoration(
//                   color: Colors.grey[100],
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 child: const Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Description :  ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
//                     Expanded(
//                       child: Text(
//                         'Late due to Stuck in traffic',
//                         style: TextStyle(fontSize: 13),
//                         overflow: TextOverflow.ellipsis,
//                         maxLines: 2,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         const SizedBox(height: 15),
//        Container(
//   width: screenWidth * 0.97,
//   height: 180,
//   padding: const EdgeInsets.all(12),
//   margin: const EdgeInsets.only(bottom: 16),
//   decoration: BoxDecoration(
//     color: Colors.grey[100],
//     borderRadius: BorderRadius.circular(16),
//   ),
//   child: SingleChildScrollView(
//     scrollDirection: Axis.horizontal,
//     child: Row(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         _buildBar(70, 'Jan'),
//         const SizedBox(width: 12),
//         _buildBar(100, 'Feb'),
//         const SizedBox(width: 12),
//         _buildBar(80, 'Mar'),
//         const SizedBox(width: 12),
//         _buildBar(60, 'Apr'),
//         const SizedBox(width: 12),
//         _buildBar(60, 'May'),
//         const SizedBox(width: 12),
//         _buildBar(50, 'Jun'),
//         const SizedBox(width: 12),
//         _buildBar(60, 'Jul'),
//         const SizedBox(width: 12),
//         _buildBar(40, 'Aug'),
//         const SizedBox(width: 12),
//         _buildBar(90, 'Sep'),
//         const SizedBox(width: 12),
//         _buildBar(60, 'Oct'),
//         const SizedBox(width: 12),
//         _buildBar(20, 'Nov'),

//         const SizedBox(width: 12),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//              Icon(Icons.location_pin, color: Colors.blue, size: 20),
//             Container(height: 110, width: 20, color: Colors.blue),
//              SizedBox(height: 4),
//              Text('dec', style: TextStyle(fontSize: 12)),
//           ],
//         ),
//       ],
//     ),
//   ),
// ),

//         const Padding(
//           padding: EdgeInsets.only(bottom: 12),
//           child: Center(
//             child: Text('85% Total month call records',
//                 style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
//           ),
//         ),
//         _buildReportCard(title: 'Call Reports', data: {
//           'Total Calls Attempted': '400',
//           'Total Calls Connected': '352',
//           'Converted Leads': '40',
//           'Total Calls Time': '45 Min',
//           'Average Call Duration': '2 min',
//           'Average Start Call Time': '10:00 AM',
//         }, screenWidth: screenWidth),
//       ],
//     );
//   }

//   Widget _buildBar(double height, String label) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         Container(height: height, width: 20, color: Colors.blue),
//         const SizedBox(height: 4),
//         Text(label, style: const TextStyle(fontSize: 12)),
//       ],
//     );
//   }

//   Widget _infoChip(String label, String value) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
//       decoration: BoxDecoration(
//         color: Colors.grey[100],
//         borderRadius: BorderRadius.circular(5),
//       ),
//       child: Text('$label $value',
//           style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
//     );
//   }

//   Widget _buildFollowUpReports(double screenWidth) => _buildReportCard(title: 'Follow-up Reports', data: {
//     'Total Follow-ups': '120',
//     'Completed': '98',
//     'Pending': '22',
//   }, screenWidth: screenWidth);

//   Widget _buildActivityReports(double screenWidth) => _buildReportCard(title: 'Activity Reports', data: {
//     'Total Activities': '50',
//     'Meetings Scheduled': '15',
//     'Tasks Done': '35',
//   }, screenWidth: screenWidth);

//   Widget _buildMessageReports(double screenWidth) => _buildReportCard(title: 'Message Activity Reports', data: {
//     'Messages Sent': '300',
//     'Messages Delivered': '280',
//     'Replies Received': '75',
//   }, screenWidth: screenWidth);

//   Widget _buildReportCard({required String title, required Map<String, String> data, required double screenWidth}) {
//     return Container(
//       width: screenWidth * 0.97,
//       padding: const EdgeInsets.all(16),
//       margin: const EdgeInsets.only(bottom: 16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(18),
//         boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//           const SizedBox(height: 12),
//           ...data.entries.map((entry) => Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 6),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(entry.key, style: TextStyle(fontSize: 14, color: Colors.grey[800])),
//                     Text(entry.value,
//                         style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
//                   ],
//                 ),
//               )),
//         ],
//       ),
//     );
//   }
// }



import 'package:crm/view/home/pages/My_reports/activity_reports_page.dart';
import 'package:crm/view/home/pages/My_reports/call_reports_page.dart';
import 'package:crm/view/home/pages/My_reports/follow_up_reports_page.dart';
import 'package:crm/view/home/pages/My_reports/message_reports.dart';
import 'package:flutter/material.dart';

class MyReportsPage extends StatefulWidget {
  const MyReportsPage({super.key});

  @override
  State<MyReportsPage> createState() => _MyReportsPageState();
}

class _MyReportsPageState extends State<MyReportsPage> {
  int _reportsTabIndex = 0;

  final List<Widget> _screens = [
    CallReportsPage(),
    FollowUpReportsPage(),
    ActivityReportsPage(),
    MessageReportsPage()
  ];

  final List<String> reportTabs = [
    "Call Reports",
    "Follow-up Reports",
    "Activity Reports",
    "Message Reports"
  ];

  final List<IconData> tabIcons = [
    Icons.phone,
    Icons.person_search,
    Icons.show_chart,
    Icons.message,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(218),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF175F8E), Color(0xFF4BB0D0)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "My Reports",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'We are here to connect with you. Connect\n us freely.',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                      reportTabs.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            _reportsTabIndex = index;
                          });
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: _reportsTabIndex == index
                                    ? Colors.white
                                    : Colors.white24,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(
                                tabIcons[index],
                                color: _reportsTabIndex == index
                                    ? const Color(0xFF175F8E)
                                    : Colors.white,
                              ),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              width: 60,
                              child: Text(
                                reportTabs[index],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF175F8E), Color(0xFF4BB0D0)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: _screens[_reportsTabIndex],
      ),
    );
  }
}