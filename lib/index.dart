import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class index extends StatefulWidget {
  const index({Key? key}) : super(key: key);

  @override
  State<index> createState() => _indexState();
}

class _indexState extends State<index> {
  getdata() async {
    var response =
        await http.get(Uri.https("jsonplaceholder.typicode.com", "users"));
    var jsonData = jsonDecode(response.body);
    List<User> users = [];

    for (var u in jsonData) {
      User user = User(u['name'], u['username'], u['email']);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Requested API')),
      body: Container(
        child: Card(
          child: FutureBuilder(
            future: getdata(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                    child: Text('Loading...'),
                  ),
                );
              } else
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Text(snapshot.data[i].username),
                        subtitle: Text(snapshot.data[i].name),
                        trailing: Text(snapshot.data[i].email),
                        
                      );
                    });
            },
          ),
        ),
      ),
    );
  }
}

class User {
  final String name, username, email ;

  User(this.name, this.username, this.email);

 
}
