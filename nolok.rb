require 'Win32API'

shiftKey=0x10
keyUpEvent=0x2
keyboardEvent=Win32API.new("user32","keybd_event", ['I','I','L','L'],'V')

loop do
   sleep(500) #for 10 minute timeout
   keyboardEvent.call(shiftKey,1,keyUpEvent,0) #only keyup event is required
end
