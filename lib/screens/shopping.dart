import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

//
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ShoppingScreen extends StatefulWidget {
  static const id = 'ShoppingScreen_screen';

  @override
  _ShoppingScreen createState() => _ShoppingScreen();
}

class _ShoppingScreen extends State<ShoppingScreen>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollController;
  AnimationController _hideFabAnimController;
  var experience = 4;
  var rating = 0.0;
  var r = 0;

  @override
  void dispose() {
    _scrollController.dispose();
    _hideFabAnimController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _hideFabAnimController = AnimationController(
      vsync: this,
      duration: kThemeAnimationDuration,
      value: 1, // initially visible
    );

    _scrollController.addListener(() {
      switch (_scrollController.position.userScrollDirection) {
        // Scrolling up - forward the animation (value goes to 1)
        case ScrollDirection.forward:
          _hideFabAnimController.forward();
          break;
        // Scrolling down - reverse the animation (value goes to 0)
        case ScrollDirection.reverse:
          _hideFabAnimController.reverse();
          break;
        // Idle - keep FAB visibility unchanged
        case ScrollDirection.idle:
          break;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white70,
          title: Row(
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
                highlightColor: Colors.blueGrey,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_alert),
                highlightColor: Colors.blueGrey,
              ),
            ],
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image(
                  image: AssetImage('assets/logo.png'),
                  width: 40,
                  height: 40,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FadeTransition(
          opacity: _hideFabAnimController,
          child: ScaleTransition(
            scale: _hideFabAnimController,
            child: RawMaterialButton(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(29),
              ),
              fillColor: Colors.transparent,
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: AssetImage(
                      'assets/c.png',
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('گفتوگو با فروشنده'),
                ],
              ),
              constraints: BoxConstraints.tightFor(
                width: 190.0,
                height: 70.0,
              ),
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.only(left: 10, right: 10),
          controller: _scrollController,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Text('راسته روغن های خوراکی      ')),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'پسته کرمان',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.bookmark_border),
                  onPressed: () {},
                ),
                Text('اشتراک گذاری'),
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 40,
                ),
                SmoothStarRating(
                  color: Colors.yellow,
                  borderColor: Colors.grey,
                  rating: rating,
                  size: 20,
                  filledIconData: Icons.star,
                  halfFilledIconData: Icons.star_half,
                  defaultIconData: Icons.star_border,
                  starCount: 5,
                  allowHalfRating: true,
                  spacing: 0,
                  onRated: (value) {
                    setState(() {
                      rating = value;
                      r = rating.toInt();
                    });
                  },
                ),
                Text('$r'),
                SizedBox(
                  width: 10,
                ),
                Text('تجربه'),
                Text('$experience'),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
                height: 200.0,
                width: double.infinity,
                child: Carousel(
                  boxFit: BoxFit.cover,
                  animationCurve: Curves.ease,
                  animationDuration: Duration(milliseconds: 1000),
                  dotSize: 4.0,
                  dotIncreasedColor: Colors.black,
                  dotBgColor: Colors.transparent,
                  dotPosition: DotPosition.bottomCenter,
                  dotVerticalPadding: 10.0,
                  showIndicator: true,
                  images: [
                    NetworkImage(
                        'https://cdn.yjc.ir/files/fa/news/1398/7/8/10642602_820.jpg'),
                    NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSHwLdNPTD59a2SRq1BPSBAgIZf84LoLlHfYl3JrhdZPt0g9mqU&usqp=CAU'),
                  ],
                )),
            SizedBox(
              height: 30,
            ),
            RichText(
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              text: TextSpan(
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                text:
                    'فواید و خواص پسته برای پوست مو و سلامتی و عوارض مصرف پسته',
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        'پسته یکی از اعضای مهم و ثابت آجیل ایرانی است که میزان پتاسیم آن با این جثه کوچک برابر با پتاسیم پرتقال است و به علت داشتن مواد مغذی از اهمیت بسیاری برخوردار است. استان کرمان و شهرستان رفسنجان، مراکز اصلی تولید پسته در ایران بشمار می آیند. پسته،عضو ثابت آجیل با وجود جثه کوچک خود سرشار از منابع مفید و مغذی برای سلامتی انسان است ؛ در ادامه این بخش از سلامت نمناک خواص مفید و دارویی این میوه به همراه مضرات آن را بررسی خواهیم کرد.',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              text: TextSpan(
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  text:
                      '- کربوهیدراتها، پروتئین، اسیدهای آمینه ،چربی و فیبرهای رژیمی می باشد.'),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              text: TextSpan(
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  text:
                      '- پسته همچنین غنی از مواد معدنی ،پتاسیم، آهن، کلسیم ،روی ،مس و سدیم هستند.'),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              text: TextSpan(
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  text:
                      '- این آجیل، دارای ویتامین های ضروری ،مثل:ویتامین ث ، ب6، آ، کا، تیامین، فولات، کولین ،اسید و بتایین است'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: OutlineButton(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                    borderSide: BorderSide(
                        style: BorderStyle.solid, color: Colors.black),
                    child: Text('از دیگران بپرسید'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text('در مورد محصول بیشتر میخواهید بدانید؟'))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.people),
                    ),
                    Container(
                        height: 70,
                        width: 80,
                        child: RichText(
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          text: TextSpan(
                              text: 'ارتباط مستقیم با فروشنده',
                              style: TextStyle(color: Colors.black)),
                        ))
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.check_circle),
                    ),
                    Container(
                        height: 70,
                        width: 80,
                        child: RichText(
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          text: TextSpan(
                              text: 'پرداخت امن از درگاه بانک',
                              style: TextStyle(color: Colors.black)),
                        ))
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.calendar_today),
                    ),
                    Container(
                        height: 70,
                        width: 80,
                        child: RichText(
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          text: TextSpan(
                              text: 'هفت روز ضمانت بازگشت وجه',
                              style: TextStyle(color: Colors.black)),
                        ))
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
