
_lab1_test:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "user.h"

#define WNOHANG	1

int main(int argc, char *argv[])
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	83 ec 10             	sub    $0x10,%esp
   a:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  int exitWait(void);
  int waitPid(void);
  int CELEBW02(void);
  int print_debug(void);

  printf(1, "\n This program tests the correctness of your lab#1\n");
   d:	c7 44 24 04 80 0e 00 	movl   $0xe80,0x4(%esp)
  14:	00 
  15:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  1c:	e8 df 08 00 00       	call   900 <printf>
  
  if (atoi(argv[1]) == 1)
  21:	8b 43 04             	mov    0x4(%ebx),%eax
  24:	89 04 24             	mov    %eax,(%esp)
  27:	e8 14 07 00 00       	call   740 <atoi>
  2c:	83 f8 01             	cmp    $0x1,%eax
  2f:	74 50                	je     81 <main+0x81>
	exitWait();
  else if (atoi(argv[1]) == 2)
  31:	8b 43 04             	mov    0x4(%ebx),%eax
  34:	89 04 24             	mov    %eax,(%esp)
  37:	e8 04 07 00 00       	call   740 <atoi>
  3c:	83 f8 02             	cmp    $0x2,%eax
  3f:	74 47                	je     88 <main+0x88>
	waitPid(); // pid, status, options
  else if (atoi(argv[1]) == 3)
  41:	8b 43 04             	mov    0x4(%ebx),%eax
  44:	89 04 24             	mov    %eax,(%esp)
  47:	e8 f4 06 00 00       	call   740 <atoi>
  4c:	83 f8 03             	cmp    $0x3,%eax
  4f:	74 46                	je     97 <main+0x97>
	CELEBW02();
  else if (atoi(argv[1]) == 4)
  51:	8b 43 04             	mov    0x4(%ebx),%eax
  54:	89 04 24             	mov    %eax,(%esp)
  57:	e8 e4 06 00 00       	call   740 <atoi>
  5c:	83 f8 04             	cmp    $0x4,%eax
  5f:	74 41                	je     a2 <main+0xa2>
  	print_debug();
  else 
   printf(1, "\ntype \"lab1 1\" to test exit and wait, \"lab1 2\" to test waitpid and \"lab1 3\" to test the extra credit WNOHANG option \n");
  61:	c7 44 24 04 b4 0e 00 	movl   $0xeb4,0x4(%esp)
  68:	00 
  69:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  70:	e8 8b 08 00 00       	call   900 <printf>
  
    // End of test
	 exit(0);
  75:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  7c:	e8 21 07 00 00       	call   7a2 <exit>
	exitWait();
  81:	e8 2a 00 00 00       	call   b0 <exitWait>
  86:	eb ed                	jmp    75 <main+0x75>
  88:	90                   	nop
  89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	waitPid(); // pid, status, options
  90:	e8 1b 01 00 00       	call   1b0 <waitPid>
  95:	eb de                	jmp    75 <main+0x75>
	CELEBW02();
  97:	e8 84 03 00 00       	call   420 <CELEBW02>
  9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  a0:	eb d3                	jmp    75 <main+0x75>
  	print_debug();
  a2:	e8 69 04 00 00       	call   510 <print_debug>
  a7:	66 90                	xchg   %ax,%ax
  a9:	66 90                	xchg   %ax,%ax
  ab:	66 90                	xchg   %ax,%ax
  ad:	66 90                	xchg   %ax,%ax
  af:	90                   	nop

000000b0 <exitWait>:
	 return 0;
 }
  
