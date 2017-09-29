
MEMORY {
    FLASH : ORIGIN = 0x08000000, LENGTH = 128K
    SRAM :  ORIGIN = 0x20000000, LENGTH = 32K
}

__stack = ORIGIN(SRAM) + LENGTH(SRAM);

SECTIONS {

    . = 0;
    .text : {
        *(.vectors)
        *(.text)
        *(.rodata)
    } > FLASH

    /* init_array is used for C++ global constructors */
    . = ALIGN(4);
    .init_array : {
        __init_array_start = .;
        KEEP (*(.init_array*))
        __init_array_end = .;
    } > FLASH

    __text_end = .;

    .data : AT(__text_end) {
        . = ALIGN(64);
        __data_start = .;

        *(.dynamic_vectors)
        *(.data)
        *(.data.*)

        __data_end = .;
        __data_load = LOADADDR(.data);
    } >SRAM

    .bss : {
        . = ALIGN(4);
        __bss_start = .;

        *(.bss)
        *(.bss.*)

        __bss_end = .;
    } >SRAM

}

