## Task 3

##### How many states could have process
In Linux, a process is an instance of executing a program or command. While these processes exist, they’ll be in one of the five possible states:

Running or Runnable (R)
Uninterruptible Sleep (D)
Interruptable Sleep (S)
Stopped (T)
Zombie (Z)
##### PSTREE command 
![image](https://user-images.githubusercontent.com/98917290/162051601-542d9ea9-3b74-4e1d-900e-9b70ae239321.png)

Proc file system (procfs) is virtual file system created on fly when system boots and is dissolved at time of system shut down.
It contains useful information about the processes that are currently running, it is regarded as control and information center for kernel.

![image](https://user-images.githubusercontent.com/98917290/162052853-07a36398-3c21-46af-b1e3-65f7770fb150.png)

##### PS get information about processes

![image](https://user-images.githubusercontent.com/98917290/162073543-20a76578-b881-409d-bee2-a031f4a2fc2d.png)



User-space processes have its own virtual address space.

Kernel processes or threads do not have their own address space, they operate within kernel address space only. And they may be started before the kernel has started any user process (e.g. init).


Show processes by user

![image](https://user-images.githubusercontent.com/98917290/162217442-d1fbfb81-b870-4f1a-9cca-367c7456d331.png)

Utilities can be used to analyze existing running tasks

![image](https://user-images.githubusercontent.com/98917290/162217963-4e325fac-668b-4c81-ae46-1c704a4f08e3.png)

The top command (table of processes) displays the processor activity of your Linux box and also displays tasks managed by the kernel in real-time. It also shows information about CPU and memory utilization of a list of running processes.

`top U illia`
![image](https://user-images.githubusercontent.com/98917290/162218444-4c3e79c9-35f6-4317-85d4-1a2829ee487d.png)
