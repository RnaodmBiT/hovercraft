
MEMORY {
    FLASH : ORIGIN = 0x08000000, LENGTH = 128K
    SRAM :  ORIGIN = 0x20000000, LENGTH = 32K
}

__stack = 5k;
_estack = __stack;

SECTIONS {

    . = 0;
    .text : {
        *(vectors)
        *(.text)
        *(.rodata)
    } > FLASH

    . = 0x20000000;
    .data : {
        *(.data)
    } >SRAM AT >FLASH

}

