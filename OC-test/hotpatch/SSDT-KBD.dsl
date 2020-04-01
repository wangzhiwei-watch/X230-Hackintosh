DefinitionBlock ("", "SSDT", 2, "X230", "KBD", 0)
{
    External (_SB.PCI9.FNOK, IntObj)
    External (_SB.PCI9.MODE, IntObj)
    External (_SB.LID, DeviceObj)
    External (_SB.PCI0.LPC.EC, DeviceObj)
    External (_SB.PCI0.LPC.KBD, DeviceObj)
    External (_SB.PCI0.LPC.EC.XQ13, MethodObj)
    External (_SB.PCI0.LPC.EC.XQ14, MethodObj)
    External (_SB.PCI0.LPC.EC.XQ15, MethodObj)

    Scope (_SB.PCI0.LPC.EC)
    {
        Method (_Q13, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                If (\_SB.PCI9.MODE == 1)
                {
                    \_SB.PCI9.FNOK =1
                    \_SB.PCI0.LPC.EC.XQ13()
                }
                Else
                {
                    If (\_SB.PCI9.FNOK!=1)
                    {
                        \_SB.PCI9.FNOK =1
                    }
                    Else
                    {
                        \_SB.PCI9.FNOK =0
                    }
                    Notify (\_SB.LID, 0x80)
                }
            }
            Else
            {
                \_SB.PCI0.LPC.EC.XQ13()
            }
        }
        Method (_Q14, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD, 0x0406)
            }
            Else
            {
                \_SB.PCI0.LPC.EC.XQ14 ()
            }
        }

        Method (_Q15, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD, 0x0405)
            }
            Else
            {
                \_SB.PCI0.LPC.EC.XQ15 ()
            }
        }
    }
    
    Scope (_SB.PCI0.LPC.KBD)
    {
        Method (_DSM, 4, NotSerialized)
        {
            If (LNot (Arg2))
            {
                Return (Buffer () { 0x03 })
            }

            Return (Package ()
            {
                "RM,oem-id", "LENOVO", 
                "RM,oem-table-id", "Thinkpad_TrackPad"
            })
        }

        Name (RMCF, Package ()
        {
            "Keyboard", Package()
            {
                "ActionSwipeLeft",  "37 d, 21 d, 21 u, 37 u",
                "ActionSwipeRight", "37 d, 1e d, 1e u, 37 u",
                "SleepPressTime",   "1500",
                "Swap command and option", ">y",
            },
            "Synaptics TouchPad", Package ()
            {
                "BogusDeltaThreshX", 100,
                "BogusDeltaThreshY", 100,
                "Clicking", ">y",
                "DragLockTempMask", 0x40004,
                "DynamicEWMode", ">n",
                "FakeMiddleButton", ">n",
                "HWResetOnStart", ">y",
                "PalmNoAction When Typing", ">y",
                "ScrollResolution", 800,
                "SmoothInput", ">y",
                "UnsmoothInput", ">y",
                "Thinkpad", ">y",
                "DivisorX", 1,
                "DivisorY", 1,
                "FingerZ", 47,
                "MaxTapTime", 100000000,
                "MomentumScrollThreshY", 16,
                "MouseMultiplierX", 8,
                "MouseMultiplierY", 8,
                "MouseScrollMultiplierX", 2,
                "MouseScrollMultiplierY", 2,
                "MultiFingerHorizontalDivisor", 4,
                "MultiFingerVerticalDivisor", 4,
                "Resolution", 3200,
                "ScrollDeltaThreshX", 10,
                "ScrollDeltaThreshY", 10,
            },
        })
    }
}
