// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import '../screens/action_screens/first_screen.dart';
import '../screens/action_screens/second_screen.dart';

class CustomAppBarForDetailsAndHomeScreen extends StatefulWidget {
  CustomAppBarForDetailsAndHomeScreen({
    Key? key,
    this.colorIconLeading,
    required this.title,
    this.colorTitle,
    this.colorsAppbar,
    this.colorIconAction,
    this.leading,
  }) : super(key: key);
  Color? colorIconLeading;
  String title;
  Color? colorTitle;
  Color? colorsAppbar;
  Color? colorIconAction;

  Widget? leading;

  @override
  State<CustomAppBarForDetailsAndHomeScreen> createState() =>
      _CustomAppBarForDetailsAndHomeScreenState();
}

class _CustomAppBarForDetailsAndHomeScreenState
    extends State<CustomAppBarForDetailsAndHomeScreen> {
  String title = 'First item';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: widget.leading,
      centerTitle: true,
      title: Text(
        widget.title,
        style: TextStyle(
          color: widget.colorTitle ?? Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: [
        PopupMenuButton(
          icon: Icon(
            Icons.more_vert,
            size: 32,
            color: widget.colorIconAction ?? Colors.black,
          ),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Text('First screen'),
              value: 'First screen',
            ),
            PopupMenuItem(
              child: Text('Second screen'),
              value: 'Second screen',
            ),
          ],
          onSelected: (String newValue) {
            setState(() {
              title = newValue;
            });
            if (newValue == 'First screen') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FirstScreen(),
                ),
              );
            } else if (newValue == 'Second screen') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(),
                ),
              );
            }
          },
        ),
      ],
    );
  }
}

////////////////////////////////////////////////////////////////

// class CustomAppBar extends StatefulWidget {
//   CustomAppBar({
//     Key? key,
//     required this.title,
//     this.colorTitle,
//   }) : super(key: key);
//
//   String title;
//   Color? colorTitle;
//
//   @override
//   State<CustomAppBar> createState() => _CustomAppBarState();
// }
//
// class _CustomAppBarState extends State<CustomAppBar> {
//   String Title = 'First item';
//   String item1 = 'First item';
//   String item2 = 'Second item';
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           InkWell(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: Container(
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(15),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.white,
//                     blurRadius: 6,
//                   ),
//                 ],
//               ),
//               child: Icon(
//                 Icons.arrow_back,
//                 size: 28,
//               ),
//             ),
//           ),
//           Text(
//             widget.title,
//             style: TextStyle(
//               color: widget.colorTitle,
//               fontSize: 30,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           InkWell(
//             onTap: () {
//               PopupMenuButton(
//                 itemBuilder: (context) => [
//                   PopupMenuItem(
//                     child: Text(item1),
//                     value: item1,
//                   ),
//                   PopupMenuItem(
//                     child: Text(item2),
//                     value: item2,
//                   ),
//                 ],
//                 onSelected: (String newValue) {
//                   setState(() {
//                     Title = newValue;
//                   });
//                 },
//               );
//             },
//             child: Container(
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(15),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.white,
//                     blurRadius: 6,
//                   ),
//                 ],
//               ),
//               child: Icon(
//                 Icons.more_vert,
//                 size: 28,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
