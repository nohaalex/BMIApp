import 'package:flutter/material.dart';


class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: QuizHomePage(),
    );
  }
}

class QuizHomePage extends StatefulWidget {
  const QuizHomePage({super.key});

  @override
  _QuizHomePageState createState() => _QuizHomePageState();
}

class _QuizHomePageState extends State<QuizHomePage> {

  List<String> answers = [
    "Hypertext Markup Language",
    "Hypertext Modified Language",
    "Hypertext middle language",
    "Hypertext Market Language"
  ];

  String correctAnswer = "Hypertext Markup Language";
  String? answer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quiz App',
          style: TextStyle(
            fontSize: 30,
            color: Colors.redAccent,
            backgroundColor: Colors.black,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Text(
            'Expand HTML',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 500,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      answer = answers[index];
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizSecondPage(
                            score: answer == correctAnswer ? 10 : 0,
                          ),
                        )
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 500,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: answer != answers[index]
                          ? Colors.black
                          : answer == correctAnswer
                          ? Colors.green
                          : Colors.red,
                    ),
                    child: Text(
                      answers[index],
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
              itemCount: answers.length,
            ),
          ),



          // ElevatedButton(
          //   onPressed: () {
          //
          //
          //
          //   },
          //   child: Text(
          //     'Next',
          //     style: TextStyle(
          //       fontSize: 30,
          //       color: Colors.black,
          //     ),
          //   ),
          // )



        ],
      ),
    );
  }
}




class QuizSecondPage extends StatefulWidget {
  final int? score;

  const QuizSecondPage({super.key, required this.score});

  @override
  _QuizSecondPageState createState() => _QuizSecondPageState();
}

class _QuizSecondPageState extends State<QuizSecondPage> {

  List<String> answers = [
    "Cascading Side Sheet",
    "Cascading Style Sheet",
    "Cascading Simple Sheet",
    "Cascading Single Sheet"
  ];

  String correctAnswer = "Cascading Style Sheet";
  String? answer;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Quiz App',
            style: TextStyle(
              fontSize: 30,
              color: Colors.redAccent,
              backgroundColor: Colors.black,
            ),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Column(
          children: [
            const Text(
              'Expand CSS',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        answer = answers[index];
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultPage(
                            score: answer == correctAnswer ? (widget.score! + 10) : (widget.score!),
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 500,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: answer != answers[index]
                            ? Colors.black
                            : answer == correctAnswer
                            ? Colors.green
                            : Colors.red,
                      ),
                      child: Text(
                        answers[index],
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
                itemCount: answers.length,
              ),
            ),

            ElevatedButton(
              onPressed: () {

              },
              child: const Text(
                'Result',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}

class ResultPage extends StatelessWidget {
  final int? score;

  const ResultPage({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false ,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Result',
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          height: 500,
          width: 500,
          color: Colors.white,
          child: Text(
            score.toString(),
            style: const TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
