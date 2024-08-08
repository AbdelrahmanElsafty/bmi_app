import 'package:bim_app/constant_colors.dart';
import 'package:bim_app/pages/calculate_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultPage extends StatelessWidget {
  ResultPage({
    super.key,
    required this.result,
    this.statue,
    this.color,
    this.statueState,
  });
  final double result;
  final String? statue;
  late Color? color = kWhite;
  late String? statueState;
  String getStatue() {
    if (result < 18.5) {
      color = Colors.blue;
      statueState =
          'Each small gain in muscle and body mass is a victory worth celebrating. Keep taking care of yourself - progress happens bit by bit 💪';
      return 'Underweight';
    } else if (result < 25) {
      color = Colors.green;
      statueState =
          'Striking that perfect balance between diet and exercise to achieve a normal BMI is no easy feat. Bravo!👏';
      return 'Normal';
    } else if (result < 30) {
      color = Colors.yellow;
      statueState =
          'Focus on nourishing your body with nutritious foods and activities you enjoy. The numbers on the scale will follow 🏋️‍♂️';
      return 'Overweight';
    } else {
      color = Colors.red;
      statueState =
          'You are so much more than a statistic. Embrace the incredible person you are, right here and now 🧘‍♂️';
      return 'Obese';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  textAlign: TextAlign.start,
                  'Your result',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
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
                      const Spacer(
                        flex: 2,
                      ),
                      Text(
                        getStatue(),
                        style: TextStyle(fontSize: 20, color: color),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      Text(
                        result.toStringAsFixed(2),
                        style: const TextStyle(
                            fontSize: 60,
                            color: kWhite,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          statueState.toString(),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kOptionalColor,
                  foregroundColor: kWhite,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CalculatePage(),
                    ),
                  );
                },
                child: const Text(
                  'Recalculate',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
