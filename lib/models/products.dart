class Products {

  late final int id, price;
  late final String title, subTitle, description, image;

  Products(
      {required this.id,
        required this.price,
        required this.title,
        required this.subTitle,
        required this.description,
        required this.image});

}
// list of products
List<Products> products = [
  Products(
    id: 1,
    price: 59,
    title: "سماعات لاسلكية",
    subTitle: "جودة صوت عالية",
    image: "assets/airpod.png",
    description:'تصميم مقاوم للماء والتعرق (بمعيار مقاومة IPX4)سماعات آيربودز خفيفةالوزن وتوفر تصميماً محدداًفقط لضمان الراحة وتوجيه الصوت إلى أذنك.'
  ),
  Products(
    id: 2,
    price: 1099,
    title: "جهاز موبايل",
    subTitle: "وأصبح للموبايل قوة",
    image: "assets/mobile.png",
    description:'مقفلة الأصلي جوجل بكسل 4 4XL XL 5.7 "/6.3" P-OLED Snapdragon 855 6 جيجابايت RAM 64 جيجابايت/128 جيجابايت ROM ثماني النواة الهاتف المزدوج كاميرا خلفية'
  ),
  Products(
    id: 3,
    price: 39,
    title: "نظارات ثلاثية الأبعاد",
    subTitle: "لنقلك للعالم الافتراضي",
    image: "assets/class.png",
    description:
      'سماعة الرأس خفيفة الوزن والمتينة من Daydream View مصنوعة من قماش ناعم وقابل للتنفس لمساعدتك على البقاء مرتاحًا لفترة أطول. التوافق: هواتف DAYDREAM-READY'
  ),
  Products(
    id: 4,
    price: 56,
    title: "سماعات",
    subTitle: "لساعات استماع طويلة",
    image: "assets/headset.png",
    description:
      'سماعات اذن للالعاب موديل G برو X (الجيل الثاني) مع تقنية بلو فويس وصيغة دي تي اس 7.1 ومحرك برو جي 50 ملم،'
  ),
  Products(
    id: 5,
    price: 68,
    title: "مسجل صوت",
    subTitle: "سجل اللحظات المهمة حولك",
    image: "assets/speaker.png",
    description:
'يعمل مكبر صوت جوجل هوم اللاسلكي كمساعد شخصي لك ما عليك إلا أقول اوك جوجل OK Google لتشغيل مكبر الصوت اللاسلكي بكامل قوته.'

  ),
  Products(
    id: 6,
    price: 39,
    title: "كاميرات كمبيوتر",
    subTitle: "بجودة ودقة صورة عالية",
    image: "assets/camera.png",
    description:
      'USB 2.0 HD كاميرا ويب كاميرا الويب مع ميكروفون للكمبيوتر المحمول الكمبيوتر المكتبي'
  ),
];
