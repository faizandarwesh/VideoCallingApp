import 'package:cached_network_image/cached_network_image.dart';
import 'package:video_calling_app/pages/call_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  TextEditingController callerId = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          centerTitle: true,
          title: const Text(
            'Video Calling App',
            style: TextStyle(color: Colors.white),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CachedNetworkImage(
              placeholder: (context, url) => const CircularProgressIndicator(),
              imageUrl:
              'https://cdn-icons-png.flaticon.com/512/3845/3845808.png',
            ),
            TextFormField(
              controller: callerId,
              decoration: const InputDecoration(
                  labelText: "Enter meeting ID", border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 32,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CallPage(callID: callerId.text)));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent),
                child: const Text(
                  'Join the meeting',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}