#include <Arduino.h>
#include <Servo.h> 

// arduino-1.0.5-r2\libraries\IrRecv
#include <IrRecv.h>

// pin assign
const int IR_INTERRUPT = 1;  // 0:D2, 1:D3
const int LED = 2;
const int MOTOR1_FIN = 6;
const int MOTOR1_RIN = 7;
const int MOTOR2_FIN = 8;
const int MOTOR2_RIN = 9;
const int SERVO = 4;

IrRecv  recv;
Servo servo;

struct remote_type{
  int     n ;
  char    *s ;
};

remote_type t[] = {
  6, "KASEIKYO   ",
  4, "NEC        ",
  0, "NEC_REPEAT ",
  2, "SONY 12bit ",
  2, "SONY 15bit ",
  3, "SONY 20bit ",
  0, "Error"
};

void ir_intr()
{
  recv.interrupt();
}

// the setup routine runs once when you press reset:
// initialize the digital pin as an output.
void setup()
{
  pinMode(LED, OUTPUT);
  pinMode(MOTOR1_FIN, OUTPUT);     
  pinMode(MOTOR1_RIN, OUTPUT);     
  pinMode(MOTOR2_FIN, OUTPUT);     
  pinMode(MOTOR2_RIN, OUTPUT);
  servo.attach(SERVO, 1000, 2000);
  attachInterrupt(IR_INTERRUPT, ir_intr, CHANGE ) ;
  recv.start() ;

  servo.write(90);

  digitalWrite(LED, HIGH);    // turn the LED off by making the voltage LOW

  // Serial.begin( 9600 ) ;
}

// the loop routine runs over and over again forever:
int drive = 1;
int rudder = 1;
int rudder_pos = 90;

void loop()
{
  byte data;
  byte data_count;
  int  i;

  data_count = recv.available();
  if(data_count != 0)
  {
    for (i = 0; i < data_count; ++i)
    {
      data = recv.read();
      if (i == 3)
      {
        // Serial.print(data, HEX) ;
        // Serial.print(" ") ;
        switch (data)
        {
          // up
        case 0x1B:
          if (drive < 2)
            drive++;
          break;

          // down
        case 0x1F:
          if (drive > 0)
            drive--;
          break;

          // right
        case 0x1A:
          if (rudder < 2)
            rudder++;
          break;

          // left
        case 0x1E:
          if (rudder > 0)
            rudder--;
          break;


        default:
          break;
        }
        
        
        //Serial.print(drive) ;
        //Serial.print(" ") ;
        //Serial.print(rudder) ;
        //Serial.print(" ") ;
        //Serial.println() ;
      }
    }
  }

  // drive register
  switch (drive)
  {
  case 2:
    // forward 
    digitalWrite(MOTOR2_FIN, LOW);
    digitalWrite(MOTOR2_RIN, HIGH);
    digitalWrite(MOTOR1_FIN, LOW);
    digitalWrite(MOTOR1_RIN, HIGH);
    digitalWrite(LED, LOW);
    break;
  case 0:
    // back 
    digitalWrite(MOTOR2_FIN, HIGH);
    digitalWrite(MOTOR2_RIN, LOW);
    digitalWrite(MOTOR1_FIN, HIGH);
    digitalWrite(MOTOR1_RIN, LOW);
    digitalWrite(LED, LOW);
    break;
  case 1:
    // stop 
    digitalWrite(MOTOR2_FIN, LOW);
    digitalWrite(MOTOR2_RIN, LOW);
    digitalWrite(MOTOR1_FIN, LOW);
    digitalWrite(MOTOR1_RIN, LOW);
    digitalWrite(LED, HIGH);
    break;
  }

  // rudder register
  switch (rudder)
  {
  // right
  case 2:
    if (rudder_pos < 120)
      rudder_pos++;
    break;

  // center 
  case 1:
    if (rudder_pos > 90)
      rudder_pos--;
    if (rudder_pos < 90)
      rudder_pos++;
    break;

  // left
  case 0:
    if (rudder_pos > 60)
      rudder_pos--;
    break;

  default:
    break;
  }

  servo.write(rudder_pos);
  delay(10);

  // wait for next loop

}





