

// firstDuplicate

int firstDuplicate(List<int> numbers){
  Map<int, int> cached ={};
  for(final i in numbers){
    if(cached.containsKey(i)){
      return i;
    }else {
      cached[i] = 1;
    }
  }
  return -1;
}

void main(){
  List<int> numbers = [21, 3, 3, 54,5, 45, 2, 34 ,2, 34, 2,3];
  print(firstDuplicate(numbers));
}