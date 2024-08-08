import 'package:bim_app/constant_colors.dart';
import 'package:flutter/material.dart';

class CustumContainer extends StatelessWidget {
  const CustumContainer({
    super.key,
    required this.textStatue,
    required this.iconStatue,
    required this.color,
    this.onTap,
  });
  final String textStatue;
  final Icon iconStatue;
  final bool ismale = true;
  final Color color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          // width: 10,
          height: 220,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconStatue,
              const SizedBox(
                height: 3,
              ),
              Text(
                textStatue,
                style: const TextStyle(color: kWhite, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
