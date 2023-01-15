import 'package:flutter/material.dart';
import 'package:open_weather_example_flutter/src/features/weather_page/current_weather.dart';

class style_info_button extends StatefulWidget {
  style_info_button({Key? key}) : super(key: key);

  @override
  State<style_info_button> createState() => _style_info_buttonState();
}

class _style_info_buttonState extends State<style_info_button> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('기온별 상세 정보'),
        backgroundColor: Color(0xFF87CEEB),
        centerTitle: true,
        leading: IconButton(onPressed: (){Navigator.of(context).pop();},
            icon: Icon(Icons.arrow_back)
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: [
                Text('28 이상'),
                Row(children: [
                  Image.asset('assets/반팔.jpg',height: 150, width: 150),
                  Image.asset('assets/반팔.jpg',height: 100, width: 100)
                ],),

                Text('27~24 이상'),
                Row(children: [
                  Image.asset('assets/반팔.jpg',height: 100, width: 100),
                  Image.asset('assets/반팔.jpg',height: 100, width: 100)
                ],),

                //Image.asset('assets/반팔.jpg'),//이미지 추가중

              ],),
          )
        ],)
    );
  }
}