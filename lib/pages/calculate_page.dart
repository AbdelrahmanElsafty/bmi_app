import 'package:bim_app/constant_colors.dart';
import 'package:bim_app/pages/result_page.dart';
import 'package:bim_app/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({super.key});

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  int height = 170;
  int age = 30;
  int weight = 70;
  bool ismale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text(
          '🍕 BMI Calculator',
          style: TextStyle(color: kWhite),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustumContainer(
                    onTap: () {
                      setState(() {
                        ismale = true;
                      });
                    },
                    color: (ismale) ? kOptionalColor : kSecondaryColor,
                    iconStatue: const Icon(
                      Icons.male,
                      color: kWhite,
                      size: 80,
                    ),
                    textStatue: 'Male',
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  CustumContainer(
                    onTap: () {
                      setState(() {
                        ismale = false;
                      });
                    },
                    color: (!ismale) ? kOptionalColor : kSecondaryColor,
                    iconStatue: const Icon(
                      Icons.female,
                      color: kWhite,
                      size: 80,
                    ),
                    textStatue: 'Female',
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Height',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: const TextStyle(
                                  fontSize: 60,
                                  color: kWhite,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'cm',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Slider(
                            value: height.toDouble(),
                            min: 80,
                            max: 220,
                            activeColor: kOptionalColor,
                            inactiveColor: Colors.grey,
                            onChanged: (value) {
                              setState(() {
                                height = value.toInt();
                              });
                            }),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 10,
                      height: 220,
                      decoration: const BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Weight',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            weight.toString(),
                            style: const TextStyle(
                              color: kWhite,
                              fontSize: 40,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                mini: true,
                                heroTag: 'weight_add',
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                backgroundColor: kOptionalColor,
                                child: const Icon(
                                  Icons.add,
                                  color: kWhite,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              FloatingActionButton(
                                mini: true,
                                heroTag: 'weight_remove',
                                onPressed: () {
                                  if (weight > 0) {
                                    setState(() {
                                      weight--;
                                    });
                                  }
                                },
                                backgroundColor: kOptionalColor,
                                child: const Icon(
                                  Icons.remove,
                                  color: kWhite,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      width: 10,
                      height: 220,
                      decoration: const BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Age',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            age.toString(),
                            style: const TextStyle(
                              color: kWhite,
                              fontSize: 40,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'age_add',
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                backgroundColor: kOptionalColor,
                                child: const Icon(
                                  Icons.add,
                                  color: kWhite,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                mini: true,
                                heroTag: 'age_remove',
                                onPressed: () {
                                  if (age > 0) {
                                    setState(() {
                                      age--;
                                    });
                                  }
                                },
                                backgroundColor: kOptionalColor,
                                child: const Icon(
                                  Icons.remove,
                                  color: kWhite,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    double result = weight / (height * height * 0.0001);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultPage(
                          result: result,
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kOptionalColor,
                    foregroundColor: kWhite,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Calculate',
                    style: TextStyle(fontSize: 16),
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
