// import 'package:flutter/material.dart';
//
// class ScreenOne extends StatefulWidget {
//   const ScreenOne({Key? key}) : super(key: key);
//
//   @override
//   State<ScreenOne> createState() => _ScreenOneState();
// }
//
// class _ScreenOneState extends State<ScreenOne> {
//   DateTime? _selectedDate;
//
//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? pickedDate = await showDatePicker(
//       context: context,
//       initialDate: _selectedDate ?? DateTime.now(),
//       firstDate: DateTime(1900),
//       lastDate: DateTime(2100),
//     );
//
//     if (pickedDate != null && pickedDate != _selectedDate) {
//       setState(() {
//         _selectedDate = pickedDate;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Date Picker'),
//       ),
//       body: Center(
//         child: GestureDetector(
//           onTap: () => _selectDate(context),
//           child: AbsorbPointer(
//             child: TextFormField(
//               decoration: InputDecoration(
//                 hintText: _selectedDate != null
//                     ? _selectedDate.toString().split(" ")[0]
//                     : "DOB",
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: ScreenOne(),
//   ));
// }
