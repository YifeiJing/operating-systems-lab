! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
	.align
! String constants
_StringConst_123:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_122:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_119:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_118:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_116:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_115:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_114:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_113:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_112:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_111:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_110:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_109:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_108:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_107:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_106:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_105:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_104:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_103:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_102:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_101:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_100:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_99:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_98:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_97:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_96:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_95:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_94:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_93:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_92:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_91:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_90:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_89:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_88:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_87:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_86:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_85:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_84:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_83:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_82:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_81:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_80:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_79:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_78:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_77:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_76:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_75:
	.word	10			! length
	.ascii	"Threadpool"
	.align
_StringConst_74:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_73:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_72:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_71:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_70:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_69:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_68:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_67:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_66:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_65:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_64:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_63:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_62:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_61:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_60:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_59:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_58:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_57:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_56:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_55:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_54:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_53:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_52:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_51:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_50:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_49:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_48:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_47:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_45:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_44:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_43:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_42:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_41:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_40:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_39:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_38:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_37:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	41			! length
	.ascii	"DISK INTERRUPTS NOT EXPECTED IN PROJECT 4"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0xce56f9ca,r4		! myHashVal = -833160758
	cmp	r3,r4
	be	_Label_128
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_128:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_129
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_129
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_129
_Label_129:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_1558:
	push	r0
	sub	r1,1,r1
	bne	_Label_1558
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_130 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_130  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_1559:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1559
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_134 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_135 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_134  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_136 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_137 = _temp_136 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_137 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_1560:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1560
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_139 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_140 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_139  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_141 = _function_127_IdleFunction
	set	_function_127_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_142 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_141  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_143
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_144
	.word	-12
	.word	4
	.word	_Label_145
	.word	-16
	.word	4
	.word	_Label_146
	.word	-20
	.word	4
	.word	_Label_147
	.word	-24
	.word	4
	.word	_Label_148
	.word	-28
	.word	4
	.word	_Label_149
	.word	-32
	.word	4
	.word	_Label_150
	.word	-36
	.word	4
	.word	_Label_151
	.word	-40
	.word	4
	.word	_Label_152
	.word	-44
	.word	4
	.word	_Label_153
	.word	-48
	.word	4
	.word	_Label_154
	.word	-52
	.word	4
	.word	_Label_155
	.word	-56
	.word	4
	.word	_Label_156
	.word	-60
	.word	4
	.word	0
_Label_143:
	.ascii	"InitializeScheduler\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_127_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_127_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_1561:
	push	r0
	sub	r1,1,r1
	bne	_Label_1561
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_157:
!	jmp	_Label_158
_Label_158:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_162 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_160 else goto _Label_161
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_161
	jmp	_Label_160
_Label_160:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_163
_Label_161:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_163:
! END WHILE...
	jmp	_Label_157
_Label_159:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_127_IdleFunction:
	.word	_sourceFileName
	.word	_Label_164
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_165
	.word	8
	.word	4
	.word	_Label_166
	.word	-12
	.word	4
	.word	_Label_167
	.word	-16
	.word	4
	.word	0
_Label_164:
	.ascii	"IdleFunction\0"
	.align
_Label_165:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_167:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_1562:
	push	r0
	sub	r1,1,r1
	bne	_Label_1562
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_170 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_170 ) then goto _Label_169		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_169
!	jmp	_Label_168
_Label_168:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_172 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_172 [0 ] into _temp_173
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_171 = _temp_173		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_171  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_169:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_174 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_174 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_175:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_179 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_178  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_178 then goto _Label_177 else goto _Label_176
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_176
	jmp	_Label_177
_Label_176:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_180 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_181 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_175
_Label_177:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_184 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_184 ) then goto _Label_183		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_183
!	jmp	_Label_182
_Label_182:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_186 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_186 [0 ] into _temp_187
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_185 = _temp_187		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_185  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_189 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_188 = *_temp_189  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_188) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_190 = _temp_188 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_183:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_191
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_192
	.word	8
	.word	4
	.word	_Label_193
	.word	-16
	.word	4
	.word	_Label_194
	.word	-20
	.word	4
	.word	_Label_195
	.word	-24
	.word	4
	.word	_Label_196
	.word	-28
	.word	4
	.word	_Label_197
	.word	-32
	.word	4
	.word	_Label_198
	.word	-36
	.word	4
	.word	_Label_199
	.word	-40
	.word	4
	.word	_Label_200
	.word	-44
	.word	4
	.word	_Label_201
	.word	-48
	.word	4
	.word	_Label_202
	.word	-52
	.word	4
	.word	_Label_203
	.word	-9
	.word	1
	.word	_Label_204
	.word	-56
	.word	4
	.word	_Label_205
	.word	-60
	.word	4
	.word	_Label_206
	.word	-64
	.word	4
	.word	_Label_207
	.word	-68
	.word	4
	.word	_Label_208
	.word	-72
	.word	4
	.word	_Label_209
	.word	-76
	.word	4
	.word	_Label_210
	.word	-80
	.word	4
	.word	0
_Label_191:
	.ascii	"Run\0"
	.align
_Label_192:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_203:
	.byte	'C'
	.ascii	"_temp_178\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_209:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_210:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_1563:
	push	r0
	sub	r1,1,r1
	bne	_Label_1563
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_211 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_211  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_212 = _function_126_ThreadPrintShort
	set	_function_126_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_213 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_212  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_214
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_215
	.word	-12
	.word	4
	.word	_Label_216
	.word	-16
	.word	4
	.word	_Label_217
	.word	-20
	.word	4
	.word	_Label_218
	.word	-24
	.word	4
	.word	0
_Label_214:
	.ascii	"PrintReadyList\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_218:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_1564:
	push	r0
	sub	r1,1,r1
	bne	_Label_1564
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_219 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_219  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_221 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_220 = *_temp_221  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_220  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_222 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_222  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_223
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_224
	.word	-12
	.word	4
	.word	_Label_225
	.word	-16
	.word	4
	.word	_Label_226
	.word	-20
	.word	4
	.word	_Label_227
	.word	-24
	.word	4
	.word	_Label_228
	.word	-28
	.word	4
	.word	_Label_229
	.word	-32
	.word	4
	.word	0
_Label_223:
	.ascii	"ThreadStartMain\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_228:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_229:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_1565:
	push	r0
	sub	r1,1,r1
	bne	_Label_1565
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_230 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_231 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_231  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_232
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_233
	.word	-12
	.word	4
	.word	_Label_234
	.word	-16
	.word	4
	.word	_Label_235
	.word	-20
	.word	4
	.word	0
_Label_232:
	.ascii	"ThreadFinish\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_235:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_1566:
	push	r0
	sub	r1,1,r1
	bne	_Label_1566
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_236 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_236  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_238		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_238
!	jmp	_Label_237
_Label_237:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_239 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_241 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_240 = *_temp_241  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_240  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_238:
! CALL STATEMENT...
!   _temp_242 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_242  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_243 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_243  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_244 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_244  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_245
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_246
	.word	8
	.word	4
	.word	_Label_247
	.word	-12
	.word	4
	.word	_Label_248
	.word	-16
	.word	4
	.word	_Label_249
	.word	-20
	.word	4
	.word	_Label_250
	.word	-24
	.word	4
	.word	_Label_251
	.word	-28
	.word	4
	.word	_Label_252
	.word	-32
	.word	4
	.word	_Label_253
	.word	-36
	.word	4
	.word	_Label_254
	.word	-40
	.word	4
	.word	0
_Label_245:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_246:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_254:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_1567:
	push	r0
	sub	r1,1,r1
	bne	_Label_1567
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_256		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_256
!	jmp	_Label_255
_Label_255:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_257
_Label_256:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_257:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_258
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_259
	.word	8
	.word	4
	.word	_Label_260
	.word	-12
	.word	4
	.word	0
_Label_258:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_259:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_260:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_126_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_126_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_1568:
	push	r0
	sub	r1,1,r1
	bne	_Label_1568
	mov	640,r13		! source line 640
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	648,r13		! source line 648
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_264		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_264
!   _temp_263 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_265
_Label_264:
!   _temp_263 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_265:
!   if _temp_263 then goto _Label_262 else goto _Label_261
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_261
	jmp	_Label_262
_Label_261:
! THEN...
	mov	649,r13		! source line 649
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_266 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_266  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	650,r13		! source line 650
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_262:
! CALL STATEMENT...
!   _temp_267 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_269 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_268 = *_temp_269  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_268  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_270 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_270  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	655,r13		! source line 655
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_279 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_278 = *_temp_279  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_273
	cmp	r1,2
	be	_Label_274
	cmp	r1,3
	be	_Label_275
	cmp	r1,4
	be	_Label_276
	cmp	r1,5
	be	_Label_277
	jmp	_Label_271
! CASE 1...
_Label_273:
! CALL STATEMENT...
!   _temp_280 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 2...
_Label_274:
! CALL STATEMENT...
!   _temp_281 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_281  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	661,r13		! source line 661
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 3...
_Label_275:
! CALL STATEMENT...
!   _temp_282 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 4...
_Label_276:
! CALL STATEMENT...
!   _temp_283 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_283  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 5...
_Label_277:
! CALL STATEMENT...
!   _temp_284 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_284  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	670,r13		! source line 670
	mov	"\0\0BR",r10
	jmp	_Label_272
! DEFAULT CASE...
_Label_271:
! CALL STATEMENT...
!   _temp_285 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_285  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	672,r13		! source line 672
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_272:
! CALL STATEMENT...
!   _temp_286 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_287 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_288 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	679,r13		! source line 679
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	679,r13		! source line 679
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_126_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_289
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_290
	.word	8
	.word	4
	.word	_Label_291
	.word	-16
	.word	4
	.word	_Label_292
	.word	-20
	.word	4
	.word	_Label_293
	.word	-24
	.word	4
	.word	_Label_294
	.word	-28
	.word	4
	.word	_Label_295
	.word	-32
	.word	4
	.word	_Label_296
	.word	-36
	.word	4
	.word	_Label_297
	.word	-40
	.word	4
	.word	_Label_298
	.word	-44
	.word	4
	.word	_Label_299
	.word	-48
	.word	4
	.word	_Label_300
	.word	-52
	.word	4
	.word	_Label_301
	.word	-56
	.word	4
	.word	_Label_302
	.word	-60
	.word	4
	.word	_Label_303
	.word	-64
	.word	4
	.word	_Label_304
	.word	-68
	.word	4
	.word	_Label_305
	.word	-72
	.word	4
	.word	_Label_306
	.word	-76
	.word	4
	.word	_Label_307
	.word	-9
	.word	1
	.word	_Label_308
	.word	-80
	.word	4
	.word	0
_Label_289:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_290:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_307:
	.byte	'C'
	.ascii	"_temp_263\0"
	.align
_Label_308:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_125_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_125_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_1569:
	push	r0
	sub	r1,1,r1
	bne	_Label_1569
	mov	922,r13		! source line 922
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_309 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_125_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_310
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_311
	.word	8
	.word	4
	.word	_Label_312
	.word	-12
	.word	4
	.word	0
_Label_310:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_311:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_1570:
	push	r0
	sub	r1,1,r1
	bne	_Label_1570
	mov	932,r13		! source line 932
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_313 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	938,r13		! source line 938
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_314
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_315
	.word	8
	.word	4
	.word	_Label_316
	.word	-12
	.word	4
	.word	0
