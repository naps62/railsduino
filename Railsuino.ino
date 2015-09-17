int green = 7;
int yellow = 6;
int red = 5;

void led_state(char led){
  
  if(Serial.read()=='L'){
    digitalWrite(led, LOW);
  }  
  else{
    digitalWrite(led, HIGH);
  }

}

void setup() {
  pinMode(green, OUTPUT);
  pinMode(yellow, OUTPUT);
  pinMode(red, OUTPUT);
  
  Serial.begin(9600);
  
  
}

void loop() {
  
  if(Serial.available()>0){
  
    switch(Serial.read()){
     
      case 'G':
        led_state(green);     
      
      break;
      
      case 'Y':
      	led_state(yellow); 
      break;
      
      case 'R':
      	led_state(red); 
      break;
    
    
    }
  
  }
  
}

