import 'dart:io';

class IMC {
  double peso, altura;
  IMC(this.peso, this. altura);
  double calcularImc()=>  peso/(altura*altura);}
void main(){
  stdout.write("Insira o peso:");
  double? peso = double.parse(stdin.readLineSync()!);
  stdout.write("Insira a altura:");
  double? altura = double.parse(stdin.readLineSync()!);
  IMC corpo = IMC(peso,altura);
  print("Seu IMC é: ${corpo.calcularImc()}");

}