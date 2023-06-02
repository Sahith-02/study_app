import 'package:flutter/material.dart';

class NotePadPage extends StatefulWidget {
  const NotePadPage({super.key});
  @override
  _NotePadPageState createState() => _NotePadPageState();
}

class _NotePadPageState extends State<NotePadPage> {
  List<String> notes = [];
  TextEditingController textController = TextEditingController();

  void addNote() {
    setState(() {
      notes.add(textController.text);
      textController.clear();
    });
  }

  void saveNotes() {
    // Perform save operation here
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Notes Saved'),
          content: const Text('Notes have been saved.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note Pad'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: saveNotes,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(notes[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                labelText: 'Write a note',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: addNote,
                ),
              ),
              onSubmitted: (_) => addNote(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
