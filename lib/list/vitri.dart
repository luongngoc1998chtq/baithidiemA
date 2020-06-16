import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class vitriScreen extends StatelessWidget {
  @override            
  Widget build(BuildContext context) {  
    Widget images = new Container(
      height: 230.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('lib/images/84.jpg'),
          AssetImage('lib/images/85.jpg'),
          AssetImage('lib/images/89.jpg'),
          AssetImage('lib/images/86.jpg'),
          AssetImage('lib/images/87.jpg'),
              ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 5.0,
      ),
    );
    
    Widget textSection = Container(
      padding: const EdgeInsets.all(10),
      child: Text(
          '       Năm 2018, Tuyên Quang là đơn vị hành chính Việt Nam đông thứ 53 về số dân, xếp thứ 54 về Tổng sản phẩm trên địa bàn (GRDP), xếp thứ 55 về GRDP bình quân đầu người, đứng thứ 30 về tốc độ tăng trưởng GRDP. Với 780.100 người dân, GRDP đạt 28.084 tỉ Đồng (tương ứng với 1,2197 tỉ USD), GRDP bình quân đầu người đạt 36 triệu đồng (tương ứng với 1.564 USD), tốc độ tăng trưởng GRDP đạt 8,04%.',
           softWrap: true,
      ),
    );

    Widget textSection1 = Container(
      padding: const EdgeInsets.all(10),
      child: Text(
          '        Tuyên Quang là tỉnh miền núi, nền kinh tế nông-lâm nghiệp chiếm ưu thế, mô hình kinh tế trang trại kết hợp nông lâm. Trong bảng xếp hạng về Chỉ số năng lực cạnh tranh cấp tỉnh của Việt Nam năm 2011, tỉnh Tuyên Quang xếp ở vị trí thứ 56/63 tỉnh thành.'
'Nông nghiệp: lúa là cây lương thực chính, sau đó là các cây ngô, sắn, khoai lang. Cây công nghiệp gồm có: chè (nhà máy chè Tuyên Quang, Tháng Mười, Tân Trào), cây sả làm tinh dầu sả, lạc, đậu, tương. Cây ăn quả có: cam, quýt, nhãn, vải, chanh. Chăn nuôi có trâu, bò, lợn, dê, gia cầm...'
'Công nghiệp: có quặng kẽm, quặng mangan, quặng thiếc, bột kẽm, khai thác ăntimoan... Sản xuất giấy, bột giấy, xi măng, vôi.'
'Có nhà máy thủy điện Tuyên Quang được đưa vào sử dụng chính thức ngày 30 tháng 1 năm 2008, công suất thiết kế đạt 342 MW. Nhà máy thủy điện Chiêm Hóa có công suất lắp máy 48 MW, hoàn thành tháng 3/2013',
           softWrap: true,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,            
      title: 'Kinh tế',            
      home: Scaffold(            
        appBar: AppBar(            
        title: Text('Kinh tế'),
        backgroundColor: Colors.blueAccent,  
        ),          
      body: ListView(           
        children: [
          images,
          textSection,
          textSection1,
        ],
      ),
      ),
    );
  }
}
