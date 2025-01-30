# Unexpected Exit Behavior in Tcl proc with error handling
This example demonstrates unexpected behavior when using the `exit` command inside a Tcl procedure used for error handling. The `exit` command terminates the entire script, not just the procedure, which might not be the intended behavior in all cases.  The solution shows an alternative approach.

## Bug
The script uses a procedure `error_proc` to handle errors.  When an error condition is met, `error_proc` prints an error message to `stderr` and uses `exit 1` to terminate the script. This terminates the entire application. 

## Solution
The solution replaces `exit` with `return -code error` to signal an error condition within the procedure. The calling script can then check the return code to handle the error appropriately without terminating the entire application. 