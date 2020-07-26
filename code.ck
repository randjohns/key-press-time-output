// the device number to open
0 => int deviceNum;

// instantiate a Hid object
Hid hi;
// structure to hold HID messages
HidMsg msg;

// open keyboard; exit if no kybd detected
if( !hi.openKeyboard( deviceNum ) ) me.exit();

// successful! print name of device
<<< "keyboard '", hi.name(), "' ready" >>>;

// infinite event loop
while( true )
{
    // wait on event
    hi => now;
    
    // get one or more messages
    while( hi.recv( msg ) )
    {
        // check for action type
        if( msg.isButtonDown() )
        {
           //print value of current time in seconds
            <<< now/second >>>;
        }
    }
}
