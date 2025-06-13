


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

import 'package:crm/view/home/pages/My_reports/activity_reports_page.dart';
import 'package:crm/view/home/pages/My_reports/call_reports_page.dart';
import 'package:crm/view/home/pages/My_reports/follow_up_reports_page.dart';
import 'package:crm/view/home/pages/Walking_Leads/Dispose_content_page.dart';
import 'package:crm/view/home/pages/Walking_Leads/Leads_content_page.dart';
import 'package:crm/view/home/pages/Walking_Leads/Other_content_page.dart';
import 'package:flutter/material.dart';

class WalkingLeadsPage extends StatefulWidget {
  const WalkingLeadsPage({super.key});

  @override
  State<WalkingLeadsPage> createState() => _WalkingLeadsPageState();
}

class _WalkingLeadsPageState extends State<WalkingLeadsPage> {
  int _reportsTabIndex = 0;

  final List<Widget> _screens = [
    LeadsContentPage(),
    DisposeContentPage(),
    OtherContentPage(),
  ];

  final List<String> reportTabs = [
    "Leads",
    "Dispose",
    "Others",
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
                    'We are here to connect with you. Connect\nus freely.',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: const EdgeInsets.all(6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        reportTabs.length,
                        (index) {
                          final isSelected = _reportsTabIndex == index;
                          return Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _reportsTabIndex = index;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: isSelected ? Colors.white : Colors.transparent,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  reportTabs[index],
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: isSelected
                                        ? const Color(0xFF175F8E)
                                        : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
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
