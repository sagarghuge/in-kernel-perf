#In-kernel system call implemenation 
=====

Implementation of in-kernel system call in order to evaluate performance against normal system call.

Source Code
----------

`hello` - Simple "Hello world" in-kernel system call  

`kernel_syscall.c` - Dynamic loadable kernel module which invokes in-kernel system call.

`kernel_syscall.s` - Assembly code generated for kernel loadable module, in order to see How system call gets invoked. Visualize reduction in instruction by using assembly code. 
									 
`user_syscall.c` -  Demo to invoke in-kernel system call from userspace and evaluate the
		    performance.
									
`user_syscall.s` -  Assembly code generated for `user_syscall.c`

`user_functioncall.c` - Demo code to see execution time of normal library function call.
