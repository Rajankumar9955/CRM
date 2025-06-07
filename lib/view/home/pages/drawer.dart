import 'package:flutter/material.dart';

class NavbarSlider extends StatelessWidget {
  const NavbarSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 270,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0D5C8B), Color(0xFF93C9E0)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile 
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, size: 35, color: Colors.grey),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'My Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Mehak Patel',
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                        Text(
                          'mehak@gmail.com',
                          style: TextStyle(color: Colors.white54, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
               ),

              const Divider(color: Colors.white30, thickness: 1),
              
              DrawerItem(icon: Icons.home, label: "Home", onTap: () {}),
              DrawerItem(icon: Icons.share, label: "Share", onTap: () {}),
              DrawerItem(icon: Icons.settings, label: "Settings", onTap: () {}),
              DrawerItem(icon: Icons.logout, label: "Logout", onTap: () {}),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const DrawerItem({
    required this.icon,
    required this.label,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        label,
        style: const TextStyle(color: Colors.white, fontSize: 15),
      ),
      onTap: onTap,
    );
  }
}
