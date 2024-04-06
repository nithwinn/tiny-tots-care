import 'package:flutter/material.dart';

class ChatStaff extends StatefulWidget {
  const ChatStaff();

  @override
  State<ChatStaff> createState() => _ChatStaffState();
}

class _ChatStaffState extends State<ChatStaff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 236, 232, 232),
        toolbarHeight: 70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, right: 0.5),
          child: Image.asset(
            'assets/dayana.png',
            fit: BoxFit.fill,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dayana',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "last seen today at 3:00pm",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              // Chat Messages Container
              color: Colors.grey[200], // Adjust color as needed
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListView(
               
                reverse: true,
                children: [
                  // Add your chat messages here
                  // Example:
                  // ChatMessage(text: 'Hello', sender: 'Dayana'),
                  // ChatMessage(text: 'Hi there!', sender: 'User'),
                ],
              ),
            ),
          ),
          Container(
            
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(color: Colors.grey), // Divider line
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // Implement sending message functionality here
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
