import 'package:citk_official_application/Navigation/Navigate.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        height: double.infinity,
        width: double.infinity,
        child: IconButton(
          icon:const Icon(Icons.search),
          onPressed: (){
            Navigation.instance.navigate('/notifications');
          },
        ),
      ),
    );
  }
}
