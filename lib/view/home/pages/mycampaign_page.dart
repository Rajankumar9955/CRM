
import 'package:crm/view/home/pages/Calling_page.dart';
import 'package:crm/view/home/pages/notifications_page.dart';
import 'package:flutter/material.dart';
import 'package:crm/view/home/pages/drawer.dart';

class MycampaignPage extends StatelessWidget {
  const MycampaignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  NavbarSlider(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme:  IconThemeData(color: Colors.white),
        centerTitle: true,
        actions: [
          IconButton(icon:  Icon(Icons.notifications), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationsPage()));
          }),
          IconButton(icon:  Icon(Icons.call), onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>CallingPage()));
          }),
           SizedBox(width: 10),
        ],
      ),


      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                decoration:  BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF175F8E), Color(0xFF4BB0D0)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),

            Positioned(
              top: 65,
              right: 0,
              bottom: 0,
              left: 0,
              child: Column(
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration:  BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/header_bg.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Text(
                            "Cybrom Technology",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Pvt. Ltd",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
        
                ],
              ),
            ),

              Positioned(
                    left: 16,
                    right: 16,
                    top:220,
                    bottom: 0,
                   child: Container(
                      
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 10,
                          )
                        ],
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          _buildSearchBox(),
                           SizedBox(height: 16),
              
                          Expanded(
                            child: ListView.builder(
                              itemCount: 5,
                              physics:  BouncingScrollPhysics(),
                              itemBuilder: (context, index) => _buildCampaignCard(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

          ],
        ),
      ),
    );
  }

  Widget _buildSearchBox() {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 5,
            offset:  Offset(0, 2),
          ),
        ],
      ),
      child:  TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search Here',
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

  Widget _buildCampaignCard() {
  return Container(
    
    margin:  EdgeInsets.only(bottom: 20),
    padding:  EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300,
          blurRadius: 6,
          offset:  Offset(0, 3),
        )
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:  Text(
                  'Campaign Name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
             Icon(Icons.close, size: 20),
          ],
        ),
         SizedBox(height: 12),
        GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        
          shrinkWrap: true,
          physics:  AlwaysScrollableScrollPhysics(),
          childAspectRatio: 1.9,
          children: [
            _buildStatusBox(Colors.orange, 'Assign', '10'),
            _buildStatusBox(Colors.red, 'UnAssign', '1'),
            _buildStatusBox(Colors.blue, 'In Progress', '9'),
            _buildStatusBox(Colors.green, 'Completed', '10'),
          ],
        ),
      ],
    ),
  );
}


  Widget _buildStatusBox(Color color, String label, String count) {
    return Container(

      padding:  EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(radius: 5, backgroundColor: color),
           SizedBox(width: 6),
          Expanded(
            child: Text(
              label,
              style:  TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
               Text(
                'Total',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              Text(
                count,
                style:  TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

