import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  PageController controllerr;
  BottomBar({Key? key, required this.controllerr}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var primaryColor = Theme.of(context).primaryColor;

    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: primaryColor,
      notchMargin: 5,
      child: SizedBox(
        height: 83,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width / 2 - 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      controllerr.animateToPage(
                        0,
                        duration: const Duration(milliseconds: 700),
                        curve: Curves.linearToEaseOut,
                      );
                    },
                    icon: const Icon(Icons.home),
                  ),
                  IconButton(
                    onPressed: () {
                      controllerr.animateToPage(
                        1,
                        duration: const Duration(milliseconds: 700),
                        curve: Curves.linearToEaseOut,
                      );
                    },
                    icon: const Icon(Icons.bar_chart),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width / 2 - 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      controllerr.animateToPage(
                        2,
                        duration: const Duration(milliseconds: 700),
                        curve: Curves.linearToEaseOut,
                      );
                    },
                    icon: const Icon(Icons.person),
                  ),
                  IconButton(
                    onPressed: () {
                      controllerr.animateToPage(
                        3,
                        duration: const Duration(milliseconds: 700),
                        curve: Curves.linearToEaseOut,
                      );
                    },
                    icon: const Icon(Icons.archive_rounded),
                  ),
                ],
              ),
            ),
            /* Container(
            child: Column(
              children: [
                Container(
                child: const Text('bashe biaaaa '),
                ),
                const CircularProgressIndicator(),
                

              ],
            ),
          ) */
          ],
        ),
      ),
    );
  }
}
