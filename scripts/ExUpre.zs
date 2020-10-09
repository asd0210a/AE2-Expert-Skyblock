#priority 40
#loader preinit
import extrautilities2.Tweaker.IMachine;
import extrautilities2.Tweaker.IMachineRegistry as machR;
import extrautilities2.Tweaker.IMachineSlot as sl;

machR.createNewMachine("lavaconstructor",0,0,
    [sl.newItemStackSlot("inp")],
    [sl.newFluidSlot("lava",64000)],
"aes:lg",
    "aes:lga",
    0x000000);
	