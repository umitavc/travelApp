class PlaceInfo{
  final String location, image, name, desc;
  final int distance,days;
  PlaceInfo({
    required this.desc,
    required this.name,
    required this.image,
    required this.location,
    required this.distance,
    required this.days,
    
  });
}
 List places = [
   PlaceInfo(
     image:'assets/images/istanbul.jpg',
     location: 'İstanbul',
     name: 'Süleymaniye Camii',
     distance: 1000,
     days: 10,
     desc:"Süleymaniye Camii, Kanuni Sultan Süleyman adına 1551-1557 yılları arasında İstanbul da Mimar Sinan tarafından inşa edilen camidir. Mimar Sinan'ın kalfalık devri eseri olarak nitelendirilen Süleymaniye Camii, medreseler, kütüphane, hastane, sıbyan mektebi, hamam, imaret, hazire ve dükkânlardan oluşan Süleymaniye Külliyesi'nin bir parçası olarak inşa edilmiştir.",
   ),
 
   PlaceInfo(
     image:'assets/images/Cinque-Terre-Italy.jpeg',
     location: ' İtalya',
     name: 'Cinque Terre',
     distance: 1000,
     days: 10,
     desc:"Cinque Terre, İtalyan Rivierası'nın engebeli sahillerden oluşmuş bir bölgesidir. La Spezia şehrinin batısında, Ligurya bölgesinde yer alır.",
   ),
    PlaceInfo(
     image:'assets/images/Kyoto-Japan.jpeg',
     location: ' Japonya',
     name: 'Kyoto',
     distance: 1000,
     days: 10,
     desc:"Kyoto, Japonya'nın Kyoto prefektörlüğünün merkezi ve en büyük şehridir.",
   ),
    PlaceInfo(
     image:'assets/images/Galapagos-Islands.jpeg',
     location: ' Ekvador ',
     name: 'Galapagos Islands',
     distance: 1000,
     days: 10,
     desc:"Galapagos Adaları, Colón Takımadaları olarak da bilinir, Büyük Okyanusun doğusunda Ekvador'a bağlı takımadalar.",
   ),

 ];