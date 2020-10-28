import 'package:flutter/material.dart';

typedef OnTap = void Function();

class PortfolioIconButton extends StatelessWidget {

  final OnTap onTap;

  PortfolioIconButton({
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        return Container(
          color: Colors.transparent,
          child: GestureDetector(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
                size: 30.0,
              ),
            ),
          ),
        );
      }
    );
  }
}