int exitWait(void) {
  b0:	55                   	push   %ebp
  b1:	89 e5                	mov    %esp,%ebp
  b3:	56                   	push   %esi
  b4:	53                   	push   %ebx
  int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Parts a & b) testing exit(int status) and wait(int* status):\n");

  for (i = 0; i < 2; i++) {
  b5:	31 db                	xor    %ebx,%ebx
int exitWait(void) {
  b7:	83 ec 20             	sub    $0x20,%esp
  printf(1, "\n  Parts a & b) testing exit(int status) and wait(int* status):\n");
  ba:	c7 44 24 04 68 0c 00 	movl   $0xc68,0x4(%esp)
  c1:	00 
      } else {
	 printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
         exit(-1);
      }  
    } else if (pid > 0) { // only the parent executes this code
        ret_pid = wait(&exit_status);
  c2:	8d 75 f4             	lea    -0xc(%ebp),%esi
  printf(1, "\n  Parts a & b) testing exit(int status) and wait(int* status):\n");
  c5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  cc:	e8 2f 08 00 00       	call   900 <printf>
    pid = fork();
  d1:	e8 c4 06 00 00       	call   79a <fork>
    if (pid == 0) { // only the child executed this code
  d6:	83 f8 00             	cmp    $0x0,%eax
  d9:	74 45                	je     120 <exitWait+0x70>
  db:	90                   	nop
  dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if (pid > 0) { // only the parent executes this code
  e0:	0f 8e a3 00 00 00    	jle    189 <exitWait+0xd9>
        ret_pid = wait(&exit_status);
  e6:	89 34 24             	mov    %esi,(%esp)
  for (i = 0; i < 2; i++) {
  e9:	83 c3 01             	add    $0x1,%ebx
        ret_pid = wait(&exit_status);
  ec:	e8 b9 06 00 00       	call   7aa <wait>
        printf(1, "\n This is the parent: child with PID# %d has exited with status %d\n", ret_pid, exit_status);
  f1:	8b 55 f4             	mov    -0xc(%ebp),%edx
  f4:	c7 44 24 04 e8 0c 00 	movl   $0xce8,0x4(%esp)
  fb:	00 
  fc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 103:	89 54 24 0c          	mov    %edx,0xc(%esp)
 107:	89 44 24 08          	mov    %eax,0x8(%esp)
 10b:	e8 f0 07 00 00       	call   900 <printf>
  for (i = 0; i < 2; i++) {
 110:	83 fb 02             	cmp    $0x2,%ebx
 113:	75 bc                	jne    d1 <exitWait+0x21>
	  printf(2, "\nError using fork\n");
          exit(-1);
        }
  }
  return 0;
}
 115:	83 c4 20             	add    $0x20,%esp
 118:	31 c0                	xor    %eax,%eax
 11a:	5b                   	pop    %ebx
 11b:	5e                   	pop    %esi
 11c:	5d                   	pop    %ebp
 11d:	c3                   	ret    
 11e:	66 90                	xchg   %ax,%ax
      if (i == 0){
 120:	85 db                	test   %ebx,%ebx
 122:	75 34                	jne    158 <exitWait+0xa8>
        printf(1, "\nThis is child with PID# %d and I will exit with status %d\n", getpid(), 0);
 124:	e8 01 07 00 00       	call   82a <getpid>
 129:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 130:	00 
 131:	c7 44 24 04 ac 0c 00 	movl   $0xcac,0x4(%esp)
 138:	00 
 139:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 140:	89 44 24 08          	mov    %eax,0x8(%esp)
 144:	e8 b7 07 00 00       	call   900 <printf>
        exit(0);
 149:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 150:	e8 4d 06 00 00       	call   7a2 <exit>
 155:	8d 76 00             	lea    0x0(%esi),%esi
	 printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
 158:	e8 cd 06 00 00       	call   82a <getpid>
 15d:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%esp)
 164:	ff 
 165:	c7 44 24 04 ac 0c 00 	movl   $0xcac,0x4(%esp)
 16c:	00 
 16d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 174:	89 44 24 08          	mov    %eax,0x8(%esp)
 178:	e8 83 07 00 00       	call   900 <printf>
         exit(-1);
 17d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 184:	e8 19 06 00 00       	call   7a2 <exit>
	  printf(2, "\nError using fork\n");
 189:	c7 44 24 04 2c 0f 00 	movl   $0xf2c,0x4(%esp)
 190:	00 
 191:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 198:	e8 63 07 00 00       	call   900 <printf>
          exit(-1);
 19d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 1a4:	e8 f9 05 00 00       	call   7a2 <exit>
 1a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000001b0 <waitPid>:

int waitPid(void){
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	56                   	push   %esi
 1b4:	53                   	push   %ebx
 1b5:	83 ec 30             	sub    $0x30,%esp
  int ret_pid, exit_status;
  int i;
  int pid_a[5]={0, 0, 0, 0, 0};
 // use this part to test wait(int pid, int* status, int options)

 printf(1, "\n  Part c) testing waitpid(int pid, int* status, int options):\n");
 1b8:	c7 44 24 04 2c 0d 00 	movl   $0xd2c,0x4(%esp)
 1bf:	00 
 1c0:	8d 5d e4             	lea    -0x1c(%ebp),%ebx
 1c3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 1ca:	8d 75 f8             	lea    -0x8(%ebp),%esi
  int pid_a[5]={0, 0, 0, 0, 0};
 1cd:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 1d4:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 1db:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 1e2:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 1e9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 printf(1, "\n  Part c) testing waitpid(int pid, int* status, int options):\n");
 1f0:	e8 0b 07 00 00       	call   900 <printf>

 for (i = 0; i <5; i++) {
   pid_a[i] = fork();
 1f5:	e8 a0 05 00 00       	call   79a <fork>
   if (pid_a[i] == 0) { // only the child executed this code
 1fa:	85 c0                	test   %eax,%eax
   pid_a[i] = fork();
 1fc:	89 03                	mov    %eax,(%ebx)
   if (pid_a[i] == 0) { // only the child executed this code
 1fe:	0f 84 d5 01 00 00    	je     3d9 <waitPid+0x229>
 204:	83 c3 04             	add    $0x4,%ebx
 for (i = 0; i <5; i++) {
 207:	39 f3                	cmp    %esi,%ebx
 209:	75 ea                	jne    1f5 <waitPid+0x45>
     printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), getpid() + 4);
     exit(getpid() + 4);
   }
  }
       
      sleep(5);
 20b:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[3]);
      ret_pid = waitpid(pid_a[3], &exit_status, 0);
 212:	8d 5d e0             	lea    -0x20(%ebp),%ebx
      sleep(5);
 215:	e8 20 06 00 00       	call   83a <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[3]);
 21a:	8b 75 f0             	mov    -0x10(%ebp),%esi
 21d:	c7 44 24 04 a8 0d 00 	movl   $0xda8,0x4(%esp)
 224:	00 
 225:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 22c:	89 74 24 08          	mov    %esi,0x8(%esp)
 230:	e8 cb 06 00 00       	call   900 <printf>
      ret_pid = waitpid(pid_a[3], &exit_status, 0);
 235:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 239:	89 34 24             	mov    %esi,(%esp)
 23c:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 243:	00 
 244:	e8 69 05 00 00       	call   7b2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 249:	8b 55 e0             	mov    -0x20(%ebp),%edx
 24c:	c7 44 24 04 e4 0d 00 	movl   $0xde4,0x4(%esp)
 253:	00 
 254:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 25b:	89 54 24 0c          	mov    %edx,0xc(%esp)
 25f:	89 44 24 08          	mov    %eax,0x8(%esp)
 263:	e8 98 06 00 00       	call   900 <printf>
      sleep(5);
 268:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
 26f:	e8 c6 05 00 00       	call   83a <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[1]);
 274:	8b 75 e8             	mov    -0x18(%ebp),%esi
 277:	c7 44 24 04 a8 0d 00 	movl   $0xda8,0x4(%esp)
 27e:	00 
 27f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 286:	89 74 24 08          	mov    %esi,0x8(%esp)
 28a:	e8 71 06 00 00       	call   900 <printf>
      ret_pid = waitpid(pid_a[1], &exit_status, 0);
 28f:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 293:	89 34 24             	mov    %esi,(%esp)
 296:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 29d:	00 
 29e:	e8 0f 05 00 00       	call   7b2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 2a3:	8b 55 e0             	mov    -0x20(%ebp),%edx
 2a6:	c7 44 24 04 e4 0d 00 	movl   $0xde4,0x4(%esp)
 2ad:	00 
 2ae:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 2b5:	89 54 24 0c          	mov    %edx,0xc(%esp)
 2b9:	89 44 24 08          	mov    %eax,0x8(%esp)
 2bd:	e8 3e 06 00 00       	call   900 <printf>
      sleep(5);
 2c2:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
 2c9:	e8 6c 05 00 00       	call   83a <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[2]);
 2ce:	8b 75 ec             	mov    -0x14(%ebp),%esi
 2d1:	c7 44 24 04 a8 0d 00 	movl   $0xda8,0x4(%esp)
 2d8:	00 
 2d9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 2e0:	89 74 24 08          	mov    %esi,0x8(%esp)
 2e4:	e8 17 06 00 00       	call   900 <printf>
      ret_pid = waitpid(pid_a[2], &exit_status, 0);
 2e9:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 2ed:	89 34 24             	mov    %esi,(%esp)
 2f0:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 2f7:	00 
 2f8:	e8 b5 04 00 00       	call   7b2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 2fd:	8b 55 e0             	mov    -0x20(%ebp),%edx
 300:	c7 44 24 04 e4 0d 00 	movl   $0xde4,0x4(%esp)
 307:	00 
 308:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 30f:	89 54 24 0c          	mov    %edx,0xc(%esp)
 313:	89 44 24 08          	mov    %eax,0x8(%esp)
 317:	e8 e4 05 00 00       	call   900 <printf>
      sleep(5);
 31c:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
 323:	e8 12 05 00 00       	call   83a <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[0]);
 328:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 32b:	c7 44 24 04 a8 0d 00 	movl   $0xda8,0x4(%esp)
 332:	00 
 333:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 33a:	89 74 24 08          	mov    %esi,0x8(%esp)
 33e:	e8 bd 05 00 00       	call   900 <printf>
      ret_pid = waitpid(pid_a[0], &exit_status, 0);
 343:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 347:	89 34 24             	mov    %esi,(%esp)
 34a:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 351:	00 
 352:	e8 5b 04 00 00       	call   7b2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 357:	8b 55 e0             	mov    -0x20(%ebp),%edx
 35a:	c7 44 24 04 e4 0d 00 	movl   $0xde4,0x4(%esp)
 361:	00 
 362:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 369:	89 54 24 0c          	mov    %edx,0xc(%esp)
 36d:	89 44 24 08          	mov    %eax,0x8(%esp)
 371:	e8 8a 05 00 00       	call   900 <printf>
      sleep(5);
 376:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
 37d:	e8 b8 04 00 00       	call   83a <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[4]);
 382:	8b 75 f4             	mov    -0xc(%ebp),%esi
 385:	c7 44 24 04 a8 0d 00 	movl   $0xda8,0x4(%esp)
 38c:	00 
 38d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 394:	89 74 24 08          	mov    %esi,0x8(%esp)
 398:	e8 63 05 00 00       	call   900 <printf>
      ret_pid = waitpid(pid_a[4], &exit_status, 0);
 39d:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 3a1:	89 34 24             	mov    %esi,(%esp)
 3a4:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 3ab:	00 
 3ac:	e8 01 04 00 00       	call   7b2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 3b1:	8b 55 e0             	mov    -0x20(%ebp),%edx
 3b4:	c7 44 24 04 e4 0d 00 	movl   $0xde4,0x4(%esp)
 3bb:	00 
 3bc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 3c3:	89 54 24 0c          	mov    %edx,0xc(%esp)
 3c7:	89 44 24 08          	mov    %eax,0x8(%esp)
 3cb:	e8 30 05 00 00       	call   900 <printf>
      
      return 0;
  }
 3d0:	83 c4 30             	add    $0x30,%esp
 3d3:	31 c0                	xor    %eax,%eax
 3d5:	5b                   	pop    %ebx
 3d6:	5e                   	pop    %esi
 3d7:	5d                   	pop    %ebp
 3d8:	c3                   	ret    
     printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), getpid() + 4);
 3d9:	e8 4c 04 00 00       	call   82a <getpid>
 3de:	89 c3                	mov    %eax,%ebx
 3e0:	e8 45 04 00 00       	call   82a <getpid>
 3e5:	83 c3 04             	add    $0x4,%ebx
 3e8:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 3ec:	c7 44 24 04 6c 0d 00 	movl   $0xd6c,0x4(%esp)
 3f3:	00 
 3f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 3fb:	89 44 24 08          	mov    %eax,0x8(%esp)
 3ff:	e8 fc 04 00 00       	call   900 <printf>
     exit(getpid() + 4);
 404:	e8 21 04 00 00       	call   82a <getpid>
 409:	83 c0 04             	add    $0x4,%eax
 40c:	89 04 24             	mov    %eax,(%esp)
 40f:	e8 8e 03 00 00       	call   7a2 <exit>
 414:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 41a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000420 <CELEBW02>:

