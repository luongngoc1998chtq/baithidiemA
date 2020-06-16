import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luongngoc/category/item.dart';
import 'package:luongngoc/category/den1.dart';
import 'package:luongngoc/category/den2.dart';
import 'package:luongngoc/list/danhgia.dart';
import 'package:luongngoc/list/email.dart';
import 'package:luongngoc/list/lienhe.dart';
import 'package:luongngoc/list/login.dart';
import 'package:luongngoc/list/Setting.dart';
import 'package:luongngoc/list/khachsan.dart';
import 'package:luongngoc/list/nhahang.dart';

void main() { runApp(MaterialApp( 
  title: 'Thành phố Tuyên Quang',
  debugShowCheckedModeBanner: false,
  home: MyApp()));
  }

class MyApp extends StatelessWidget {
  @override            
  Widget build(BuildContext context) {  
    Widget images = new Container(
      height: 230.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('lib/images/3.jpg'),
          AssetImage('lib/images/4.jpg'),
          AssetImage('lib/images/tonghop.jpg'),
          AssetImage('lib/images/41.jpg'),
          AssetImage('lib/images/21.jpg'),
          AssetImage('lib/images/33.jpg'),
          AssetImage('lib/images/16.jpg'),
              ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 5.0,
      ),
    );
    Widget titleSection = Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Thành phố Tuyên Quang',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ), 
          Counter(),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(20),
      child: Text(
          '        Tuyên Quang là một tỉnh miền núi phía Bắc, '
          'nằm giữa Đông Bắc và Tây Bắc của Việt Nam, ' 
          'phía Đông giáp tỉnh Bắc Kạn và Thái Nguyên, '
          'phía Bắc giáp tỉnh Hà Giang, Cao Bằng, ' 
          'phía Tây giáp tỉnh Yên Bái và phía Nam giáp tỉnh Vĩnh Phúc, Phú Thọ, ' 
          'cách thủ đô Hà Nội 165 km, cách sân bay Nội Bài 130 km. Điều kiện địa lý này thuận lợi cho việc đi lại, '
          ' giao thương của tỉnh.',
           softWrap: true,
      ),
    );

    Widget textSection1 = Container(
      padding: const EdgeInsets.all(20),
      child: Text(
          '        Tuyên Quang là một tỉnh giàu truyền thống cách mạng, là nơi khởi phát,'
          'nơi hội tụ, giao thoa của những sắc thái văn hoá riêng của các dân tộc thiểu số ở miền núi phía Bắc; với lễ hội truyền thống đặc sắc, những truyền thuyết, những làn điệu dân ca ngọt ngào, những cảnh đẹp nên thơ do thiên nhiên ban tặng và 467 di tích '
          'lịch sử trên địa bàn tỉnh - Tuyên Quang là một bảo tàng cách mạng, một điểm đến hấp dẫn đối với khách du lịch .\n'
          'Ai đã từng một lần đến với Tuyên Quang sẽ khó có thể quên được thị xã Tuyên Quang thơ mộng, soi bóng xuống dòng sông Lô.'
          'Nơi đây còn lưu dấu ấn bàn tay tài hoa của con người trên những di tích,'
          'kiến trúc nghệ thuật, đình chùa, đền miếu, trong đó có nhiều di tích được xếp hạng cấp Quốc gia như: Thành nhà Mạc, đền Hạ…'
          '                                                                             ',
           softWrap: true,
      ),
    );

    Widget textSection2 = Container(
      padding: const EdgeInsets.all(20),
      child: Text(
          '        Đến Tuyên Quang, du khách sẽ được thăm Khu du lịch Văn hoá - Lịch sử và Sinh thái Quốc gia Tân Trào' 
          ' - Thủ đô khu Giải phóng và Thủ đô Kháng chiến, nơi Chủ tịch Hồ Chí Minh, Trung ương Đảng và hầu hết các bộ, ban, ngành, cơ quan Trung ương đã sống và làm việc trong thời kỳ kháng chiến gian khổ.\n\n'
          '         Nơi đây, có nhiều di tích lịch sử nằm giữa những cánh rừng đại ngàn mãi mãi đi vào lịch sử hào hùng '
          'của dân tộc Việt Nam như:Đình Hồng Thái-nơi Chủ tịch Hồ Chí Minh dừng chân đầu tiên khi Người từ Pác Bó '
          '(Cao Bằng) về Tân Trào ngày 21 tháng 5 năm 1945, đây cũng là nơi đón tiếp các đại biểu về dự Quốc dân Đại hội'
          ' Tân Trào, tháng 8 năm 1945; Lán Nà Lừa - nơi Chủ tịch Hồ Chí Minh đã ở và làm việc từ cuối tháng 5 đến'
          ' ngày 22 tháng 8 năm 1945. Trong thời gian này, Người đã chỉ thị thành lập khu giải phóng'
          ': Thống nhất các lực lượng vũ trang thành Quân giải phóng, thành lập Trường Quân chính kháng Nhật, '
          'chủ trì Hội nghị cán bộ toàn quốc của Đảng, dự Quốc dân Đại hội Tân Trào; Đình Tân Trào, nơi diễn ra '
          'Quốc dân Đại hội từ ngày 16 đến ngày 17 tháng 8 năm 1945 với hơn 60 Đại biểu. Đại hội đã thông qua Nghị quyết '
          'giành chính quyền toàn quốc và hơn 10 chính sách lớn của Việt Minh, bầu Uỷ ban dân tộc giải phóng do đồng chí Hồ Chí Minh '
          'làm Chủ tịch và quy định Quốc kỳ, Quốc ca của nước Việt Nam mới; Cây đa Tân Trào, tại đây ngày 16 tháng 8 năm 1945, đồng chí Võ '
          'Nguyên Giáp đã đọc Bản quân lệnh số 1 của Ủy ban Khởi nghĩa, chỉ huy đơn vị Giải phóng quân tiến về giải phóng Hà Nội …\n'
          '        Thiên nhiên đã ban tặng cho Tuyên Quang nhiều hang động, hồ, thác nước đẹp,'
          ' những cánh rừng nguyên sinh, như: Thác Pắc Ban và rừng nguyên sinh (Na Hang), '
          'hang Bó Ngoặng (Chiêm Hoá), Động tiên (Hàm Yên)...',
           softWrap: true,
      ),
    );

    Widget textSection3 = Container(
      padding: const EdgeInsets.all(20),
      child: Text(
          '        Sau mỗi tour du lịch, du khách sẽ được thưởng thức những món ăn đặc sản của Tuyên Quang như: Cá Dầm xanh - Anh vũ, cơm lam, xôi ngũ sắc…'
          '        Người Tuyên Quang nhân hậu, giầu lòng mến khách. Thiếu nữ Tuyên Quang thanh lịch, dịu dàng và duyên dáng.',
          softWrap: true,
      ),
    );

    Widget textSection4 = Container(
      padding: const EdgeInsets.all(20),
      child: Text(
          '        Với những sản phẩm du lịch độc đáo, hấp dẫn, Tuyên Quang đã sẵn sàng phục vụ du khách trong và ngoài nước ghé thăm.\n',
           softWrap: true,
      ),
    );
 
    return MaterialApp(
      debugShowCheckedModeBanner: false,            
      title: 'Thành phố Tuyên Quang',            
      home: Scaffold(            
        appBar: AppBar(            
        title: Text('Wellcome - Thành Tuyên'),
        backgroundColor: Colors.blueAccent,  
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search , color: Colors.white ), onPressed: null,)
        ],          
      ),            
      body: ListView(           
        children: [
          itemlist(),
          images,         
          titleSection,
          itemlist1(),
          textSection,
          Image.asset(
            'lib/images/1.png',
            width: 300,
            height: 300,
            fit: BoxFit.contain,
          ),
          textSection1,
          Container(
            height: 200.0,
            child: den1(),
          ),
          textSection2,
          Container(
            height: 200,
            child: den2(),
          ),
          textSection3,
          Image.asset(
            'lib/images/11.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),
          Image.asset(
            'lib/images/41.jpg',
            width: 580,
            height: 480,
            fit: BoxFit.contain,
          ),
          textSection4,
        ],
      ),

      drawer: Drawer(
        child: Container(
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                    'lib/images/1.jpg'),
                    radius: 100,
                ),
                    accountName: Text(
                      'Lương Ngọc',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ), 
                    ),
                    accountEmail: Text(
                      'luongngoc1998chtq@gmail.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ), 
                    ),
                    otherAccountsPictures: <Widget>[
                      Icon(
                        Icons.add_alert,
                        color: Colors.red[200],
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[500],
                      ),
                    ],
                    onDetailsPressed: () {},
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(top: 8.0),
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(
                            Icons.home,
                            color: Colors.blue,
                          ),
                          title: Text('Trang chủ'),
                          onTap: () {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => MyApp()));
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.hotel,
                            color: Colors.blue,
                          ),
                          title: Text('Khách sạn'),
                          onTap: () {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => khachsanScreen()));
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.local_dining,
                            color: Colors.blue,
                          ),
                          title: Text('Nhà hàng'),
                          onTap: () {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => nhahangScreen()));
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.phone,
                            color: Colors.red,
                          ),
                          title: Text('Liên hệ'),
                          onTap: () {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => HotlineScreen()));
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.email,
                            color: Colors.red,
                          ),
                          title: Text('Email phản hồi'),
                          onTap: () {
                           Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => emailScreen()));
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.settings,
                          ),
                          title: Text('Cài đặt'),
                          onTap: () {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => Setting()));
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.rate_review,
                            color: Colors.red,
                          ),
                          title: Text('Đánh giá'),
                          onTap: () {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => danhgiaScreen()));
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.lock,
                          ),
                          title: Text('Đăng xuất'),
                          onTap: () {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => dangxuatScreen()));
                          },
                        ),
                      ],)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class Counter extends StatefulWidget{
  @override
  _CounterState createState() => _CounterState();
}
class _CounterState extends State<Counter> {
  int _counter =0;
  void _increment(){
    setState(() {
      _counter ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.favorite,
            color: Colors.red[500],
          ),
          onPressed: _increment,
        ),
        Text('$_counter'),
      ],
    );
  }
}
