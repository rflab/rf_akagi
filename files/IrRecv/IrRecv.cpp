/*------------------------------------------------------------------------------*/
/* IrRecv.ino :  Copyright(C) BugMaker                                          */
/*      Version 1.00  2012.07.01 初版作成                                       */
/*------------------------------------------------------------------------------*/

/*------------- INCLUDE FILES ------------------------------------------*/
#include "Arduino.h"
#include "IrRecv.h"

/*------------- FUNCTIONS ----------------------------------------------*/
IrRecv::IrRecv()
{
	enable = false ;
	cnt = 0 ;
	base = 0 ;
	rp = 0 ;
	wp = 0 ;
}

void IrRecv::start()
{
	enable = true ;
}

void IrRecv::stop()
{
	enable = false ;
}

byte IrRecv::available()
{
	byte	result ;
	word 	t = time ;
	word	i = (base + 1) % TABLE_SIZE ;
	word	now = micros() ;

	if( (cnt != base) && ((now - t) > GAP) ) {
		// cntまで解析して、buffに書く
		if(      S_MAX( SONY_START_H, table[i] ) )	sonyFormat() ;
		else if( S_MAX( KASE_START_H, table[i] ) )	kaseikyoFormat() ;
		else if( S_MAX( NEC_START_H,  table[i] ) )	necFormat() ;

		base = cnt ;
		result = (wp + BUFF_SIZE - rp) % BUFF_SIZE ;
	}
	else if( rp != wp ) {
		result = (wp + BUFF_SIZE - rp) % BUFF_SIZE ;
	}
	else {
		result = 0 ;
	}
	return result ;
}

void IrRecv::sonyFormat( void )
{
	byte	data = 0 ;
	byte	fg = 1 ;
	word	wps = (wp + 1) % BUFF_SIZE ;
	word	i = (base + 2) % TABLE_SIZE ;
	word	j = 0 ;
	while( i != cnt ) {
		if( (i & 1) == 0 ) {
			// 偶数の場合は、消灯時間
			if( !V_MAX( SONY_DATA_L, table[i] ) )   break ;
		}
		else {
			// 奇数の場合は、点灯時間
			if( V_MAX( SONY_ONE_H, table[i] ) ) {
				data |= fg ;
			}
			else if( V_MAX( SONY_ZERO_H, table[i] ) ) {
				data &= ~fg ;
			}
			else {
				goto SONY_ERROR ;
			}
			fg <<= 1 ;
			if( fg == 0 ) {
				buff[wps] = data ;
				data = 0 ;
				fg = 1 ;
				wps = (wps + 1) % BUFF_SIZE ;
			}
		}
		i = (i+1) % TABLE_SIZE ;
	}
	buff[wps] = data ;
	wps = (wps + 1) % BUFF_SIZE ;
	j = (i + TABLE_SIZE - base) % TABLE_SIZE ;
	if( j == 42 )      buff[wp] = SONY20 ;
	else if( j == 32 ) buff[wp] = SONY15 ;
	else if( j == 26 ) buff[wp] = SONY12 ;
	else               goto SONY_ERROR ;
	base = i ;
	wp = wps ;
	return ;

SONY_ERROR:
	buff[wp] = ERROR ;
	wp = (wp+1)%BUFF_SIZE ;
	// baseをcntまたはGAPまで進める
	while( i != cnt ) {
		if( table[i] > GAP ) {
			break ;
		}
		i = (i + 1) % TABLE_SIZE ;
	}
	base = i ;
	return ;
}

void IrRecv::kaseikyoFormat( void )
{
	byte	data = 0 ;
	byte	fg = 1 ;
	word	wps = (wp + 1) % BUFF_SIZE ;
	word	i = (base + 3) % TABLE_SIZE ;
	word	j ;
	while( i != cnt ) {
		if( (i & 1) == 1 ) {
			// 奇数の場合は、点灯時間
			if( !V_MAX( KASE_DATA_H, table[i] ) ) {
				goto KASE_ERROR ;
			}
		}
		else {
			// 偶数の場合は、消灯時間
			if( V_MAX( KASE_ONE_L, table[i] ) ) {
				data |= fg ;
			}
			else if( V_MAX( KASE_ZERO_L, table[i] ) ) {
				data &= ~fg ;
			}
			else {
				break ;
			}
			fg <<= 1 ;
			if( fg == 0 ) {
				buff[wps] = data ;
				data = 0 ;
				fg = 1 ;
				wps = (wps + 1) % BUFF_SIZE ;
			}
		}
		i = (i+1) % TABLE_SIZE ;
	}
	j = (i + TABLE_SIZE - base) % TABLE_SIZE ;
	if( j == 100 )     buff[wp] = KASEIKYO ;
	else               goto KASE_ERROR ;
	base = i ;
	wp = wps ;
	return ;

KASE_ERROR:
	buff[wp] = ERROR ;
	wp = (wp+1) % BUFF_SIZE ;
	// baseをcntまたはGAPまで進める
	while( i != cnt ) {
		if( table[i] > GAP ) {
			break ;
		}
		i = (i + 1) % TABLE_SIZE ;
	}
	base = i ;
	return ;
}

void IrRecv::necFormat( void )
{
	byte	data = 0 ;
	byte	fg = 1 ;
	word	wps = (wp + 1) % BUFF_SIZE ;
	word	i = (base + 2) % TABLE_SIZE ;
	if( S_MAX( NEC_REPEAT_L, table[i] ) ) {
		buff[wp] = NEC_REPEAT ;
		wp = (wp + 1) % BUFF_SIZE ;
	}
	else {
		i = (i + 1) % TABLE_SIZE ;
		while( i != cnt ) {
			if( (i & 1) == 1 ) {
				// 奇数の場合は、点灯時間
				if( !V_MAX( NEC_DATA_H, table[i] ) ) {
					goto NEC_ERROR ;
				}
			}
			else {
				// 偶数の場合は、消灯時間
				if( V_MAX( NEC_ONE_L, table[i] ) ) {
					data |= fg ;
				}
				else if( V_MAX( NEC_ZERO_L, table[i] ) ) {
					data &= ~fg ;
				}
				else {
					break ;
				}
				fg <<= 1 ;
				if( fg == 0 ) {
					buff[wps] = data ;
					data = 0 ;
					fg = 1 ;
					wps = (wps + 1) % BUFF_SIZE ;
				}
			}
			i = (i+1) % TABLE_SIZE ;
		}
		word j = (i + TABLE_SIZE - base) % TABLE_SIZE ;
		if( j == 68 )      buff[wp] = NEC ;
		else               goto NEC_ERROR ;
		base = i ;
		wp = wps ;
	}
	return ;

NEC_ERROR:
	buff[wp] = ERROR ;
	wp = (wp+1) % BUFF_SIZE ;
	// baseをcntまたはGAPまで進める
	while( i != cnt ) {
		if( table[i] > GAP ) {
			break ;
		}
		i = (i + 1) % TABLE_SIZE ;
	}
	base = i ;
	return ;
}

byte IrRecv::read()
{
  	byte r ;
	if( rp != wp ) {
    		r = buff[rp] ;
    		rp = (rp + 1) % BUFF_SIZE ;
    		return r ;
	}
	else {
		return 0 ;
	}
}

void IrRecv::interrupt()
{
	word	t = micros() ;
	if( enable ) {
		table[cnt] = t - time ;
		cnt = (cnt + 1) % TABLE_SIZE ;
	}
	time = t ;
}
