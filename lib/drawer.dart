import 'package:flutter/material.dart';
import 'package:new_app/utils/constants.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // DrawerHeader(
          //   padding: EdgeInsets.all(15),
          //   decoration: BoxDecoration(color: Colors.teal[400]),
          //   child: Image.asset(
          //     'assets/images/103.jpg',
          //     fit: BoxFit.cover,
          //   ),
          // ),
          UserAccountsDrawerHeader(
            accountEmail: Text(
              'toobatehreemsheikh@gmail.com',
            ),
            accountName: Text('Tooba Tehreem Sheikh'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fHdvbWVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            ),
            // currentAccountPicture: Image.network(
            //   'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fHdvbWVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
            // ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Account'),
            subtitle: Text('Personal'),
            trailing: Icon(Icons.edit),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('toobatehreemsheikh@gmail.com'),
            trailing: Icon(Icons.send),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            trailing: Icon(Icons.edit),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            subtitle: Text('toobatehreemsheikh@gmail.com'),
            onTap: () {
              Constants.prefs.setBool('LoggedIn', false);
              Navigator.pushReplacementNamed(context, '/login');
            },
          )
        ],
      ),
    );
  }
}