_Label_314:
	.ascii	"ProcessFinish\0"
	.align
_Label_315:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_1571:
	push	r0
	sub	r1,1,r1
	bne	_Label_1571
	mov	1391,r13		! source line 1391
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1403,r13		! source line 1403
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_317
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_317:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	2,r1
_Label_1572:
	push	r0
	sub	r1,1,r1
	bne	_Label_1572
	mov	1409,r13		! source line 1409
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_318 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_318  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1419,r13		! source line 1419
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_319
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_320
	.word	-12
	.word	4
	.word	0
_Label_319:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1431,r13		! source line 1431
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_321
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_321:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1573:
	push	r0
	sub	r1,1,r1
	bne	_Label_1573
	mov	1445,r13		! source line 1445
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_322 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1452,r13		! source line 1452
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_323
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_324
	.word	-12
	.word	4
	.word	0
_Label_323:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1574:
	push	r0
	sub	r1,1,r1
	bne	_Label_1574
	mov	1457,r13		! source line 1457
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1463,r13		! source line 1463
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_325 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1464,r13		! source line 1464
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_326
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_327
	.word	-12
	.word	4
	.word	0
_Label_326:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1575:
	push	r0
	sub	r1,1,r1
	bne	_Label_1575
	mov	1469,r13		! source line 1469
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_328 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1476,r13		! source line 1476
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_329
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_330
	.word	-12
	.word	4
	.word	0
_Label_329:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1576:
	push	r0
	sub	r1,1,r1
	bne	_Label_1576
	mov	1481,r13		! source line 1481
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_331 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1488,r13		! source line 1488
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_332
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_333
	.word	-12
	.word	4
	.word	0
_Label_332:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1577:
	push	r0
	sub	r1,1,r1
	bne	_Label_1577
	mov	1493,r13		! source line 1493
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_334 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1500,r13		! source line 1500
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_335
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_336
	.word	-12
	.word	4
	.word	0
_Label_335:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1578:
	push	r0
	sub	r1,1,r1
	bne	_Label_1578
	mov	1505,r13		! source line 1505
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1511,r13		! source line 1511
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_337 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1512,r13		! source line 1512
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_338
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_339
	.word	-12
	.word	4
	.word	0
_Label_338:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1579:
	push	r0
	sub	r1,1,r1
	bne	_Label_1579
	mov	1517,r13		! source line 1517
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_340 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1524,r13		! source line 1524
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1524,r13		! source line 1524
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_341
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_342
	.word	-12
	.word	4
	.word	0
_Label_341:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_124_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_124_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_1580:
	push	r0
	sub	r1,1,r1
	bne	_Label_1580
	mov	1529,r13		! source line 1529
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_343 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1534,r13		! source line 1534
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1535,r13		! source line 1535
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_344 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1536,r13		! source line 1536
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_348 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_347 = *_temp_348  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_347 == 0 then goto _Label_346		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_346
!	jmp	_Label_345
_Label_345:
! THEN...
	mov	1540,r13		! source line 1540
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_350 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_349 = *_temp_350  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_349) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_351
_Label_346:
! ELSE...
	mov	1542,r13		! source line 1542
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_352 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1542,r13		! source line 1542
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_351:
! SEND STATEMENT...
	mov	1544,r13		! source line 1544
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1550,r13		! source line 1550
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1550,r13		! source line 1550
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_124_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_353
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_354
	.word	8
	.word	4
	.word	_Label_355
	.word	-12
	.word	4
	.word	_Label_356
	.word	-16
	.word	4
	.word	_Label_357
	.word	-20
	.word	4
	.word	_Label_358
	.word	-24
	.word	4
	.word	_Label_359
	.word	-28
	.word	4
	.word	_Label_360
	.word	-32
	.word	4
	.word	_Label_361
	.word	-36
	.word	4
	.word	0
_Label_353:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_354:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_1581:
	push	r0
	sub	r1,1,r1
	bne	_Label_1581
	mov	1555,r13		! source line 1555
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1562,r13		! source line 1562
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1576,r13		! source line 1576
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1582
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_362
_Label_1582:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_362
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_362
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_376,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_376:
	jmp	_Label_368	! 1:	
	jmp	_Label_375	! 2:	
	jmp	_Label_365	! 3:	
	jmp	_Label_364	! 4:	
	jmp	_Label_367	! 5:	
	jmp	_Label_366	! 6:	
	jmp	_Label_369	! 7:	
	jmp	_Label_370	! 8:	
	jmp	_Label_371	! 9:	
	jmp	_Label_372	! 10:	
	jmp	_Label_373	! 11:	
	jmp	_Label_374	! 12:	
! CASE 4...
_Label_364:
! RETURN STATEMENT...
	mov	1578,r13		! source line 1578
	mov	"\0\0RE",r10
!   Call the function
	mov	1578,r13		! source line 1578
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_377  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_377  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_365:
! CALL STATEMENT...
!   Call the function
	mov	1580,r13		! source line 1580
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1581,r13		! source line 1581
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_366:
! RETURN STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1583,r13		! source line 1583
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_378  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_378  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_367:
! RETURN STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1585,r13		! source line 1585
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_379  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_379  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_368:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1587,r13		! source line 1587
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_369:
! RETURN STATEMENT...
	mov	1590,r13		! source line 1590
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1590,r13		! source line 1590
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_380  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_380  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_370:
! RETURN STATEMENT...
	mov	1592,r13		! source line 1592
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1592,r13		! source line 1592
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_381  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_381  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_371:
! RETURN STATEMENT...
	mov	1594,r13		! source line 1594
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1594,r13		! source line 1594
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_382  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_382  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_372:
! RETURN STATEMENT...
	mov	1596,r13		! source line 1596
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1596,r13		! source line 1596
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_383  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_383  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_373:
! RETURN STATEMENT...
	mov	1598,r13		! source line 1598
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1598,r13		! source line 1598
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_384  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_384  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_374:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1600,r13		! source line 1600
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_375:
! CALL STATEMENT...
!   Call the function
	mov	1603,r13		! source line 1603
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1604,r13		! source line 1604
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_362:
! CALL STATEMENT...
!   _temp_385 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1606,r13		! source line 1606
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1607,r13		! source line 1607
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1608,r13		! source line 1608
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_386 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1609,r13		! source line 1609
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_363:
! RETURN STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_387
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_388
	.word	8
	.word	4
	.word	_Label_389
	.word	12
	.word	4
	.word	_Label_390
	.word	16
	.word	4
	.word	_Label_391
	.word	20
	.word	4
	.word	_Label_392
	.word	24
	.word	4
	.word	_Label_393
	.word	-12
	.word	4
	.word	_Label_394
	.word	-16
	.word	4
	.word	_Label_395
	.word	-20
	.word	4
	.word	_Label_396
	.word	-24
	.word	4
	.word	_Label_397
	.word	-28
	.word	4
	.word	_Label_398
	.word	-32
	.word	4
	.word	_Label_399
	.word	-36
	.word	4
	.word	_Label_400
	.word	-40
	.word	4
	.word	_Label_401
	.word	-44
	.word	4
	.word	_Label_402
	.word	-48
	.word	4
	.word	0
_Label_387:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_388:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_389:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_390:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_391:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_392:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1616,r13		! source line 1616
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1616,r13		! source line 1616
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_403
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_404
	.word	8
	.word	4
	.word	0
_Label_403:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_404:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	1622,r13		! source line 1622
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1622,r13		! source line 1622
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_405
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_405:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1628,r13		! source line 1628
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1628,r13		! source line 1628
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_406
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_406:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	1634,r13		! source line 1634
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1636,r13		! source line 1636
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_407
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_407:
	.ascii	"Handle_Sys_Fork\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	1641,r13		! source line 1641
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1643,r13		! source line 1643
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_408
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_409
	.word	8
	.word	4
	.word	0
_Label_408:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_409:
	.byte	'I'
	.ascii	"processID\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	1648,r13		! source line 1648
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1650,r13		! source line 1650
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_410
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_411
	.word	8
	.word	4
	.word	0
_Label_410:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_411:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	1655,r13		! source line 1655
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_412
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_413
	.word	8
	.word	4
	.word	0
_Label_412:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_413:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	1662,r13		! source line 1662
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1664,r13		! source line 1664
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_414
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_415
	.word	8
	.word	4
	.word	0
_Label_414:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_415:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	1669,r13		! source line 1669
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_416
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_417
	.word	8
	.word	4
	.word	_Label_418
	.word	12
	.word	4
	.word	_Label_419
	.word	16
	.word	4
	.word	0
_Label_416:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_417:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_418:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_419:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	1676,r13		! source line 1676
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1678,r13		! source line 1678
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_420
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_421
	.word	8
	.word	4
	.word	_Label_422
	.word	12
	.word	4
	.word	_Label_423
	.word	16
	.word	4
	.word	0
_Label_420:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_421:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_422:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_423:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	1683,r13		! source line 1683
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1685,r13		! source line 1685
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_424
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_425
	.word	8
	.word	4
	.word	_Label_426
	.word	12
	.word	4
	.word	0
_Label_424:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_425:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_426:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	1690,r13		! source line 1690
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_427
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_428
	.word	8
	.word	4
	.word	0
_Label_427:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_428:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_429
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_429:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_430
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_430:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_1583:
	push	r0
	sub	r1,1,r1
	bne	_Label_1583
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_432		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_432
!	jmp	_Label_431
_Label_431:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_433 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_433  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_432:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_435
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_436
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_437
	.word	12
	.word	4
	.word	_Label_438
	.word	-12
	.word	4
	.word	_Label_439
	.word	-16
	.word	4
	.word	0
_Label_435:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_436:
	.ascii	"Pself\0"
	.align
_Label_437:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_1584:
	push	r0
	sub	r1,1,r1
	bne	_Label_1584
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_441		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_441
!	jmp	_Label_440
_Label_440:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_442 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_442  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_441:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_444		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_444
!	jmp	_Label_443
_Label_443:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_445 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_446 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_446 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_447 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_444:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_448
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_449
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_450
	.word	-12
	.word	4
	.word	_Label_451
	.word	-16
	.word	4
	.word	_Label_452
	.word	-20
	.word	4
	.word	_Label_453
	.word	-24
	.word	4
	.word	_Label_454
	.word	-28
	.word	4
	.word	_Label_455
	.word	-32
	.word	4
	.word	0
_Label_448:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_449:
	.ascii	"Pself\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_454:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_455:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_1585:
	push	r0
	sub	r1,1,r1
	bne	_Label_1585
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_457		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_457
!	jmp	_Label_456
_Label_456:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_458 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_458  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_457:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_460		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_460
!	jmp	_Label_459
_Label_459:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_461 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_460:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_462
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_463
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_464
	.word	-12
	.word	4
	.word	_Label_465
	.word	-16
	.word	4
	.word	_Label_466
	.word	-20
	.word	4
	.word	0
_Label_462:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_463:
	.ascii	"Pself\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_466:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_467
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_467:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_468
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_468:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_1586:
	push	r0
	sub	r1,1,r1
	bne	_Label_1586
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_470
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_471
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_472
	.word	-12
	.word	4
	.word	0
