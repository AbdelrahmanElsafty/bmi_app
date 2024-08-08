// import 'package:bim_app/constant_colors.dart';
// import 'package:bim_app/widgets/changed_button.dart';
// import 'package:flutter/material.dart';

// class Buttons extends StatelessWidget {
//   const Buttons({
//     super.key,
//     required this.mesure,
//     required this.codeNum,
    
//   });
//   final String mesure;
//   final String codeNum;
 
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         width: 10,
//         height: 220,
//         decoration: const BoxDecoration(
//           color: kSecondaryColor,
//           borderRadius: BorderRadius.all(
//             Radius.circular(15),
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               mesure,
//               style: const TextStyle(
//                 color: Colors.grey,
//                 fontSize: 18,
//               ),
//             ),
//             Text(
//               codeNum,
//               style: const TextStyle(
//                 color: kWhite,
//                 fontSize: 40,
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ChangedButtons(
//                   icon: iconStatue,
//                   onPressed: change,
//                 ),
//                 ChangedButtons(
//                   icon: iconStatue,
//                   onPressed: change,
//                 ),
//                 ChangedButtons(
//                   icon: iconStatue,
//                   onPressed: change,
//                 ),
//                 ChangedButtons(
//                   icon: iconStatue,
//                   onPressed: change,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
