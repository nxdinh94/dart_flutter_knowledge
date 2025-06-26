
// Count how many time that a character appear;

void func(String input){
  Map<String, int> result = {};
  List<String> stringToList = input.split('');
  for(final i in stringToList){
    if(i==' '){
      continue;
    }
    if(result.containsKey(i)){
      result[i] = result[i]! +1 ;
    }else{
      result[i] = 1;
    }
  }
  print(result);
}

void main(){
  String input = 'we dont talk any more';
  func(input);
}