import 'package:flutter/material.dart';
import 'dart:math';

class GununFali extends StatefulWidget {
  const GununFali({Key? key}) : super(key: key);

  @override
  State<GununFali> createState() => _GununFaliState();
}

class _GununFaliState extends State<GununFali> {
  String message = "TIKLA FALIN GELSİN";
  List<String> askDurumu = [
    "AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?",
    "AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.",
    "AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler",
    "AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.",
    "AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!"
  ];
  List<String> paraDurumu = [
    "PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.",
    "PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin",
    "PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.",
    "PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.",
    "PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin."
  ];
  List<String> gunlukTavsiye = [
    "TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ",
    "TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış",
    "TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla",
    "TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir",
    "TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Günün Falı"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.purple[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 180,
              margin: EdgeInsets.only(bottom: 20),
              child: Image.asset(
                "images/falci.png",
                width: 180,
              ),
            ),
            Container(width: 270, child: const Divider()),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 45),
              color: Colors.white,
              child: ListTile(
                leading: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                title: const Text(
                  "AŞK DURUMU",
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {
                  setState(() {
                    message = askDurumu[Random().nextInt(4)];
                  });
                },
              ),
            ),
            Container(width: 270, child: const Divider()),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 45),
              color: Colors.white,
              child: ListTile(
                leading: const Icon(
                  Icons.attach_money,
                  color: Color.fromARGB(255, 12, 78, 14),
                ),
                title: const Text(
                  "PARA DURUMU",
                  style: TextStyle(color: Color.fromARGB(255, 12, 78, 14)),
                ),
                onTap: () {
                  setState(() {
                    message = paraDurumu[Random().nextInt(4)];
                  });
                },
              ),
            ),
            Container(width: 270, child: const Divider()),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 45),
              color: Colors.white,
              child: ListTile(
                leading: const Icon(
                  Icons.attach_money,
                  color: Colors.blue,
                ),
                title: const Text(
                  "GÜNLÜK TAVSİYE",
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  setState(() {
                    message = gunlukTavsiye[Random().nextInt(4)];
                  });
                },
              ),
            ),
            Container(width: 270, child: const Divider()),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