int CELEBW02(void){
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	56                   	push   %esi
 424:	53                   	push   %ebx
 425:	83 ec 20             	sub    $0x20,%esp
	
 printf(1, "\n  Part e) the waitpid option WNOHANG, test program CELEBW02 \n");
 428:	c7 44 24 04 20 0e 00 	movl   $0xe20,0x4(%esp)
 42f:	00 
 430:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 437:	e8 c4 04 00 00       	call   900 <printf>

  int pid, retpid;
  int status;

  if ((pid = fork()) < 0)
 43c:	e8 59 03 00 00       	call   79a <fork>
 441:	85 c0                	test   %eax,%eax
 443:	89 c3                	mov    %eax,%ebx
 445:	0f 88 92 00 00 00    	js     4dd <CELEBW02+0xbd>
    printf(2, "fork() error");
  else if (pid == 0) {
 44b:	0f 84 a2 00 00 00    	je     4f3 <CELEBW02+0xd3>
 451:	8d 75 f4             	lea    -0xc(%ebp),%esi
 454:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    sleep(5);
    exit(1);
  }
  else do {
    if ((retpid = waitpid(pid, &status, WNOHANG)) == -1)
 458:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 45f:	00 
 460:	89 74 24 04          	mov    %esi,0x4(%esp)
 464:	89 1c 24             	mov    %ebx,(%esp)
 467:	e8 46 03 00 00       	call   7b2 <waitpid>
 46c:	83 f8 ff             	cmp    $0xffffffff,%eax
 46f:	74 4f                	je     4c0 <CELEBW02+0xa0>
      printf(2, "wait() error");
    else if (retpid == 0) {
 471:	85 c0                	test   %eax,%eax
 473:	75 23                	jne    498 <CELEBW02+0x78>
      printf(1, "child is still running \n");
 475:	c7 44 24 04 59 0f 00 	movl   $0xf59,0x4(%esp)
 47c:	00 
 47d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 484:	e8 77 04 00 00       	call   900 <printf>
      sleep(1);
 489:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 490:	e8 a5 03 00 00       	call   83a <sleep>
 495:	eb c1                	jmp    458 <CELEBW02+0x38>
 497:	90                   	nop
    }
    else {
        printf(1, "child exited with status of %d\n", status);
 498:	8b 45 f4             	mov    -0xc(%ebp),%eax
 49b:	c7 44 24 04 60 0e 00 	movl   $0xe60,0x4(%esp)
 4a2:	00 
 4a3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 4aa:	89 44 24 08          	mov    %eax,0x8(%esp)
 4ae:	e8 4d 04 00 00       	call   900 <printf>
    }
  } while (retpid == 0);
  
  return 0;
  
}
 4b3:	83 c4 20             	add    $0x20,%esp
 4b6:	31 c0                	xor    %eax,%eax
 4b8:	5b                   	pop    %ebx
 4b9:	5e                   	pop    %esi
 4ba:	5d                   	pop    %ebp
 4bb:	c3                   	ret    
 4bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(2, "wait() error");
 4c0:	c7 44 24 04 4c 0f 00 	movl   $0xf4c,0x4(%esp)
 4c7:	00 
 4c8:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 4cf:	e8 2c 04 00 00       	call   900 <printf>
}
 4d4:	83 c4 20             	add    $0x20,%esp
 4d7:	31 c0                	xor    %eax,%eax
 4d9:	5b                   	pop    %ebx
 4da:	5e                   	pop    %esi
 4db:	5d                   	pop    %ebp
 4dc:	c3                   	ret    
    printf(2, "fork() error");
 4dd:	c7 44 24 04 3f 0f 00 	movl   $0xf3f,0x4(%esp)
 4e4:	00 
 4e5:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 4ec:	e8 0f 04 00 00       	call   900 <printf>
 4f1:	eb c0                	jmp    4b3 <CELEBW02+0x93>
    sleep(5);
 4f3:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
 4fa:	e8 3b 03 00 00       	call   83a <sleep>
    exit(1);
 4ff:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 506:	e8 97 02 00 00       	call   7a2 <exit>
 50b:	90                   	nop
 50c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000510 <print_debug>:

