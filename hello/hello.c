#include <linux/kernel.h>

 asmlinkage long sys_hello(void)
{
        printk("Hello world\n");
        return 0;
 }
EXPORT_SYMBOL(sys_hello);
