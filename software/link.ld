
MEMORY {
    FLASH : ORIGIN = 0x08000000, LENGTH = 128K
    SRAM :  ORIGIN = 0x20000000, LENGTH = 32K
}

__stack = ORIGIN(SRAM) + LENGTH(SRAM);
_estack = __stack;

SECTIONS {

    . = 0;
    .text : {
        *(vectors)
        *(.text)
        *(.rodata)
    } > FLASH

    .data : {
        *(.data)
    } >FLASH

    .bss : {
        *(.bss)
    } >FLASH

}

