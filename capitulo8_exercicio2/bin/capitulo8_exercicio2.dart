import 'dart:io';
class Nota {
  double primeiranota, segundanota, terceiranota;
  Nota(this.primeiranota, this.segundanota, this.terceiranota);
  double calculo() {
    return (primeiranota * 2 + segundanota * 3 + terceiranota * 5) / 10;
  }
  void Aluno() {
    double media = calculo();
    if (media >= 6) {
      print("Aprovado: $media");
    } else if (media < 4) {
      print("Reprovado: $media");
    } else {
      print("O aluno não passou , Qual a nota de recuperação?:");
      double recuperacao = double.parse(stdin.readLineSync()!);
      double mediaFinal = (media + recuperacao) / 2;
      if (mediaFinal < 5.5) {
        print("O aluno não passou na recuperação: $mediaFinal");
      } else {
        print("O aluno passou na recuperação: $mediaFinal");
      }
    }
  }
}
void main() {
  print("Qual a primeira nota: ");
  double primeiranota = double.parse(stdin.readLineSync()!);
  print("Qual a segunda nota: ");
  double segundanota = double.parse(stdin.readLineSync()!);
  print("Qual a terceira nota: ");
  double terceiranota = double.parse(stdin.readLineSync()!);
  Nota aluno = Nota(primeiranota, segundanota, terceiranota);
  aluno.Aluno();
}
