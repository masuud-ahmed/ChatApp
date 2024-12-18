import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  final List<Map<String, String>> chatData = [
    {
      'name': 'Akshita Sharma',
      'message': 'Shall we meet today?',
      'time': '5:45 PM',
      'avatar':
          'https://randomuser.me/api/portraits/women/1.jpg', // Network image URL
      'unread': '1'
    },
    {
      'name': 'Sachin, School',
      'message': 'Hahahaha... 😂',
      'time': '11:12 AM',
      'avatar':
          'https://randomuser.me/api/portraits/men/2.jpg', // Network image URL
      'unread': '2'
    },
    {
      'name': 'Rahul Sharma',
      'message': 'Bro... Harry Potter forever 😎',
      'time': '10:45 AM',
      'avatar':
          'https://randomuser.me/api/portraits/men/3.jpg', // Network image URL
      'unread': ''
    },
    {
      'name': 'Vijay Saini',
      'message': 'Haan abhi utha hi hun...',
      'time': '8:06 AM',
      'avatar':
          'https://randomuser.me/api/portraits/men/4.jpg', // Network image URL
      'unread': ''
    },
    {
      'name': 'Nidhi Agarwal',
      'message': 'Me too gonna purchase 1',
      'time': 'Yesterday',
      'avatar':
          'https://randomuser.me/api/portraits/women/5.jpg', // Network image URL
      'unread': ''
    },
    {
      'name': 'Taylor Swift',
      'message': 'You coming to Jaipur !! 😍❤',
      'time': 'Yesterday',
      'avatar':
          'https://randomuser.me/api/portraits/women/6.jpg', // Network image URL
      'unread': ''
    },
    {
      'name': 'Band of Brothers',
      'message': 'Video',
      'time': 'Yesterday',
      'avatar':
          'https://randomuser.me/api/portraits/men/7.jpg', // Network image URL
      'unread': '5'
    },
    {
      'name': 'Office Office',
      'message': 'Ok, I’ll see to that',
      'time': 'Friday',
      'avatar':
          'https://randomuser.me/api/portraits/men/8.jpg', // Network image URL
      'unread': ''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: Icon(Icons.search, color: Colors.black),
        title: Text('Chats', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://randomuser.me/api/portraits/men/9.jpg'), // User avatar
          ),
          SizedBox(width: 10),
        ],
      ),
      body: ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context, index) {
          final chat = chatData[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(chat['avatar']!),
            ),
            title: Text(
              chat['name']!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(chat['message']!),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  chat['time']!,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                if (chat['unread'] != '')
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      chat['unread']!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for new chat
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
