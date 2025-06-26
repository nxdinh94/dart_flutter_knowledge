
//Tìm 2 số trong mảng có tổng bằng target

List<int>? twoSum(List<int> nums, int target) {
  for(int i = 0; i< nums.length; i++){
    int numberMatched = target - nums[i];
    for(int j = i+1; j<nums.length; j++){
      if(nums[j] == numberMatched){
        return [nums[i] , nums[j]];
      }
    }
  }
  return null;
}

void main(){
  print(twoSum([1,2 ,3, 4, 5, 6, 7, 8, 9, 10], 12));
}