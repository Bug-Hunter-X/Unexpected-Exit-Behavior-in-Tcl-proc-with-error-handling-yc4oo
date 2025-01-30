proc error_proc {msg} { puts stderr "$msg" exit 1 } 
proc myproc {} { 
  set x 10
  if {$x < 5} {error_proc "x is less than 5"}  
  puts "x is $x"
}
myproc