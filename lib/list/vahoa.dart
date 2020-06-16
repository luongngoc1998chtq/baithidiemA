import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class vahoa extends StatelessWidget {
  @override            
  Widget build(BuildContext context) {  
    Widget images = new Container(
      height: 230.0,
      child: 
        Image.asset(
            'lib/images/21.jpg',
            width: 300,
            height: 300,
            fit: BoxFit.contain,
          ),
    );
   
    Widget textSection = Container(
      padding: const EdgeInsets.all(20),
      child: Text(
          'I. Văn hóa phi vật thể                                                          ',
           softWrap: true,
           style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
           ),
      ),
    );

    Widget textSection1 = Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
          '         1. Đàn Tính trong văn hóa Tày                                                          ',
           softWrap: true,
           style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
           ),
      ),
    );

    Widget textSection2 = Container(
      padding: const EdgeInsets.all(10),
      child: Text(
          '         Nói đến Then thì không thể không nhắc tới cây đàn Tính tẩu. Người ta thường nói: “Không có đàn Tính thì hát Then không thể ngân vang, lời ca không thể dịu ngọt, tha thiết…”!'
'                                Theo truyền thuyết, đàn Tính do chàng trai chưa vợ tên Xiên Cân (nghìn cân) làm ra. Tài chơi đàn Tính của Xiên Cân không ai sánh nổi, từ đấy Xiên Cân có người yêu. Vì quá hay, '
'nhiều người nghe tiếng đàn của Xiên Cân đều bị quyến rũ quên hết sự đời. Muôn vật nghe tiếng đàn đều ngẩn ngơ, mê muội bèn tấu cáo lên Ngọc Hoàng. Ngọc Hoàng sai thiên lôi xuống tìm hiểu sự tình mới biết nguyên cớ của mọi sự mê muội ở trần thế chỉ vì tiếng đàn 12 dây của Xiên Cân. Ngọc Hoàng phán xử, buộc Xiên Cân phải cắt bỏ 9 dây, còn lại 3 dây. Vì vậy, mà đàn Tính ngày nay có từ 2-3 dây.',
           softWrap: true,
           style: TextStyle(
              fontSize: 15,
           ),
      ),
    );

    Widget textSection3 = Container(
      padding: const EdgeInsets.all(10),
      child: Text(
          '          Đàn Tính giữ một vai trò quan trọng đối với thực hành nghi lễ Then'
          '              Trong ảnh: Một tiết mục văn nghệ trong Liên hoan nghệ thuật hát Then - đàn Tính huyện Na Hang năm 2019. \n Ảnh: Quốc Việt                                                          ',
           style: TextStyle(
              fontSize: 10,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
           ),
      ),
    );

    Widget textSection4 = Container(
      padding: const EdgeInsets.all(10),
      child: Text(
          '       Từ truyền thuyết kể trên có thể thấy cây đàn Tính có từ rất lâu gắn liền với sinh hoạt văn hóa tín ngưỡng và phát triển theo sự tiến bộ của cộng đồng dân tộc Tày. Ngày nay, đàn Tính được làm từ ba loại vật liệu gồm: quả bầu khô (cắt tiện thật khéo gắn lên mặt cắt một mảnh ván mỏng), cần đàn bằng gỗ cây dâu hay thừng mực, vuốt thon để một mặt phẳng và nối qua bầu đàn, trên ngọn cần có thể khắc hình long phượng, chim, thú; dây đàn được làm từ tơ tằm. Thêm ba núm chốt ngang qua khe máng đầu cần để mắc dây đàn và "con ngựa" trên mặt hộp, con ngựa có 3 khía đặt đỡ ba dây... '
          'Đàn Tính được làm theo tỉ lệ, kích thước "Song căm tẩu, cẩu căm cản" (hai nắm bầu, chín nắm cần). Tiếng Tày, "tẩu" là bầu đàn, "song căm" là đường kính hộp đàn bằng hai nắm tay, tương đương 18cm, cần đàn "cản đàn" cả phần thân cắm trong hộp đàn dài "cẩu căm" (chín nắm tay) tương đương 81 cm, còn lại là ngọn cần khoảng 20cm để làm máng chốt dây và trang trí. Kích cỡ trên được đúc kết từ lâu đời trong quá trình sáng chế cây đàn tính dân tộc Tày.'
          '                                                                Ngày nay, hầu hết các hoạt động văn hóa của người Tày như: cưới xin, mừng thọ, liên hoan văn nghệ… đều có sự xuất hiện của cây đàn Tính.',
           softWrap: true,
           style: TextStyle(
              fontSize: 15,
              
           ),
      ),
    );
    Widget textSection5 = Container(
      padding: const EdgeInsets.all(10),
      child: Text(
          '2. Lễ cấp sắc của người dao coóc ngáng',
           softWrap: true,
           style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              
           ),
      ),
    );
    Widget textSection6 = Container(
      padding: const EdgeInsets.all(10),
      child: Text(
          '         Ở Tuyên Quang, người Dao Coóc Ngáng chỉ cư trú tại xã Trung Sơn, huyện Yên Sơn. Họ là một trong những nhóm Dao có số lượng người rất ít, nhưng có những nét văn hóa riêng, một trong những nét văn hóa đặc sắc cần được gìn giữ là Lễ cấp sắc.',
           softWrap: true,
           style: TextStyle(
              fontSize: 15,
              
           ),
      ),
    );
    Widget textSection7 = Container(
      padding: const EdgeInsets.all(10),
      child: Text(
          'II. Lễ hội truyền thống',
           softWrap: true,
           style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              
           ),
      ),
    );
    Widget textSection8 = Container(
      padding: const EdgeInsets.all(10),
      child: Text(
          '     1. Lễ hội rước Mẫu: Tôn vinh nét đẹp văn hóa Thành Tuyên',
           softWrap: true,
           style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              
           ),
      ),
    );
    Widget textSection9 = Container(
      padding: const EdgeInsets.all(10),
      child: Text(
          '           Lễ hội rước Mẫu đền Hạ, đền Thượng, đền Ỷ La ra đời và tồn tại từ lâu đời gắn liền với tín ngưỡng thờ Mẫu tại ba ngôi đền này. Thánh Mẫu được thờ ở ba ngôi đền chính là tính "thiêng", là hạt nhân của Lễ hội. Lễ hội đã được Bộ Văn hóa, Thể thao và Du lịch xếp hạng di sản văn hóa phi vật thể quốc gia vào năm 2017.',
           softWrap: true,
           style: TextStyle(
              fontSize: 15,
              
           ),
      ),
    );
    Widget textSection10 = Container(
      padding: const EdgeInsets.all(10),
      child: Text(
          'Lễ hội rước Mẫu đền Hạ, đền Thượng và đền Ỷ La là Lễ hội truyền thống không chỉ riêng của người dân thành phố Tuyên Quang mà còn là ngày hội của nhân dân trên địa bàn tỉnh.',
           softWrap: true,
           style: TextStyle(
              
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
           ),
      ),
    );
    Widget textSection11 = Container(
      padding: const EdgeInsets.all(10),
      child: Text(
          'III. Độc đáo lễ hội truyền thống các dân tộc Tuyên Quang',
           softWrap: true,
           style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
           ),
      ),
    );
    Widget textSection12 = Container(
      padding: const EdgeInsets.all(10),
      child: Text(
          '         Đồng bào dân tộc Tày trong tỉnh có 2 lễ hội lớn trong năm là Lễ hội Lồng Tông và Lễ hội Cầu mùa. Hai lễ hội này đều được tổ chức vào những ngày đầu năm.',
           softWrap: true,
           style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              
           ),
      ),
    );
    Widget textSection13 = Container(
      padding: const EdgeInsets.all(10),
      child: Text(
          'Toàn cảnh Lễ hội Lồng Tông huyện Chiêm Hóa.',
           softWrap: true,
           style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              
           ),
      ),
    );
    Widget textSection14 = Container(
      padding: const EdgeInsets.all(10),
      child: Text(
          '            Lễ hội Lồng Tông hay còn gọi là hội xuống đồng có hai phần: Phần lễ cúng trời đất, các vị thần linh, lễ tịch điền đầu năm mới, phát lộc cho nhân dân. Trong phần hội có các trò chơi dân gian như tung còn, kéo co, đẩy gậy, đi cà kheo, bắn nỏ, đánh pam, đánh yến, đánh đu, hát đối đáp Sli, Lượn, Then...\n'
          'Lễ hội Cầu mùa gắn liền với nền nông nghiệp trồng trọt nhằm gửi gắm mong ước của con người, cầu cho mưa thuận gió hòa, cây cối tốt tươi, mang lại nhiều no ấm cho người dân và còn thể hiện một cách sinh động nền văn hóa phong phú, đa dạng và giàu bản sắc của dân tộc Tày.',
           softWrap: true,
           style: TextStyle(
              fontSize: 15,
              
           ),
      ),
    );
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,            
      title: 'Văn hóa',            
      home: Scaffold(            
        appBar: AppBar(            
        title: Text('Văn hóa'),
        backgroundColor: Colors.blueAccent,          
      ),            
      body: ListView(           
        children: [         
          images,                             
          textSection,
          textSection1,
          textSection2,
          Image.asset(
            'lib/images/47.jpg',
            width: 250,
            height: 250,
            fit: BoxFit.fill,
          ),
          textSection3,
          textSection4,
          textSection5,
          Image.asset(
            'lib/images/48.jpg',
            width: 300,
            height:220,
            fit: BoxFit.contain,
          ),
          textSection6,
          textSection7,
          textSection8,
          textSection9,
          Image.asset(
            'lib/images/49.jpg',
            width: 300,
            height:220,
            fit: BoxFit.contain,
          ),
          Image.asset(
            'lib/images/55.jpg',
            width: 300,
            height:220,
            fit: BoxFit.contain,
          ),
          textSection10,
          textSection11,
          textSection12,
          Image.asset(
            'lib/images/60.jpg',
            width: 300,
            height:220,
            fit: BoxFit.contain,
          ),
          textSection13,
          textSection14,
        ],
      ),
      ),
    );
  }
  }
