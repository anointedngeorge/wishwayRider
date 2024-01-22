// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CTextStyles extends StatelessWidget {
  String title;
  double? size = 20;
  Color? color = const Color(0xffffffff);
  CTextStyles({super.key, required this.title, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: size,
        color: color ?? const Color(0xffffffff),
      ),
    );
  }
}

class CIconWithCircleContainer extends StatelessWidget {
  double? radiusSize;
  String svgImage;
  double? width;
  double? height;
  Color? color = const Color(0xff282C35);
  CIconWithCircleContainer(
      {super.key, this.radiusSize, this.color, required this.svgImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 50,
      height: height ?? 50,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(27),
        ),
        color: color ?? const Color(0xff282C35),
      ),
      child: SvgPicture.asset(
        svgImage,
        fit: BoxFit.scaleDown,
        alignment: Alignment.center,
      ),
    );
  }
}

Widget cButtonBack(Color color, Key key, onPressed, double iconSize) {
  return BackButton(
    color: color,
    key: key,
    onPressed: onPressed,
    style: ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll(Colors.black12),
      iconSize: MaterialStatePropertyAll(iconSize),
    ),
  );
}

class cRadioListTile extends StatefulWidget {
  int value;
  int groupvalue;
  CTextStyles title;

  cRadioListTile({
    Key? key,
    required this.value,
    required this.groupvalue,
    required this.title,
  }) : super(key: key);

  @override
  State<cRadioListTile> createState() => _cRadioListTileState();
}

class _cRadioListTileState extends State<cRadioListTile> {
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      value: widget.value,
      groupValue: widget.groupvalue,
      onChanged: (int? value) {
        widget.groupvalue = value!;
      },
      title: widget.title,
      toggleable: true,
      materialTapTargetSize: MaterialTapTargetSize.padded,
    );
  }
}