_Label_470:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_471:
	.ascii	"Pself\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_1587:
	push	r0
	sub	r1,1,r1
	bne	_Label_1587
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_474		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_474
!	jmp	_Label_473
_Label_473:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_475 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_475  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_474:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_479		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_479
!   _temp_478 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_480
_Label_479:
!   _temp_478 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_480:
!   if _temp_478 then goto _Label_477 else goto _Label_476
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_476
	jmp	_Label_477
_Label_476:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_481
_Label_477:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_482 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_481:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_483
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_484
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_485
	.word	-16
	.word	4
	.word	_Label_486
	.word	-9
	.word	1
	.word	_Label_487
	.word	-20
	.word	4
	.word	_Label_488
	.word	-24
	.word	4
	.word	0
_Label_483:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_484:
	.ascii	"Pself\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_486:
	.byte	'C'
	.ascii	"_temp_478\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_488:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_1588:
	push	r0
	sub	r1,1,r1
	bne	_Label_1588
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_490		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_490
!	jmp	_Label_489
_Label_489:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_491 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_491  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_490:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_492 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_494		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_494
!	jmp	_Label_493
_Label_493:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_495 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_495 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_496 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_497
_Label_494:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_497:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_498
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_499
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_500
	.word	-12
	.word	4
	.word	_Label_501
	.word	-16
	.word	4
	.word	_Label_502
	.word	-20
	.word	4
	.word	_Label_503
	.word	-24
	.word	4
	.word	_Label_504
	.word	-28
	.word	4
	.word	_Label_505
	.word	-32
	.word	4
	.word	0
_Label_498:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_499:
	.ascii	"Pself\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_504:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_505:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_1589:
	push	r0
	sub	r1,1,r1
	bne	_Label_1589
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_508		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_508
!	jmp	_Label_507
_Label_507:
!   _temp_506 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_509
_Label_508:
!   _temp_506 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_509:
!   ReturnResult: _temp_506  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_510
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_511
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_512
	.word	-9
	.word	1
	.word	0
_Label_510:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_511:
	.ascii	"Pself\0"
	.align
_Label_512:
	.byte	'C'
	.ascii	"_temp_506\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_513
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_513:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_514
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_514:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_1590:
	push	r0
	sub	r1,1,r1
	bne	_Label_1590
	mov	380,r13		! source line 380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_516
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_517
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_518
	.word	-12
	.word	4
	.word	0
_Label_516:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_517:
	.ascii	"Pself\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_1591:
	push	r0
	sub	r1,1,r1
	bne	_Label_1591
	mov	386,r13		! source line 386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0IF",r10
	mov	389,r13		! source line 389
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_521  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_521 then goto _Label_520 else goto _Label_519
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_519
	jmp	_Label_520
_Label_519:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_522 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_522  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	390,r13		! source line 390
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_520:
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   _temp_523 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_524
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_525
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_526
	.word	12
	.word	4
	.word	_Label_527
	.word	-16
	.word	4
	.word	_Label_528
	.word	-20
	.word	4
	.word	_Label_529
	.word	-9
	.word	1
	.word	_Label_530
	.word	-24
	.word	4
	.word	0
_Label_524:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_525:
	.ascii	"Pself\0"
	.align
_Label_526:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_529:
	.byte	'C'
	.ascii	"_temp_521\0"
	.align
_Label_530:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_1592:
	push	r0
	sub	r1,1,r1
	bne	_Label_1592
	mov	402,r13		! source line 402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0IF",r10
	mov	406,r13		! source line 406
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_533  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_533 then goto _Label_532 else goto _Label_531
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_531
	jmp	_Label_532
_Label_531:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_534 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_534  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	407,r13		! source line 407
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_532:
! ASSIGNMENT STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	409,r13		! source line 409
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
	mov	410,r13		! source line 410
	mov	"\0\0SE",r10
!   _temp_535 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_537		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_537
!	jmp	_Label_536
_Label_536:
! THEN...
	mov	412,r13		! source line 412
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_538 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_538 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_539 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_537:
! ASSIGNMENT STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	415,r13		! source line 415
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_540
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_541
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_542
	.word	12
	.word	4
	.word	_Label_543
	.word	-16
	.word	4
	.word	_Label_544
	.word	-20
	.word	4
	.word	_Label_545
	.word	-24
	.word	4
	.word	_Label_546
	.word	-28
	.word	4
	.word	_Label_547
	.word	-9
	.word	1
	.word	_Label_548
	.word	-32
	.word	4
	.word	_Label_549
	.word	-36
	.word	4
	.word	0
_Label_540:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_541:
	.ascii	"Pself\0"
	.align
_Label_542:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_547:
	.byte	'C'
	.ascii	"_temp_533\0"
	.align
_Label_548:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_549:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_1593:
	push	r0
	sub	r1,1,r1
	bne	_Label_1593
	mov	420,r13		! source line 420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0IF",r10
	mov	424,r13		! source line 424
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_552  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_552 then goto _Label_551 else goto _Label_550
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_550
	jmp	_Label_551
_Label_550:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_553 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_553  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	425,r13		! source line 425
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_551:
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0WH",r10
_Label_554:
!	jmp	_Label_555
_Label_555:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_557 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_558
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_558
	jmp	_Label_559
_Label_558:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_556
! END IF...
_Label_559:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_560 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_560 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_561 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_554
_Label_556:
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_562
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_563
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_564
	.word	12
	.word	4
	.word	_Label_565
	.word	-16
	.word	4
	.word	_Label_566
	.word	-20
	.word	4
	.word	_Label_567
	.word	-24
	.word	4
	.word	_Label_568
	.word	-28
	.word	4
	.word	_Label_569
	.word	-9
	.word	1
	.word	_Label_570
	.word	-32
	.word	4
	.word	_Label_571
	.word	-36
	.word	4
	.word	0
_Label_562:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_563:
	.ascii	"Pself\0"
	.align
_Label_564:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_569:
	.byte	'C'
	.ascii	"_temp_552\0"
	.align
_Label_570:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_571:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_572
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_572:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_573
	.word	_sourceFileName
	.word	164		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_573:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_1594:
	push	r0
	sub	r1,1,r1
	bne	_Label_1594
	mov	447,r13		! source line 447
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
!   _temp_574 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_574) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_574 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   _temp_575 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_575 [0 ] into _temp_576
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_576 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_577 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_577 [999 ] into _temp_578
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_578 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_579 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_579 [999 ] into _temp_580
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_580		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_581 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_583 = &_temp_582
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_583 = _temp_583 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_585:
!   Data Move: *_temp_583 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_583 = _temp_583 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_584 = _temp_584 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_584) then goto _Label_585
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_585
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_586 = &_temp_582
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1595
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1595:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_581 = *_temp_586  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1596:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1596
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_587 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_589 = &_temp_588
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_589 = _temp_589 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_591:
!   Data Move: *_temp_589 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_589 = _temp_589 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_590 = _temp_590 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_590) then goto _Label_591
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_591
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_592 = &_temp_588
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1597
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1597:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_587 = *_temp_592  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1598:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1598
! RETURN STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_593
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_594
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_595
	.word	12
	.word	4
	.word	_Label_596
	.word	-12
	.word	4
	.word	_Label_597
	.word	-16
	.word	4
	.word	_Label_598
	.word	-20
	.word	4
	.word	_Label_599
	.word	-84
	.word	64
	.word	_Label_600
	.word	-88
	.word	4
	.word	_Label_601
	.word	-92
	.word	4
	.word	_Label_602
	.word	-96
	.word	4
	.word	_Label_603
	.word	-100
	.word	4
	.word	_Label_604
	.word	-156
	.word	56
	.word	_Label_605
	.word	-160
	.word	4
	.word	_Label_606
	.word	-164
	.word	4
	.word	_Label_607
	.word	-168
	.word	4
	.word	_Label_608
	.word	-172
	.word	4
	.word	_Label_609
	.word	-176
	.word	4
	.word	_Label_610
	.word	-180
	.word	4
	.word	_Label_611
	.word	-184
	.word	4
	.word	_Label_612
	.word	-188
	.word	4
	.word	0
_Label_593:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_594:
	.ascii	"Pself\0"
	.align
_Label_595:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_1599:
	push	r0
	sub	r1,1,r1
	bne	_Label_1599
	mov	466,r13		! source line 466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_613 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_613  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_615 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_614  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	485,r13		! source line 485
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_616
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_617
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_618
	.word	12
	.word	4
	.word	_Label_619
	.word	16
	.word	4
	.word	_Label_620
	.word	-12
	.word	4
	.word	_Label_621
	.word	-16
	.word	4
	.word	_Label_622
	.word	-20
	.word	4
	.word	_Label_623
	.word	-24
	.word	4
	.word	_Label_624
	.word	-28
	.word	4
	.word	0
_Label_616:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_617:
	.ascii	"Pself\0"
	.align
_Label_618:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_619:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_623:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_624:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_1600:
	push	r0
	sub	r1,1,r1
	bne	_Label_1600
	mov	490,r13		! source line 490
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_627 == _P_Kernel_currentThread then goto _Label_626		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_626
!	jmp	_Label_625
_Label_625:
! THEN...
	mov	507,r13		! source line 507
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_628 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_628  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	507,r13		! source line 507
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_626:
! ASSIGNMENT STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	509,r13		! source line 509
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0AS",r10
	mov	513,r13		! source line 513
	mov	"\0\0SE",r10
!   _temp_629 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_631		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_631
!	jmp	_Label_630
_Label_630:
! THEN...
	mov	518,r13		! source line 518
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_633		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_633
!	jmp	_Label_632
_Label_632:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_634 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_634  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	519,r13		! source line 519
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_633:
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_636 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_635  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	523,r13		! source line 523
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_631:
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_637
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_638
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_639
	.word	-12
	.word	4
	.word	_Label_640
	.word	-16
	.word	4
	.word	_Label_641
	.word	-20
	.word	4
	.word	_Label_642
	.word	-24
	.word	4
	.word	_Label_643
	.word	-28
	.word	4
	.word	_Label_644
	.word	-32
	.word	4
	.word	_Label_645
	.word	-36
	.word	4
	.word	_Label_646
	.word	-40
	.word	4
	.word	_Label_647
	.word	-44
	.word	4
	.word	0
_Label_637:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_638:
	.ascii	"Pself\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_645:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_646:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_647:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_1601:
	push	r0
	sub	r1,1,r1
	bne	_Label_1601
	mov	530,r13		! source line 530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_649		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_649
!	jmp	_Label_648
_Label_648:
! THEN...
	mov	543,r13		! source line 543
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_650 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_650  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	543,r13		! source line 543
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_649:
! IF STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_653 == _P_Kernel_currentThread then goto _Label_652		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_652
!	jmp	_Label_651
_Label_651:
! THEN...
	mov	547,r13		! source line 547
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_654 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_654  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	547,r13		! source line 547
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_652:
! ASSIGNMENT STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
	mov	553,r13		! source line 553
	mov	"\0\0SE",r10
!   _temp_655 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_656
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_656
	jmp	_Label_657
_Label_656:
! THEN...
	mov	555,r13		! source line 555
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_658 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_658  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	555,r13		! source line 555
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_657:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	557,r13		! source line 557
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_659
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_660
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_661
	.word	-12
	.word	4
	.word	_Label_662
	.word	-16
	.word	4
	.word	_Label_663
	.word	-20
	.word	4
	.word	_Label_664
	.word	-24
	.word	4
	.word	_Label_665
	.word	-28
	.word	4
	.word	_Label_666
	.word	-32
	.word	4
	.word	0
