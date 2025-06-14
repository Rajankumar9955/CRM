import 'package:flutter/material.dart';

class LeadsContentPage extends StatelessWidget {
  const LeadsContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFF9F9F9),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCard(
                title: "Campaign Details",
                items:  {
                  "Campaign Name": "Mehak Patel",
                  "Number": "5269874562",
                  "Assigned to": "Ankit Mishra",
                },
              ),
              const SizedBox(height: 20),
              _buildCard(
                title: "Leads Details",
                items:  {
                  "Contact Name": "Mehak Patel",
                  "Email": "mehak@gmail.com",
                  "Creation Time": "25 May 2025",
                  "Tag": "No",
                  "Stage": "Open",
                },
              ),
               SizedBox(height: 40),
              Center(
                child: Image.asset(
                  'assets/plane.png', 
                  height: 100,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required Map<String, String> items,
  }) {
    return Container(
      width: double.infinity,
      padding:  EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style:  TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),

          ...items.entries.map((entry) {
            return Padding(
              padding:  EdgeInsets.symmetric(vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    entry.key,
                    style:  TextStyle(fontSize: 14),
                  ),
                  Text(
                    entry.value,
                    style:  TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
