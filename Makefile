src=main

all:
	arm-none-eabi-as  -mcpu=cortex-m4 -g .ignore/startup.s -o .ignore/startup.o
	arm-none-eabi-as -mcpu=cortex-m4 -g $(src).s -o .ignore/$(src).o 
	arm-none-eabi-ld -T .ignore/linker.ld -o .ignore/$(src).elf .ignore/$(src).o .ignore/startup.o
	arm-none-eabi-nm .ignore/$(src).elf
	arm-none-eabi-objcopy -O binary .ignore/$(src).elf .ignore/$(src).bin

clean:
	rm .ignore/$(src).elf .ignore/$(src).o .ignore/$(src).bin