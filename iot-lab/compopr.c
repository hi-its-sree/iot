
  void main(void){
	unsigned char num1 = 0x50;
	unsigned char num2 = 0x54;
	P0=0x00;
	if(num1>=num2){
		P0=num1;
	}
	else{
		P0=num2;
	}
 // Infinite loop to keep the program�running
}