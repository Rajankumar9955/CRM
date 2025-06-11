import 'package:crm/view/home/pages/Calling_page.dart';
import 'package:flutter/material.dart';
import 'package:crm/view/home/pages/drawer.dart';
import 'package:crm/view/home/pages/notifications_page.dart';

class WalkingLeadsForm extends StatefulWidget {
  const WalkingLeadsForm({super.key});

  @override
  State<WalkingLeadsForm> createState() => _WalkingLeadsFormState();
}

class _WalkingLeadsFormState extends State<WalkingLeadsForm> {
  final _formKey = GlobalKey<FormState>();
  String? selectedCampaign;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationsPage()),
              );
            },
          ),
          IconButton(icon: const Icon(Icons.call), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CallingPage()));
          }),
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

          //Image hai
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

          // Main Form Container
          Positioned(
            top: 200,
            left: 16,
            right: 16,
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
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Center(
                        child: Text(
                          "Walking leads",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF175F8E),
                          ),
                        ),
                      ),
                       SizedBox(height: 30),
                      
                      // Contact Name Field
                       Text(
                        "Contact Name*",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                       SizedBox(height: 8),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter the Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding:  EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 14,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter contact name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 5),
                      
                      // Contact Number Field
                      const Text(
                        "Contact Number*",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter the Number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 14,
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter contact number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 5),
                      
                      // Email Field
                      const Text(
                        "Email*",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter the Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 14,
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 5),
                      
                      // Campaign Dropdown
                      const Text(
                        "Select Campaign*",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          hintText: "Select Campaign",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 14,
                          ),
                        ),
                        value: selectedCampaign,
                        items: const [
                          DropdownMenuItem(
                            value: 'Campaign 1',
                            child: Text('Campaign 1'),
                          ),
                          DropdownMenuItem(
                            value: 'Campaign 2',
                            child: Text('Campaign 2'),
                          ),
                          DropdownMenuItem(
                            value: 'Campaign 3',
                            child: Text('Campaign 3'),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedCampaign = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select a campaign';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height:20),
                      
                      // Save Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF175F8E),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Form submitted successfully'),
                                ),
                              );
                            }
                          },
                          child: const Text(
                            "Save",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
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
        ],
      ),
    );
  }
}