int print_debug(void){
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	83 ec 18             	sub    $0x18,%esp
  printf(1, "\n Test DEBUG() syscall \n");
 516:	c7 44 24 04 72 0f 00 	movl   $0xf72,0x4(%esp)
 51d:	00 
 51e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 525:	e8 d6 03 00 00       	call   900 <printf>
  
  int pid;

  if((pid = fork())){
 52a:	e8 6b 02 00 00       	call   79a <fork>
 52f:	85 c0                	test   %eax,%eax
 531:	74 31                	je     564 <print_debug+0x54>
    printf(1, "THIS IS PARENT\n");
 533:	c7 44 24 04 8b 0f 00 	movl   $0xf8b,0x4(%esp)
 53a:	00 
 53b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 542:	e8 b9 03 00 00       	call   900 <printf>
    debug();
 547:	e8 06 03 00 00       	call   852 <debug>
    sleep(5);
 54c:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
 553:	e8 e2 02 00 00       	call   83a <sleep>
  } else {
    printf(1, "I AM A CHILD\n");
    debug();
  }
  
  exit(0);
 558:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 55f:	e8 3e 02 00 00       	call   7a2 <exit>
    printf(1, "I AM A CHILD\n");
 564:	c7 44 24 04 9b 0f 00 	movl   $0xf9b,0x4(%esp)
 56b:	00 
 56c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 573:	e8 88 03 00 00       	call   900 <printf>
    debug();
 578:	e8 d5 02 00 00       	call   852 <debug>
 57d:	eb d9                	jmp    558 <print_debug+0x48>
 57f:	90                   	nop

00000580 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
 583:	8b 45 08             	mov    0x8(%ebp),%eax
 586:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 589:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 58a:	89 c2                	mov    %eax,%edx
 58c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 590:	83 c1 01             	add    $0x1,%ecx
 593:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 597:	83 c2 01             	add    $0x1,%edx
 59a:	84 db                	test   %bl,%bl
 59c:	88 5a ff             	mov    %bl,-0x1(%edx)
 59f:	75 ef                	jne    590 <strcpy+0x10>
    ;
  return os;
}
 5a1:	5b                   	pop    %ebx
 5a2:	5d                   	pop    %ebp
 5a3:	c3                   	ret    
 5a4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 5aa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000005b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	8b 55 08             	mov    0x8(%ebp),%edx
 5b6:	53                   	push   %ebx
 5b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 5ba:	0f b6 02             	movzbl (%edx),%eax
 5bd:	84 c0                	test   %al,%al
 5bf:	74 2d                	je     5ee <strcmp+0x3e>
 5c1:	0f b6 19             	movzbl (%ecx),%ebx
 5c4:	38 d8                	cmp    %bl,%al
 5c6:	74 0e                	je     5d6 <strcmp+0x26>
 5c8:	eb 2b                	jmp    5f5 <strcmp+0x45>
 5ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 5d0:	38 c8                	cmp    %cl,%al
 5d2:	75 15                	jne    5e9 <strcmp+0x39>
    p++, q++;
 5d4:	89 d9                	mov    %ebx,%ecx
 5d6:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 5d9:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 5dc:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 5df:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
 5e3:	84 c0                	test   %al,%al
 5e5:	75 e9                	jne    5d0 <strcmp+0x20>
 5e7:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 5e9:	29 c8                	sub    %ecx,%eax
}
 5eb:	5b                   	pop    %ebx
 5ec:	5d                   	pop    %ebp
 5ed:	c3                   	ret    
 5ee:	0f b6 09             	movzbl (%ecx),%ecx
  while(*p && *p == *q)
 5f1:	31 c0                	xor    %eax,%eax
 5f3:	eb f4                	jmp    5e9 <strcmp+0x39>
 5f5:	0f b6 cb             	movzbl %bl,%ecx
 5f8:	eb ef                	jmp    5e9 <strcmp+0x39>
 5fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000600 <strlen>:

uint
strlen(const char *s)
{
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 606:	80 39 00             	cmpb   $0x0,(%ecx)
 609:	74 12                	je     61d <strlen+0x1d>
 60b:	31 d2                	xor    %edx,%edx
 60d:	8d 76 00             	lea    0x0(%esi),%esi
 610:	83 c2 01             	add    $0x1,%edx
 613:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 617:	89 d0                	mov    %edx,%eax
 619:	75 f5                	jne    610 <strlen+0x10>
    ;
  return n;
}
 61b:	5d                   	pop    %ebp
 61c:	c3                   	ret    
  for(n = 0; s[n]; n++)
 61d:	31 c0                	xor    %eax,%eax
}
 61f:	5d                   	pop    %ebp
 620:	c3                   	ret    
 621:	eb 0d                	jmp    630 <memset>
 623:	90                   	nop
 624:	90                   	nop
 625:	90                   	nop
 626:	90                   	nop
 627:	90                   	nop
 628:	90                   	nop
 629:	90                   	nop
 62a:	90                   	nop
 62b:	90                   	nop
 62c:	90                   	nop
 62d:	90                   	nop
 62e:	90                   	nop
 62f:	90                   	nop

00000630 <memset>:

