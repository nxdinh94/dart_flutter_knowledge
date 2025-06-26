// reverse string

String reverseString(String input){
  List<String> stringToList = input.split('');
  int lengthOfInput = stringToList.length;
  List<String> transform = List.filled(lengthOfInput, '');
  stringToList.forEach((e){
    lengthOfInput--;
    transform[lengthOfInput] = e;
  });
  return transform.join();
}

void main(){
  String result = reverseString('hello boy');
  print(result);
}