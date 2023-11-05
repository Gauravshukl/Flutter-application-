/*import 'package:flutter/material.dart';

import '../../../../global/common/toast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("HomePage"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              "Welcome Home buddy!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            )),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushNamed(context, "/login");
                showToast(message: "Successfully signed out");
              },
              child: Container(
                height: 45,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Sign out",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Remove the debug banner
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> _items = List.generate(
      5,
      (index) => {
            "id": index,
            "title": "Item $index",
            "content":
                "This is the main content of item $index. It is very long and you have to expand the tile to see it."
          });

  void _removeItem(int id) {
    setState(() {
      _items.removeWhere((element) => element['id'] == id);
    });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(milliseconds: 600),
        content: Text('Item with id #$id has been removed')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Expansion Tile')),
        body: ListView.builder(
            itemCount: _items.length,
            itemBuilder: (_, index) {
              final item = _items[index];
              return Card(
                key: PageStorageKey(item['id']),
                color: Colors.blue,
                elevation: 4,
                child: ExpansionTile(
                    iconColor: Colors.white,
                    collapsedIconColor: Colors.white,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    title: Text(
                      item['title'],
                      style: const TextStyle(color: Colors.white),
                    ),
                    children: [
                      Text(item['content'],
                          style: const TextStyle(color: Colors.white)),
                      // This button is used to remove this item
                      IconButton(
                          onPressed: () => _removeItem(index),
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.redAccent,
                          ))
                    ]),
              );
            }));
  }
}*/
/*
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GV Smart Hospital Management System'),
      ),
      body: ListView(
        children: [
          buildRoomContainer(context, 'Room 1', Room1Page(), Colors.red),
          SizedBox(height: 30),
          buildRoomContainer(context, 'Room 2', Room2Page(), Colors.blue),
          SizedBox(height: 30),
          buildRoomContainer(context, 'Room 3', Room3Page(), Colors.green),
          SizedBox(height: 30),
          buildRoomContainer(context, 'Room 4', Room3Page(), Colors.purple),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget buildRoomContainer(
      BuildContext context, String label, Widget route, Color color) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => route),
        );
      },
      child: Container(
        color: color,
        padding: EdgeInsets.all(50),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}

class Room1Page extends StatefulWidget {
  @override
  _Room1PageState createState() => _Room1PageState();
}

class _Room1PageState extends State<Room1Page> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(''),
            SizedBox(height: 20),
            Text('${isOn ? 'On' : 'Off'}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isOn = !isOn;
                  });
                },
                child: Text(isOn ? 'Turn Off' : 'Turn On'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Room2Page extends StatefulWidget {
  @override
  _Room2PageState createState() => _Room2PageState();
}

class _Room2PageState extends State<Room2Page> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(''),
            SizedBox(height: 20),
            Text(' ${isOn ? 'On' : 'Off'}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isOn = !isOn;
                  });
                },
                child: Text(isOn ? 'Turn Off' : 'Turn On'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Room3Page extends StatefulWidget {
  @override
  _Room3PageState createState() => _Room3PageState();
}

class _Room3PageState extends State<Room3Page> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(''),
            SizedBox(height: 20),
            Text('${isOn ? 'On' : 'Off'}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isOn = !isOn;
                  });
                },
                child: Text(isOn ? 'Turn Off' : 'Turn On'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Room4Page extends StatefulWidget {
  @override
  _Room4PageState createState() => _Room4PageState();
}

class _Room4PageState extends State<Room4Page> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(''),
            SizedBox(height: 20),
            Text('${isOn ? 'On' : 'Off'}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isOn = !isOn;
                  });
                },
                child: Text(isOn ? 'Turn Off' : 'Turn On'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
/*
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GV Smart Hospital Management System'),
      ),
      body: ListView(
        children: [
          buildRoomContainer(
              context, 'Room 1', Room1Page(), Colors.transparent),
          SizedBox(height: 30),
          buildRoomContainer(
              context, 'Room 2', Room2Page(), Colors.transparent),
          SizedBox(height: 30),
          buildRoomContainer(
              context, 'Room 3', Room3Page(), Colors.transparent),
          SizedBox(height: 30),
          buildRoomContainer(
              context, 'Room 4', Room4Page(), Colors.transparent),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget buildRoomContainer(
      BuildContext context, String label, Widget route, Color color) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => route),
        );
      },
      child: Container(
        color: color,
        padding: EdgeInsets.all(50),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: Colors.black, // Text color
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}

class Room1Page extends StatefulWidget {
  @override
  _Room1PageState createState() => _Room1PageState();
}

class _Room1PageState extends State<Room1Page> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${isOn ? 'On' : 'Off'}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isOn = !isOn;
                  });
                },
                child: Text(isOn ? 'Turn Off' : 'Turn On'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Room2Page extends StatefulWidget {
  @override
  _Room2PageState createState() => _Room2PageState();
}

class _Room2PageState extends State<Room2Page> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(' ${isOn ? 'On' : 'Off'}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isOn = !isOn;
                  });
                },
                child: Text(isOn ? 'Turn Off' : 'Turn On'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Room3Page extends StatefulWidget {
  @override
  _Room3PageState createState() => _Room3PageState();
}

class _Room3PageState extends State<Room3Page> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(' ${isOn ? 'On' : 'Off'}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isOn = !isOn;
                  });
                },
                child: Text(isOn ? 'Turn Off' : 'Turn On'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Room4Page extends StatefulWidget {
  @override
  _Room4PageState createState() => _Room4PageState();
}

class _Room4PageState extends State<Room4Page> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${isOn ? 'On' : 'Off'}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isOn = !isOn;
                  });
                },
                child: Text(isOn ? 'Turn Off' : 'Turn On'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GV Smart Hospital Management System'),
      ),
      body: ListView(
        children: [
          buildRoomContainer(context, 'Room 1', Room1Page(), Colors.red),
          SizedBox(height: 30),
          buildRoomContainer(context, 'Room 2', Room2Page(), Colors.blue),
          SizedBox(height: 30),
          buildRoomContainer(context, 'Room 3', Room3Page(), Colors.green),
          SizedBox(height: 30),
          buildRoomContainer(context, 'Room 4', Room4Page(), Colors.purple),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget buildRoomContainer(
      BuildContext context, String label, Widget route, Color color) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => route),
        );
      },
      child: Container(
        color: color,
        padding: EdgeInsets.all(50),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}

class Room1Page extends StatefulWidget {
  @override
  _Room1PageState createState() => _Room1PageState();
}

class _Room1PageState extends State<Room1Page> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${isOn ? 'On' : 'Off'}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isOn = !isOn;
                });
              },
              child: Text(isOn ? 'Turn Off' : 'Turn On'),
            ),
          ],
        ),
      ),
    );
  }
}

class Room2Page extends StatefulWidget {
  @override
  _Room2PageState createState() => _Room2PageState();
}

class _Room2PageState extends State<Room2Page> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' ${isOn ? 'On' : 'Off'}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isOn = !isOn;
                });
              },
              child: Text(isOn ? 'Turn Off' : 'Turn On'),
            ),
          ],
        ),
      ),
    );
  }
}

class Room3Page extends StatefulWidget {
  @override
  _Room3PageState createState() => _Room3PageState();
}

class _Room3PageState extends State<Room3Page> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' ${isOn ? 'On' : 'Off'}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isOn = !isOn;
                });
              },
              child: Text(isOn ? 'Turn Off' : 'Turn On'),
            ),
          ],
        ),
      ),
    );
  }
}

class Room4Page extends StatefulWidget {
  @override
  _Room4PageState createState() => _Room4PageState();
}

class _Room4PageState extends State<Room4Page> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${isOn ? 'On' : 'Off'}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isOn = !isOn;
                });
              },
              child: Text(isOn ? 'Turn Off' : 'Turn On'),
            ),
          ],
        ),
      ),
    );
  }
}
