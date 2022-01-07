import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:flutter/material.dart';

class DnDSubLevelBackground extends StatefulWidget {
  final DnDSubLevelDomain subLevelDomain;

  const DnDSubLevelBackground({required this.subLevelDomain, Key? key})
      : super(key: key);

  @override
  _DnDSubLevelBackgroundState createState() => _DnDSubLevelBackgroundState();
}

class _DnDSubLevelBackgroundState extends State<DnDSubLevelBackground> {
  late Widget _animatedWidget = DnDSubLevelLoading(
    onEnd: () {
      //really start the level
      setState(() {
        _animatedWidget =
            DnDSubLevelScreen(subLevelDomain: widget.subLevelDomain);
      });
    },
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent, //pa si por si acaso
        image: DecorationImage(
          image: AssetImage(DnDAssets.WALLPAPER),
          fit: BoxFit.cover,
        ),
      ),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return ScaleTransition(
            child: child,
            scale: animation,
          );
        },
        child: _animatedWidget,
      ),
    );
  }
}
