// import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';

// import 'package:flutter/material.dart';
// // ignore: depend_on_referenced_packages
// import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:crm/view/home/pages/drawer.dart';

// class CallingPage extends StatefulWidget {
//   const CallingPage({super.key});

//   @override
//   State<CallingPage> createState() => _CallingPageState();
// }

// class _CallingPageState extends State<CallingPage> {
//   int selectedTab = 2; 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const NavbarSlider(),
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.white),
//         centerTitle: true,
//         actions: [
//           IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
//           IconButton(icon: const Icon(Icons.call), onPressed: () {}),
//           const SizedBox(width: 10),
//         ],
//       ),
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

//           // Image
//           Positioned(
//             top: 70,
//             left: 0,
//             right: 0,
//             child: Container(
//               height: 130,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/header_bg.png'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children:  [
//                     Text(
//                       "Cybrom Technology",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 4),
//                     Text(
//                       "Pvt.Ltd.",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),

//           // Main Container hai 
//           Positioned(
//             top: 200,
//             left: 16,
//             right: 16,
//             bottom: 0,
//             child: Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(25),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 8,
//                   ),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   _buildTabButtons(),
//                    SizedBox(height: 20),
//                   _buildCallStatsHeader(),                  
//                    SizedBox(height: 20),
//                   Expanded(child: _buildTabContent()),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildTabButtons() {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.grey.shade200,
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: Row(
//         children: [
//           _buildTab("Incoming", 0),
//           _buildTab("Outgoing", 1),
//           _buildTab("Missed", 2),
//         ],
//       ),
//     );
//   }

//   Widget _buildTab(String title, int index) {
//     final isSelected = selectedTab == index;
//     return Expanded(
//       child: GestureDetector(
//         onTap: () {
//           setState(() => selectedTab = index);
//         },
//         child: Container(
//           padding:  EdgeInsets.symmetric(vertical: 12),
//           decoration: BoxDecoration(
//             color: isSelected ? const Color(0xFF175F8E) : Colors.transparent,
//             borderRadius: BorderRadius.circular(30),
//           ),
//           child: Center(
//             child: Text(
//               title,
//               style: TextStyle(
//                 color: isSelected ? Colors.white : Colors.black,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }


//   Widget _buildCallStatsHeader() {
//     String title = '';
//     if (selectedTab == 0) {
//       title = "Incoming Calls";
//       return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(title,
//                 style:  TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//              SizedBox(height: 4),
//              Text("Attend Calls  457"),
//              Text("31-May-2025 - Present"),
//           ],
//         ),
//         Column(
//           children:  [
//             Icon(Icons.filter_alt_outlined, size: 26, ),
//             SizedBox(height: 4),
//             Text("Filter by date", style: TextStyle(fontSize: 12)),
//             SizedBox(height: 5,),
//             CircularPercentIndicator(
//               radius: 32.0,
//               lineWidth: 8.0,
//               percent: 0.87,
//               center:  Text("87"),
//               progressColor: Colors.red,
//               backgroundColor: Colors.grey.shade200,
//               circularStrokeCap: CircularStrokeCap.round,
//             ),
//           ],
//         )
//       ],
//     );

//     } else if (selectedTab == 1) {
//       title = "Outgoing Calls";
//       return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(title,
//                 style:  TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//              SizedBox(height: 4),
//              Text("Attend Calls  4571111"),
//              Text("31-May-2025 - Present"),
//           ],
//         ),
//         Column(
//           children:  [
//             Icon(Icons.filter_alt_outlined, size: 26),
//             SizedBox(height: 4),
//             Text("Filter by date", style: TextStyle(fontSize: 12)),
//             SizedBox(height: 8,),

//              CircularPercentIndicator(
//               radius: 32.0,
//               lineWidth: 8.0,
//               percent: 0.87,
//               center:  Text("87"),
//               progressColor: Colors.red,
//               backgroundColor: Colors.grey.shade200,
//               circularStrokeCap: CircularStrokeCap.round,
//             ),

//           ],
//         )
//       ],
//     );
//     } else {
//       title = "Missed Calls";
//       return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(title,
//             style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 4),
//             const Text("Attend Calls  457"),
//             const Text("31-May-2025 - Present"),
//           ],
//         ),
//         Column(
//           children:  [
//             Icon(Icons.filter_alt_outlined, size: 26),
//             SizedBox(height: 4),
//             Text("Filter by date", style: TextStyle(fontSize: 12)),
//             SizedBox(height: 8,),
            
//             CircularPercentIndicator(
//               radius: 32.0,
//               lineWidth: 8.0,
//               percent: 0.87,
//               center:  Text("87"),
//               progressColor: Colors.red,
//               backgroundColor: Colors.grey.shade200,
//               circularStrokeCap: CircularStrokeCap.round,
//             ),
            
//           ],
//         )
//       ],
//     );
//     }
  
//   }

//   Widget _buildTabContent() {
//     if (selectedTab == 0) {
//       return ListView.builder(
//         padding: EdgeInsets.only(bottom: 25),
//         itemCount: 2,
//         itemBuilder: (_, index) => _buildCallCard(
//           title: "User Name",
//           time: "12:00 PM",
//           contact: "99900000",
//           duration: "2 min",
//         ),
//       );
//     } else if (selectedTab == 1) {
//       return ListView.builder(
//         itemCount: 2,
//         itemBuilder: (_, index) => _buildCallCard(
//           title: "User Name",
//           time: "1:10 PM",
//           contact: "88810000",
//           duration: "1 min",
//         ),
//       );
//     } else {
//       return ListView.builder(
//         itemCount: 2,
//         itemBuilder: (_, index) => _buildCallCard(
//           title: "User Name",
//           time: "3:30 PM",
//           contact: "77720000",
//           duration: "0 min",
//         ),
//       );
//     }
//   }

//   Widget _buildCallCard({
//     required String title,
//     required String time,
//     required String contact,
//     required String duration,
//   }) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 16),
//       padding: const EdgeInsets.all(14),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(18),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.shade300,
//             blurRadius: 6,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(title,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold, fontSize: 16)),
//               Text("Timing - $time"),
//             ],
//           ),
//           const SizedBox(height: 12),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Expanded(
//                 child: Card(
//                   color: const Color(0xFFF6F6F6),
//                   shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(10))),
//                   child: Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Center(
//                         child: Text("Record Time\n$duration",
//                             textAlign: TextAlign.center)),
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 10),
//               Expanded(
//                 child: Card(
//                   color: const Color(0xFFF6F6F6),
//                   shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(10))),
//                   child: Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Center(
//                         child: Text("Contact no.\n$contact",
//                             textAlign: TextAlign.center)),
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }




