
import 'package:crm/view/home/pages/mycampaign_page.dart';
import 'package:flutter/material.dart';
import 'package:crm/view/home/pages/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavbarSlider(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notification tap
            },
          ),
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {
              // Handle call tap
            },
          ),
          const SizedBox(width: 10),
        ],
      ),
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

          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: kToolbarHeight + 20),
                height: 140,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/header_bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Align(
                  alignment: Alignment.center,
                  child: const Text(
                    "Cybrom Technology\nPvt.ltd",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Grid Container
              Container(
                width: 338,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  height: 525,
                  margin:  EdgeInsets.only(top: 1),
                  padding: const EdgeInsets.all(16),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 22,
                    childAspectRatio: 1.1,
                         physics: const NeverScrollableScrollPhysics(),
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MyCampaign()),
                                );
                              },
                              child: _buildDashboardCard('My Campaign', Icons.edit, Colors.orange,),
                            ),
                            GestureDetector(
                              onTap: () {
                               
                              },
                              child: _buildDashboardCard('My Leads', Icons.trending_up, const Color(0xFF2E5984)),
                            ),
                            GestureDetector(
                              onTap: () {
                                
                              },
                              child: _buildDashboardCard('My Call Logs', Icons.person, const Color(0xFF64C5E8)),
                            ),
                            GestureDetector(
                              onTap: () {
                                
                              },
                          child: _buildDashboardCard('My Tasks', Icons.bar_chart, const Color(0xFF708090)),
                            ),
                            GestureDetector(
                              onTap: () {
                                
                              },
                           child: _buildDashboardCard('My Reports', Icons.folder, const Color(0xFF6B7DB3)),
                            ),
                            GestureDetector(
                              onTap: () {
                                
                              },
                         child: _buildDashboardCard('Walking Leads', Icons.directions_walk, const Color(0xFF87CEEB)),
                            ),
                          ],              
                  ),
                ),
              ),
            ],
          ),

          Positioned(
            top: 200,
            left: 20,
            right: 20,
            child: Container(
              padding:  EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color:  Color.fromARGB(255, 7, 6, 6).withOpacity(0.3),
                    blurRadius: 10,
                  )
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Welcome Back", style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 4),
                        Text(
                          "We are here to connect with you , Connect us freely.",
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(height: 4),
                        Text("Warm Regards,", style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  const Icon(Icons.arrow_right_alt),
                ],
              ),
            ),
          ),
        ],
      ),
       floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF175F8E),
        shape:  CircleBorder(),
        onPressed: () {
          print("You Are Printing Plus Something");
        },
        child: const Icon(Icons.add, color: Color.fromARGB(255, 245, 249, 251), size: 30),
      ),
    );
  }

  // Grid card widget
  Widget _buildDashboardCard(String title, IconData icon, Color color) {
    return Container(
      height: 110,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 28),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6),
          const Icon(Icons.arrow_right_alt, color: Colors.white),
        ],
      ),
    );
  }
}


