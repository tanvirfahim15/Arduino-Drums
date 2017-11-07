int analogPin0=0,analogPin1=1;

void setup()
{
  Serial.begin(9600);              //  setup serial
}

void loop()
{
  int val = analogRead(analogPin0);
  if(val>20){
    Serial.println(val);
    delay(500);
  }
  val = analogRead(analogPin1);
  if(val>20){
    Serial.println(-val);
    delay(100);
  }
}
