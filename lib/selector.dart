import 'package:flutter/material.dart';

class Selector extends StatefulWidget {
  final List<dynamic> selectors;
  final bool color;
  Selector({this.color, this.selectors});
  @override
  _SelectorState createState() => _SelectorState();
}

class _SelectorState extends State<Selector> {
  int _currentIndex = 0;
  bool _isSelected;

  List<Widget> _buildItems() {
    return widget.selectors.map((selector) {
      var index = widget.selectors.indexOf(selector);
      _isSelected = _currentIndex == index;
      return Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              _currentIndex = index;
            });
          },
          child: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
                color: _isSelected ? Color(0xFFEAEDF2) : Color(0xFFF5F6Fa),
                borderRadius: BorderRadiusDirectional.circular(5.0)),
            child: Center(
              child: Text(
                selector,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight:
                        _isSelected ? FontWeight.bold : FontWeight.w400),
              ),
            ),
          ),
        ),
      );
    }).toList();
  }

  List<Widget> _buildItemsColor() {
    return widget.selectors.map((selector) {
      var index = widget.selectors.indexOf(selector);
      _isSelected = _currentIndex == index;
      return Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: GestureDetector(
          onTap: () {
            print(selector);
            setState(() {
              _currentIndex = index;
            });
          },
          child: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              boxShadow: [
                _isSelected
                    ? BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10.0,
                      )
                    : BoxShadow(color: Colors.transparent),
              ],
              color: _isSelected ? Colors.white : Color(0xFFF5F6FA),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 25.0,
                width: 25.0,
                decoration: BoxDecoration(
                  color: selector,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: (widget.color ? _buildItemsColor() : _buildItems()),
    );
  }
}
