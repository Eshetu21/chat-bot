import 'package:chat_bot/widgets/suggestion_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.all(10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/robot.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.05,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Chatbot"),
                                Text(
                                  "Online",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        "assets/images/explain.png",
                        color: Colors.black,
                      ),
                      Text("Explain"),
                      SuggestionContainer(text: "Explain Quantum Physics"),
                      SuggestionContainer(
                        text: "What are wormholes explain like I am 5",
                      ),
                      SizedBox(height: 15),
                      Icon(Icons.edit_note_outlined, size: 35),
                      Text("Write & edit"),
                      SuggestionContainer(
                        text: "Write a tweet about global warming",
                      ),
                      SuggestionContainer(
                        text: "Write a rap song lyrics about",
                      ),
                      SizedBox(height: 15),
                      Icon(Icons.translate_outlined, size: 35),
                      Text("Translate"),
                      SuggestionContainer(
                        text: "How do you say “how are you” in Korean?",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.white),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    suffixIcon: Icon(Icons.send),
                    hintText: "Type a message...",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

