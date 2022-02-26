import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Recipe example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe app'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              debugPrint('Shared with friends');
            },
            icon: const Icon(Icons.share),
          )
        ],
      ),
      body: ListView(
        children: [
          Image.asset('images/cheese-noodles.jpg'),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  'Cheese noodles',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      debugPrint('Added to favourite');
                    },
                    icon: const Icon(Icons.favorite_border))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              IconWithTextWidget(
                icon: Icons.access_alarm_outlined,
                text: 'Prep: 40 min',
              ),
              IconWithTextWidget(
                icon: Icons.flutter_dash,
                text: 'Serving: for 2 dashes',
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sollicitudin nibh sit amet commodo. Id donec ultrices tincidunt arcu non sodales. Ipsum dolor sit amet consectetur adipiscing elit pellentesque. Morbi tincidunt augue interdum velit euismod in pellentesque. Bibendum ut tristique et egestas quis ipsum suspendisse ultrices. Malesuada fames ac turpis egestas sed. Vivamus at augue eget arcu dictum varius. Quis auctor elit sed vulputate mi sit amet mauris commodo. Sapien et ligula ullamcorper malesuada proin libero nunc. Ultricies leo integer malesuada nunc vel. Id interdum velit laoreet id donec ultrices. Quam viverra orci sagittis eu volutpat odio. Dignissim enim sit amet venenatis urna cursus eget.'),
          )
        ],
      ),
    );
  }
}

class IconWithTextWidget extends StatelessWidget {
  const IconWithTextWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(icon),
        const SizedBox(width: 5),
        Text(text),
      ],
    );
  }
}
