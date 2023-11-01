import 'package:flutter/material.dart';
import 'screen/s_icon.dart';
import 'screen/s_image.dart';
import 'screen/s_text.dart';

enum ScreenType {
  text,
  image,
  icon,
  button,
  textfield,
  form,
}

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  var activeScreen = ScreenType.text;

  void selectedMenu(ScreenType menu){
    setState(() {
      activeScreen = menu;
    });
  }

  @override
  Widget build(BuildContext context) {
    late Widget screenWidget;

    switch (activeScreen) {
      case ScreenType.text:
        screenWidget = const SText();
        break;
      case ScreenType.image:
        screenWidget = const SImage();
        break;
      case ScreenType.icon:
        screenWidget = const SIcon();
        break;
      case ScreenType.button:
        screenWidget = const SText();
        break;
      case ScreenType.textfield:
        screenWidget = const SText();
        break;
      case ScreenType.form:
        screenWidget = const SText();
        break;
      default: screenWidget = const SText();
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Pick Widget',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      selectedMenu(ScreenType.text);
                    },
                    child: const Text('Text'),
                  ),
                  TextButton(
                    onPressed: () {
                      selectedMenu(ScreenType.image);
                    },
                    child: const Text('Image'),
                  ),
                  TextButton(
                    onPressed: () {
                      selectedMenu(ScreenType.icon);
                    },
                    child: const Text('Icon'),
                  ),
                  TextButton(
                    onPressed: () {
                      selectedMenu(ScreenType.button);
                    },
                    child: const Text('Elevated Button'),
                  ),
                  TextButton(
                    onPressed: () {
                      selectedMenu(ScreenType.textfield);
                    },
                    child: const Text('TextField'),
                  ),
                  TextButton(
                    onPressed: () {
                      selectedMenu(ScreenType.form);
                    },
                    child: const Text('Form'),
                  ),
                ],
              ),
            ),
            screenWidget,
          ],
        ),
      ),
    );
  }
}