_Label_659:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_660:
	.ascii	"Pself\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_666:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_1602:
	push	r0
	sub	r1,1,r1
	bne	_Label_1602
	mov	562,r13		! source line 562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0IF",r10
!   _temp_670 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_670 [0 ] into _temp_671
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_669 = *_temp_671  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_669 == 606348324 then goto _Label_668		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_668
!	jmp	_Label_667
_Label_667:
! THEN...
	mov	569,r13		! source line 569
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_672 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_672  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	569,r13		! source line 569
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_673
_Label_668:
! ELSE...
	mov	570,r13		! source line 570
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_677 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_677 [999 ] into _temp_678
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_676 = *_temp_678  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_676 == 606348324 then goto _Label_675		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_675
!	jmp	_Label_674
_Label_674:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_679 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_679  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	571,r13		! source line 571
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_675:
! END IF...
_Label_673:
! RETURN STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_680
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_681
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_682
	.word	-12
	.word	4
	.word	_Label_683
	.word	-16
	.word	4
	.word	_Label_684
	.word	-20
	.word	4
	.word	_Label_685
	.word	-24
	.word	4
	.word	_Label_686
	.word	-28
	.word	4
	.word	_Label_687
	.word	-32
	.word	4
	.word	_Label_688
	.word	-36
	.word	4
	.word	_Label_689
	.word	-40
	.word	4
	.word	0
_Label_680:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_681:
	.ascii	"Pself\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_1603:
	push	r0
	sub	r1,1,r1
	bne	_Label_1603
	mov	577,r13		! source line 577
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	583,r13		! source line 583
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	583,r13		! source line 583
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_690 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_690  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	585,r13		! source line 585
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_691 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_691  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_692  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_693 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_693  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_694 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_694  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_699 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_700 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_699  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_695:
!   Perform the FOR-LOOP termination test
!   if i > _temp_700 then goto _Label_698		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_698
_Label_696:
	mov	590,r13		! source line 590
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_701 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_701  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_702 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_703 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_705 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_705 [i ] into _temp_706
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_704 = *_temp_706  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_704  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_707 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_707  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_709 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_709 [i ] into _temp_710
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_708 = *_temp_710  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_708  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_711 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_711  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_697:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_695
! END FOR
_Label_698:
! CALL STATEMENT...
!   _temp_712 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-116]
!   _temp_713 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_713  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_714 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-108]
!   _temp_716 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_716 [0 ] into _temp_717
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_715 = _temp_717		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_714  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_715  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	601,r13		! source line 601
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_720
	cmp	r1,2
	be	_Label_721
	cmp	r1,3
	be	_Label_722
	cmp	r1,4
	be	_Label_723
	cmp	r1,5
	be	_Label_724
	jmp	_Label_718
! CASE 1...
_Label_720:
! CALL STATEMENT...
!   _temp_725 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_725  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	603,r13		! source line 603
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	604,r13		! source line 604
	mov	"\0\0BR",r10
	jmp	_Label_719
! CASE 2...
_Label_721:
! CALL STATEMENT...
!   _temp_726 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_726  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0BR",r10
	jmp	_Label_719
! CASE 3...
_Label_722:
! CALL STATEMENT...
!   _temp_727 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0BR",r10
	jmp	_Label_719
! CASE 4...
_Label_723:
! CALL STATEMENT...
!   _temp_728 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0BR",r10
	jmp	_Label_719
! CASE 5...
_Label_724:
! CALL STATEMENT...
!   _temp_729 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_729  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0BR",r10
	jmp	_Label_719
! DEFAULT CASE...
_Label_718:
! CALL STATEMENT...
!   _temp_730 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_730  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	618,r13		! source line 618
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_719:
! CALL STATEMENT...
!   _temp_731 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_731  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	620,r13		! source line 620
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_732 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_732  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	624,r13		! source line 624
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_737 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_738 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_737  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_733:
!   Perform the FOR-LOOP termination test
!   if i > _temp_738 then goto _Label_736		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_736
_Label_734:
	mov	624,r13		! source line 624
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_739 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_740 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_741 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_743 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_743 [i ] into _temp_744
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_742 = *_temp_744  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_745 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_745  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_747 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_747 [i ] into _temp_748
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_746 = *_temp_748  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_746  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_749 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_735:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_733
! END FOR
_Label_736:
! ASSIGNMENT STATEMENT...
	mov	633,r13		! source line 633
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	633,r13		! source line 633
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_750
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_751
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_752
	.word	-12
	.word	4
	.word	_Label_753
	.word	-16
	.word	4
	.word	_Label_754
	.word	-20
	.word	4
	.word	_Label_755
	.word	-24
	.word	4
	.word	_Label_756
	.word	-28
	.word	4
	.word	_Label_757
	.word	-32
	.word	4
	.word	_Label_758
	.word	-36
	.word	4
	.word	_Label_759
	.word	-40
	.word	4
	.word	_Label_760
	.word	-44
	.word	4
	.word	_Label_761
	.word	-48
	.word	4
	.word	_Label_762
	.word	-52
	.word	4
	.word	_Label_763
	.word	-56
	.word	4
	.word	_Label_764
	.word	-60
	.word	4
	.word	_Label_765
	.word	-64
	.word	4
	.word	_Label_766
	.word	-68
	.word	4
	.word	_Label_767
	.word	-72
	.word	4
	.word	_Label_768
	.word	-76
	.word	4
	.word	_Label_769
	.word	-80
	.word	4
	.word	_Label_770
	.word	-84
	.word	4
	.word	_Label_771
	.word	-88
	.word	4
	.word	_Label_772
	.word	-92
	.word	4
	.word	_Label_773
	.word	-96
	.word	4
	.word	_Label_774
	.word	-100
	.word	4
	.word	_Label_775
	.word	-104
	.word	4
	.word	_Label_776
	.word	-108
	.word	4
	.word	_Label_777
	.word	-112
	.word	4
	.word	_Label_778
	.word	-116
	.word	4
	.word	_Label_779
	.word	-120
	.word	4
	.word	_Label_780
	.word	-124
	.word	4
	.word	_Label_781
	.word	-128
	.word	4
	.word	_Label_782
	.word	-132
	.word	4
	.word	_Label_783
	.word	-136
	.word	4
	.word	_Label_784
	.word	-140
	.word	4
	.word	_Label_785
	.word	-144
	.word	4
	.word	_Label_786
	.word	-148
	.word	4
	.word	_Label_787
	.word	-152
	.word	4
	.word	_Label_788
	.word	-156
	.word	4
	.word	_Label_789
	.word	-160
	.word	4
	.word	_Label_790
	.word	-164
	.word	4
	.word	_Label_791
	.word	-168
	.word	4
	.word	_Label_792
	.word	-172
	.word	4
	.word	_Label_793
	.word	-176
	.word	4
	.word	_Label_794
	.word	-180
	.word	4
	.word	_Label_795
	.word	-184
	.word	4
	.word	_Label_796
	.word	-188
	.word	4
	.word	_Label_797
	.word	-192
	.word	4
	.word	_Label_798
	.word	-196
	.word	4
	.word	0
_Label_750:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_751:
	.ascii	"Pself\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_797:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_798:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_799
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_799:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_800
	.word	_sourceFileName
	.word	191		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_800:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11478,r1
_Label_1604:
	push	r0
	sub	r1,1,r1
	bne	_Label_1604
	mov	688,r13		! source line 688
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_801 = _StringConst_74
	set	_StringConst_74,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_801  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	695,r13		! source line 695
	mov	"\0\0AS",r10
!   _temp_802 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_804 = &_temp_803
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_804 = _temp_804 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_806 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_1605:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1605
!   _temp_806 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_808:
!   Data Move: *_temp_804 = _temp_806  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_1606:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1606
!   _temp_804 = _temp_804 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_805 = _temp_805 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_805) then goto _Label_808
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_808
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_809 = &_temp_803
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1607
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1607:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_802 = *_temp_809  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1608:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1608
! ASSIGNMENT STATEMENT...
	mov	696,r13		! source line 696
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	698,r13		! source line 698
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecomeFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecomeFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0SE",r10
!   _temp_813 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0SE",r10
!   _temp_814 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-60]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_819 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_820 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_819  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_815:
!   Perform the FOR-LOOP termination test
!   if i > _temp_820 then goto _Label_818		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_818
_Label_816:
	mov	701,r13		! source line 701
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0SE",r10
!   _temp_821 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-48]
!   _temp_822 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_822 [i ] into _temp_823
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_821  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0SE",r10
!   _temp_825 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_825 [i ] into _temp_826
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_824 = _temp_826		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_827 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_824  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0AS",r10
!   _temp_828 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_828 [i ] into _temp_829
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_830 = _temp_829 + 76
	load	[r14+-16],r1
	add	r1,76,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_830 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-12],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_817:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_815
! END FOR
_Label_818:
! RETURN STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0RE",r10
	set	45916,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_831
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_832
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_833
	.word	-12
	.word	4
	.word	_Label_834
	.word	-16
	.word	4
	.word	_Label_835
	.word	-20
	.word	4
	.word	_Label_836
	.word	-24
	.word	4
	.word	_Label_837
	.word	-28
	.word	4
	.word	_Label_838
	.word	-32
	.word	4
	.word	_Label_839
	.word	-36
	.word	4
	.word	_Label_840
	.word	-40
	.word	4
	.word	_Label_841
	.word	-44
	.word	4
	.word	_Label_842
	.word	-48
	.word	4
	.word	_Label_843
	.word	-52
	.word	4
	.word	_Label_844
	.word	-56
	.word	4
	.word	_Label_845
	.word	-60
	.word	4
	.word	_Label_846
	.word	-64
	.word	4
	.word	_Label_847
	.word	-68
	.word	4
	.word	_Label_848
	.word	-72
	.word	4
	.word	_Label_849
	.word	-76
	.word	4
	.word	_Label_850
	.word	-80
	.word	4
	.word	_Label_851
	.word	-84
	.word	4
	.word	_Label_852
	.word	-4248
	.word	4164
	.word	_Label_853
	.word	-4252
	.word	4
	.word	_Label_854
	.word	-4256
	.word	4
	.word	_Label_855
	.word	-45900
	.word	41644
	.word	_Label_856
	.word	-45904
	.word	4
	.word	_Label_857
	.word	-45908
	.word	4
	.word	_Label_858
	.word	-45912
	.word	4
	.word	0
_Label_831:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_832:
	.ascii	"Pself\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_858:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_1609:
	push	r0
	sub	r1,1,r1
	bne	_Label_1609
	mov	710,r13		! source line 710
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	717,r13		! source line 717
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_859 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_859  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_864 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_865 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_864  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_860:
!   Perform the FOR-LOOP termination test
!   if i > _temp_865 then goto _Label_863		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_863
_Label_861:
	mov	719,r13		! source line 719
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_866 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_866  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	720,r13		! source line 720
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_867 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_867  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	722,r13		! source line 722
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_869 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_869 [i ] into _temp_870
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_868 = _temp_870		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_868  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CA",r10
	call	_function_126_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_862:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_860
