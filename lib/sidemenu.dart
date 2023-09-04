import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          Container(
            height: 200,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(232, 165, 7, 1),
              ),
              padding: EdgeInsets.zero,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                  ),
                  title: const Text('Alok Maurya'),
                  subtitle: const Text('user@gmail.com'),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.branding_watermark_sharp),
            title: const Text('Brands'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('Contact'),
            onTap: () {},
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.circleUser),
            title: const Text('My Account'),
            onTap: () {},
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(232, 165, 7, 1),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.arrowRightFromBracket,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
