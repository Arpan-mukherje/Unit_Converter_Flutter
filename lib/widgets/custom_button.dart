import 'package:flutter/material.dart';


class CustomButton extends StatefulWidget {
  final Function() onPressed;
  final String title;
  final Color btnColor;
  final double letterSpacing;
  final double buttonRadius;
  final double leftPadding;
  final double rightPadding;
  final IconData? icon;
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.btnColor = Colors.blue,
    this.letterSpacing = 4,
    this.buttonRadius = 8,
    this.leftPadding = 25,
    this.rightPadding = 25,
    this.icon,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: widget.leftPadding, right: widget.rightPadding),
      child: SizedBox(
        height: 45,

        // width: width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            enableFeedback: true,
            padding: const EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
                // side: BorderSide(color: bgColor, width: 0.0),
                borderRadius: BorderRadius.circular(widget.buttonRadius)),
            elevation: 1,
            backgroundColor: Colors.transparent,
          ),
          onPressed: widget.onPressed,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(widget.buttonRadius),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: widget.btnColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(widget.buttonRadius),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 10),
                  Text(widget.title,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.white,
                          shadows: <Shadow>[
                            const Shadow(
                              offset: Offset(0.5, 0.5),
                              blurRadius: 1.0,
                              color: Colors.black,
                            ),
                          ],
                          letterSpacing: widget.letterSpacing,
                          fontSize: 20)),
                  if (widget.icon != null) Container(width: 10),
                  if (widget.icon != null)
                    Stack(
                      children: [
                        Positioned(
                          top: 0.5,
                          left: 0.5,
                          child: Icon(
                            widget.icon,
                            size: 25,
                            color: Colors.black,
                          ),
                        ),
                        Icon(
                          widget.icon,
                          size: 25,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  Container(width: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
