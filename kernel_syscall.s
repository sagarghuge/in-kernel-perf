
kernel_syscall.o:     file format elf32-i386


Disassembly of section .init.text:

00000000 <init_module>:
int _ret = 0;
char _path[]="..";
MODULE_LICENSE("GPL");

int __init ourinitmodule(void) /* Loads a module in the kernel */
{
   0:	55                   	push   ebp
   1:	89 e5                	mov    ebp,esp
   3:	57                   	push   edi
   4:	56                   	push   esi
   5:	53                   	push   ebx
   6:	bb 0a 00 00 00       	mov    ebx,0xa
   b:	e8 fc ff ff ff       	call   c <init_module+0xc>
  10:	89 c6                	mov    esi,eax
  12:	89 d7                	mov    edi,edx
  14:	e8 fc ff ff ff       	call   15 <init_module+0x15>
  19:	e8 fc ff ff ff       	call   1a <init_module+0x1a>
  1e:	29 f0                	sub    eax,esi
  20:	19 fa                	sbb    edx,edi
  22:	52                   	push   edx
  23:	50                   	push   eax
  24:	68 00 00 00 00       	push   0x0
  29:	e8 fc ff ff ff       	call   2a <init_module+0x2a>
  2e:	83 c4 0c             	add    esp,0xc
  31:	4b                   	dec    ebx
  32:	75 d7                	jne    b <init_module+0xb>
  34:	8d 65 f4             	lea    esp,[ebp-0xc]
  37:	31 c0                	xor    eax,eax
  39:	5b                   	pop    ebx
  3a:	5e                   	pop    esi
  3b:	5f                   	pop    edi
	int i=0,loop=0;
	long long int actual=0;
	ktime_t kt1, kt2;
	for(loop=0;loop<10;loop++){
		kt1 = ktime_get();
  3c:	5d                   	pop    ebp
  3d:	c3                   	ret    

Disassembly of section .exit.text:

00000000 <cleanup_module>:
   0:	55                   	push   ebp
   1:	89 e5                	mov    ebp,esp
   3:	68 00 00 00 00       	push   0x0
   8:	e8 fc ff ff ff       	call   9 <cleanup_module+0x9>
   d:	58                   	pop    eax
   e:	c9                   	leave  
   f:	c3                   	ret    
