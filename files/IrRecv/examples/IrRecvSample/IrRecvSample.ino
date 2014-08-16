/*------------------------------------------------------------------------------*/
/* IrRecvSample.ino :  Copyright(C) BugMaker                                    */
/*      Version 1.00  2012.07.01 初版作成                                       */
/*------------------------------------------------------------------------------*/
/*--------------------- INCLUDE FILES ----------------------------------*/
#include "Arduino.h"
#include "IrRecv.h"

/*--------------------- VARIABLES --------------------------------------*/
IrRecv	recv ;

char	*t[] = {
	"KASEIKYO   ",
	"NEC        ",
	"NEC_REPEAT ",
	"SONY 12bit ",
	"SONY 15bit ",
	"SONY 20bit ",
	"Error"
} ;

/*--------------------- FUNCTIONS --------------------------------------*/
void setup()
{
	Serial.begin( 115200 ) ;
	attachInterrupt( 0, warikomi, CHANGE ) ;
	recv.start() ;
}

void warikomi()
{
	recv.interrupt() ;
}

void loop()
{
	byte	n ;
	byte	i ;

	n = recv.available() ;
	if( n ) {
		i = recv.read() ;
		Serial.print( t[i] ) ;
		for( i = 1 ; i < n ; i++ ) {
			Serial.print( " " ) ;
			Serial.print( recv.read(), HEX ) ;
		}
		Serial.println() ;
	}
	delay( 1 ) ;
}

