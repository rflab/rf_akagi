/*------------------------------------------------------------------------------*/
/* IrRecv.h :  Copyright(C) BugMaker                                            */
/*      Version 1.00  2012.07.01 初版作成                                       */
/*      Version 1.10  2013.02.02 テーブル見直し                                 */
/*------------------------------------------------------------------------------*/
#ifndef _IrRecv_h_
#define _IrRecv_h_

/*------------- INCLUDE FILES ------------------------------------------*/
#include "Arduino.h"

/*------------- IrRecv/IrSend共通定義 ----------------------------------*/
#ifndef _IrTable_
#define _IrTable_

// パルス幅テーブル
#define KASE_START_H  (3200)  // -500 ～ +500
#define KASE_START_L  (1600)  // -500 ～ +500
#define KASE_DATA_H    (400)  // -100 ～ +100
#define KASE_ONE_L    (1200)  // -100 ～ +100
#define KASE_ZERO_L    (400)  // -100 ～ +100

#define NEC_START_H   (9000)  // -500 ～ +500
#define NEC_START_L   (4500)  // -500 ～ +500
#define NEC_REPEAT_L  (2250)  // -500 ～ +500
#define NEC_DATA_H     (620)  // -100 ～ +100
#define NEC_ONE_L     (1620)  // -100 ～ +100
#define NEC_ZERO_L     (500)  // -100 ～ +100

#define SONY_START_H  (2500)  // -500 ～ +500
#define SONY_DATA_L    (560)  // -100 ～ +100
#define SONY_ONE_H    (1240)  // -100 ～ +100
#define SONY_ZERO_H    (630)  // -100 ～ +100

#define GAP          (10000)

typedef enum {
	KASEIKYO, NEC, NEC_REPEAT, SONY12, SONY15, SONY20, ERROR
}	RTYPE ;

#endif


/*------------- MACROS/DEFINES -----------------------------------------*/
#define TABLE_SIZE	(256)
#define BUFF_SIZE	(16)

#define S_MAX(n,t)    (((n- 500) <= t) && (t < (n+ 500)))
#define V_MAX(n,t)    (((n- 100) <= t) && (t < (n+ 100)))


/*------------- TYPES --------------------------------------------------*/

class IrRecv {
public:
	IrRecv() ;
	void	start() ;
	void	stop() ;
	byte	available() ;
	byte	read() ;
	void	interrupt() ;
private:
	volatile word	table[TABLE_SIZE] ;
	volatile word	time ;
	volatile word	cnt ;
	word	base ;
	byte	buff[BUFF_SIZE] ;
	byte	rp ;
	byte	wp ;
	boolean	enable ;
private:
	void	sonyFormat( void ) ;
	void	kaseikyoFormat( void ) ;
	void	necFormat( void ) ;
} ;

#endif
