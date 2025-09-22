import 'package:flutter/material.dart';

class S4524 extends StatelessWidget {
  const S4524({super.key});
  @override
  Widget build(BuildContext context) {
    return const ShowHideNameWidget();
  }
}

class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({super.key});

  @override
  State<ShowHideNameWidget> createState() => _ShowHideNameWidgetState();
}

class _ShowHideNameWidgetState extends State<ShowHideNameWidget> {
  bool _nameVisible = false;
  String _name = '';
  String _buttonText = 'Name anzeigen';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_name),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _nameVisible = !_nameVisible;
              _name = _nameVisible ? 'Mario' : '';
              _buttonText = _nameVisible ? 'Name verstecken' : 'Name anzeigen';
            });
          },
          child: Text(_buttonText),
        ),
      ],
    );
  }
}
