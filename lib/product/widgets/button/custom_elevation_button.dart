import 'package:flutter/material.dart';

class CustomElevationButton extends StatefulWidget {
  final Future<void> Function() onPressed;
  final String title;
  final bool isCircle;
  final Color? primaryColor;
  const CustomElevationButton(
      {Key? key,
      required this.onPressed,
      required this.title,
      this.isCircle = false,
      this.primaryColor})
      : super(key: key);

  @override
  _CustomElevationButtonState createState() => _CustomElevationButtonState();
}

class _CustomElevationButtonState extends State<CustomElevationButton> {
  bool _isLoading = false;
  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _completeProcess() async {
    _changeLoading();
    await widget.onPressed();
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _isLoading ? null : _completeProcess,
      child:
          _isLoading ? const CircularProgressIndicator() : Text(widget.title),
      style: ElevatedButton.styleFrom(
          primary: widget.primaryColor,
          shape: widget.isCircle ? const CircleBorder() : null),
    );
  }
}
