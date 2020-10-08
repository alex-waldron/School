

int setBit(int a, int b){
  int shiftedNum = 1 << b;
  return (shiftedNum | a);
}

int clearBit(int clearNum, int clearLocation){
  int shiftedNum = 1 << clearLocation;
  shiftedNum = ~(shiftedNum);
  return shiftedNum & clearNum;
}
int flip(int num, int loc){
  int shiftedNum = 1 << loc;
  return num ^ shiftedNum;
}
int replaceBits(int num, int clear, int newnums){
  int clearedNum = num & clear;
  return clearedNum | newnums;
}
int buildColor(int r, int g, int b){
  int color = 0;
  color = color | r;
  color = color << 8;
  color = color | g;
  color = color << 8;
  color = color | b;
  return color;
  
}
double choose(int num1, int num2){
  double result = 1;
  double numerator = 1;
  double denominator = 1;
  for(int i = num2; i >= 1; i--){
    numerator *= num1 - i+1;
    denominator *= i;
    }
  return numerator/denominator;
  
}
