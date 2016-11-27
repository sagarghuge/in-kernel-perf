In-kernel system call implemenation 
=====

Implementation of in-kernel system call in order to evaluate performance against normal system call.

Write system call
----------

`hello` - Simple "Hello world" in-kernel system call  

1. Download Linux kernel source code
2. Under source directory copy `hello` directory
3. Edit `Makefile` under kernel source code
4. look for line `core-y += kernel/ mm/ fs/ ipc/ security/ crypto/ block/ ` edit to `core-y += kernel/ mm/ fs/ ipc/ security/ crypto/ block/ hello/`
5. Go to `arch/x86/entry/syscalls` directory
6. Edit system call table depend on your system architecture `32 / 64`
		System call table looks looks like follow :

		
		<System_Call_Number>  <Architecture(i386/x86_64)>   <name>  <Entry_point>   <Compact_Entry_point>
		19  i386  hello     sys_hello
		
register EAX gets loaded with System_Call_Number, parameter which are passed to method gets loaded in registers EBX, ECX, EDX etc.

7. Add User defined system call in system call header file.
8. Go to `linux_Src/include/linux`
9. Edit `syscalls.h`
10. At the end of file add your system call prototype
11. `cd` to main linux kernel source directory
12. configure kernel using `make menuconfig`
13. `make`

After making kernel it will insert our `hello` in-kernel system call inside kernel. 

How to invoke in-kernel system call by writing kernel module
-------

`kernel_syscall.c` - Dynamic loadable kernel module which invokes in-kernel system call.

`kernel_syscall.s` - Assembly code generated for kernel loadable module, in order to see How system call gets invoked. Visualize reduction in instruction by using assembly code. 

1. Run `make`
2. It will create `kernel_syscall.ko`
3. Run `sudo insmod kernel_syscall.ko`
4. Run `dmesg | tail 2` to fetch output


`user_syscall.c` -  Demo to invoke in-kernel system call from userspace and evaluate the
		    performance.
									
`user_syscall.s` -  Assembly code generated for `user_syscall.c`

`user_functioncall.c` - Demo code to see execution time of normal library function call.
