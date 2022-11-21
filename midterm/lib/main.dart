import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


final player=AudioPlayer();
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
int _currentindex=0;
class _MyAppState extends State<MyApp> {
  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('C108152340 Midterm'),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.book),
              label:'Learning',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.schedule),
              label: 'Schedule',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.topic),
              label: 'Topic',
            ),
          ],
          onTap: (index) { setState(() {
            _currentindex=index;
            player.stop();
          });
          },
        ),
      ),
    );
  }
}
class screen1 extends StatelessWidget {
  final String s1='　　我是林承治，生於高度開發、交通便利的高雄市。'
                  '家中成員有三位，父親是位網路工程經理，母親是位家庭主婦，家中經濟小康。';

  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("star.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("我是誰?",
                style: TextStyle(fontSize:30,
                  fontWeight:FontWeight.bold,)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.blue,
                child: Image.asset('images/face.jpg'),
                height: 200,
                width: 150,
                padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Container(
                    child:Text('姓名：林承治',style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child:Text('班級：四子四丙',style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child:Text('學號：C108152340',style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30,),

          Container(
            child:Text('個人自傳',style: TextStyle(fontSize: 30,color: Colors.indigo,fontWeight:FontWeight.bold,),),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.lightBlueAccent,),
              ],),
            child:Text(s1,
              style: TextStyle(fontSize: 20),),
          ),
          SizedBox(height: 100,),
        ],
      ),
    );
  }
}
class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("bee.mp3"));
    return SingleChildScrollView(
      child:Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
            child: Text("學習歷程",
                style: TextStyle(fontSize:30,
                  fontWeight:FontWeight.bold,)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                child:Text('國中:',style: TextStyle(fontSize: 25,color: Colors.indigo,fontWeight:FontWeight.bold,),),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 150,
                width: 350,
                padding: EdgeInsets.fromLTRB(5, 5, 20, 5),
                child:Text('國中時對數理很有興趣，尤其是在解開難題時有極大的成就感，同學常問我數理相關的題目，'
                          '我都會傾囊相授；後來在家人的建議下選讀離家近的中正高工電子科。',
                  style: TextStyle(fontSize: 20),),
              ),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                child:Text('高中:',style: TextStyle(fontSize: 25,color: Colors.indigo,fontWeight:FontWeight.bold,),),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 180,
                width: 350,
                padding: EdgeInsets.fromLTRB(5, 5, 20, 5),
                child:Text('高中就讀於中正高工，高職三年在師長們的帶領下，學到電子及程式各領域的知識，'
                            '並參與了許多活動，印象最深刻的是高雄市科展的過程，讓我學習到與團隊合作重要性，'
                            '並榮獲高級中等學校組工程學科一第3名。',
                  style: TextStyle(fontSize: 20),),
              ),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                child:Text('大學:',style: TextStyle(fontSize: 25,color: Colors.indigo,fontWeight:FontWeight.bold,),),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 350,
                padding: EdgeInsets.fromLTRB(5, 5, 20, 5),
                child:Text('大學就讀於國立高雄科技大學(建工校區)，大學前三年期間，'
                          '在學校教授及助教盡心指導下，學到更多資訊及電子的知識；'
                          '並於專題中與同學及教授研究、討論中，加深了不少程式撰寫等能力。',
                  style: TextStyle(fontSize: 20),),
              ),
            ],),
          SizedBox(height: 30,),
        ],
      ),);
  }
}
class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("doll.mp3"));
    return Container(
      child:Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
            child: Text("讀書計畫",
                style: TextStyle(fontSize:30,
                  fontWeight:FontWeight.bold,)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                child:Text('大四時期:',style: TextStyle(fontSize: 25,color: Colors.indigo,fontWeight:FontWeight.bold,),),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 350,
                padding: EdgeInsets.fromLTRB(5, 5, 20, 5),
                child:Text('多多修不同層面資工相關課程，並儘量去了解目前業界，對於資訊工程人員的技能需求。',
                  style: TextStyle(fontSize: 20),),
              ),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                child:Text('進入研究所:',style: TextStyle(fontSize: 25,color: Colors.indigo,fontWeight:FontWeight.bold,),),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 150,
                width: 350,
                padding: EdgeInsets.fromLTRB(5, 5, 20, 5),
                child:Text('先找指導教授討論，找到業界的需求及論文方向；修習學校提供的相關課程，嚴謹的論文撰寫；在修學期間找出自己課業不足點，自修或修習相關課程以補不足。',
                  style: TextStyle(fontSize: 20),),
              ),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                child:Text('未來就業:',style: TextStyle(fontSize: 25,color: Colors.indigo,fontWeight:FontWeight.bold,),),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 350,
                padding: EdgeInsets.fromLTRB(5, 5, 20, 5),
                child:Text('畢業後希望直接就業，盼能找到有關研發的相關公司。',
                  style: TextStyle(fontSize: 20),),
              ),
            ],),
        ],
      ),);
  }
}

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("sekai.mp3"));
    return SingleChildScrollView(
      child:Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
            child: Text("專題概要",
                style: TextStyle(fontSize:30,
                  fontWeight:FontWeight.bold,)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                child:Text('研究動機:',style: TextStyle(fontSize: 25,color: Colors.indigo,fontWeight:FontWeight.bold,),),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 360,
                padding: EdgeInsets.fromLTRB(5, 5, 20, 5),
                child:Text('現在許多停車場已經使用影像辨識的技術進行辨識，然而依然有許多停車場依靠人力進行收費'
                          '，本團隊希望用YOLOv4，進行車牌辨識，並搭配一些LINE的API，使停車場變得更加人性化。',
                  style: TextStyle(fontSize: 20),),
              ),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                child:Text('系統架構:',style: TextStyle(fontSize: 25,color: Colors.indigo,fontWeight:FontWeight.bold,),),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 150,
                width: 360,
                padding: EdgeInsets.fromLTRB(5, 5, 20, 5),
                child:Text('本專題採用YOLOv4進行車牌位置辨識，並用影像處理進行車牌號碼辨識，'
                            '並使用LINE BOT與顧客進行互動、LINE Notify將特定資訊傳送給管理者。',
                  style: TextStyle(fontSize: 20),),
              ),
            ],),
          Container(
            child: Image.asset('images/struct.jpg'),
            height: 112,
            width: 360,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                child:Text('呈現結果:',style: TextStyle(fontSize: 25,color: Colors.indigo,fontWeight:FontWeight.bold,),),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 80,
                width: 350,
                padding: EdgeInsets.fromLTRB(5, 5, 20, 5),
                child:Text('使用樹莓派並搭載鏡頭及LINE API，達成智慧停車場系統。',
                  style: TextStyle(fontSize: 20),),
              ),
            ],),
          Container(
            child: Image.asset('images/application.jpg'),
            height: 250,
            width: 360,
          ),
          SizedBox(height: 30,),
          ],
      ),);
  }
}