! END FOR
_Label_863:
! CALL STATEMENT...
!   _temp_871 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_871  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0SE",r10
!   _temp_872 = _function_125_PrintObjectAddr
	set	_function_125_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_873 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_872  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_874
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_875
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_876
	.word	-12
	.word	4
	.word	_Label_877
	.word	-16
	.word	4
	.word	_Label_878
	.word	-20
	.word	4
	.word	_Label_879
	.word	-24
	.word	4
	.word	_Label_880
	.word	-28
	.word	4
	.word	_Label_881
	.word	-32
	.word	4
	.word	_Label_882
	.word	-36
	.word	4
	.word	_Label_883
	.word	-40
	.word	4
	.word	_Label_884
	.word	-44
	.word	4
	.word	_Label_885
	.word	-48
	.word	4
	.word	_Label_886
	.word	-52
	.word	4
	.word	_Label_887
	.word	-56
	.word	4
	.word	_Label_888
	.word	-60
	.word	4
	.word	0
_Label_874:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_875:
	.ascii	"Pself\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_887:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_888:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_1610:
	push	r0
	sub	r1,1,r1
	bne	_Label_1610
	mov	733,r13		! source line 733
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	739,r13		! source line 739
	mov	"\0\0SE",r10
!   _temp_889 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0WH",r10
_Label_890:
	mov	740,r13		! source line 740
	mov	"\0\0SE",r10
!   _temp_893 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_891 else goto _Label_892
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_892
	jmp	_Label_891
_Label_891:
	mov	740,r13		! source line 740
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	741,r13		! source line 741
	mov	"\0\0SE",r10
!   _temp_894 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_895 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_894  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_890
_Label_892:
! ASSIGNMENT STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0AS",r10
	mov	743,r13		! source line 743
	mov	"\0\0SE",r10
!   _temp_896 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0AS",r10
!   if intIsZero (tmp) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_897 = tmp + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_897 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0SE",r10
!   _temp_898 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0RE",r10
!   ReturnResult: tmp  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_899
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_900
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_901
	.word	-12
	.word	4
	.word	_Label_902
	.word	-16
	.word	4
	.word	_Label_903
	.word	-20
	.word	4
	.word	_Label_904
	.word	-24
	.word	4
	.word	_Label_905
	.word	-28
	.word	4
	.word	_Label_906
	.word	-32
	.word	4
	.word	_Label_907
	.word	-36
	.word	4
	.word	_Label_908
	.word	-40
	.word	4
	.word	0
_Label_899:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_900:
	.ascii	"Pself\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_908:
	.byte	'P'
	.ascii	"tmp\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_1611:
	push	r0
	sub	r1,1,r1
	bne	_Label_1611
	mov	751,r13		! source line 751
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0SE",r10
!   _temp_909 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	757,r13		! source line 757
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_910 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_910 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0SE",r10
!   _temp_911 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	759,r13		! source line 759
	mov	"\0\0SE",r10
!   _temp_912 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_913 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_912  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0SE",r10
!   _temp_914 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_915
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_916
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_917
	.word	12
	.word	4
	.word	_Label_918
	.word	-12
	.word	4
	.word	_Label_919
	.word	-16
	.word	4
	.word	_Label_920
	.word	-20
	.word	4
	.word	_Label_921
	.word	-24
	.word	4
	.word	_Label_922
	.word	-28
	.word	4
	.word	_Label_923
	.word	-32
	.word	4
	.word	0
_Label_915:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_916:
	.ascii	"Pself\0"
	.align
_Label_917:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_924
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_924:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_925
	.word	_sourceFileName
	.word	212		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_925:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_1612:
	push	r0
	sub	r1,1,r1
	bne	_Label_1612
	mov	773,r13		! source line 773
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	776,r13		! source line 776
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1613:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1613
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0SE",r10
!   _temp_927 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_928
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_929
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_930
	.word	-12
	.word	4
	.word	_Label_931
	.word	-16
	.word	4
	.word	0
_Label_928:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_929:
	.ascii	"Pself\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_1614:
	push	r0
	sub	r1,1,r1
	bne	_Label_1614
	mov	787,r13		! source line 787
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_932) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_933 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_934 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_934  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	794,r13		! source line 794
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	795,r13		! source line 795
	mov	"\0\0CA",r10
	call	_function_126_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	805,r13		! source line 805
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_935
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_936
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_937
	.word	-12
	.word	4
	.word	_Label_938
	.word	-16
	.word	4
	.word	_Label_939
	.word	-20
	.word	4
	.word	0
_Label_935:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_936:
	.ascii	"Pself\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_1615:
	push	r0
	sub	r1,1,r1
	bne	_Label_1615
	mov	810,r13		! source line 810
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_940 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_940  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_941  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	815,r13		! source line 815
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_942 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_942  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	816,r13		! source line 816
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_943 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_943  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	819,r13		! source line 819
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_945		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_945
!	jmp	_Label_944
_Label_944:
! THEN...
	mov	820,r13		! source line 820
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_946 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_946  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	820,r13		! source line 820
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_947
_Label_945:
! ELSE...
	mov	821,r13		! source line 821
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	821,r13		! source line 821
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_949		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_949
!	jmp	_Label_948
_Label_948:
! THEN...
	mov	822,r13		! source line 822
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_950 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_950  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	822,r13		! source line 822
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_951
_Label_949:
! ELSE...
	mov	823,r13		! source line 823
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_953		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_953
!	jmp	_Label_952
_Label_952:
! THEN...
	mov	824,r13		! source line 824
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_954 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_954  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	824,r13		! source line 824
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_955
_Label_953:
! ELSE...
	mov	826,r13		! source line 826
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_956 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_956  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	826,r13		! source line 826
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_955:
! END IF...
_Label_951:
! END IF...
_Label_947:
! CALL STATEMENT...
!   _temp_957 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_957  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	828,r13		! source line 828
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	829,r13		! source line 829
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_958 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_958  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	830,r13		! source line 830
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	832,r13		! source line 832
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	832,r13		! source line 832
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_959
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_960
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_961
	.word	-12
	.word	4
	.word	_Label_962
	.word	-16
	.word	4
	.word	_Label_963
	.word	-20
	.word	4
	.word	_Label_964
	.word	-24
	.word	4
	.word	_Label_965
	.word	-28
	.word	4
	.word	_Label_966
	.word	-32
	.word	4
	.word	_Label_967
	.word	-36
	.word	4
	.word	_Label_968
	.word	-40
	.word	4
	.word	_Label_969
	.word	-44
	.word	4
	.word	_Label_970
	.word	-48
	.word	4
	.word	0
_Label_959:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_960:
	.ascii	"Pself\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_971
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_971:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_972
	.word	_sourceFileName
	.word	232		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_972:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	843,r13		! source line 843
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	843,r13		! source line 843
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_973
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_974
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_973:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_974:
	.ascii	"Pself\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_1616:
	push	r0
	sub	r1,1,r1
	bne	_Label_1616
	mov	853,r13		! source line 853
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_975 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_975  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	862,r13		! source line 862
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_980 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_981 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_980  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_976:
!   Perform the FOR-LOOP termination test
!   if i > _temp_981 then goto _Label_979		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_979
_Label_977:
	mov	862,r13		! source line 862
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_982 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_982  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_983 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_983  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0SE",r10
!   _temp_984 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_984 [i ] into _temp_985
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_978:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_976
! END FOR
_Label_979:
! CALL STATEMENT...
!   _temp_986 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_986  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0SE",r10
!   _temp_987 = _function_125_PrintObjectAddr
	set	_function_125_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_988 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_987  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	870,r13		! source line 870
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	871,r13		! source line 871
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	871,r13		! source line 871
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	871,r13		! source line 871
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_989
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_990
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_991
	.word	-12
	.word	4
	.word	_Label_992
	.word	-16
	.word	4
	.word	_Label_993
	.word	-20
	.word	4
	.word	_Label_994
	.word	-24
	.word	4
	.word	_Label_995
	.word	-28
	.word	4
	.word	_Label_996
	.word	-32
	.word	4
	.word	_Label_997
	.word	-36
	.word	4
	.word	_Label_998
	.word	-40
	.word	4
	.word	_Label_999
	.word	-44
	.word	4
	.word	_Label_1000
	.word	-48
	.word	4
	.word	_Label_1001
	.word	-52
	.word	4
	.word	_Label_1002
	.word	-56
	.word	4
	.word	0
_Label_989:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_990:
	.ascii	"Pself\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1001:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1002:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_1617:
	push	r0
	sub	r1,1,r1
	bne	_Label_1617
	mov	876,r13		! source line 876
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	883,r13		! source line 883
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1003 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1003  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	884,r13		! source line 884
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	885,r13		! source line 885
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1008 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1009 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1008  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1004:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1009 then goto _Label_1007		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1007
_Label_1005:
	mov	885,r13		! source line 885
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1010 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1010  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	886,r13		! source line 886
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	887,r13		! source line 887
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0SE",r10
!   _temp_1011 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1011 [i ] into _temp_1012
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1006:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1004
! END FOR
_Label_1007:
! CALL STATEMENT...
!   _temp_1013 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1013  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	890,r13		! source line 890
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0SE",r10
!   _temp_1014 = _function_125_PrintObjectAddr
	set	_function_125_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1015 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1014  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	892,r13		! source line 892
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	893,r13		! source line 893
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1016
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1017
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1018
	.word	-12
	.word	4
	.word	_Label_1019
	.word	-16
	.word	4
	.word	_Label_1020
	.word	-20
	.word	4
	.word	_Label_1021
	.word	-24
	.word	4
	.word	_Label_1022
	.word	-28
	.word	4
	.word	_Label_1023
	.word	-32
	.word	4
	.word	_Label_1024
	.word	-36
	.word	4
	.word	_Label_1025
	.word	-40
	.word	4
	.word	_Label_1026
	.word	-44
	.word	4
	.word	_Label_1027
	.word	-48
	.word	4
	.word	_Label_1028
	.word	-52
	.word	4
	.word	0
_Label_1016:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1017:
	.ascii	"Pself\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1027:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1028:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	898,r13		! source line 898
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1029
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1030
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_1029:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1030:
	.ascii	"Pself\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	909,r13		! source line 909
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1031
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1032
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1033
	.word	12
	.word	4
	.word	0
_Label_1031:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1032:
	.ascii	"Pself\0"
	.align
_Label_1033:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1034
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1034:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1035
	.word	_sourceFileName
	.word	255		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1035:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_1618:
	push	r0
	sub	r1,1,r1
	bne	_Label_1618
	mov	947,r13		! source line 947
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1036 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0SE",r10
!   _temp_1038 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=27  sizeInBytes=4
	mov	27,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_1040 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0SE",r10
