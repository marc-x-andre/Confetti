import 'package:confetti/widgets/EmojiText.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff344955),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      height: 56.0,
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: showMenu,
            icon: const Icon(Icons.info),
            color: Colors.white,
          ),
          Row(
            children: [
              const EmojiText(
                emoji: '🎉',
              ),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
                thumbColor: MaterialStateProperty.all(Colors.white),
                trackColor: MaterialStateProperty.all(Colors.black54),
              ),
              const EmojiText(
                emoji: '🎊',
              ),
            ],
          ),
          IconButton(
            onPressed: showMenu,
            icon: const Icon(Icons.analytics),
            color: Colors.white,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }

  showMenu() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              color: Color(0xff232f34),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 36,
                ),
                SizedBox(
                    height: (56 * 6).toDouble(),
                    child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                          color: Color(0xff344955),
                        ),
                        child: Stack(
                          alignment: const Alignment(0, 0),
                          clipBehavior: Clip.none,
                          children: <Widget>[
                            Positioned(
                              top: -36,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    border: Border.all(
                                        color: Color(0xff232f34), width: 10)),
                                child: Center(
                                  child: ClipOval(
                                    child: Image.asset(
                                      "assets/images/icons/avatar.png",
                                      fit: BoxFit.cover,
                                      height: 36,
                                      width: 36,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Center(
                                child: Text(
                              'test',
                              style: TextStyle(color: Colors.white),
                            ))
                          ],
                        )))
              ],
            ),
          );
        });
  }
}
