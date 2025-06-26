
/*void fizzBuzz(int n) {
  // In ra 'Fizz' nếu chia hết cho 3, 'Buzz' nếu chia hết cho 5,
  // 'FizzBuzz' nếu chia hết cho cả 3 và 5, còn lại in số đó.
}*/


void fizzBuzz(int n) {
  if(n % 3 == 0 && n % 5 == 0){
    print('FizzBuzz');
  }else if(n%5 == 0 ){
    print('Buzz');
  }else if(n % 3 == 0){
    print('Fizz');
  }else {
    print(n);
  }
}

void main(){
  fizzBuzz(15);
}