DefinitionBlock ("", "SSDT", 2, "X230", "EXT4", 0)
{
    External (_SB.LID, DeviceObj)
    External (_SB.PCI0.LPC.LID, DeviceObj)
    
    Method (EXT4, 1, NotSerialized)
    {   
        If (3 == Arg0)
        {
            If (CondRefOf (\_SB.LID))
            {
                Notify (\_SB.LID, 0x80)
            }
        }
    }
}