import 'package:meta/meta.dart';

void main(List<String> arguments) {
  print('Hello Fauzi )');
  print('------------------------------------------------------');

  Person p;
  Person q;

  /*blok try , berfungsi untuk menceggah , apabila ada error yang tidak kita 
  ketahui muncul. sehingga perintah selanjutnya akan tetap bejalan , walaupun 
  ada error .
  */
  try {
    q = Person(name: 'Barochatul Mauludy');
    print(q.name);
  } catch (e) {
    print(e);
  }
  /*catch berfungsi untuk menangkap apabila didalam code program kita ada error
  , catch memiliki parameter (e) , yang artinya errorAssertion.
  lalu kita tampilkan e tadi , yang berisi keterangan error nya.
  sekalipun ada error , perintah berikutnya akan tetap dijalankan
   */

  p = Person(name: 'Mauludy', age: 21);

  print('Nama anda ' + p.name + ' dan usia anda ' + p.age.toString());
}

class Person {
  final String name;
  final int age;

  /*@required termasuk kedalam import 'package:meta/meta.dart';
  required ini berarti , variabel wajib diiisi. andai tidak diiisi
  maka nilai yang ditampilkan adl null*/
  Person({@required this.name, this.age = 0}) {
    assert(name ?? !null, "You must give the person's name");
  }
  /*assert artinya menegaskan , maka variabel wajib diisi yang inputannya
  seusai dengan type data variabel tsb yaitu string*/

}
