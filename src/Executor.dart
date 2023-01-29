import 'NODNOKCalculator.dart';

void main(){
  //1 task
  var nodNok = new NODNOKCalculator();
  double a = 1970;
  double b = 1;
  var nod = nodNok.NOD(a, b);
  var nok = nodNok.NOK(a, b);
  print("nod: ${nod} nok: ${nok}");
}