void*
memset(void *dst, int c, uint n)
{
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	8b 55 08             	mov    0x8(%ebp),%edx
 636:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 637:	8b 4d 10             	mov    0x10(%ebp),%ecx
 63a:	8b 45 0c             	mov    0xc(%ebp),%eax
 63d:	89 d7                	mov    %edx,%edi
 63f:	fc                   	cld    
 640:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 642:	89 d0                	mov    %edx,%eax
 644:	5f                   	pop    %edi
 645:	5d                   	pop    %ebp
 646:	c3                   	ret    
 647:	89 f6                	mov    %esi,%esi
 649:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000650 <strchr>:

char*
strchr(const char *s, char c)
{
 650:	55                   	push   %ebp
 651:	89 e5                	mov    %esp,%ebp
 653:	8b 45 08             	mov    0x8(%ebp),%eax
 656:	53                   	push   %ebx
 657:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
 65a:	0f b6 18             	movzbl (%eax),%ebx
 65d:	84 db                	test   %bl,%bl
 65f:	74 1d                	je     67e <strchr+0x2e>
    if(*s == c)
 661:	38 d3                	cmp    %dl,%bl
 663:	89 d1                	mov    %edx,%ecx
 665:	75 0d                	jne    674 <strchr+0x24>
 667:	eb 17                	jmp    680 <strchr+0x30>
 669:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 670:	38 ca                	cmp    %cl,%dl
 672:	74 0c                	je     680 <strchr+0x30>
  for(; *s; s++)
 674:	83 c0 01             	add    $0x1,%eax
 677:	0f b6 10             	movzbl (%eax),%edx
 67a:	84 d2                	test   %dl,%dl
 67c:	75 f2                	jne    670 <strchr+0x20>
      return (char*)s;
  return 0;
 67e:	31 c0                	xor    %eax,%eax
}
 680:	5b                   	pop    %ebx
 681:	5d                   	pop    %ebp
 682:	c3                   	ret    
 683:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 689:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000690 <gets>:

char*
gets(char *buf, int max)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	57                   	push   %edi
 694:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 695:	31 f6                	xor    %esi,%esi
{
 697:	53                   	push   %ebx
 698:	83 ec 2c             	sub    $0x2c,%esp
    cc = read(0, &c, 1);
 69b:	8d 7d e7             	lea    -0x19(%ebp),%edi
  for(i=0; i+1 < max; ){
 69e:	eb 31                	jmp    6d1 <gets+0x41>
    cc = read(0, &c, 1);
 6a0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 6a7:	00 
 6a8:	89 7c 24 04          	mov    %edi,0x4(%esp)
 6ac:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 6b3:	e8 0a 01 00 00       	call   7c2 <read>
    if(cc < 1)
 6b8:	85 c0                	test   %eax,%eax
 6ba:	7e 1d                	jle    6d9 <gets+0x49>
      break;
    buf[i++] = c;
 6bc:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  for(i=0; i+1 < max; ){
 6c0:	89 de                	mov    %ebx,%esi
    buf[i++] = c;
 6c2:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 6c5:	3c 0d                	cmp    $0xd,%al
    buf[i++] = c;
 6c7:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 6cb:	74 0c                	je     6d9 <gets+0x49>
 6cd:	3c 0a                	cmp    $0xa,%al
 6cf:	74 08                	je     6d9 <gets+0x49>
  for(i=0; i+1 < max; ){
 6d1:	8d 5e 01             	lea    0x1(%esi),%ebx
 6d4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 6d7:	7c c7                	jl     6a0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 6d9:	8b 45 08             	mov    0x8(%ebp),%eax
 6dc:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 6e0:	83 c4 2c             	add    $0x2c,%esp
 6e3:	5b                   	pop    %ebx
 6e4:	5e                   	pop    %esi
 6e5:	5f                   	pop    %edi
 6e6:	5d                   	pop    %ebp
 6e7:	c3                   	ret    
 6e8:	90                   	nop
 6e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000006f0 <stat>:

int
stat(const char *n, struct stat *st)
{
 6f0:	55                   	push   %ebp
 6f1:	89 e5                	mov    %esp,%ebp
 6f3:	56                   	push   %esi
 6f4:	53                   	push   %ebx
 6f5:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 6f8:	8b 45 08             	mov    0x8(%ebp),%eax
 6fb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 702:	00 
 703:	89 04 24             	mov    %eax,(%esp)
 706:	e8 df 00 00 00       	call   7ea <open>
  if(fd < 0)
 70b:	85 c0                	test   %eax,%eax
  fd = open(n, O_RDONLY);
 70d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
 70f:	78 27                	js     738 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 711:	8b 45 0c             	mov    0xc(%ebp),%eax
 714:	89 1c 24             	mov    %ebx,(%esp)
 717:	89 44 24 04          	mov    %eax,0x4(%esp)
 71b:	e8 e2 00 00 00       	call   802 <fstat>
  close(fd);
 720:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 723:	89 c6                	mov    %eax,%esi
  close(fd);
 725:	e8 a8 00 00 00       	call   7d2 <close>
  return r;
 72a:	89 f0                	mov    %esi,%eax
}
 72c:	83 c4 10             	add    $0x10,%esp
 72f:	5b                   	pop    %ebx
 730:	5e                   	pop    %esi
 731:	5d                   	pop    %ebp
 732:	c3                   	ret    
 733:	90                   	nop
 734:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return -1;
 738:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 73d:	eb ed                	jmp    72c <stat+0x3c>
 73f:	90                   	nop

00000740 <atoi>:

int
atoi(const char *s)
{
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	8b 4d 08             	mov    0x8(%ebp),%ecx
 746:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 747:	0f be 11             	movsbl (%ecx),%edx
 74a:	8d 42 d0             	lea    -0x30(%edx),%eax
 74d:	3c 09                	cmp    $0x9,%al
  n = 0;
 74f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 754:	77 17                	ja     76d <atoi+0x2d>
 756:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 758:	83 c1 01             	add    $0x1,%ecx
 75b:	8d 04 80             	lea    (%eax,%eax,4),%eax
 75e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 762:	0f be 11             	movsbl (%ecx),%edx
 765:	8d 5a d0             	lea    -0x30(%edx),%ebx
 768:	80 fb 09             	cmp    $0x9,%bl
 76b:	76 eb                	jbe    758 <atoi+0x18>
  return n;
}
 76d:	5b                   	pop    %ebx
 76e:	5d                   	pop    %ebp
 76f:	c3                   	ret    

00000770 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 770:	55                   	push   %ebp
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 771:	31 d2                	xor    %edx,%edx
{
 773:	89 e5                	mov    %esp,%ebp
 775:	56                   	push   %esi
 776:	8b 45 08             	mov    0x8(%ebp),%eax
 779:	53                   	push   %ebx
 77a:	8b 5d 10             	mov    0x10(%ebp),%ebx
 77d:	8b 75 0c             	mov    0xc(%ebp),%esi
  while(n-- > 0)
 780:	85 db                	test   %ebx,%ebx
 782:	7e 12                	jle    796 <memmove+0x26>
 784:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 788:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 78c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 78f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 792:	39 da                	cmp    %ebx,%edx
 794:	75 f2                	jne    788 <memmove+0x18>
  return vdst;
}
 796:	5b                   	pop    %ebx
 797:	5e                   	pop    %esi
 798:	5d                   	pop    %ebp
 799:	c3                   	ret    

0000079a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 79a:	b8 01 00 00 00       	mov    $0x1,%eax
 79f:	cd 40                	int    $0x40
 7a1:	c3                   	ret    

000007a2 <exit>:
SYSCALL(exit)
 7a2:	b8 02 00 00 00       	mov    $0x2,%eax
 7a7:	cd 40                	int    $0x40
 7a9:	c3                   	ret    

000007aa <wait>:
SYSCALL(wait)
 7aa:	b8 03 00 00 00       	mov    $0x3,%eax
 7af:	cd 40                	int    $0x40
 7b1:	c3                   	ret    

000007b2 <waitpid>:
SYSCALL(waitpid)
 7b2:	b8 17 00 00 00       	mov    $0x17,%eax
 7b7:	cd 40                	int    $0x40
 7b9:	c3                   	ret    

000007ba <pipe>:
SYSCALL(pipe)
 7ba:	b8 04 00 00 00       	mov    $0x4,%eax
 7bf:	cd 40                	int    $0x40
 7c1:	c3                   	ret    

000007c2 <read>:
SYSCALL(read)
 7c2:	b8 05 00 00 00       	mov    $0x5,%eax
 7c7:	cd 40                	int    $0x40
 7c9:	c3                   	ret    

000007ca <write>:
SYSCALL(write)
 7ca:	b8 10 00 00 00       	mov    $0x10,%eax
 7cf:	cd 40                	int    $0x40
 7d1:	c3                   	ret    

000007d2 <close>:
SYSCALL(close)
 7d2:	b8 15 00 00 00       	mov    $0x15,%eax
 7d7:	cd 40                	int    $0x40
 7d9:	c3                   	ret    

000007da <kill>:
SYSCALL(kill)
 7da:	b8 06 00 00 00       	mov    $0x6,%eax
 7df:	cd 40                	int    $0x40
 7e1:	c3                   	ret    

000007e2 <exec>:
SYSCALL(exec)
 7e2:	b8 07 00 00 00       	mov    $0x7,%eax
 7e7:	cd 40                	int    $0x40
 7e9:	c3                   	ret    

000007ea <open>:
SYSCALL(open)
 7ea:	b8 0f 00 00 00       	mov    $0xf,%eax
 7ef:	cd 40                	int    $0x40
 7f1:	c3                   	ret    

000007f2 <mknod>:
SYSCALL(mknod)
 7f2:	b8 11 00 00 00       	mov    $0x11,%eax
 7f7:	cd 40                	int    $0x40
 7f9:	c3                   	ret    

000007fa <unlink>:
SYSCALL(unlink)
 7fa:	b8 12 00 00 00       	mov    $0x12,%eax
 7ff:	cd 40                	int    $0x40
 801:	c3                   	ret    

00000802 <fstat>:
SYSCALL(fstat)
 802:	b8 08 00 00 00       	mov    $0x8,%eax
 807:	cd 40                	int    $0x40
 809:	c3                   	ret    

0000080a <link>:
SYSCALL(link)
 80a:	b8 13 00 00 00       	mov    $0x13,%eax
 80f:	cd 40                	int    $0x40
 811:	c3                   	ret    

00000812 <mkdir>:
SYSCALL(mkdir)
 812:	b8 14 00 00 00       	mov    $0x14,%eax
 817:	cd 40                	int    $0x40
 819:	c3                   	ret    

0000081a <chdir>:
SYSCALL(chdir)
 81a:	b8 09 00 00 00       	mov    $0x9,%eax
 81f:	cd 40                	int    $0x40
 821:	c3                   	ret    

00000822 <dup>:
SYSCALL(dup)
 822:	b8 0a 00 00 00       	mov    $0xa,%eax
 827:	cd 40                	int    $0x40
 829:	c3                   	ret    

0000082a <getpid>:
SYSCALL(getpid)
 82a:	b8 0b 00 00 00       	mov    $0xb,%eax
 82f:	cd 40                	int    $0x40
 831:	c3                   	ret    

00000832 <sbrk>:
SYSCALL(sbrk)
 832:	b8 0c 00 00 00       	mov    $0xc,%eax
 837:	cd 40                	int    $0x40
 839:	c3                   	ret    

0000083a <sleep>:
SYSCALL(sleep)
 83a:	b8 0d 00 00 00       	mov    $0xd,%eax
 83f:	cd 40                	int    $0x40
 841:	c3                   	ret    

00000842 <uptime>:
SYSCALL(uptime)
 842:	b8 0e 00 00 00       	mov    $0xe,%eax
 847:	cd 40                	int    $0x40
 849:	c3                   	ret    

0000084a <add>:
SYSCALL(add)
 84a:	b8 16 00 00 00       	mov    $0x16,%eax
 84f:	cd 40                	int    $0x40
 851:	c3                   	ret    

00000852 <debug>:
SYSCALL(debug)
 852:	b8 18 00 00 00       	mov    $0x18,%eax
 857:	cd 40                	int    $0x40
 859:	c3                   	ret    
 85a:	66 90                	xchg   %ax,%ax
 85c:	66 90                	xchg   %ax,%ax
 85e:	66 90                	xchg   %ax,%ax

00000860 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 860:	55                   	push   %ebp
 861:	89 e5                	mov    %esp,%ebp
 863:	57                   	push   %edi
 864:	56                   	push   %esi
 865:	89 c6                	mov    %eax,%esi
 867:	53                   	push   %ebx
 868:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 86b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 86e:	85 db                	test   %ebx,%ebx
 870:	74 09                	je     87b <printint+0x1b>
 872:	89 d0                	mov    %edx,%eax
 874:	c1 e8 1f             	shr    $0x1f,%eax
 877:	84 c0                	test   %al,%al
 879:	75 75                	jne    8f0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 87b:	89 d0                	mov    %edx,%eax
  neg = 0;
 87d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 884:	89 75 c0             	mov    %esi,-0x40(%ebp)
  }

  i = 0;
 887:	31 ff                	xor    %edi,%edi
 889:	89 ce                	mov    %ecx,%esi
 88b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 88e:	eb 02                	jmp    892 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 890:	89 cf                	mov    %ecx,%edi
 892:	31 d2                	xor    %edx,%edx
 894:	f7 f6                	div    %esi
 896:	8d 4f 01             	lea    0x1(%edi),%ecx
 899:	0f b6 92 b0 0f 00 00 	movzbl 0xfb0(%edx),%edx
  }while((x /= base) != 0);
 8a0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 8a2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 8a5:	75 e9                	jne    890 <printint+0x30>
  if(neg)
 8a7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    buf[i++] = digits[x % base];
 8aa:	89 c8                	mov    %ecx,%eax
 8ac:	8b 75 c0             	mov    -0x40(%ebp),%esi
  if(neg)
 8af:	85 d2                	test   %edx,%edx
 8b1:	74 08                	je     8bb <printint+0x5b>
    buf[i++] = '-';
 8b3:	8d 4f 02             	lea    0x2(%edi),%ecx
 8b6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 8bb:	8d 79 ff             	lea    -0x1(%ecx),%edi
 8be:	66 90                	xchg   %ax,%ax
 8c0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 8c5:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
 8c8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8cf:	00 
 8d0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8d4:	89 34 24             	mov    %esi,(%esp)
 8d7:	88 45 d7             	mov    %al,-0x29(%ebp)
 8da:	e8 eb fe ff ff       	call   7ca <write>
  while(--i >= 0)
 8df:	83 ff ff             	cmp    $0xffffffff,%edi
 8e2:	75 dc                	jne    8c0 <printint+0x60>
    putc(fd, buf[i]);
}
 8e4:	83 c4 4c             	add    $0x4c,%esp
 8e7:	5b                   	pop    %ebx
 8e8:	5e                   	pop    %esi
 8e9:	5f                   	pop    %edi
 8ea:	5d                   	pop    %ebp
 8eb:	c3                   	ret    
 8ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    x = -xx;
 8f0:	89 d0                	mov    %edx,%eax
 8f2:	f7 d8                	neg    %eax
    neg = 1;
 8f4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 8fb:	eb 87                	jmp    884 <printint+0x24>
 8fd:	8d 76 00             	lea    0x0(%esi),%esi

00000900 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 900:	55                   	push   %ebp
 901:	89 e5                	mov    %esp,%ebp
 903:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 904:	31 ff                	xor    %edi,%edi
{
 906:	56                   	push   %esi
 907:	53                   	push   %ebx
 908:	83 ec 3c             	sub    $0x3c,%esp
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 90b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ap = (uint*)(void*)&fmt + 1;
 90e:	8d 45 10             	lea    0x10(%ebp),%eax
{
 911:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
 914:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 917:	0f b6 13             	movzbl (%ebx),%edx
 91a:	83 c3 01             	add    $0x1,%ebx
 91d:	84 d2                	test   %dl,%dl
 91f:	75 39                	jne    95a <printf+0x5a>
 921:	e9 c2 00 00 00       	jmp    9e8 <printf+0xe8>
 926:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 928:	83 fa 25             	cmp    $0x25,%edx
 92b:	0f 84 bf 00 00 00    	je     9f0 <printf+0xf0>
  write(fd, &c, 1);
 931:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 934:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 93b:	00 
 93c:	89 44 24 04          	mov    %eax,0x4(%esp)
 940:	89 34 24             	mov    %esi,(%esp)
        state = '%';
      } else {
        putc(fd, c);
 943:	88 55 e2             	mov    %dl,-0x1e(%ebp)
  write(fd, &c, 1);
 946:	e8 7f fe ff ff       	call   7ca <write>
 94b:	83 c3 01             	add    $0x1,%ebx
  for(i = 0; fmt[i]; i++){
 94e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 952:	84 d2                	test   %dl,%dl
 954:	0f 84 8e 00 00 00    	je     9e8 <printf+0xe8>
    if(state == 0){
 95a:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 95c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 95f:	74 c7                	je     928 <printf+0x28>
      }
    } else if(state == '%'){
 961:	83 ff 25             	cmp    $0x25,%edi
 964:	75 e5                	jne    94b <printf+0x4b>
      if(c == 'd'){
 966:	83 fa 64             	cmp    $0x64,%edx
 969:	0f 84 31 01 00 00    	je     aa0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 96f:	25 f7 00 00 00       	and    $0xf7,%eax
 974:	83 f8 70             	cmp    $0x70,%eax
 977:	0f 84 83 00 00 00    	je     a00 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 97d:	83 fa 73             	cmp    $0x73,%edx
 980:	0f 84 a2 00 00 00    	je     a28 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 986:	83 fa 63             	cmp    $0x63,%edx
 989:	0f 84 35 01 00 00    	je     ac4 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 98f:	83 fa 25             	cmp    $0x25,%edx
 992:	0f 84 e0 00 00 00    	je     a78 <printf+0x178>
  write(fd, &c, 1);
 998:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 99b:	83 c3 01             	add    $0x1,%ebx
 99e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 9a5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 9a6:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 9a8:	89 44 24 04          	mov    %eax,0x4(%esp)
 9ac:	89 34 24             	mov    %esi,(%esp)
 9af:	89 55 d0             	mov    %edx,-0x30(%ebp)
 9b2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 9b6:	e8 0f fe ff ff       	call   7ca <write>
        putc(fd, c);
 9bb:	8b 55 d0             	mov    -0x30(%ebp),%edx
  write(fd, &c, 1);
 9be:	8d 45 e7             	lea    -0x19(%ebp),%eax
 9c1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 9c8:	00 
 9c9:	89 44 24 04          	mov    %eax,0x4(%esp)
 9cd:	89 34 24             	mov    %esi,(%esp)
        putc(fd, c);
 9d0:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 9d3:	e8 f2 fd ff ff       	call   7ca <write>
  for(i = 0; fmt[i]; i++){
 9d8:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 9dc:	84 d2                	test   %dl,%dl
 9de:	0f 85 76 ff ff ff    	jne    95a <printf+0x5a>
 9e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }
}
 9e8:	83 c4 3c             	add    $0x3c,%esp
 9eb:	5b                   	pop    %ebx
 9ec:	5e                   	pop    %esi
 9ed:	5f                   	pop    %edi
 9ee:	5d                   	pop    %ebp
 9ef:	c3                   	ret    
        state = '%';
 9f0:	bf 25 00 00 00       	mov    $0x25,%edi
 9f5:	e9 51 ff ff ff       	jmp    94b <printf+0x4b>
 9fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 a00:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 a03:	b9 10 00 00 00       	mov    $0x10,%ecx
      state = 0;
 a08:	31 ff                	xor    %edi,%edi
        printint(fd, *ap, 16, 0);
 a0a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 a11:	8b 10                	mov    (%eax),%edx
 a13:	89 f0                	mov    %esi,%eax
 a15:	e8 46 fe ff ff       	call   860 <printint>
        ap++;
 a1a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 a1e:	e9 28 ff ff ff       	jmp    94b <printf+0x4b>
 a23:	90                   	nop
 a24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 a28:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 a2b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        s = (char*)*ap;
 a2f:	8b 38                	mov    (%eax),%edi
          s = "(null)";
 a31:	b8 a9 0f 00 00       	mov    $0xfa9,%eax
 a36:	85 ff                	test   %edi,%edi
 a38:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 a3b:	0f b6 07             	movzbl (%edi),%eax
 a3e:	84 c0                	test   %al,%al
 a40:	74 2a                	je     a6c <printf+0x16c>
 a42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 a48:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 a4b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
          s++;
 a4e:	83 c7 01             	add    $0x1,%edi
  write(fd, &c, 1);
 a51:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 a58:	00 
 a59:	89 44 24 04          	mov    %eax,0x4(%esp)
 a5d:	89 34 24             	mov    %esi,(%esp)
 a60:	e8 65 fd ff ff       	call   7ca <write>
        while(*s != 0){
 a65:	0f b6 07             	movzbl (%edi),%eax
 a68:	84 c0                	test   %al,%al
 a6a:	75 dc                	jne    a48 <printf+0x148>
      state = 0;
 a6c:	31 ff                	xor    %edi,%edi
 a6e:	e9 d8 fe ff ff       	jmp    94b <printf+0x4b>
 a73:	90                   	nop
 a74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 a78:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      state = 0;
 a7b:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 a7d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 a84:	00 
 a85:	89 44 24 04          	mov    %eax,0x4(%esp)
 a89:	89 34 24             	mov    %esi,(%esp)
 a8c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 a90:	e8 35 fd ff ff       	call   7ca <write>
 a95:	e9 b1 fe ff ff       	jmp    94b <printf+0x4b>
 a9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 aa0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 aa3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      state = 0;
 aa8:	66 31 ff             	xor    %di,%di
        printint(fd, *ap, 10, 1);
 aab:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 ab2:	8b 10                	mov    (%eax),%edx
 ab4:	89 f0                	mov    %esi,%eax
 ab6:	e8 a5 fd ff ff       	call   860 <printint>
        ap++;
 abb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 abf:	e9 87 fe ff ff       	jmp    94b <printf+0x4b>
        putc(fd, *ap);
 ac4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      state = 0;
 ac7:	31 ff                	xor    %edi,%edi
        putc(fd, *ap);
 ac9:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 acb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 ad2:	00 
 ad3:	89 34 24             	mov    %esi,(%esp)
        putc(fd, *ap);
 ad6:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 ad9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 adc:	89 44 24 04          	mov    %eax,0x4(%esp)
 ae0:	e8 e5 fc ff ff       	call   7ca <write>
        ap++;
 ae5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 ae9:	e9 5d fe ff ff       	jmp    94b <printf+0x4b>
 aee:	66 90                	xchg   %ax,%ax

00000af0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 af0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 af1:	a1 d4 12 00 00       	mov    0x12d4,%eax
{
 af6:	89 e5                	mov    %esp,%ebp
 af8:	57                   	push   %edi
 af9:	56                   	push   %esi
 afa:	53                   	push   %ebx
 afb:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 afe:	8b 08                	mov    (%eax),%ecx
  bp = (Header*)ap - 1;
 b00:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b03:	39 d0                	cmp    %edx,%eax
 b05:	72 11                	jb     b18 <free+0x28>
 b07:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b08:	39 c8                	cmp    %ecx,%eax
 b0a:	72 04                	jb     b10 <free+0x20>
 b0c:	39 ca                	cmp    %ecx,%edx
 b0e:	72 10                	jb     b20 <free+0x30>
 b10:	89 c8                	mov    %ecx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b12:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b14:	8b 08                	mov    (%eax),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b16:	73 f0                	jae    b08 <free+0x18>
 b18:	39 ca                	cmp    %ecx,%edx
 b1a:	72 04                	jb     b20 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b1c:	39 c8                	cmp    %ecx,%eax
 b1e:	72 f0                	jb     b10 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 b20:	8b 73 fc             	mov    -0x4(%ebx),%esi
 b23:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 b26:	39 cf                	cmp    %ecx,%edi
 b28:	74 1e                	je     b48 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 b2a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 b2d:	8b 48 04             	mov    0x4(%eax),%ecx
 b30:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 b33:	39 f2                	cmp    %esi,%edx
 b35:	74 28                	je     b5f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 b37:	89 10                	mov    %edx,(%eax)
  freep = p;
 b39:	a3 d4 12 00 00       	mov    %eax,0x12d4
}
 b3e:	5b                   	pop    %ebx
 b3f:	5e                   	pop    %esi
 b40:	5f                   	pop    %edi
 b41:	5d                   	pop    %ebp
 b42:	c3                   	ret    
 b43:	90                   	nop
 b44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 b48:	03 71 04             	add    0x4(%ecx),%esi
 b4b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 b4e:	8b 08                	mov    (%eax),%ecx
 b50:	8b 09                	mov    (%ecx),%ecx
 b52:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 b55:	8b 48 04             	mov    0x4(%eax),%ecx
 b58:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 b5b:	39 f2                	cmp    %esi,%edx
 b5d:	75 d8                	jne    b37 <free+0x47>
    p->s.size += bp->s.size;
 b5f:	03 4b fc             	add    -0x4(%ebx),%ecx
  freep = p;
 b62:	a3 d4 12 00 00       	mov    %eax,0x12d4
    p->s.size += bp->s.size;
 b67:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 b6a:	8b 53 f8             	mov    -0x8(%ebx),%edx
 b6d:	89 10                	mov    %edx,(%eax)
}
 b6f:	5b                   	pop    %ebx
 b70:	5e                   	pop    %esi
 b71:	5f                   	pop    %edi
 b72:	5d                   	pop    %ebp
 b73:	c3                   	ret    
 b74:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 b7a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000b80 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 b80:	55                   	push   %ebp
 b81:	89 e5                	mov    %esp,%ebp
 b83:	57                   	push   %edi
 b84:	56                   	push   %esi
 b85:	53                   	push   %ebx
 b86:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b89:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 b8c:	8b 1d d4 12 00 00    	mov    0x12d4,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b92:	8d 48 07             	lea    0x7(%eax),%ecx
 b95:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
 b98:	85 db                	test   %ebx,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b9a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
 b9d:	0f 84 9b 00 00 00    	je     c3e <malloc+0xbe>
 ba3:	8b 13                	mov    (%ebx),%edx
 ba5:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 ba8:	39 fe                	cmp    %edi,%esi
 baa:	76 64                	jbe    c10 <malloc+0x90>
 bac:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
  if(nu < 4096)
 bb3:	bb 00 80 00 00       	mov    $0x8000,%ebx
 bb8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 bbb:	eb 0e                	jmp    bcb <malloc+0x4b>
 bbd:	8d 76 00             	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 bc0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 bc2:	8b 78 04             	mov    0x4(%eax),%edi
 bc5:	39 fe                	cmp    %edi,%esi
 bc7:	76 4f                	jbe    c18 <malloc+0x98>
 bc9:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 bcb:	3b 15 d4 12 00 00    	cmp    0x12d4,%edx
 bd1:	75 ed                	jne    bc0 <malloc+0x40>
  if(nu < 4096)
 bd3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 bd6:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 bdc:	bf 00 10 00 00       	mov    $0x1000,%edi
 be1:	0f 43 fe             	cmovae %esi,%edi
 be4:	0f 42 c3             	cmovb  %ebx,%eax
  p = sbrk(nu * sizeof(Header));
 be7:	89 04 24             	mov    %eax,(%esp)
 bea:	e8 43 fc ff ff       	call   832 <sbrk>
  if(p == (char*)-1)
 bef:	83 f8 ff             	cmp    $0xffffffff,%eax
 bf2:	74 18                	je     c0c <malloc+0x8c>
  hp->s.size = nu;
 bf4:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
 bf7:	83 c0 08             	add    $0x8,%eax
 bfa:	89 04 24             	mov    %eax,(%esp)
 bfd:	e8 ee fe ff ff       	call   af0 <free>
  return freep;
 c02:	8b 15 d4 12 00 00    	mov    0x12d4,%edx
      if((p = morecore(nunits)) == 0)
 c08:	85 d2                	test   %edx,%edx
 c0a:	75 b4                	jne    bc0 <malloc+0x40>
        return 0;
 c0c:	31 c0                	xor    %eax,%eax
 c0e:	eb 20                	jmp    c30 <malloc+0xb0>
    if(p->s.size >= nunits){
 c10:	89 d0                	mov    %edx,%eax
 c12:	89 da                	mov    %ebx,%edx
 c14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 c18:	39 fe                	cmp    %edi,%esi
 c1a:	74 1c                	je     c38 <malloc+0xb8>
        p->s.size -= nunits;
 c1c:	29 f7                	sub    %esi,%edi
 c1e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
 c21:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
 c24:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 c27:	89 15 d4 12 00 00    	mov    %edx,0x12d4
      return (void*)(p + 1);
 c2d:	83 c0 08             	add    $0x8,%eax
  }
}
 c30:	83 c4 1c             	add    $0x1c,%esp
 c33:	5b                   	pop    %ebx
 c34:	5e                   	pop    %esi
 c35:	5f                   	pop    %edi
 c36:	5d                   	pop    %ebp
 c37:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
 c38:	8b 08                	mov    (%eax),%ecx
 c3a:	89 0a                	mov    %ecx,(%edx)
 c3c:	eb e9                	jmp    c27 <malloc+0xa7>
    base.s.ptr = freep = prevp = &base;
 c3e:	c7 05 d4 12 00 00 d8 	movl   $0x12d8,0x12d4
 c45:	12 00 00 
    base.s.size = 0;
 c48:	ba d8 12 00 00       	mov    $0x12d8,%edx
    base.s.ptr = freep = prevp = &base;
 c4d:	c7 05 d8 12 00 00 d8 	movl   $0x12d8,0x12d8
 c54:	12 00 00 
    base.s.size = 0;
 c57:	c7 05 dc 12 00 00 00 	movl   $0x0,0x12dc
 c5e:	00 00 00 
 c61:	e9 46 ff ff ff       	jmp    bac <malloc+0x2c>
