

int findMaxNum(List<int> num){
  int result = num[0];
  for(final i in num){
    if(i>result){
      result = i;
    }
  }
  return result;
}

void main(){
  List<int> num1 = [1,2 ,3, 43, -54, 6, 43, 343, 43,4, -3 ];
  List<int> num2 = [-10,-2, -43, -54, -3 ];
  int result = findMaxNum(num2);
  print(result);
}