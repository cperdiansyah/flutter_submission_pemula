class FoodData {
  String name;
  String imagePoster;
  String category;
  String description;
  double price;
  double discount;
  double ratings;
  List<String> imageUrls;

  FoodData({
    required this.name,
    required this.imagePoster,
    required this.category,
    required this.price,
    required this.discount,
    required this.ratings,
    required this.description,
    required this.imageUrls,
  });
}

var foodDataList = [
  FoodData(
    name: "Capcay",
    imagePoster: "images/capcay.jpg",
    category: "Dishes",
    description:
        "Capcai or capcay is the name of a typical Chinese-Indonesian dish in the form of many kinds of vegetables cooked by boiling or frying. Capcai was originally a variation of a typical Fujian dish. The name capcai is taken from the Hokkien dialect which literally means \"various vegetables\".",
    price: 7000,
    discount: 12.0,
    ratings: 4.2,
    imageUrls: [
      'https://www.masakapahariini.com/wp-content/uploads/2020/10/cap-cay_edited-780x440.jpg',
      'https://asset.kompas.com/crops/D4uBmDZXClMaQKA1X4eTc3Nft4g=/3x0:700x465/750x500/data/photo/2021/04/19/607d551fb3198.jpg',
      'https://selerasa.com/wp-content/uploads/2018/01/images_capcaykuah.jpg'
    ],
  ),
  FoodData(
    name: "Gudeg",
    imagePoster: "images/gudeg.png",
    category: "Dishes",
    description:
        "Gudeg is a special dish from Yogyakarta and Central Java Province made from young jackfruit cooked with coconut milk. It takes hours to make this dish. The brown color is usually produced by teak leaves that are cooked together.",
    price: 10000,
    discount: 20.0,
    ratings: 4.9,
    imageUrls: [
      'https://www.inews.id/index.php/travel/kuliner/resep-gudeg-jogja',
      'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1644823082/uq7svlxmnxcxcitzjkzn.jpg',
      'https://www.goodnewsfromindonesia.id/uploads/post/large-gudeg-jogja-7ecc39b5c7920fc37224fe5042ddd276.jpg'
    ],
  ),
  FoodData(
    name: "Gulai",
    imagePoster: "images/gulai.jpg",
    category: "Dishes",
    description:
        "Gulai, also known as Gule, is a dish made from chicken meat, various fish, goat, beef, offal, or vegetables such as young jackfruit and cassava leaves, which are processed in a savory spiced sauce.",
    price: 15000,
    discount: 15.0,
    ratings: 4.5,
    imageUrls: [
      'https://img-global.cpcdn.com/recipes/b17fa1f033770175/751x532cq70/gulai-ayam-foto-resep-utama.jpg',
      'https://awsimages.detik.net.id/community/media/visual/2021/09/07/resep-gulai-ayam-nanas_43.jpeg?w=1200',
      'https://www.ruparupa.com/blog/wp-content/uploads/2022/02/resep-gulai-ayam-lezat.jpeg'
    ],
  ),
  FoodData(
    name: "Kwetiau",
    imagePoster: "images/kwetiau.jpg",
    category: "Dishes",
    description:
        "Kwetiau is a kind of white Chinese noodles made from rice. Kwetiau is a food that is quite popular in Indonesia, especially in Jakarta and other places where many people of Chinese descent are inhabited. Kwetiau is generally synonymous with ethnic Hokkien Chinese and Tio Ciu",
    price: 12000,
    discount: 15.0,
    ratings: 4.3,
    imageUrls: [
      'https://img.inews.co.id/media/822/files/inews_new/2022/01/24/Resep_Kwetiau_Goreng.jpg',
      'https://asset.kompas.com/crops/cDFJALgskhntLiRpX_mscOC9wF8=/0x0:698x465/780x390/data/photo/2020/12/07/5fce3837c4f6d.jpg',
      'https://t-2.tstatic.net/medan/foto/bank/images/resep-kwetiau-telur.jpg'
    ],
  ),
  FoodData(
    name: "Nasi Goreng",
    imagePoster: "images/nasi_goreng.jpg",
    category: "Dishes",
    description:
        "Fried rice is a food in the form of fried rice and stirred in cooking oil, margarine, or butter. Usually, sweet soy sauce, shallots, garlic, tamarind, pepper and other spices are added; such as eggs, chicken, and crackers.",
    price: 13000,
    discount: 15.0,
    ratings: 4.7,
    imageUrls: [
      'https://asset.kompas.com/crops/riPGK5eD7amHKtv3dFNqioI6IqI=/13x7:700x465/780x390/data/photo/2021/09/24/614dc6865eb24.jpg',
      'https://cdn-2.tstatic.net/travel/foto/bank/images/kuliner-nasi-goreng-jawa-enak-untuk-menu-sarapan.jpg',
      'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2020/10/07/21656846.jpg'
    ],
  ),
  FoodData(
    name: "Nasi Uduk",
    imagePoster: "images/nasi_uduk.jpg",
    category: "Dishes",
    description:
        "Nasi uduk is a dish made from steamed steamed white rice with coconut milk and seasoned with nutmeg, cinnamon, ginger, lemon grass and pepper. This dish began to be made by residents of the island of Java around 1910-1924 and was popularized by the Dutch East Indies after that.",
    price: 15000,
    discount: 15.0,
    ratings: 4.2,
    imageUrls: [
      'https://asset.kompas.com/crops/UAJklFFzp6OLWaRpyllh5H-Jq0A=/0x0:1000x667/780x390/data/photo/2021/02/21/6032066dc88e0.jpg',
      'https://img.okezone.com/content/2021/12/21/298/2520174/sarapan-nasi-uduk-bisa-bikin-kolesterol-naik-simak-penjelasannya-WFMlyW7S1r.jpeg',
      'https://img.okezone.com/content/2020/05/26/298/2220040/cara-memasak-nasi-uduk-pakai-rice-cooker-gampang-banget-deh-mYKq3oaPvF.jpg'
    ],
  ),
  FoodData(
    name: "Pempek",
    imagePoster: "images/pempek.png",
    category: "Snacks",
    description:
        "Pempek or empek-empek is a food made from soft ground fish meat mixed with starch or sago flour, as well as a composition of several other ingredients such as eggs, mashed garlic, flavoring, and salt.",
    price: 10000,
    discount: 3.0,
    ratings: 4.3,
    imageUrls: [
      'https://www.piknikdong.com/wp-content/uploads/2021/02/Cara-Membuat-Pempek.jpg',
      'https://asset.kompas.com/crops/UlNzTgTGP7jQqHkUpgyyGnRAtVE=/92x0:938x564/750x500/data/photo/2020/02/25/5e552581b5371.jpg',
      'https://s2.bukalapak.com/uploads/content_attachment/c93b36cda4399a22fc48ada5/w-740/foto_thumbnail_pempek_2.jpg'
    ],
  ),
  FoodData(
    name: "Rendang",
    imagePoster: "images/rendang.jpg",
    category: "Dishes",
    description:
        "Rendang or randang in the Minangkabau language is a dish made from native Indonesian meat originating from Minangkabau. This dish is produced from a long low temperature cooking process using various spices and coconut milk.",
    price: 17000,
    discount: 3.0,
    ratings: 4.9,
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9kNnw7DwmWazfEMynhyqfKhxAyWcXI6kwfoN2Gg9U25LgvJPam9Xyg484w4tIiqSXs2M&usqp=CAU',
      'https://img.inews.co.id/media/822/files/inews_new/2021/05/10/IMG_10052021_175604__822_x_430_piksel_.jpg',
      'https://awsimages.detik.net.id/community/media/visual/2021/09/13/rendang.jpeg?w=700&q=90'
    ],
  ),
  FoodData(
    name: "Sate",
    imagePoster: "images/sate.jpg",
    category: "Dishes",
    description:
        "Sate or satai is a food made from meat that is cut into small pieces and stabbed in such a way with a stick of coconut or bamboo leaf bone, then grilled using wood charcoal coals. Satay is served with a variety of spices depending on the variation of the satay recipe.",
    price: 25000,
    discount: 3.0,
    ratings: 4.6,
    imageUrls: [
      'http://kbu-cdn.com/dk/wp-content/uploads/sate-ayam.jpg',
      'https://i0.wp.com/resepkoki.id/wp-content/uploads/2017/02/Resep-Sate-Ayam-Madura.jpg?fit=1920%2C1804&ssl=1',
      'https://d1sag4ddilekf6.azureedge.net/compressed/merchants/6-C2DHJZJZGLMBTE/hero/f6e6c41bf8eb472489599dae45c781b4_1606745916352654339.jpg'
    ],
  ),
  FoodData(
    name: "Soto Ayam",
    imagePoster: "images/soto_ayam.jpg",
    category: "Dishes",
    description:
        "Soto ayam is a typical Indonesian food in the form of a kind of chicken soup with a yellowish gravy. The yellow color is due to turmeric which is used as a spice. Soto ayam can be found in many areas in Indonesia and Singapore.",
    price: 17000,
    discount: 3.0,
    ratings: 4.1,
    imageUrls: [
      'https://asset.kompas.com/crops/p88KvOKRwg7WpvHA1bgtYQ2rOQ8=/0x0:698x465/780x390/data/photo/2022/01/10/61dbc4076c2b3.jpg',
      'https://ukm-bumdessukaratu.com/wp-content/uploads/2021/01/Resep-Soto-Ayam-Enak-dan-Mudah.jpg',
      'https://primaberita.com/wp-content/uploads/2020/11/Resep-Soto-Ayam-Khas-Semarang.jpg'
    ],
  ),
];