!   _temp_1042 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1047 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1048 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1047  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1043:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1048 then goto _Label_1046		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1046
_Label_1044:
	mov	966,r13		! source line 966
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1051 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1051) then goto _Label_1050
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1050
!	jmp	_Label_1049
_Label_1049:
! THEN...
	mov	970,r13		! source line 970
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1052 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1052  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	970,r13		! source line 970
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1050:
!   Increment the FOR-LOOP index variable and jump back
_Label_1045:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1043
! END FOR
_Label_1046:
! RETURN STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1053
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1054
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1055
	.word	-12
	.word	4
	.word	_Label_1056
	.word	-16
	.word	4
	.word	_Label_1057
	.word	-20
	.word	4
	.word	_Label_1058
	.word	-24
	.word	4
	.word	_Label_1059
	.word	-28
	.word	4
	.word	_Label_1060
	.word	-32
	.word	4
	.word	_Label_1061
	.word	-36
	.word	4
	.word	_Label_1062
	.word	-40
	.word	4
	.word	_Label_1063
	.word	-44
	.word	4
	.word	_Label_1064
	.word	-48
	.word	4
	.word	_Label_1065
	.word	-52
	.word	4
	.word	_Label_1066
	.word	-56
	.word	4
	.word	0
_Label_1053:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1054:
	.ascii	"Pself\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1066:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_1619:
	push	r0
	sub	r1,1,r1
	bne	_Label_1619
	mov	977,r13		! source line 977
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0SE",r10
!   _temp_1067 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1068 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1068  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	982,r13		! source line 982
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1069 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1069  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	983,r13		! source line 983
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1070 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1070  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	984,r13		! source line 984
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0SE",r10
!   _temp_1071 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0SE",r10
!   _temp_1072 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1073
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1074
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1075
	.word	-12
	.word	4
	.word	_Label_1076
	.word	-16
	.word	4
	.word	_Label_1077
	.word	-20
	.word	4
	.word	_Label_1078
	.word	-24
	.word	4
	.word	_Label_1079
	.word	-28
	.word	4
	.word	_Label_1080
	.word	-32
	.word	4
	.word	0
_Label_1073:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1074:
	.ascii	"Pself\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_1620:
	push	r0
	sub	r1,1,r1
	bne	_Label_1620
	mov	991,r13		! source line 991
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_1081 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0WH",r10
_Label_1082:
!   if numberFreeFrames >= 1 then goto _Label_1084		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1084
!	jmp	_Label_1083
_Label_1083:
	mov	1002,r13		! source line 1002
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1003,r13		! source line 1003
	mov	"\0\0SE",r10
!   _temp_1085 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1086 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1085  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1082
_Label_1084:
! ASSIGNMENT STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0AS",r10
	mov	1007,r13		! source line 1007
	mov	"\0\0SE",r10
!   _temp_1087 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
!   _temp_1088 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0AS",r10
!   _temp_1089 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1089		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1090
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1091
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1092
	.word	-12
	.word	4
	.word	_Label_1093
	.word	-16
	.word	4
	.word	_Label_1094
	.word	-20
	.word	4
	.word	_Label_1095
	.word	-24
	.word	4
	.word	_Label_1096
	.word	-28
	.word	4
	.word	_Label_1097
	.word	-32
	.word	4
	.word	_Label_1098
	.word	-36
	.word	4
	.word	_Label_1099
	.word	-40
	.word	4
	.word	0
_Label_1090:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1091:
	.ascii	"Pself\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1098:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1099:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	1021,r13		! source line 1021
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1100
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1101
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1102
	.word	12
	.word	4
	.word	_Label_1103
	.word	16
	.word	4
	.word	0
_Label_1100:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1101:
	.ascii	"Pself\0"
	.align
_Label_1102:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1103:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	1027,r13		! source line 1027
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1104
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1105
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1106
	.word	12
	.word	4
	.word	0
_Label_1104:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1105:
	.ascii	"Pself\0"
	.align
_Label_1106:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1107
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1107:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1108
	.word	_sourceFileName
	.word	274		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1108:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_1621:
	push	r0
	sub	r1,1,r1
	bne	_Label_1621
	mov	1039,r13		! source line 1039
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0AS",r10
!   _temp_1109 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1111 = &_temp_1110
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1111 = _temp_1111 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1113:
!   Data Move: *_temp_1111 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1111 = _temp_1111 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1112 = _temp_1112 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1112) then goto _Label_1113
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1113
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1114 = &_temp_1110
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1622
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1622:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1109 = *_temp_1114  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1623:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1623
! RETURN STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1115
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1116
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1117
	.word	-12
	.word	4
	.word	_Label_1118
	.word	-16
	.word	4
	.word	_Label_1119
	.word	-20
	.word	4
	.word	_Label_1120
	.word	-104
	.word	84
	.word	_Label_1121
	.word	-108
	.word	4
	.word	0
_Label_1115:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1116:
	.ascii	"Pself\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_1624:
	push	r0
	sub	r1,1,r1
	bne	_Label_1624
	mov	1049,r13		! source line 1049
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1122 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1122  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1054,r13		! source line 1054
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1123 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1123  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1055,r13		! source line 1055
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1128 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1129 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1128  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1124:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1129 then goto _Label_1127		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1127
_Label_1125:
	mov	1056,r13		! source line 1056
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1130 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1130  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1057,r13		! source line 1057
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1132 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1132 [i ] into _temp_1133
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1131 = _temp_1133		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1131  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1058,r13		! source line 1058
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1134 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1134  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1059,r13		! source line 1059
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1136 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1136 [i ] into _temp_1137
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1135 = *_temp_1137  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1135  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1060,r13		! source line 1060
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1138 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1138  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1061,r13		! source line 1061
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1139 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1139  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1062,r13		! source line 1062
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1140 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1140  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1063,r13		! source line 1063
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1142) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1141  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1141  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1064,r13		! source line 1064
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1143 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1143  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1065,r13		! source line 1065
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1066,r13		! source line 1066
	mov	"\0\0IF",r10
	mov	1066,r13		! source line 1066
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1147) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1146  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1146) then goto _Label_1145
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1145
!	jmp	_Label_1144
_Label_1144:
! THEN...
	mov	1067,r13		! source line 1067
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1067,r13		! source line 1067
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1149) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1148  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1148  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1067,r13		! source line 1067
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1150
_Label_1145:
! ELSE...
	mov	1069,r13		! source line 1069
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1151 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1151  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1069,r13		! source line 1069
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1150:
! CALL STATEMENT...
!   _temp_1152 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1152  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1071,r13		! source line 1071
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1072,r13		! source line 1072
	mov	"\0\0IF",r10
	mov	1072,r13		! source line 1072
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1155) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1153 else goto _Label_1154
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1154
	jmp	_Label_1153
_Label_1153:
! THEN...
	mov	1073,r13		! source line 1073
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1156 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1156  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1073,r13		! source line 1073
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1157
_Label_1154:
! ELSE...
	mov	1075,r13		! source line 1075
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1158 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1158  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1075,r13		! source line 1075
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1157:
! CALL STATEMENT...
!   _temp_1159 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1159  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1077,r13		! source line 1077
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0IF",r10
	mov	1078,r13		! source line 1078
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1162) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1160 else goto _Label_1161
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1161
	jmp	_Label_1160
_Label_1160:
! THEN...
	mov	1079,r13		! source line 1079
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1163 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1163  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1079,r13		! source line 1079
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1164
_Label_1161:
! ELSE...
	mov	1081,r13		! source line 1081
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1165 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1165  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1081,r13		! source line 1081
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1164:
! CALL STATEMENT...
!   _temp_1166 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1166  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1083,r13		! source line 1083
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1084,r13		! source line 1084
	mov	"\0\0IF",r10
	mov	1084,r13		! source line 1084
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1169) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1167 else goto _Label_1168
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1168
	jmp	_Label_1167
_Label_1167:
! THEN...
	mov	1085,r13		! source line 1085
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1170 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1170  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1085,r13		! source line 1085
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1171
_Label_1168:
! ELSE...
	mov	1087,r13		! source line 1087
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1172 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1172  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1087,r13		! source line 1087
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1171:
! CALL STATEMENT...
!   _temp_1173 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1173  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1089,r13		! source line 1089
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1090,r13		! source line 1090
	mov	"\0\0IF",r10
	mov	1090,r13		! source line 1090
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1176) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1174 else goto _Label_1175
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1175
	jmp	_Label_1174
_Label_1174:
! THEN...
	mov	1091,r13		! source line 1091
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1177 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1177  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1091,r13		! source line 1091
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1178
_Label_1175:
! ELSE...
	mov	1093,r13		! source line 1093
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1179 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1179  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1093,r13		! source line 1093
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1178:
! CALL STATEMENT...
!   Call the function
	mov	1095,r13		! source line 1095
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1126:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1124
! END FOR
_Label_1127:
! RETURN STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1180
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1181
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1182
	.word	-12
	.word	4
	.word	_Label_1183
	.word	-16
	.word	4
	.word	_Label_1184
	.word	-20
	.word	4
	.word	_Label_1185
	.word	-24
	.word	4
	.word	_Label_1186
	.word	-28
	.word	4
	.word	_Label_1187
	.word	-32
	.word	4
	.word	_Label_1188
	.word	-36
	.word	4
	.word	_Label_1189
	.word	-40
	.word	4
	.word	_Label_1190
	.word	-44
	.word	4
	.word	_Label_1191
	.word	-48
	.word	4
	.word	_Label_1192
	.word	-52
	.word	4
	.word	_Label_1193
	.word	-56
	.word	4
	.word	_Label_1194
	.word	-60
	.word	4
	.word	_Label_1195
	.word	-64
	.word	4
	.word	_Label_1196
	.word	-68
	.word	4
	.word	_Label_1197
	.word	-72
	.word	4
	.word	_Label_1198
	.word	-76
	.word	4
	.word	_Label_1199
	.word	-80
	.word	4
	.word	_Label_1200
	.word	-84
	.word	4
	.word	_Label_1201
	.word	-88
	.word	4
	.word	_Label_1202
	.word	-92
	.word	4
	.word	_Label_1203
	.word	-96
	.word	4
	.word	_Label_1204
	.word	-100
	.word	4
	.word	_Label_1205
	.word	-104
	.word	4
	.word	_Label_1206
	.word	-108
	.word	4
	.word	_Label_1207
	.word	-112
	.word	4
	.word	_Label_1208
	.word	-116
	.word	4
	.word	_Label_1209
	.word	-120
	.word	4
	.word	_Label_1210
	.word	-124
	.word	4
	.word	_Label_1211
	.word	-128
	.word	4
	.word	_Label_1212
	.word	-132
	.word	4
	.word	_Label_1213
	.word	-136
	.word	4
	.word	_Label_1214
	.word	-140
	.word	4
	.word	_Label_1215
	.word	-144
	.word	4
	.word	_Label_1216
	.word	-148
	.word	4
	.word	_Label_1217
	.word	-152
	.word	4
	.word	_Label_1218
	.word	-156
	.word	4
	.word	_Label_1219
	.word	-160
	.word	4
	.word	_Label_1220
	.word	-164
	.word	4
	.word	_Label_1221
	.word	-168
	.word	4
	.word	0
_Label_1180:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1181:
	.ascii	"Pself\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1221:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_1625:
	push	r0
	sub	r1,1,r1
	bne	_Label_1625
	mov	1101,r13		! source line 1101
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0RE",r10
!   _temp_1224 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1224 [entry ] into _temp_1225
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1223 = *_temp_1225  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1222 = _temp_1223 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1222  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1226
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1227
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1228
	.word	12
	.word	4
	.word	_Label_1229
	.word	-12
	.word	4
	.word	_Label_1230
	.word	-16
	.word	4
	.word	_Label_1231
	.word	-20
	.word	4
	.word	_Label_1232
	.word	-24
	.word	4
	.word	0
