import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Principles',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var list = [
    'Dreams + Reality + Determination = A Successful Life',
    'an accurate understanding of reality is the essential foundation for any good outcome',
    'Radical open-mindedness and radical transparency are invaluable for rapid learning and effective change',
    'Don’t let fears of what others think of you stand in your way',
    'Embracing radical truth and radical transparency will bring more meaningful work and more meaningful relationships',
    'Don’t get hung up on your views of how things “should” be because you will miss out on learning how they really are',
    'To be “good,” something must operate consistently with the laws of reality and contribute to the evolution of the whole; that is what is most rewarded.',
    'Evolution is the single greatest force in the universe; it is the only thing that is permanent and it drives everything',
    'Evolve or die',
    ' The individual’s incentives must be aligned with the group’s goals',
    'Reality is optimizing for the whole—not for you.',
    'Adaptation through rapid trial and error is invaluable.',
    'Realize that you are simultaneously everything and nothing and decide what you want to be',
    'What you will be will depend on the perspective you have',
    'Maximize your evolution.',
    'Remember “no pain, no gain."',
    'It is a fundamental law of nature that in order to gain strength one has to push one’s limits, which is painful',
    'Go to the pain rather than avoid it',
    'Embrace tough love.',
    'Weigh second- and third-order consequences',
    'Own your outcomes.',
    'Think of yourself as a machine operating within a machine and know that you have the ability to alter your machines to produce better outcomes',
    'By comparing your outcomes with your goals, you can determine how to modify your machine',
    'Distinguish between you as the designer of your machine and you as a worker with your machine.',
    'The biggest mistake most people make is to not see themselves and others objectively, which leads them to bump into their own and others’ weaknesses again and again.',
    'Successful people are those who can go above themselves to see things objectively and manage those things to shape change.',
    'Asking others who are strong in areas where you are weak to help you is a great skill that you should develop no matter what, as it will help you develop guardrails that will prevent you from doing what you shouldn’t be doing',
    'Because it is difficult to see oneself objectively, you need to rely on the input of others and the whole body of evidence.',
    'If you are open-minded enough and determined, you can get virtually anything you want.'
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff92342F),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: [
                Container(
                    color: Color(0xff92342F),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        list[index],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                    ))),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Text((index + 1).toString() +
                        ' / ' +
                        list.length.toString())),
              ],
            ),
          );
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
