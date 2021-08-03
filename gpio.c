#include <pic16f877a.h>
#include "gpio.h"
#include "utilites.h"
void GPIO_InitPort(tPORT port ,tPORT_DIRECTION direction ,tSTATE init_state)
{
    /* initialize port direction */
    GPIO_SetPortDirection(port,direction) ;
    /* initialize port state     */
    GPIO_SetPortState(port,init_state) ;
}
void GPIO_InitPin(tPORT port , tPIN pin ,tPIN_DIRECTION direction ,tSTATE init_state)
{
   /* initialize pin direction */
   GPIO_SetPinDirection(port,pin ,direction) ;
   /* initialize pin state */
   GPIO_SetPinState(port ,pin ,init_state) ;
}
void GPIO_UpdatePort(void)
{

}
void GPIO_UpdatePin(void)
{

}
void GPIO_SetPortState(tPORT port,tSTATE state)
{
    switch(port)
    {
    case PORT_A :
        SetRegister(PORTA,state) ;
    break;
    case PORT_B :
        SetRegister(PORTB,state) ;
    break;
    case PORT_C :
        SetRegister(PORTC,state) ;
    break;
    case PORT_D :
        SetRegister(PORTD,state) ;
    break;
    case PORT_E :
        SetRegister(PORTE,state) ;
    break;
    default :
        /* should not be here */
    break ;
    }
}
void GPIO_SetPortDirection(tPORT port,tPORT_DIRECTION direction)
{
     switch(port)
    {
    case PORT_A :
        SetRegister(TRISA,direction) ;
    break;
    case PORT_B :
        SetRegister(TRISB,direction) ;
    break;
    case PORT_C :
        SetRegister(TRISC,direction) ;
    break;
    case PORT_D :
        SetRegister(TRISD,direction) ;
    break;
    case PORT_E :
        SetRegister(TRISE,direction) ;
    break;
    default :
        /* should not be here */
    break ;
    }
}
void GPIO_SetPinState(tPORT port , tPIN pin , tSTATE state)
{
    switch(port)
    {
    case PORT_A :
        SetRegisterPin(PORTA,pin,state) ;
    break;
    case PORT_B :
        SetRegisterPin(PORTB,pin,state) ;
    break;
    case PORT_C :
        SetRegisterPin(PORTC,pin,state) ;
    break;
    case PORT_D :
        SetRegisterPin(PORTD,pin,state) ;
    break;
    case PORT_E :
        SetRegisterPin(PORTE,pin,state) ;
    break;
    default :
        /* should not be here */
    break ;
    }
}
void GPIO_SetPinDirection(tPORT port, tPIN pin ,tPIN_DIRECTION direction)
{
    switch(port)
    {
    case PORT_A :
        SetRegisterPin(TRISA,pin,direction) ;
    break;
    case PORT_B :
        SetRegisterPin(TRISB,pin,direction) ;
    break;
    case PORT_C :
        SetRegisterPin(TRISC,pin,direction) ;
    break;
    case PORT_D :
        SetRegisterPin(TRISD,pin,direction) ;
    break;
    case PORT_E :
        SetRegisterPin(TRISE,pin,direction) ;
    break;
    default :
        /* should not be here */
    break ;
    }
}
U8 GPIO_GetPortState(tPORT port)
{
    U8 ret = 0 ;
    switch(port)
    {
    case PORT_A :
      ret=  GetRegisterValue(PORTA) ;
    break;
    case PORT_B :
      ret=  GetRegisterValue(PORTB) ;
    break;
    case PORT_C :
      ret=  GetRegisterValue(PORTC) ;
    break;
    case PORT_D :
      ret=  GetRegisterValue(PORTD) ;
    break;
    case PORT_E :
      ret=  GetRegisterValue(PORTE) ;
    break;
    default :
        /* should not be here */
    break ;
    }
    return ret ;
}
U8 GPIO_GetPortDirection(tPORT port)
{
    U8 ret = 0 ;
    switch(port)
    {
    case PORT_A :
      ret=  GetRegisterValue(TRISA) ;
    break;
    case PORT_B :
      ret=  GetRegisterValue(TRISB) ;
    break;
    case PORT_C :
      ret=  GetRegisterValue(TRISC) ;
    break;
    case PORT_D :
      ret=  GetRegisterValue(TRISD) ;
    break;
    case PORT_E :
      ret=  GetRegisterValue(TRISE) ;
    break;
    default :
        /* should not be here */
    break ;
    }
    return ret ;
}
tSTATE GPIO_GetPinState(tPORT port , tPIN pin)
{
    tSTATE ret = LOW ;
    switch(port)
    {
    case PORT_A :
      ret=  GetRegisterPinValue(PORTA,pin) ;
    break;
    case PORT_B :
      ret=  GetRegisterPinValue(PORTB,pin) ;
    break;
    case PORT_C :
      ret=  GetRegisterPinValue(PORTC,pin) ;
    break;
    case PORT_D :
      ret=  GetRegisterPinValue(PORTD,pin) ;
    break;
    case PORT_E :
      ret=  GetRegisterPinValue(PORTE,pin) ;
    break;
    default :
        /* should not be here */
    break ;
    }
    return ret ;
}
tPIN_DIRECTION GPIO_GetPinDirection(tPORT port, tPIN pin)
{
    tPIN_DIRECTION ret = PIN_OUTPUT ;
    switch(port)
    {
    case PORT_A :
      ret=  GetRegisterPinValue(TRISA,pin) ;
    break;
    case PORT_B :
      ret=  GetRegisterPinValue(TRISB,pin) ;
    break;
    case PORT_C :
      ret=  GetRegisterPinValue(TRISC,pin) ;
    break;
    case PORT_D :
      ret=  GetRegisterPinValue(TRISD,pin) ;
    break;
    case PORT_E :
      ret=  GetRegisterPinValue(TRISE,pin) ;
    break;
    default :
        /* should not be here */
    break ;
    }
    return ret ;
}