var popularFoodList = [
  FoodData(
    name: "Rendang",
    imagePoster: "images/rendang.jpg",
    category: "Dishes",
    description:
        "Rendang or randang in the Minangkabau language is a dish made from native Indonesian meat originating from Minangkabau. This dish is produced from a long low temperature cooking process using various spices and coconut milk.",
    price: 17000.0,
    discount: 3.0,
    ratings: 4.9,
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9kNnw7DwmWazfEMynhyqfKhxAyWcXI6kwfoN2Gg9U25LgvJPam9Xyg484w4tIiqSXs2M&usqp=CAU',
      'https://img.inews.co.id/media/822/files/inews_new/2021/05/10/IMG_10052021_175604__822_x_430_piksel_.jpg',
      'https://awsimages.detik.net.id/community/media/visual/2021/09/13/rendang.jpeg?w=700&q=90'
    ],
  ),
  FoodData(
    name: "Sate",
    imagePoster: "images/sate.jpg",
    category: "Dishes",
    description:
        "Sate or satai is a food made from meat that is cut into small pieces and stabbed in such a way with a stick of coconut or bamboo leaf bone, then grilled using wood charcoal coals. Satay is served with a variety of spices depending on the variation of the satay recipe.",
    price: 25000.0,
    discount: 3.0,
    ratings: 4.6,
    imageUrls: [
      'http://kbu-cdn.com/dk/wp-content/uploads/sate-ayam.jpg',
      'https://i0.wp.com/resepkoki.id/wp-content/uploads/2017/02/Resep-Sate-Ayam-Madura.jpg?fit=1920%2C1804&ssl=1',
      'https://d1sag4ddilekf6.azureedge.net/compressed/merchants/6-C2DHJZJZGLMBTE/hero/f6e6c41bf8eb472489599dae45c781b4_1606745916352654339.jpg'
    ],
  ),
  FoodData(
    name: "Gudeg",
    imagePoster: "images/gudeg.png",
    category: "Dishes",
    description:
        "Gudeg is a special dish from Yogyakarta and Central Java Province made from young jackfruit cooked with coconut milk. It takes hours to make this dish. The brown color is usually produced by teak leaves that are cooked together.",
    price: 10000.0,
    discount: 20.0,
    ratings: 4.9,
    imageUrls: [
      'https://www.inews.id/index.php/travel/kuliner/resep-gudeg-jogja',
      'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1644823082/uq7svlxmnxcxcitzjkzn.jpg',
      'https://www.goodnewsfromindonesia.id/uploads/post/large-gudeg-jogja-7ecc39b5c7920fc37224fe5042ddd276.jpg'
    ],
  ),
  FoodData(
    name: "Gulai",
    imagePoster: "images/gulai.jpg",
    category: "Dishes",
    description:
        "Gulai, also known as Gule, is a dish made from chicken meat, various fish, goat, beef, offal, or vegetables such as young jackfruit and cassava leaves, which are processed in a savory spiced sauce.",
    price: 15000.0,
    discount: 15.0,
    ratings: 4.5,
    imageUrls: [
      'https://img-global.cpcdn.com/recipes/b17fa1f033770175/751x532cq70/gulai-ayam-foto-resep-utama.jpg',
      'https://awsimages.detik.net.id/community/media/visual/2021/09/07/resep-gulai-ayam-nanas_43.jpeg?w=1200',
      'https://www.ruparupa.com/blog/wp-content/uploads/2022/02/resep-gulai-ayam-lezat.jpeg'
    ],
  ),
  FoodData(
    name: "Nasi Goreng",
    imagePoster: "images/nasi_goreng.jpg",
    category: "Dishes",
    description:
        "Fried rice is a food in the form of fried rice and stirred in cooking oil, margarine, or butter. Usually, sweet soy sauce, shallots, garlic, tamarind, pepper and other spices are added; such as eggs, chicken, and crackers.",
    price: 13000.0,
    discount: 15.0,
    ratings: 4.7,
    imageUrls: [
      'https://asset.kompas.com/crops/riPGK5eD7amHKtv3dFNqioI6IqI=/13x7:700x465/780x390/data/photo/2021/09/24/614dc6865eb24.jpg',
      'https://cdn-2.tstatic.net/travel/foto/bank/images/kuliner-nasi-goreng-jawa-enak-untuk-menu-sarapan.jpg',
      'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2020/10/07/21656846.jpg'
    ],
  ),
];
