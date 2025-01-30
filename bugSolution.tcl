proc error_proc {msg} { puts stderr "$msg" return -code error } 
proc myproc {} { 
  set x 10
  if {$x < 5} {error_proc "x is less than 5"}  
  puts "x is $x"
  return 
}

set result [myproc]
if {[catch {myproc} msg]} { puts "Error occurred: $msg" } else { puts "Procedure completed successfully." }
