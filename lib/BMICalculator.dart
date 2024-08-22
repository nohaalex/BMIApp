import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {


  var weightController = TextEditingController();
  var heightController = TextEditingController();

  double Result = 0;
  String? Description;
  bool showResult = false; // Initialize to hide the result containers

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        // resizeToAvoidBottomInset: true,

        appBar: AppBar(
          title: const Text(
            'FIT-IZEN',
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 245, 245, 220),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 100, 0),
          centerTitle: true,
        ),

        backgroundColor: const Color.fromARGB(255, 215, 215, 190),


        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 300,
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: weightController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
          
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color:Color.fromARGB(255, 255, 255, 255)
                        )
                    ),
                    labelText: 'Enter your weight in kg',
                    prefixIcon: const Icon(Icons.accessibility_new_sharp),
                    // hintText: 'Weight',
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 300,
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    controller: heightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
          
                      labelText: 'Enter your Height in meters',
          
                      prefixIcon: const Icon(Icons.person_pin),
                      // hintText: 'Height',
                      fillColor: Colors.grey,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 100, 0)
                ),
                onPressed: () {
                  setState(() {
                    if (weightController.text.isEmpty || heightController.text.isEmpty)
                    {
          
                      Description = 'Please enter both weight and height.';
                      Result = 0;
                      showResult = true;
                    }
                    else
                    {
          
                      double Weight = double.parse(weightController.text);
                      double Height = double.parse(heightController.text);
                      Result = (Weight / (Height*Height));
          
                      if (Result < 18.00)
                      {
                        Description =
                        'You are Underweight. Workout, Strength train and gain weight. Put on muscle mass.';
                      }
                      else if (Result >= 18.00 && Result <= 25.00)
                      {
                        Description =
                        'Your BMI is within limits. You are a healthy person. Maintain your BMI, eat balanced healthy diet.';
                      }
                      else
                      {
                        Description =
                        'Your BMI is dangerously high. Control your intake of food especially if relying more on junk foods. Eat light foods and hit the gym soon.';
                      }
                      showResult = true; // Set the flag to show the result containers
                    }
                  });
                },
                child: const Text(
                  'Calculate BMI',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white70,
                  ),
                ),
              ),
          
              Visibility(
                visible: showResult,
                child: Container(
                  margin: const EdgeInsets.only(left:10,top:50 ),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                      color: Colors.black
                  ),
                  child: Text(
                    'BMI: ${Result.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: showResult,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Result < 18 || Result > 25 ?const Color.fromARGB(255, 128, 0, 0) : const Color.fromARGB(255, 0, 100, 0)
                  ),
          
                  child: Text(
                    '$Description',
                    style: const TextStyle(
                      fontSize: 25,
                      color:Colors.white,
                    ),
                    textAlign: TextAlign.center,
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
