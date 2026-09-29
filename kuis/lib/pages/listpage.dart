import 'package:flutter/material.dart';

import 'detailpage.dart';
import 'login.dart';
import '../models/culinaryModels.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Culinary List Page"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: culinaryList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(culinaryList[index].name),
            subtitle: Text('${culinaryList[index].category} berasal dari ${culinaryList[index].origin}'),
            leading: Image.network(culinaryList[index].imageUrl),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(culinaryModel: culinaryList[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}