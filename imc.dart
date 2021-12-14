import 'dart:io';

main(){
    blank(){ 
        print(" ");
    }
    div(){
        print("====================");
    }

    div();
    print("Digite Sua altura em metros:");
    String inputAltura = stdin.readLineSync() ?? "";
    double altura = double.parse(inputAltura);
    
    div();
    print("Digite seu peso:");
    String inputPeso = stdin.readLineSync() ?? "";
    int peso = int.parse(inputPeso);
    
    double imc = peso / (altura * altura);
    String imc1 = imc.toStringAsFixed(2);
    double ximc = double.parse(imc1);

    var imcState;

    if(ximc < 18.5){
       imcState = "Abaixo do peso";
   } else if(ximc >= 18.5 && ximc <= 24.9){
       imcState = "Peso Saudável";
   } else if(ximc >= 25 && ximc <=30 ){
       imcState = "Sobrepeso";
   } else if(ximc >= 30.1 && ximc <= 39.9){
       imcState = "Obeso";
   }else{
       imcState = "Obeso Mórbido";
   }

   

   //draw
    div();
    print("Sua altura é "+ inputAltura+"m");
    blank();
    print("Seu peso é "+ inputPeso+"Kg");
    blank();
    print("O seu imc é: "+ imc1);
    div();
    blank();
    print(imcState);
    blank();
    div();
    


    //imc = peso / (altura * altura);



}