_Label_1226:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1227:
	.ascii	"Pself\0"
	.align
_Label_1228:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_1626:
	push	r0
	sub	r1,1,r1
	bne	_Label_1626
	mov	1111,r13		! source line 1111
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0RE",r10
!   _temp_1235 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1235 [entry ] into _temp_1236
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1234 = *_temp_1236  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1233 = _temp_1234 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1233  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1237
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1238
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1239
	.word	12
	.word	4
	.word	_Label_1240
	.word	-12
	.word	4
	.word	_Label_1241
	.word	-16
	.word	4
	.word	_Label_1242
	.word	-20
	.word	4
	.word	_Label_1243
	.word	-24
	.word	4
	.word	0
_Label_1237:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1238:
	.ascii	"Pself\0"
	.align
_Label_1239:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_1627:
	push	r0
	sub	r1,1,r1
	bne	_Label_1627
	mov	1120,r13		! source line 1120
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1125,r13		! source line 1125
	mov	"\0\0AS",r10
!   _temp_1244 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1244 [entry ] into _temp_1245
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1249 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1249 [entry ] into _temp_1250
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1248 = *_temp_1250  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1247 = _temp_1248 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1246 = _temp_1247 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1245 = _temp_1246  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1125,r13		! source line 1125
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1251
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1252
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1253
	.word	12
	.word	4
	.word	_Label_1254
	.word	16
	.word	4
	.word	_Label_1255
	.word	-12
	.word	4
	.word	_Label_1256
	.word	-16
	.word	4
	.word	_Label_1257
	.word	-20
	.word	4
	.word	_Label_1258
	.word	-24
	.word	4
	.word	_Label_1259
	.word	-28
	.word	4
	.word	_Label_1260
	.word	-32
	.word	4
	.word	_Label_1261
	.word	-36
	.word	4
	.word	0
_Label_1251:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1252:
	.ascii	"Pself\0"
	.align
_Label_1253:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1254:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_1628:
	push	r0
	sub	r1,1,r1
	bne	_Label_1628
	mov	1130,r13		! source line 1130
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0RE",r10
!   _temp_1265 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1265 [entry ] into _temp_1266
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1264 = *_temp_1266  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1263 = _temp_1264 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1263) then goto _Label_1267
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1267
!   _temp_1262 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1268
_Label_1267:
!   _temp_1262 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1268:
!   ReturnResult: _temp_1262  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1269
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1270
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1271
	.word	12
	.word	4
	.word	_Label_1272
	.word	-16
	.word	4
	.word	_Label_1273
	.word	-20
	.word	4
	.word	_Label_1274
	.word	-24
	.word	4
	.word	_Label_1275
	.word	-28
	.word	4
	.word	_Label_1276
	.word	-9
	.word	1
	.word	0
_Label_1269:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1270:
	.ascii	"Pself\0"
	.align
_Label_1271:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1276:
	.byte	'C'
	.ascii	"_temp_1262\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_1629:
	push	r0
	sub	r1,1,r1
	bne	_Label_1629
	mov	1139,r13		! source line 1139
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1143,r13		! source line 1143
	mov	"\0\0RE",r10
!   _temp_1280 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1280 [entry ] into _temp_1281
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1279 = *_temp_1281  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1278 = _temp_1279 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1278) then goto _Label_1282
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1282
!   _temp_1277 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1283
_Label_1282:
!   _temp_1277 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1283:
!   ReturnResult: _temp_1277  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1284
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1285
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1286
	.word	12
	.word	4
	.word	_Label_1287
	.word	-16
	.word	4
	.word	_Label_1288
	.word	-20
	.word	4
	.word	_Label_1289
	.word	-24
	.word	4
	.word	_Label_1290
	.word	-28
	.word	4
	.word	_Label_1291
	.word	-9
	.word	1
	.word	0
_Label_1284:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1285:
	.ascii	"Pself\0"
	.align
_Label_1286:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1291:
	.byte	'C'
	.ascii	"_temp_1277\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_1630:
	push	r0
	sub	r1,1,r1
	bne	_Label_1630
	mov	1148,r13		! source line 1148
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0RE",r10
!   _temp_1295 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1295 [entry ] into _temp_1296
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1294 = *_temp_1296  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1293 = _temp_1294 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1293) then goto _Label_1297
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1297
!   _temp_1292 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1298
_Label_1297:
!   _temp_1292 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1298:
!   ReturnResult: _temp_1292  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1299
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1300
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1301
	.word	12
	.word	4
	.word	_Label_1302
	.word	-16
	.word	4
	.word	_Label_1303
	.word	-20
	.word	4
	.word	_Label_1304
	.word	-24
	.word	4
	.word	_Label_1305
	.word	-28
	.word	4
	.word	_Label_1306
	.word	-9
	.word	1
	.word	0
_Label_1299:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1300:
	.ascii	"Pself\0"
	.align
_Label_1301:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1306:
	.byte	'C'
	.ascii	"_temp_1292\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_1631:
	push	r0
	sub	r1,1,r1
	bne	_Label_1631
	mov	1157,r13		! source line 1157
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0RE",r10
!   _temp_1310 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1310 [entry ] into _temp_1311
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1309 = *_temp_1311  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1308 = _temp_1309 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1308) then goto _Label_1312
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1312
!   _temp_1307 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1313
_Label_1312:
!   _temp_1307 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1313:
!   ReturnResult: _temp_1307  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1314
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1315
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1316
	.word	12
	.word	4
	.word	_Label_1317
	.word	-16
	.word	4
	.word	_Label_1318
	.word	-20
	.word	4
	.word	_Label_1319
	.word	-24
	.word	4
	.word	_Label_1320
	.word	-28
	.word	4
	.word	_Label_1321
	.word	-9
	.word	1
	.word	0
_Label_1314:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1315:
	.ascii	"Pself\0"
	.align
_Label_1316:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1321:
	.byte	'C'
	.ascii	"_temp_1307\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_1632:
	push	r0
	sub	r1,1,r1
	bne	_Label_1632
	mov	1166,r13		! source line 1166
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1170,r13		! source line 1170
	mov	"\0\0AS",r10
!   _temp_1322 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1322 [entry ] into _temp_1323
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1326 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1326 [entry ] into _temp_1327
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1325 = *_temp_1327  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1324 = _temp_1325 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1323 = _temp_1324  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1170,r13		! source line 1170
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1328
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1329
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1330
	.word	12
	.word	4
	.word	_Label_1331
	.word	-12
	.word	4
	.word	_Label_1332
	.word	-16
	.word	4
	.word	_Label_1333
	.word	-20
	.word	4
	.word	_Label_1334
	.word	-24
	.word	4
	.word	_Label_1335
	.word	-28
	.word	4
	.word	_Label_1336
	.word	-32
	.word	4
	.word	0
_Label_1328:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1329:
	.ascii	"Pself\0"
	.align
_Label_1330:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_1633:
	push	r0
	sub	r1,1,r1
	bne	_Label_1633
	mov	1175,r13		! source line 1175
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0AS",r10
!   _temp_1337 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1337 [entry ] into _temp_1338
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1341 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1341 [entry ] into _temp_1342
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1340 = *_temp_1342  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1339 = _temp_1340 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1338 = _temp_1339  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1343
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1344
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1345
	.word	12
	.word	4
	.word	_Label_1346
	.word	-12
	.word	4
	.word	_Label_1347
	.word	-16
	.word	4
	.word	_Label_1348
	.word	-20
	.word	4
	.word	_Label_1349
	.word	-24
	.word	4
	.word	_Label_1350
	.word	-28
	.word	4
	.word	_Label_1351
	.word	-32
	.word	4
	.word	0
_Label_1343:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1344:
	.ascii	"Pself\0"
	.align
_Label_1345:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_1634:
	push	r0
	sub	r1,1,r1
	bne	_Label_1634
	mov	1184,r13		! source line 1184
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0AS",r10
!   _temp_1352 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1352 [entry ] into _temp_1353
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1356 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1356 [entry ] into _temp_1357
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1355 = *_temp_1357  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1354 = _temp_1355 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1353 = _temp_1354  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1358
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1359
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1360
	.word	12
	.word	4
	.word	_Label_1361
	.word	-12
	.word	4
	.word	_Label_1362
	.word	-16
	.word	4
	.word	_Label_1363
	.word	-20
	.word	4
	.word	_Label_1364
	.word	-24
	.word	4
	.word	_Label_1365
	.word	-28
	.word	4
	.word	_Label_1366
	.word	-32
	.word	4
	.word	0
_Label_1358:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1359:
	.ascii	"Pself\0"
	.align
_Label_1360:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_1635:
	push	r0
	sub	r1,1,r1
	bne	_Label_1635
	mov	1193,r13		! source line 1193
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1197,r13		! source line 1197
	mov	"\0\0AS",r10
!   _temp_1367 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1367 [entry ] into _temp_1368
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1371 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1371 [entry ] into _temp_1372
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1370 = *_temp_1372  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1369 = _temp_1370 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1368 = _temp_1369  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1197,r13		! source line 1197
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1373
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1374
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1375
	.word	12
	.word	4
	.word	_Label_1376
	.word	-12
	.word	4
	.word	_Label_1377
	.word	-16
	.word	4
	.word	_Label_1378
	.word	-20
	.word	4
	.word	_Label_1379
	.word	-24
	.word	4
	.word	_Label_1380
	.word	-28
	.word	4
	.word	_Label_1381
	.word	-32
	.word	4
	.word	0
_Label_1373:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1374:
	.ascii	"Pself\0"
	.align
_Label_1375:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_1636:
	push	r0
	sub	r1,1,r1
	bne	_Label_1636
	mov	1202,r13		! source line 1202
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1206,r13		! source line 1206
	mov	"\0\0AS",r10
!   _temp_1382 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1382 [entry ] into _temp_1383
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1386 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1386 [entry ] into _temp_1387
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1385 = *_temp_1387  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1384 = _temp_1385 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1383 = _temp_1384  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1206,r13		! source line 1206
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1388
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1389
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1390
	.word	12
	.word	4
	.word	_Label_1391
	.word	-12
	.word	4
	.word	_Label_1392
	.word	-16
	.word	4
	.word	_Label_1393
	.word	-20
	.word	4
	.word	_Label_1394
	.word	-24
	.word	4
	.word	_Label_1395
	.word	-28
	.word	4
	.word	_Label_1396
	.word	-32
	.word	4
	.word	0
_Label_1388:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1389:
	.ascii	"Pself\0"
	.align
_Label_1390:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_1637:
	push	r0
	sub	r1,1,r1
	bne	_Label_1637
	mov	1211,r13		! source line 1211
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1215,r13		! source line 1215
	mov	"\0\0AS",r10
!   _temp_1397 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1397 [entry ] into _temp_1398
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1401 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1401 [entry ] into _temp_1402
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1400 = *_temp_1402  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1399 = _temp_1400 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1398 = _temp_1399  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1215,r13		! source line 1215
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1403
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1404
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1405
	.word	12
	.word	4
	.word	_Label_1406
	.word	-12
	.word	4
	.word	_Label_1407
	.word	-16
	.word	4
	.word	_Label_1408
	.word	-20
	.word	4
	.word	_Label_1409
	.word	-24
	.word	4
	.word	_Label_1410
	.word	-28
	.word	4
	.word	_Label_1411
	.word	-32
	.word	4
	.word	0
