import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 12.0,
        child: InkWell(
          // provide animation when tapped on it
//          borderRadius: BorderRadius.all(9),
          highlightColor: Colors.white70,
          splashColor: Colors.blueGrey,
          onTap: () {
            print('button tapped');
          },
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
//                  child: iconLocation != null ? Icon(Icons.cake),
                ),
                Center(
                  child: Text(
                    'name',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.display1.copyWith(
                          color: Colors.grey[700],
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
