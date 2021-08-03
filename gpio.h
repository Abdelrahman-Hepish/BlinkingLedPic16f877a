#ifndef __GPIO_H__
#define __GPIO_H__
#include "utilites.h"
#define SetRegisterPin(Register,Pin,_1bitValue) ( Register = (Register & (~(1<<Pin ))) | (_1bitValue << Pin) )
#define SetRegister(Register,_U8Value)          (Register = _U8Value )
#define GetRegisterPinValue(Register,Pin)       (Register & (~(1<<Pin)))>>Pin
#define GetRegisterValue(Register)              (Register)
typedef enum
{
    PORT_A ,
    PORT_B ,
    PORT_C ,
    PORT_D ,
    PORT_E
}tPORT ;
typedef enum
{
    PIN_0 ,
    PIN_1 ,
    PIN_2 ,
    PIN_3 ,
    PIN_4 ,
    PIN_5 ,
    PIN_6 ,
    PIN_7 ,
}tPIN ;
typedef enum
{
    PIN_OUTPUT = 0 ,
    PIN_INPUT = 1
}tPIN_DIRECTION ;
typedef enum
{
    PORT_OUTPUT = 0  ,
    PORT_INPUT = 0xff
}tPORT_DIRECTION ;
typedef enum
{
    LOW ,
    HIGH
}tSTATE ;
void GPIO_InitPort(tPORT port ,tPORT_DIRECTION direction ,tSTATE init_state) ;
void GPIO_InitPin(tPORT port , tPIN pin ,tPIN_DIRECTION direction ,tSTATE init_state) ;
void GPIO_UpdatePort(void) ;
void GPIO_UpdatePin(void) ;
void GPIO_SetPortState(tPORT port,tSTATE state);
void GPIO_SetPortDirection(tPORT port,tPORT_DIRECTION direction);
void GPIO_SetPinState(tPORT port , tPIN pin , tSTATE state);
void GPIO_SetPinDirection(tPORT port, tPIN pin ,tPIN_DIRECTION direction);
U8 GPIO_GetPortState(tPORT port);
U8 GPIO_GetPortDirection(tPORT port);
tSTATE GPIO_GetPinState(tPORT port , tPIN pin);
tPIN_DIRECTION GPIO_GetPinDirection(tPORT port, tPIN pin);
#endif // __GPIO_H__