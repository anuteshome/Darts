import "package:flutter/material.dart";

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 168, 138, 215),
      child: Column(
        children: [
          DrawerHeader(child: Icon(Icons.favorite, size: 48)),
            ListTile(
            leading: Icon(Icons.person),
            title: Text("H O M E"),
            onTap: () {
              Navigator.pop(context);

              Navigator.pushNamed(context, 'home_pages');
            },
            ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("P R O F I L E"),
            onTap: () {
              Navigator.pop(context);

              Navigator.pushNamed(context, 'first_pages');
            },
            // Setting
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("S E T T I N G S"),
            onTap: () {
              Navigator.pop(context);

              Navigator.pushNamed(context, 'second_pages');
            },
          ),
        ],
      ),
    );
  }
}
