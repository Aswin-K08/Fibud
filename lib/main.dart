import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 25, 25, 26),
        body: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1200),
            child: MyHomePage(title: 'Fibud'),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, String>> trainers = [
    {
      "name": "Person 1 ",
      "skills": "Yoga, Cardio",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "name": "Person 2 ",
      "skills": "Pilates, HIIT",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "name": "Person 3 ",
      "skills": "Strength, Mobility",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "name": "Person 4",
      "skills": "Zumba, Dance",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "name": "Person 5",
      "skills": "Boxing, Kickboxing",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "name": "Person 6",
      "skills": "CrossFit, Endurance",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 25, 25, 26),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 10, 10),
        foregroundColor: const Color.fromARGB(255, 242, 242, 243),
        title: Text(
          'Fibud',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.horizontal_split_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),

            Container(
              constraints: BoxConstraints(maxWidth: 1120),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),

              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    "Find your perfect trainer",
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Poppins',
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: Color.fromARGB(255, 0, 0, 0),
                    ),
                    child: Text("Browse Trainers"),
                  ),
                ],
              ),
            ),
            Container(height: 50),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 25),
                constraints: BoxConstraints(maxWidth: 1100),
                suffixIcon: Icon(Icons.search),
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: const Color.fromARGB(137, 0, 0, 0),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("All", style: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(width: 20),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Yoga",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 20),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "HIIT",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 20),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Strength",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children:
                      trainers.map((trainer) {
                        return InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder:
                                  (context) => AlertDialog(
                                    icon: Icon(
                                      Icons.person,
                                      size: 60,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    title: Text(
                                      trainer['name']!.toUpperCase(),
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    content: ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxWidth: 300,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "${trainer['skills']}",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          SizedBox(height: 15),
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              padding: EdgeInsets.only(
                                                left: 30,
                                                right: 30,
                                                top: 10,
                                                bottom: 10,
                                              ),
                                              backgroundColor: Colors.black,
                                              foregroundColor: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            onPressed: () {},
                                            child: Text("Connect"),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            '${trainer['description']}',
                                            style: TextStyle(fontSize: 14),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                            );
                          },
                          child: SizedBox(
                            width: 250,
                            child: Card(
                              color: Color.fromARGB(255, 34, 36, 42),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.person_outline,
                                      size: 48,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      trainer['name']!,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        trainer['skills']!,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(height: 12),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 34, 36, 42),
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  "© 2025 Fibud Corp. All rights reserved",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 25, 25, 26),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 46, 46, 46),
              blurRadius: 10.0,
              spreadRadius: 0.0,
              offset: Offset(0.0, -2.0), // shadow direction: bottom
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 25, 25, 26),

            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: 0,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            onTap: (index) {},
          ),
        ),
      ),
    );
  }
}
