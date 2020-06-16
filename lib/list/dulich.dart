import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselDemo extends StatefulWidget {
  CarouselDemo() : super();

  final String title = "Du lịch";

  @override
  CarouselDemoState createState() => CarouselDemoState();
}

class CarouselDemoState extends State<CarouselDemo> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;
  int _current1 = 0;
  List imgList = [
  'https://dulichnahang.vn/wp-content/uploads/2019/02/ho-na-hang-768x515.jpg',
  'https://i.ytimg.com/vi/d9YnoMbN43g/maxresdefault.jpg',
  'https://lh3.googleusercontent.com/proxy/KMgMThEP-OaqJAb61W4s6wrVJXkRRwk1zbSol2EtXTwRt1CWpLXQfTNf4BOtA24WJwJSSYJLq77XQPYXgpKJH5Xy4gcekZt_jgyTfBAtrAXsDw',
  'https://jcst.joco.vn/w/media/display?op=resize&h=400&path=blog/post/2017/10/12/f6010bb4e9b05fb2fd9bce660577feedcc9b5aa1290c8f6436e5deea68794457.JPG',
  'https://d4.violet.vn/uploads/blogs/745989/picture1_500.jpg',
  'https://cdn3.ivivu.com/2016/09/thac-ban-ba-co-son-nu-giua-nui-rung-tuyen-quang-ivivu-6-370x215.jpg',
  'https://lh3.googleusercontent.com/proxy/w3KWyvv66kIbSH59kgnCte6nKUOctzUDuOiDwYy_PrvZnSYxZxLovqNqX8Wcdzx74Cl82fBOLYqsC8SF1KBJGjgq82huFTyhMetAGCOp1u5uPKbIGbpV',
  'https://lh3.googleusercontent.com/proxy/VN5hpmUqEcC8p5Ybop7TanF2JNH8QeVz6Ascddk8O1DPgBt6hAJtWSg9J_XYJ52MD5ifMnbAIRAV7vCjChvw8gHHVRFeRcAE5Cx6pM_Y23ChQsJ4gnio3wjU69qkaLmvUCF_8HzXiMp44Q',
  'https://luhanhvietnam.com.vn/du-lich/vnt_upload/news/06_2019/tuyen-quang-co-gi-10-min.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT3mOgv1xj8nlMHd_D7TZYJgZ9XlThKDyuNIavuBm1OoM8lv0_G&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRcT0FycZu3e9gqjAMA2dxv-4g9myQJDswM6NeBzfmuV9dEHFe0&usqp=CAU',
  ];
  List imgList1 = [
  'https://media.baothaibinh.com.vn/upload/news/9_2019/87545_le_hoi_thanh_tuyen_2019_1568344272.jpg',
  'https://baotuyenquang.com.vn/media/images/2017/10/img_20171002100053.jpg',
  'https://luhanhvietnam.com.vn/du-lich/vnt_upload/news/06_2019/duathuyentrensonglo.jpg',
  'https://lh3.googleusercontent.com/proxy/xvSrjBZaaxx-Jj3mf918BrlbHXGZL57qbrJZwG8Nd8JMPbWwEcJJ37pVelJ0twKiIS-fGP3GfMMHJ2E8TiHOlJjlG4P8CaGFndiI3tuCGsJG1lmsNrA',
  'https://i.ytimg.com/vi/FzNtcVy5esA/maxresdefault.jpg',
  'https://taybacsensetravel.com/view/at_le-hoi-long-tong-cua-dan-toc-tay-o-tay-bac_76e74773df999187b47fa239f554153b.jpg',
  'https://m.baotuyenquang.com.vn/media/images/2016/01/img_20160128155457.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            carouselSlider = CarouselSlider(
              height: 300.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.redAccent : Colors.green,
                  ),
                );
              }),
            ),
            SizedBox(
              height: 20.0,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: <Widget>[
                OutlineButton(
                  onPressed: goToPrevious,
                  child: Text("<"),
                ),
                OutlineButton(
                  //onPressed: goToPrevious,
                  child: Text(" Phong cảnh",
                  style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),),
                ),
                OutlineButton(
                  onPressed: goToNext,
                  child: Text(">"),
                  
                ),
                
              ],
            ),
            carouselSlider = CarouselSlider(
              height: 300.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList1.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList1, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current1 == index ? Colors.redAccent : Colors.green,
                  ),
                );
              }),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: goToPrevious1,
                  child: Text("<"),
                ),
                OutlineButton(
                  //onPressed: goToPrevious,
                  child: Text(" Lễ hội",
                  style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: Colors.red,
            ),),
                ),
                OutlineButton(
                  onPressed: goToNext1,
                  child: Text(">"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
  goToPrevious1() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext1() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}
