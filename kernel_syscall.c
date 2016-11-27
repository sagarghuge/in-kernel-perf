#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/rtc.h>
#include <linux/file.h>
#include <linux/syscalls.h>
#include <linux/ktime.h>

MODULE_LICENSE("GPL");

int __init ourinitmodule(void) /* Loads a module in the kernel */
{
	int i=0,loop=0;
	long long int actual=0;
	ktime_t kt1, kt2;
	for(loop=0;loop<10;loop++){
		kt1 = ktime_get();
	
		i = sys_hello();

		kt2 = ktime_get();
		actual = ktime_to_ns(ktime_sub(kt2,kt1));
		printk(KERN_INFO "My exec time in nanoseconds is : %lld\n",actual);
	}

	return 0;
}
void __exit ourcleanupmodule(void)
{
    printk(KERN_ALERT "Thanks....Exiting Module. \n");
}

module_init(ourinitmodule);
module_exit(ourcleanupmodule);
