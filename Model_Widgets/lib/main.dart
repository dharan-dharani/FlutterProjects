// import 'package:flutter/material.dart';
// import 'package:model_widgets/dateandtimepickers.dart';
// // import 'package:model_widgets/chip.dart';
// // import 'package:model_widgets/dropDown.dart';
// // import 'package:model_widgets/navigation/homepage.dart';
// // import 'package:model_widgets/navigation/navigationrail.dart';
// // import 'package:model_widgets/animatedText.dart';
// // import 'package:model_widgets/radioButton.dart';


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Model Widgets',
//       home: Dateandtimepickers(),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:timeline_tile/timeline_tile.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final List<String> timelineItems = []; // List to store timeline data
//   final TextEditingController _textController = TextEditingController();
//   final _formKey = GlobalKey<FormState>();

//   void _addTimelineItem() {
//     if (_formKey.currentState?.validate() ?? false) {
//       setState(() {
//         timelineItems.add(_textController.text); // Add text to the timeline
//         _textController.clear(); // Clear the text field
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Dynamic Timeline"),
//         ),
//         body: Column(
//           children: [
//             Form(
//               key: _formKey,
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: TextFormField(
//                         controller: _textController,
//                         decoration: InputDecoration(
//                           labelText: "Add a timeline step",
//                           border: OutlineInputBorder(),
//                         ),
//                         validator: (value) {
//                           if (value == null || value.trim().isEmpty) {
//                             return "Please enter some text";
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                     SizedBox(width: 10),
//                     ElevatedButton(
//                       onPressed: _addTimelineItem,
//                       child: Text("Add"),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: timelineItems.length,
//                 itemBuilder: (context, index) {
//                   return TimelineTile(
//                     alignment: TimelineAlign.manual,
//                     lineXY: 0.2,
//                     isFirst: index == 0,
//                     isLast: index == timelineItems.length - 1,
//                     indicatorStyle: IndicatorStyle(
//                       width: 20,
//                       color: Colors.blue,
//                     ),
//                     beforeLineStyle: LineStyle(
//                       color: Colors.blue,
//                       thickness: 2,
//                     ),
//                     afterLineStyle: LineStyle(
//                       color: Colors.blue,
//                       thickness: 2,
//                     ),
//                     startChild: Container(
//                       margin: const EdgeInsets.all(16.0),
//                       padding: const EdgeInsets.all(12.0),
//                       decoration: BoxDecoration(
//                         color: Colors.blue.shade50,
//                         borderRadius: BorderRadius.circular(8.0),
//                         border: Border.all(color: Colors.blue),
//                       ),
//                       child: Text(
//                         timelineItems[index],
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.blue,
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ChatApp extends StatefulWidget {
  @override
  _ChatAppState createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  late WebSocketChannel channel;
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = [];

  @override
  void initState() {
    super.initState();
    channel = WebSocketChannel.connect(
      Uri.parse('wss://echo.websocket.events'), // Use a WebSocket server URL
    );

    // Listening to incoming messages
    // channel.stream.listen((message) {
    //   setState(() {
    //     _messages.add('Server: $message');
    //   });
    // });
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      channel.sink.add(_controller.text);
      setState(() {
        _messages.add('Me: ${_controller.text}');
        _controller.clear();
      });
    }
  }

  @override
  void dispose() {
    channel.sink.close();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('WebSocket Chat')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(title: Text(_messages[index]));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(hintText: 'Enter a message'),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: ChatApp()));