_Label_1403:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1404:
	.ascii	"Pself\0"
	.align
_Label_1405:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_1638:
	push	r0
	sub	r1,1,r1
	bne	_Label_1638
	mov	1220,r13		! source line 1220
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0AS",r10
!   _temp_1412 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1412 [entry ] into _temp_1413
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1416 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1416 [entry ] into _temp_1417
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1415 = *_temp_1417  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1414 = _temp_1415 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1413 = _temp_1414  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1418
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1419
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1420
	.word	12
	.word	4
	.word	_Label_1421
	.word	-12
	.word	4
	.word	_Label_1422
	.word	-16
	.word	4
	.word	_Label_1423
	.word	-20
	.word	4
	.word	_Label_1424
	.word	-24
	.word	4
	.word	_Label_1425
	.word	-28
	.word	4
	.word	_Label_1426
	.word	-32
	.word	4
	.word	0
_Label_1418:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1419:
	.ascii	"Pself\0"
	.align
_Label_1420:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_1639:
	push	r0
	sub	r1,1,r1
	bne	_Label_1639
	mov	1229,r13		! source line 1229
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0AS",r10
!   _temp_1427 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1427 [entry ] into _temp_1428
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1431 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1431 [entry ] into _temp_1432
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1430 = *_temp_1432  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1429 = _temp_1430 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1428 = _temp_1429  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1433
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1434
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1435
	.word	12
	.word	4
	.word	_Label_1436
	.word	-12
	.word	4
	.word	_Label_1437
	.word	-16
	.word	4
	.word	_Label_1438
	.word	-20
	.word	4
	.word	_Label_1439
	.word	-24
	.word	4
	.word	_Label_1440
	.word	-28
	.word	4
	.word	_Label_1441
	.word	-32
	.word	4
	.word	0
_Label_1433:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1434:
	.ascii	"Pself\0"
	.align
_Label_1435:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_1640:
	push	r0
	sub	r1,1,r1
	bne	_Label_1640
	mov	1238,r13		! source line 1238
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1443 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1443 [0 ] into _temp_1444
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1442 = _temp_1444		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1445 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1442  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1445  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1244,r13		! source line 1244
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1446
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1447
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1448
	.word	-12
	.word	4
	.word	_Label_1449
	.word	-16
	.word	4
	.word	_Label_1450
	.word	-20
	.word	4
	.word	_Label_1451
	.word	-24
	.word	4
	.word	0
_Label_1446:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1447:
	.ascii	"Pself\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_1641:
	push	r0
	sub	r1,1,r1
	bne	_Label_1641
	mov	1249,r13		! source line 1249
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1264,r13		! source line 1264
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1452
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1452
	jmp	_Label_1453
_Label_1452:
! THEN...
	mov	1265,r13		! source line 1265
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1265,r13		! source line 1265
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1454
_Label_1453:
! ELSE...
	mov	1266,r13		! source line 1266
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1456		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1456
!	jmp	_Label_1455
_Label_1455:
! THEN...
	mov	1267,r13		! source line 1267
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1267,r13		! source line 1267
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1456:
! END IF...
_Label_1454:
! ASSIGNMENT STATEMENT...
	mov	1269,r13		! source line 1269
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1270,r13		! source line 1270
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1273,r13		! source line 1273
	mov	"\0\0WH",r10
_Label_1457:
!	jmp	_Label_1458
_Label_1458:
	mov	1273,r13		! source line 1273
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1274,r13		! source line 1274
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1461		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1461
!	jmp	_Label_1460
_Label_1460:
! THEN...
	mov	1275,r13		! source line 1275
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1462 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1462  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1275,r13		! source line 1275
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1461:
! IF STATEMENT...
	mov	1278,r13		! source line 1278
	mov	"\0\0IF",r10
	mov	1278,r13		! source line 1278
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1466) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1465  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1465 then goto _Label_1464 else goto _Label_1463
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1463
	jmp	_Label_1464
_Label_1463:
! THEN...
	mov	1279,r13		! source line 1279
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1467 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1467  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1279,r13		! source line 1279
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1464:
! ASSIGNMENT STATEMENT...
	mov	1282,r13		! source line 1282
	mov	"\0\0AS",r10
	mov	1282,r13		! source line 1282
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1469) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1468  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1468 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1284,r13		! source line 1284
	mov	"\0\0WH",r10
_Label_1470:
!   if offset >= 8192 then goto _Label_1472		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1472
!	jmp	_Label_1471
_Label_1471:
	mov	1284,r13		! source line 1284
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1473 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1473  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1289,r13		! source line 1289
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1290,r13		! source line 1290
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1291,r13		! source line 1291
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1475		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1475
!	jmp	_Label_1474
_Label_1474:
! THEN...
	mov	1293,r13		! source line 1293
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1475:
! END WHILE...
	jmp	_Label_1470
_Label_1472:
! ASSIGNMENT STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1457
_Label_1459:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1476
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1477
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1478
	.word	12
	.word	4
	.word	_Label_1479
	.word	16
	.word	4
	.word	_Label_1480
	.word	20
	.word	4
	.word	_Label_1481
	.word	-9
	.word	1
	.word	_Label_1482
	.word	-16
	.word	4
	.word	_Label_1483
	.word	-20
	.word	4
	.word	_Label_1484
	.word	-24
	.word	4
	.word	_Label_1485
	.word	-28
	.word	4
	.word	_Label_1486
	.word	-10
	.word	1
	.word	_Label_1487
	.word	-32
	.word	4
	.word	_Label_1488
	.word	-36
	.word	4
	.word	_Label_1489
	.word	-40
	.word	4
	.word	_Label_1490
	.word	-44
	.word	4
	.word	_Label_1491
	.word	-48
	.word	4
	.word	0
_Label_1476:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1477:
	.ascii	"Pself\0"
	.align
_Label_1478:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1479:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1480:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1481:
	.byte	'C'
	.ascii	"_temp_1473\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1486:
	.byte	'C'
	.ascii	"_temp_1465\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1488:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1489:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1490:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1491:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_1642:
	push	r0
	sub	r1,1,r1
	bne	_Label_1642
	mov	1303,r13		! source line 1303
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1492
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1492
	jmp	_Label_1493
_Label_1492:
! THEN...
	mov	1315,r13		! source line 1315
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1494
_Label_1493:
! ELSE...
	mov	1316,r13		! source line 1316
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1496		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1496
!	jmp	_Label_1495
_Label_1495:
! THEN...
	mov	1317,r13		! source line 1317
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1317,r13		! source line 1317
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1496:
! END IF...
_Label_1494:
! ASSIGNMENT STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1320,r13		! source line 1320
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1321,r13		! source line 1321
	mov	"\0\0WH",r10
_Label_1497:
!	jmp	_Label_1498
_Label_1498:
	mov	1321,r13		! source line 1321
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1503		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1503
	jmp	_Label_1500
_Label_1503:
	mov	1323,r13		! source line 1323
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1505) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1504  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1504 then goto _Label_1502 else goto _Label_1500
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1500
	jmp	_Label_1502
_Label_1502:
	mov	1324,r13		! source line 1324
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1507) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1506  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1506 then goto _Label_1501 else goto _Label_1500
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1500
	jmp	_Label_1501
_Label_1500:
! THEN...
	mov	1325,r13		! source line 1325
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1325,r13		! source line 1325
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1501:
! ASSIGNMENT STATEMENT...
	mov	1327,r13		! source line 1327
	mov	"\0\0AS",r10
	mov	1327,r13		! source line 1327
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1509) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1508  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1508 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1328,r13		! source line 1328
	mov	"\0\0WH",r10
_Label_1510:
!   if offset >= 8192 then goto _Label_1512		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1512
!	jmp	_Label_1511
_Label_1511:
	mov	1328,r13		! source line 1328
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1513 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1513  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1331,r13		! source line 1331
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1333,r13		! source line 1333
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1515		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1515
!	jmp	_Label_1514
_Label_1514:
! THEN...
	mov	1335,r13		! source line 1335
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1335,r13		! source line 1335
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1515:
! END WHILE...
	jmp	_Label_1510
_Label_1512:
! ASSIGNMENT STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1497
_Label_1499:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1516
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1517
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1518
	.word	12
	.word	4
	.word	_Label_1519
	.word	16
	.word	4
	.word	_Label_1520
	.word	20
	.word	4
	.word	_Label_1521
	.word	-9
	.word	1
	.word	_Label_1522
	.word	-16
	.word	4
	.word	_Label_1523
	.word	-20
	.word	4
	.word	_Label_1524
	.word	-24
	.word	4
	.word	_Label_1525
	.word	-10
	.word	1
	.word	_Label_1526
	.word	-28
	.word	4
	.word	_Label_1527
	.word	-11
	.word	1
	.word	_Label_1528
	.word	-32
	.word	4
	.word	_Label_1529
	.word	-36
	.word	4
	.word	_Label_1530
	.word	-40
	.word	4
	.word	_Label_1531
	.word	-44
	.word	4
	.word	0
_Label_1516:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1517:
	.ascii	"Pself\0"
	.align
_Label_1518:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1519:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1520:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1521:
	.byte	'C'
	.ascii	"_temp_1513\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1525:
	.byte	'C'
	.ascii	"_temp_1506\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1527:
	.byte	'C'
	.ascii	"_temp_1504\0"
	.align
_Label_1528:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1529:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1530:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1531:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_1643:
	push	r0
	sub	r1,1,r1
	bne	_Label_1643
	mov	1345,r13		! source line 1345
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0IF",r10
	mov	1369,r13		! source line 1369
	mov	"\0\0SE",r10
!   _temp_1535 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1536) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1535  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1534  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1534 >= 4 then goto _Label_1533		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1533
!	jmp	_Label_1532
_Label_1532:
! THEN...
	mov	1372,r13		! source line 1372
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1372,r13		! source line 1372
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1533:
! IF STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1538		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1538
!	jmp	_Label_1537
_Label_1537:
! THEN...
	mov	1377,r13		! source line 1377
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1377,r13		! source line 1377
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1538:
! ASSIGNMENT STATEMENT...
	mov	1380,r13		! source line 1380
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0RE",r10
	mov	1382,r13		! source line 1382
	mov	"\0\0SE",r10
!   _temp_1541 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1540 = _temp_1541 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1542 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1543) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1540  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1542  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1539  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1539  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_1544
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1545
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1546
	.word	12
	.word	4
	.word	_Label_1547
	.word	16
	.word	4
	.word	_Label_1548
	.word	20
	.word	4
	.word	_Label_1549
	.word	-12
	.word	4
	.word	_Label_1550
	.word	-16
	.word	4
	.word	_Label_1551
	.word	-20
	.word	4
	.word	_Label_1552
	.word	-24
	.word	4
	.word	_Label_1553
	.word	-28
	.word	4
	.word	_Label_1554
	.word	-32
	.word	4
	.word	_Label_1555
	.word	-36
	.word	4
	.word	_Label_1556
	.word	-40
	.word	4
	.word	_Label_1557
	.word	-44
	.word	4
	.word	0
_Label_1544:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1545:
	.ascii	"Pself\0"
	.align
_Label_1546:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1547:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1548:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1557:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
