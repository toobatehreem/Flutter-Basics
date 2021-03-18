import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Hi flutter',
    home: MyApp(),
    theme: ThemeData(primaryColor: Colors.teal[800]),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var count = 0;
  TextEditingController _nameController = TextEditingController();
  String name = 'Change me';
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi flutter'),
        backgroundColor: Colors.teal[800],
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Center(
          child: Card(
            child: Column(
              children: [
                Image.asset('assets/images/103.jpg'),
                SizedBox(height: 10),
                Text(
                  name,
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: 'Enter Name',
                        labelText: 'Name',
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.text,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                        hintText: 'Enter Email',
                        labelText: 'Email',
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Enter Password',
                        labelText: 'Password',
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ],
              // child: Text(
              //   '$count',
              //   style: TextStyle(fontSize: 40.0),
              // ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            name = _nameController.text;
          });
        },
        backgroundColor: Colors.teal,
        tooltip: 'Increment',
        elevation: 5,
      ),
      drawer: Drawer(
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
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