import 'package:crm/view/home/pages/notifications_page.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:crm/view/home/pages/drawer.dart';

class CallingPage extends StatefulWidget {
  const CallingPage({super.key});

  @override
  State<CallingPage> createState() => _CallingPageState();
}

class _CallingPageState extends State<CallingPage> {
  int selectedTab = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const NavbarSlider(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {
            // NotificationsPage();
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationsPage()));
          }),
          IconButton(icon: const Icon(Icons.call), onPressed: () {}),
          const SizedBox(width: 10),
        ],
      ),
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

          // Image
          Positioned(
            top: 70,
            left: 0,
            right: 0,
            child: Container(
              height: 130,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/header_bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Cybrom Technology",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Pvt.Ltd.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Main Container
          Positioned(
            top: 200,
            left: 16,
            right: 16,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
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
                  _buildTabButtons(),
                  const SizedBox(height: 20),
                  _buildCallStatsHeader(),
                  const SizedBox(height: 20),
                  Expanded(child: _buildTabContent()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabButtons() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          _buildTab("Incoming", 0),
          _buildTab("Outgoing", 1),
          _buildTab("Missed", 2),
        ],
      ),
    );
  }

  Widget _buildTab(String title, int index) {
    final isSelected = selectedTab == index;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() => selectedTab = index);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xFF175F8E) : Colors.transparent,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCallStatsHeader() {
    String title = '';
    Widget content;
    
    if (selectedTab == 0) {
      title = "Incoming Calls";
      content = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text("Attend Calls  457"),
              const Text("31-May-2025 - Present"),
            ],
          ),
          Column(
            children: [
             Row(
                children: [
              const Icon(Icons.filter_alt_outlined, size: 26),
              const SizedBox(height: 4),
              const Text("Filter by date", style: TextStyle(fontSize: 12)),
                ]
              ),
              const SizedBox(height: 5),
              CircularPercentIndicator(
                radius: 32.0,
                lineWidth: 8.0,
                percent: 0.87,
                center: const Text("455"),
                progressColor: Color(0XFF4DAB42),
                backgroundColor: Colors.grey.shade200,
                circularStrokeCap: CircularStrokeCap.round,
              ),
            ],
          )
        ],
      );
    } else if (selectedTab == 1) {
      title = "Outgoing Calls";
      content = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text("Attend Calls  4571111"),
              const Text("31-May-2025 - Present"),
            ],
          ),
          Column(
            children: [
               Row(
                children: [
              const Icon(Icons.filter_alt_outlined, size: 26),
              const SizedBox(height: 4),
              const Text("Filter by date", style: TextStyle(fontSize: 12)),
                ]
              ),
              const SizedBox(height: 8),
              CircularPercentIndicator(
                radius: 32.0,
                lineWidth: 8.0,
                percent: 0.87,
                center: const Text("87"),
                progressColor: Color(0XFF106197),
                backgroundColor: Colors.grey.shade200,
                circularStrokeCap: CircularStrokeCap.round,
              ),
            ],
          )
        ],
      );
    } else {
      title = "Missed Calls";
      content = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text("Attend Calls  457"),
              const Text("31-May-2025 - Present"),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
              const Icon(Icons.filter_alt_outlined, size: 26),
              const SizedBox(height: 4),
              const Text("Filter by date", style: TextStyle(fontSize: 12)),
                ]
              ),
              const SizedBox(height: 8),
              CircularPercentIndicator(
                radius: 32.0,
                lineWidth: 8.0,
                percent: 0.87,
                center: const Text("87"),
                progressColor: Colors.red,
                backgroundColor: Colors.grey.shade200,
                circularStrokeCap: CircularStrokeCap.round,
              ),
            ],
          )
        ],
      );
    }
    
    return content;
  }

  Widget _buildTabContent() {
    if (selectedTab == 0) {
      return ListView.builder(
        padding: const EdgeInsets.only(bottom: 25),
        itemCount: 2,
        itemBuilder: (_, index) => _buildCallCard(
          title: "User Name",
          time: "12:00 PM",
          contact: "99900000",
          duration: "2 min",
        ),
      );
    } else if (selectedTab == 1) {
      return ListView.builder(
        padding: const EdgeInsets.only(bottom: 25),
        itemCount: 2,
        itemBuilder: (_, index) => _buildCallCard(
          title: "User Name",
          time: "1:10 PM",
          contact: "88810000",
          duration: "1 min",
        ),
      );
    } else {
      return ListView.builder(
        padding: const EdgeInsets.only(bottom: 25),
        itemCount: 2,
        itemBuilder: (_, index) => _buildCallCard(
          title: "User Name",
          time: "3:30 PM",
          contact: "77720000",
          duration: "0 min",
        ),
      );
    }
  }

  Widget _buildCallCard({
    required String title,
    required String time,
    required String contact,
    required String duration,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 16,
                ),
              ),
              Text("Timing - $time"),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Card(
                  color: const Color(0xFFF6F6F6),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "Record Time\n$duration",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Card(
                  color: const Color(0xFFF6F6F6),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "Contact no.\n$contact",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}