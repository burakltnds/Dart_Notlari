void main(){
final  sayi =3;
const sayi2 =5;

final tarih = DateTime.now();
//const tarih2 =DateTime.now(); kabul edilmez
print(tarih);
//listeyi final tanımlarsan ekleme yapabilirsin ama const tanımlarsn yapamazsın


//immutable
final Ogrenci o1 =const Ogrenci(5,"emre"); 
final Ogrenci o2=const Ogrenci(5,"emre");

if (o1==o2){
  print("Eşitler");
}
else{
  print("Değiller");
}

}
 


//immutable class

class Ogrenci {
  final int id;
  final String isim;
  
  const Ogrenci(this.id , this.isim);
}