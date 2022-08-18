import 'dart:io';
void main() {
  myCalculator();
}

myCalculator() {
  print("Qual das opções abaixo voce quer?");
  print("1- calculo por salario hora?");
  print("2- calculo por por salario?");

  int resposta = int.parse(stdin.readLineSync()!);

  if (resposta == 1) {
    print("Qual seria o seu salario:");
    int salario = int.parse(stdin.readLineSync()!);
    print("quantos dias você trabalha: ");
    int dias = int.parse(stdin.readLineSync()!);
    print("Qual Seria o seu horário de trabalho:");
    int horas = int.parse(stdin.readLineSync()!);

    double salarioHora = (salario / (dias * horas));

    var salarioHora_formatado = salarioHora.toStringAsFixed(2);

    print("seu salario: $salarioHora_formatado");
  } else if (resposta == 2) {
    print("quanto Você ganha por hora:");
    int salario_h = int.parse(stdin.readLineSync()!);
    print("quantos dias você trabalha: ");
    int dias_t = int.parse(stdin.readLineSync()!);
    print("Qual Seria o seu horário de trabalho:");
    int horas_t = int.parse(stdin.readLineSync()!);
    int salario_hora = (salario_h*dias_t)*horas_t;
    print("seu salario: $salario_hora");

  } else {
    print("valores não validos setados, tente novamente");
    myCalculator();
  }
}
