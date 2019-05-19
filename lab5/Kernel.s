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
	.export	_P_Kernel_InitFirstProcess
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
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
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
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
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
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_179:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_178:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_177:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_176:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_175:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_174:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_173:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_172:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_171:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_170:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_169:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_168:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_167:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_166:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_165:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_164:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_163:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_162:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_161:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_160:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_159:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_158:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_157:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_156:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_155:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_154:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_153:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_152:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_151:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_150:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_149:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_148:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_147:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_146:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_145:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_144:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_143:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_142:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_141:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_140:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_139:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_138:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_137:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_136:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_135:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_134:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_133:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_132:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_131:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_130:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_129:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_128:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_127:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_126:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_125:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_123:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_120:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_119:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_118:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_117:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_116:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_115:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_114:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_113:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_112:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_111:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_110:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_109:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_108:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_107:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_106:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_105:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_104:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_103:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_102:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_101:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_100:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_99:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_98:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_97:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_96:
	.word	1			! length
	.ascii	":"
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
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_92:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_91:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_90:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_89:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_88:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_87:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_86:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_85:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_84:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_83:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_82:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_81:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_80:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_79:
	.word	10			! length
	.ascii	"Threadpool"
	.align
_StringConst_78:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_77:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_76:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_75:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_74:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_73:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_72:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_71:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_70:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_69:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_68:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_67:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_66:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_65:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_64:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_63:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_62:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_61:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_60:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_59:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_58:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_57:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_56:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_55:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_54:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_53:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_52:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_51:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_50:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_49:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_48:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_47:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_45:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_44:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_43:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_42:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_41:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_40:
	.word	25			! length
	.ascii	"Failed to load executable"
	.align
_StringConst_39:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_38:
	.word	9			! length
	.ascii	"myProgram"
	.align
_StringConst_37:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_36:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_35:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_34:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_33:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_32:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_31:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_30:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_28:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_24:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
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
	set	0x82d873c8,r4		! myHashVal = -2099743800
	cmp	r3,r4
	be	_Label_189
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
_Label_189:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_190
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_190
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_190
_Label_190:
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
_Label_2791:
	push	r0
	sub	r1,1,r1
	bne	_Label_2791
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_191 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_191  sizeInBytes=4
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
_Label_2792:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2792
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_195 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_196 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_195  sizeInBytes=4
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
!   _temp_197 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_198 = _temp_197 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_198 = 3  (sizeInBytes=4)
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
_Label_2793:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2793
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_200 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_201 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_200  sizeInBytes=4
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
!   _temp_202 = _function_188_IdleFunction
	set	_function_188_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_203 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_202  sizeInBytes=4
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
	.word	_Label_204
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_205
	.word	-12
	.word	4
	.word	_Label_206
	.word	-16
	.word	4
	.word	_Label_207
	.word	-20
	.word	4
	.word	_Label_208
	.word	-24
	.word	4
	.word	_Label_209
	.word	-28
	.word	4
	.word	_Label_210
	.word	-32
	.word	4
	.word	_Label_211
	.word	-36
	.word	4
	.word	_Label_212
	.word	-40
	.word	4
	.word	_Label_213
	.word	-44
	.word	4
	.word	_Label_214
	.word	-48
	.word	4
	.word	_Label_215
	.word	-52
	.word	4
	.word	_Label_216
	.word	-56
	.word	4
	.word	_Label_217
	.word	-60
	.word	4
	.word	0
_Label_204:
	.ascii	"InitializeScheduler\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_188_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_188_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2794:
	push	r0
	sub	r1,1,r1
	bne	_Label_2794
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_218:
!	jmp	_Label_219
_Label_219:
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
!   _temp_223 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_221 else goto _Label_222
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_222
	jmp	_Label_221
_Label_221:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_224
_Label_222:
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
_Label_224:
! END WHILE...
	jmp	_Label_218
_Label_220:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_188_IdleFunction:
	.word	_sourceFileName
	.word	_Label_225
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_226
	.word	8
	.word	4
	.word	_Label_227
	.word	-12
	.word	4
	.word	_Label_228
	.word	-16
	.word	4
	.word	0
_Label_225:
	.ascii	"IdleFunction\0"
	.align
_Label_226:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_228:
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
_Label_2795:
	push	r0
	sub	r1,1,r1
	bne	_Label_2795
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
!   _temp_231 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_231 ) then goto _Label_230		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_230
!	jmp	_Label_229
_Label_229:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_233 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_233 [0 ] into _temp_234
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
!   _temp_232 = _temp_234		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_232  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_230:
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
!   _temp_235 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_235 = 3  (sizeInBytes=4)
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
_Label_236:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_240 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_239  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_239 then goto _Label_238 else goto _Label_237
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_237
	jmp	_Label_238
_Label_237:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_241 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_242 = &_P_Kernel_threadManager
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
	jmp	_Label_236
_Label_238:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_245 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_245 ) then goto _Label_244		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_244
!	jmp	_Label_243
_Label_243:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_247 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_247 [0 ] into _temp_248
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
!   _temp_246 = _temp_248		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_246  sizeInBytes=4
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
!   _temp_250 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_249 = *_temp_250  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_249) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_251 = _temp_249 + 32
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
_Label_244:
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
	.word	_Label_252
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_253
	.word	8
	.word	4
	.word	_Label_254
	.word	-16
	.word	4
	.word	_Label_255
	.word	-20
	.word	4
	.word	_Label_256
	.word	-24
	.word	4
	.word	_Label_257
	.word	-28
	.word	4
	.word	_Label_258
	.word	-32
	.word	4
	.word	_Label_259
	.word	-36
	.word	4
	.word	_Label_260
	.word	-40
	.word	4
	.word	_Label_261
	.word	-44
	.word	4
	.word	_Label_262
	.word	-48
	.word	4
	.word	_Label_263
	.word	-52
	.word	4
	.word	_Label_264
	.word	-9
	.word	1
	.word	_Label_265
	.word	-56
	.word	4
	.word	_Label_266
	.word	-60
	.word	4
	.word	_Label_267
	.word	-64
	.word	4
	.word	_Label_268
	.word	-68
	.word	4
	.word	_Label_269
	.word	-72
	.word	4
	.word	_Label_270
	.word	-76
	.word	4
	.word	_Label_271
	.word	-80
	.word	4
	.word	0
_Label_252:
	.ascii	"Run\0"
	.align
_Label_253:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_264:
	.byte	'C'
	.ascii	"_temp_239\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_270:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_271:
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
_Label_2796:
	push	r0
	sub	r1,1,r1
	bne	_Label_2796
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
!   _temp_272 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_272  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_273 = _function_187_ThreadPrintShort
	set	_function_187_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_274 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_273  sizeInBytes=4
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
	.word	_Label_275
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_276
	.word	-12
	.word	4
	.word	_Label_277
	.word	-16
	.word	4
	.word	_Label_278
	.word	-20
	.word	4
	.word	_Label_279
	.word	-24
	.word	4
	.word	0
_Label_275:
	.ascii	"PrintReadyList\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_279:
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
_Label_2797:
	push	r0
	sub	r1,1,r1
	bne	_Label_2797
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
!   _temp_280 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_280  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_282 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_281 = *_temp_282  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_281  sizeInBytes=4
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
!   _temp_283 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_283  sizeInBytes=4
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
	.word	_Label_284
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_285
	.word	-12
	.word	4
	.word	_Label_286
	.word	-16
	.word	4
	.word	_Label_287
	.word	-20
	.word	4
	.word	_Label_288
	.word	-24
	.word	4
	.word	_Label_289
	.word	-28
	.word	4
	.word	_Label_290
	.word	-32
	.word	4
	.word	0
_Label_284:
	.ascii	"ThreadStartMain\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_289:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_290:
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
_Label_2798:
	push	r0
	sub	r1,1,r1
	bne	_Label_2798
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
!   _temp_291 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_292 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_292  sizeInBytes=4
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
	.word	_Label_293
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_294
	.word	-12
	.word	4
	.word	_Label_295
	.word	-16
	.word	4
	.word	_Label_296
	.word	-20
	.word	4
	.word	0
_Label_293:
	.ascii	"ThreadFinish\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_296:
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
_Label_2799:
	push	r0
	sub	r1,1,r1
	bne	_Label_2799
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
!   _temp_297 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_299		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_299
!	jmp	_Label_298
_Label_298:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_300 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
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
!   _temp_302 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_301 = *_temp_302  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_299:
! CALL STATEMENT...
!   _temp_303 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_303  sizeInBytes=4
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
!   _temp_304 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_304  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_305 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_305  sizeInBytes=4
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
	.word	_Label_306
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_307
	.word	8
	.word	4
	.word	_Label_308
	.word	-12
	.word	4
	.word	_Label_309
	.word	-16
	.word	4
	.word	_Label_310
	.word	-20
	.word	4
	.word	_Label_311
	.word	-24
	.word	4
	.word	_Label_312
	.word	-28
	.word	4
	.word	_Label_313
	.word	-32
	.word	4
	.word	_Label_314
	.word	-36
	.word	4
	.word	_Label_315
	.word	-40
	.word	4
	.word	0
_Label_306:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_307:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_315:
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
_Label_2800:
	push	r0
	sub	r1,1,r1
	bne	_Label_2800
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
!   if newStatus != 1 then goto _Label_317		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_317
!	jmp	_Label_316
_Label_316:
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
	jmp	_Label_318
_Label_317:
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
_Label_318:
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
	.word	_Label_319
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_320
	.word	8
	.word	4
	.word	_Label_321
	.word	-12
	.word	4
	.word	0
_Label_319:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_320:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_321:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_187_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_187_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_2801:
	push	r0
	sub	r1,1,r1
	bne	_Label_2801
	mov	641,r13		! source line 641
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	649,r13		! source line 649
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_325		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_325
!   _temp_324 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_326
_Label_325:
!   _temp_324 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_326:
!   if _temp_324 then goto _Label_323 else goto _Label_322
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_322
	jmp	_Label_323
_Label_322:
! THEN...
	mov	650,r13		! source line 650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_327 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_323:
! CALL STATEMENT...
!   _temp_328 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_330 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_329 = *_temp_330  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_329  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_331 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	656,r13		! source line 656
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_340 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_339 = *_temp_340  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_334
	cmp	r1,2
	be	_Label_335
	cmp	r1,3
	be	_Label_336
	cmp	r1,4
	be	_Label_337
	cmp	r1,5
	be	_Label_338
	jmp	_Label_332
! CASE 1...
_Label_334:
! CALL STATEMENT...
!   _temp_341 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_333
! CASE 2...
_Label_335:
! CALL STATEMENT...
!   _temp_342 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_333
! CASE 3...
_Label_336:
! CALL STATEMENT...
!   _temp_343 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_333
! CASE 4...
_Label_337:
! CALL STATEMENT...
!   _temp_344 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0BR",r10
	jmp	_Label_333
! CASE 5...
_Label_338:
! CALL STATEMENT...
!   _temp_345 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0BR",r10
	jmp	_Label_333
! DEFAULT CASE...
_Label_332:
! CALL STATEMENT...
!   _temp_346 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	673,r13		! source line 673
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_333:
! CALL STATEMENT...
!   _temp_347 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_348 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_349 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_187_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_350
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_351
	.word	8
	.word	4
	.word	_Label_352
	.word	-16
	.word	4
	.word	_Label_353
	.word	-20
	.word	4
	.word	_Label_354
	.word	-24
	.word	4
	.word	_Label_355
	.word	-28
	.word	4
	.word	_Label_356
	.word	-32
	.word	4
	.word	_Label_357
	.word	-36
	.word	4
	.word	_Label_358
	.word	-40
	.word	4
	.word	_Label_359
	.word	-44
	.word	4
	.word	_Label_360
	.word	-48
	.word	4
	.word	_Label_361
	.word	-52
	.word	4
	.word	_Label_362
	.word	-56
	.word	4
	.word	_Label_363
	.word	-60
	.word	4
	.word	_Label_364
	.word	-64
	.word	4
	.word	_Label_365
	.word	-68
	.word	4
	.word	_Label_366
	.word	-72
	.word	4
	.word	_Label_367
	.word	-76
	.word	4
	.word	_Label_368
	.word	-9
	.word	1
	.word	_Label_369
	.word	-80
	.word	4
	.word	0
_Label_350:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_351:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_368:
	.byte	'C'
	.ascii	"_temp_324\0"
	.align
_Label_369:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_186_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_186_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_2802:
	push	r0
	sub	r1,1,r1
	bne	_Label_2802
	mov	952,r13		! source line 952
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_370 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_370  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	956,r13		! source line 956
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	957,r13		! source line 957
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_186_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_371
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_372
	.word	8
	.word	4
	.word	_Label_373
	.word	-12
	.word	4
	.word	0
_Label_371:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_372:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_370\0"
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
_Label_2803:
	push	r0
	sub	r1,1,r1
	bne	_Label_2803
	mov	962,r13		! source line 962
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_374 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	968,r13		! source line 968
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	968,r13		! source line 968
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
	.word	_Label_375
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_376
	.word	8
	.word	4
	.word	_Label_377
	.word	-12
	.word	4
	.word	0
_Label_375:
	.ascii	"ProcessFinish\0"
	.align
_Label_376:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_374\0"
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
_Label_2804:
	push	r0
	sub	r1,1,r1
	bne	_Label_2804
	mov	1443,r13		! source line 1443
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1455,r13		! source line 1455
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
	mov	1456,r13		! source line 1456
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1456,r13		! source line 1456
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
	.word	_Label_378
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_378:
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
	mov	7,r1
_Label_2805:
	push	r0
	sub	r1,1,r1
	bne	_Label_2805
	mov	1461,r13		! source line 1461
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1471,r13		! source line 1471
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0IF",r10
!   _temp_382 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_383 = _temp_382 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_381 = *_temp_383  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_381 == 0 then goto _Label_380		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_380
!	jmp	_Label_379
_Label_379:
! THEN...
	mov	1474,r13		! source line 1474
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0SE",r10
!   _temp_385 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_386 = _temp_385 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_384 = *_temp_386  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_384) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_380:
! RETURN STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_387
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_388
	.word	-12
	.word	4
	.word	_Label_389
	.word	-16
	.word	4
	.word	_Label_390
	.word	-20
	.word	4
	.word	_Label_391
	.word	-24
	.word	4
	.word	_Label_392
	.word	-28
	.word	4
	.word	_Label_393
	.word	-32
	.word	4
	.word	0
_Label_387:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_381\0"
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
	mov	1480,r13		! source line 1480
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1489,r13		! source line 1489
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
	.word	_Label_394
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_394:
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
_Label_2806:
	push	r0
	sub	r1,1,r1
	bne	_Label_2806
	mov	1494,r13		! source line 1494
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_395 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1501,r13		! source line 1501
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1501,r13		! source line 1501
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
	.word	_Label_396
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_397
	.word	-12
	.word	4
	.word	0
_Label_396:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_395\0"
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
_Label_2807:
	push	r0
	sub	r1,1,r1
	bne	_Label_2807
	mov	1506,r13		! source line 1506
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_398 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1513,r13		! source line 1513
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1513,r13		! source line 1513
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
	.word	_Label_399
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_400
	.word	-12
	.word	4
	.word	0
_Label_399:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_398\0"
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
_Label_2808:
	push	r0
	sub	r1,1,r1
	bne	_Label_2808
	mov	1518,r13		! source line 1518
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1524,r13		! source line 1524
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_401 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_401  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1525,r13		! source line 1525
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1525,r13		! source line 1525
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
	.word	_Label_402
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_403
	.word	-12
	.word	4
	.word	0
_Label_402:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_401\0"
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
_Label_2809:
	push	r0
	sub	r1,1,r1
	bne	_Label_2809
	mov	1530,r13		! source line 1530
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_404 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_404  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1537,r13		! source line 1537
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1537,r13		! source line 1537
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
	.word	_Label_405
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_406
	.word	-12
	.word	4
	.word	0
_Label_405:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_404\0"
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
_Label_2810:
	push	r0
	sub	r1,1,r1
	bne	_Label_2810
	mov	1542,r13		! source line 1542
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1548,r13		! source line 1548
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_407 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_407  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1549,r13		! source line 1549
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1549,r13		! source line 1549
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
	.word	_Label_408
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_409
	.word	-12
	.word	4
	.word	0
_Label_408:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_407\0"
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
_Label_2811:
	push	r0
	sub	r1,1,r1
	bne	_Label_2811
	mov	1554,r13		! source line 1554
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1560,r13		! source line 1560
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_410 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_410  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1561,r13		! source line 1561
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1561,r13		! source line 1561
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
	.word	_Label_411
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_412
	.word	-12
	.word	4
	.word	0
_Label_411:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_410\0"
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
_Label_2812:
	push	r0
	sub	r1,1,r1
	bne	_Label_2812
	mov	1566,r13		! source line 1566
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1572,r13		! source line 1572
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_413 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_413  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1573,r13		! source line 1573
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1573,r13		! source line 1573
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
	.word	_Label_414
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_415
	.word	-12
	.word	4
	.word	0
_Label_414:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_185_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_185_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_2813:
	push	r0
	sub	r1,1,r1
	bne	_Label_2813
	mov	1578,r13		! source line 1578
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_416 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_416  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1583,r13		! source line 1583
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1584,r13		! source line 1584
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_417 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_417  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1585,r13		! source line 1585
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_421 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_420 = *_temp_421  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_420 == 0 then goto _Label_419		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_419
!	jmp	_Label_418
_Label_418:
! THEN...
	mov	1589,r13		! source line 1589
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1589,r13		! source line 1589
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_423 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_422 = *_temp_423  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_422) then goto _runtimeErrorNullPointer
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
	jmp	_Label_424
_Label_419:
! ELSE...
	mov	1591,r13		! source line 1591
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_425 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_425  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1591,r13		! source line 1591
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_424:
! SEND STATEMENT...
	mov	1593,r13		! source line 1593
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
	mov	1599,r13		! source line 1599
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1599,r13		! source line 1599
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_185_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_426
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_427
	.word	8
	.word	4
	.word	_Label_428
	.word	-12
	.word	4
	.word	_Label_429
	.word	-16
	.word	4
	.word	_Label_430
	.word	-20
	.word	4
	.word	_Label_431
	.word	-24
	.word	4
	.word	_Label_432
	.word	-28
	.word	4
	.word	_Label_433
	.word	-32
	.word	4
	.word	_Label_434
	.word	-36
	.word	4
	.word	0
_Label_426:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_427:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_416\0"
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
_Label_2814:
	push	r0
	sub	r1,1,r1
	bne	_Label_2814
	mov	1604,r13		! source line 1604
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1625,r13		! source line 1625
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_2815
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_435
_Label_2815:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_435
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_435
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_449,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_449:
	jmp	_Label_441	! 1:	
	jmp	_Label_448	! 2:	
	jmp	_Label_438	! 3:	
	jmp	_Label_437	! 4:	
	jmp	_Label_440	! 5:	
	jmp	_Label_439	! 6:	
	jmp	_Label_442	! 7:	
	jmp	_Label_443	! 8:	
	jmp	_Label_444	! 9:	
	jmp	_Label_445	! 10:	
	jmp	_Label_446	! 11:	
	jmp	_Label_447	! 12:	
! CASE 4...
_Label_437:
! RETURN STATEMENT...
	mov	1627,r13		! source line 1627
	mov	"\0\0RE",r10
!   Call the function
	mov	1627,r13		! source line 1627
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_450  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_450  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_438:
! CALL STATEMENT...
!   Call the function
	mov	1629,r13		! source line 1629
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_439:
! RETURN STATEMENT...
	mov	1632,r13		! source line 1632
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1632,r13		! source line 1632
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_451  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_451  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_440:
! RETURN STATEMENT...
	mov	1634,r13		! source line 1634
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1634,r13		! source line 1634
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_452  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_452  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_441:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1636,r13		! source line 1636
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1637,r13		! source line 1637
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_442:
! RETURN STATEMENT...
	mov	1639,r13		! source line 1639
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1639,r13		! source line 1639
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_453  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_453  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_443:
! RETURN STATEMENT...
	mov	1641,r13		! source line 1641
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1641,r13		! source line 1641
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_454  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_454  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_444:
! RETURN STATEMENT...
	mov	1643,r13		! source line 1643
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
	mov	1643,r13		! source line 1643
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_455  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_455  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_445:
! RETURN STATEMENT...
	mov	1645,r13		! source line 1645
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
	mov	1645,r13		! source line 1645
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_456  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_456  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_446:
! RETURN STATEMENT...
	mov	1647,r13		! source line 1647
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1647,r13		! source line 1647
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_457  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_457  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_447:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1649,r13		! source line 1649
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1650,r13		! source line 1650
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_448:
! CALL STATEMENT...
!   Call the function
	mov	1652,r13		! source line 1652
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_435:
! CALL STATEMENT...
!   _temp_458 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_458  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1655,r13		! source line 1655
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1656,r13		! source line 1656
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1657,r13		! source line 1657
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_459 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_459  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1658,r13		! source line 1658
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_436:
! RETURN STATEMENT...
	mov	1660,r13		! source line 1660
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
	.word	_Label_460
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_461
	.word	8
	.word	4
	.word	_Label_462
	.word	12
	.word	4
	.word	_Label_463
	.word	16
	.word	4
	.word	_Label_464
	.word	20
	.word	4
	.word	_Label_465
	.word	24
	.word	4
	.word	_Label_466
	.word	-12
	.word	4
	.word	_Label_467
	.word	-16
	.word	4
	.word	_Label_468
	.word	-20
	.word	4
	.word	_Label_469
	.word	-24
	.word	4
	.word	_Label_470
	.word	-28
	.word	4
	.word	_Label_471
	.word	-32
	.word	4
	.word	_Label_472
	.word	-36
	.word	4
	.word	_Label_473
	.word	-40
	.word	4
	.word	_Label_474
	.word	-44
	.word	4
	.word	_Label_475
	.word	-48
	.word	4
	.word	0
_Label_460:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_461:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_462:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_463:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_464:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_465:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_450\0"
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
	mov	1665,r13		! source line 1665
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1665,r13		! source line 1665
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
	.word	_Label_476
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_477
	.word	8
	.word	4
	.word	0
_Label_476:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_477:
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
	mov	1671,r13		! source line 1671
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1671,r13		! source line 1671
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
	.word	_Label_478
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_478:
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
	mov	1677,r13		! source line 1677
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1677,r13		! source line 1677
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
	.word	_Label_479
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_479:
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
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_480
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_480:
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
	mov	1690,r13		! source line 1690
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1692,r13		! source line 1692
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
	.word	_Label_481
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_482
	.word	8
	.word	4
	.word	0
_Label_481:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_482:
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
	mov	1697,r13		! source line 1697
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1699,r13		! source line 1699
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
	.word	_Label_483
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_484
	.word	8
	.word	4
	.word	0
_Label_483:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_484:
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
	mov	1704,r13		! source line 1704
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1706,r13		! source line 1706
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
	.word	_Label_485
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_486
	.word	8
	.word	4
	.word	0
_Label_485:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_486:
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
	mov	1711,r13		! source line 1711
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1713,r13		! source line 1713
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
	.word	_Label_487
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_488
	.word	8
	.word	4
	.word	0
_Label_487:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_488:
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
	mov	1718,r13		! source line 1718
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1720,r13		! source line 1720
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
	.word	_Label_489
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_490
	.word	8
	.word	4
	.word	_Label_491
	.word	12
	.word	4
	.word	_Label_492
	.word	16
	.word	4
	.word	0
_Label_489:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_490:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_491:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_492:
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
	mov	1725,r13		! source line 1725
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1727,r13		! source line 1727
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
	.word	_Label_493
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_494
	.word	8
	.word	4
	.word	_Label_495
	.word	12
	.word	4
	.word	_Label_496
	.word	16
	.word	4
	.word	0
_Label_493:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_494:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_495:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_496:
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
	mov	1732,r13		! source line 1732
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1734,r13		! source line 1734
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
	.word	_Label_497
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_498
	.word	8
	.word	4
	.word	_Label_499
	.word	12
	.word	4
	.word	0
_Label_497:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_498:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_499:
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
	mov	1739,r13		! source line 1739
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1739,r13		! source line 1739
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
	.word	_Label_500
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_501
	.word	8
	.word	4
	.word	0
_Label_500:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_501:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_184_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_184_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_2816:
	push	r0
	sub	r1,1,r1
	bne	_Label_2816
	mov	2331,r13		! source line 2331
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_502 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_502  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2336,r13		! source line 2336
	mov	"\0\0AS",r10
!   _temp_503 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_503) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_505 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_505) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_504 = *_temp_505  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_503 = _temp_504  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0AS",r10
!   _temp_506 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_506) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_508 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_508) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_507 = *_temp_508  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_506 = _temp_507  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0AS",r10
!   _temp_509 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_509) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_511 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_511) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_510 = *_temp_511  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_509 = _temp_510  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_184_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_512
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_513
	.word	8
	.word	4
	.word	_Label_514
	.word	12
	.word	4
	.word	_Label_515
	.word	-16
	.word	4
	.word	_Label_516
	.word	-9
	.word	1
	.word	_Label_517
	.word	-20
	.word	4
	.word	_Label_518
	.word	-24
	.word	4
	.word	_Label_519
	.word	-10
	.word	1
	.word	_Label_520
	.word	-28
	.word	4
	.word	_Label_521
	.word	-32
	.word	4
	.word	_Label_522
	.word	-11
	.word	1
	.word	_Label_523
	.word	-36
	.word	4
	.word	_Label_524
	.word	-12
	.word	1
	.word	_Label_525
	.word	-40
	.word	4
	.word	_Label_526
	.word	-44
	.word	4
	.word	0
_Label_512:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_513:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_514:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_516:
	.byte	'C'
	.ascii	"_temp_510\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_519:
	.byte	'C'
	.ascii	"_temp_507\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_522:
	.byte	'C'
	.ascii	"_temp_504\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_524:
	.byte	'C'
	.ascii	"_temp_502\0"
	.align
_Label_525:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_526:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_183_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_183_printFCB,r1
	push	r1
	mov	3,r1
_Label_2817:
	push	r0
	sub	r1,1,r1
	bne	_Label_2817
	mov	2341,r13		! source line 2341
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_528 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_527 = *_temp_528  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_527  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2342,r13		! source line 2342
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2343,r13		! source line 2343
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_183_printFCB:
	.word	_sourceFileName
	.word	_Label_529
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_530
	.word	8
	.word	4
	.word	_Label_531
	.word	-12
	.word	4
	.word	_Label_532
	.word	-16
	.word	4
	.word	0
_Label_529:
	.ascii	"printFCB\0"
	.align
_Label_530:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_182_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_182_printOpen,r1
	push	r1
	mov	4,r1
_Label_2818:
	push	r0
	sub	r1,1,r1
	bne	_Label_2818
	mov	2346,r13		! source line 2346
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_533 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_533  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2347,r13		! source line 2347
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_534 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_534  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2348,r13		! source line 2348
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_535 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_535  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2349,r13		! source line 2349
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_182_printOpen:
	.word	_sourceFileName
	.word	_Label_536
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_537
	.word	8
	.word	4
	.word	_Label_538
	.word	-12
	.word	4
	.word	_Label_539
	.word	-16
	.word	4
	.word	_Label_540
	.word	-20
	.word	4
	.word	0
_Label_536:
	.ascii	"printOpen\0"
	.align
_Label_537:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	8,r1
_Label_2819:
	push	r0
	sub	r1,1,r1
	bne	_Label_2819
	mov	2610,r13		! source line 2610
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0AS",r10
	mov	2612,r13		! source line 2612
	mov	"\0\0SE",r10
!   _temp_541 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-24]
!   Send message GetANewThread
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=myProgram  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0AS",r10
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_542 = myProgram + 72
	load	[r14+-28],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   _temp_543 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_542 = _temp_543  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0SE",r10
!   _temp_544 = _function_181_StartUserProcess
	set	_function_181_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_544  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_545
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_546
	.word	-12
	.word	4
	.word	_Label_547
	.word	-16
	.word	4
	.word	_Label_548
	.word	-20
	.word	4
	.word	_Label_549
	.word	-24
	.word	4
	.word	_Label_550
	.word	-28
	.word	4
	.word	0
_Label_545:
	.ascii	"InitFirstProcess\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_550:
	.byte	'P'
	.ascii	"myProgram\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_181_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_181_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_2820:
	push	r0
	sub	r1,1,r1
	bne	_Label_2820
	mov	2617,r13		! source line 2617
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0AS",r10
	mov	2624,r13		! source line 2624
	mov	"\0\0SE",r10
!   _temp_551 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-72]
!   Send message GetANewProcess
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	2625,r13		! source line 2625
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_552 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_552 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_553 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_553 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0AS",r10
	mov	2627,r13		! source line 2627
	mov	"\0\0SE",r10
!   _temp_554 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-60]
!   _temp_555 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_554  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=fp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0IF",r10
!   if fp == 0 then goto _Label_557		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_557
!	jmp	_Label_556
_Label_556:
! THEN...
	mov	2629,r13		! source line 2629
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0AS",r10
	mov	2629,r13		! source line 2629
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_559 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_558 = _temp_559		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_558  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! SEND STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0SE",r10
!   _temp_560 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=fp  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2631,r13		! source line 2631
	mov	"\0\0CA",r10
	call	_function_180_InitUserStackTop
! ASSIGNMENT STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_562 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_563 = _temp_562 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_561 = *_temp_563  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_561 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_564 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_564 [999 ] into _temp_565
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   initSystemStackTop = _temp_565		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2634,r13		! source line 2634
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! SEND STATEMENT...
	mov	2635,r13		! source line 2635
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_566 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_567 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_567 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+8]
!   Call the function
	mov	2637,r13		! source line 2637
	mov	"\0\0CE",r10
	call	BecomeUserThread
	jmp	_Label_568
_Label_557:
! ELSE...
	mov	2639,r13		! source line 2639
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_569 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_569  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2639,r13		! source line 2639
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_568:
! RETURN STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_181_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_570
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_571
	.word	8
	.word	4
	.word	_Label_572
	.word	-12
	.word	4
	.word	_Label_573
	.word	-16
	.word	4
	.word	_Label_574
	.word	-20
	.word	4
	.word	_Label_575
	.word	-24
	.word	4
	.word	_Label_576
	.word	-28
	.word	4
	.word	_Label_577
	.word	-32
	.word	4
	.word	_Label_578
	.word	-36
	.word	4
	.word	_Label_579
	.word	-40
	.word	4
	.word	_Label_580
	.word	-44
	.word	4
	.word	_Label_581
	.word	-48
	.word	4
	.word	_Label_582
	.word	-52
	.word	4
	.word	_Label_583
	.word	-56
	.word	4
	.word	_Label_584
	.word	-60
	.word	4
	.word	_Label_585
	.word	-64
	.word	4
	.word	_Label_586
	.word	-68
	.word	4
	.word	_Label_587
	.word	-72
	.word	4
	.word	_Label_588
	.word	-76
	.word	4
	.word	_Label_589
	.word	-80
	.word	4
	.word	_Label_590
	.word	-84
	.word	4
	.word	_Label_591
	.word	-88
	.word	4
	.word	_Label_592
	.word	-92
	.word	4
	.word	_Label_593
	.word	-96
	.word	4
	.word	0
_Label_570:
	.ascii	"StartUserProcess\0"
	.align
_Label_571:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_588:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_589:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_590:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_591:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_592:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_593:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION InitUserStackTop  ===============
! 
_function_180_InitUserStackTop:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_180_InitUserStackTop,r1
	push	r1
	mov	2643,r13		! source line 2643
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_180_InitUserStackTop:
	.word	_sourceFileName
	.word	_Label_594
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_594:
	.ascii	"InitUserStackTop\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_595
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_595:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_596
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_596:
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
_Label_2821:
	push	r0
	sub	r1,1,r1
	bne	_Label_2821
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_598		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_598
!	jmp	_Label_597
_Label_597:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_599 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_599  sizeInBytes=4
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
_Label_598:
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
	.word	_Label_601
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_602
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_603
	.word	12
	.word	4
	.word	_Label_604
	.word	-12
	.word	4
	.word	_Label_605
	.word	-16
	.word	4
	.word	0
_Label_601:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_602:
	.ascii	"Pself\0"
	.align
_Label_603:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_599\0"
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
_Label_2822:
	push	r0
	sub	r1,1,r1
	bne	_Label_2822
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
!   if count != 2147483647 then goto _Label_607		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_607
!	jmp	_Label_606
_Label_606:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_608 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_608  sizeInBytes=4
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
_Label_607:
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
!   if count > 0 then goto _Label_610		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_610
!	jmp	_Label_609
_Label_609:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_611 = &waitingThreads
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
!   _temp_612 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_612 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_613 = &_P_Kernel_readyList
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
_Label_610:
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
	.word	_Label_614
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_615
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_616
	.word	-12
	.word	4
	.word	_Label_617
	.word	-16
	.word	4
	.word	_Label_618
	.word	-20
	.word	4
	.word	_Label_619
	.word	-24
	.word	4
	.word	_Label_620
	.word	-28
	.word	4
	.word	_Label_621
	.word	-32
	.word	4
	.word	0
_Label_614:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_615:
	.ascii	"Pself\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_620:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_621:
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
_Label_2823:
	push	r0
	sub	r1,1,r1
	bne	_Label_2823
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
!   if count != -2147483648 then goto _Label_623		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_623
!	jmp	_Label_622
_Label_622:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_624 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_624  sizeInBytes=4
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
_Label_623:
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
!   if count >= 0 then goto _Label_626		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_626
!	jmp	_Label_625
_Label_625:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_627 = &waitingThreads
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
_Label_626:
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
	.word	_Label_628
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_629
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_630
	.word	-12
	.word	4
	.word	_Label_631
	.word	-16
	.word	4
	.word	_Label_632
	.word	-20
	.word	4
	.word	0
_Label_628:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_629:
	.ascii	"Pself\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_632:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_633
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_633:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_634
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_634:
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
_Label_2824:
	push	r0
	sub	r1,1,r1
	bne	_Label_2824
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
	.word	_Label_636
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_637
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_638
	.word	-12
	.word	4
	.word	0
_Label_636:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_637:
	.ascii	"Pself\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_635\0"
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
_Label_2825:
	push	r0
	sub	r1,1,r1
	bne	_Label_2825
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_640		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_640
!	jmp	_Label_639
_Label_639:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_641 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_641  sizeInBytes=4
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
_Label_640:
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
!   if heldBy == 0 then goto _Label_645		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_645
!   _temp_644 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_646
_Label_645:
!   _temp_644 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_646:
!   if _temp_644 then goto _Label_643 else goto _Label_642
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_642
	jmp	_Label_643
_Label_642:
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
	jmp	_Label_647
_Label_643:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_648 = &waitingThreads
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
_Label_647:
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
	.word	_Label_649
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_650
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_651
	.word	-16
	.word	4
	.word	_Label_652
	.word	-9
	.word	1
	.word	_Label_653
	.word	-20
	.word	4
	.word	_Label_654
	.word	-24
	.word	4
	.word	0
_Label_649:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_650:
	.ascii	"Pself\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_652:
	.byte	'C'
	.ascii	"_temp_644\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_654:
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
_Label_2826:
	push	r0
	sub	r1,1,r1
	bne	_Label_2826
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_656		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_656
!	jmp	_Label_655
_Label_655:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_657 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_657  sizeInBytes=4
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
_Label_656:
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
!   _temp_658 = &waitingThreads
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
!   if t == 0 then goto _Label_660		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_660
!	jmp	_Label_659
_Label_659:
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
!   _temp_661 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_661 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_662 = &_P_Kernel_readyList
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
	jmp	_Label_663
_Label_660:
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
_Label_663:
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
	.word	_Label_664
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_665
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_666
	.word	-12
	.word	4
	.word	_Label_667
	.word	-16
	.word	4
	.word	_Label_668
	.word	-20
	.word	4
	.word	_Label_669
	.word	-24
	.word	4
	.word	_Label_670
	.word	-28
	.word	4
	.word	_Label_671
	.word	-32
	.word	4
	.word	0
_Label_664:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_665:
	.ascii	"Pself\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_670:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_671:
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
_Label_2827:
	push	r0
	sub	r1,1,r1
	bne	_Label_2827
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_674		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_674
!	jmp	_Label_673
_Label_673:
!   _temp_672 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_675
_Label_674:
!   _temp_672 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_675:
!   ReturnResult: _temp_672  (sizeInBytes=1)
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
	.word	_Label_676
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_677
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_678
	.word	-9
	.word	1
	.word	0
_Label_676:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_677:
	.ascii	"Pself\0"
	.align
_Label_678:
	.byte	'C'
	.ascii	"_temp_672\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_679
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_679:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_680
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_680:
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
_Label_2828:
	push	r0
	sub	r1,1,r1
	bne	_Label_2828
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
	.word	_Label_682
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_683
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_684
	.word	-12
	.word	4
	.word	0
_Label_682:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_683:
	.ascii	"Pself\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_681\0"
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
_Label_2829:
	push	r0
	sub	r1,1,r1
	bne	_Label_2829
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
!   Retrieve Result: targetName=_temp_687  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_687 then goto _Label_686 else goto _Label_685
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_685
	jmp	_Label_686
_Label_685:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_688 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_688  sizeInBytes=4
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
_Label_686:
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
!   _temp_689 = &waitingThreads
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
	.word	_Label_690
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_691
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_692
	.word	12
	.word	4
	.word	_Label_693
	.word	-16
	.word	4
	.word	_Label_694
	.word	-20
	.word	4
	.word	_Label_695
	.word	-9
	.word	1
	.word	_Label_696
	.word	-24
	.word	4
	.word	0
_Label_690:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_691:
	.ascii	"Pself\0"
	.align
_Label_692:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_695:
	.byte	'C'
	.ascii	"_temp_687\0"
	.align
_Label_696:
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
_Label_2830:
	push	r0
	sub	r1,1,r1
	bne	_Label_2830
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
!   Retrieve Result: targetName=_temp_699  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_699 then goto _Label_698 else goto _Label_697
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_697
	jmp	_Label_698
_Label_697:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_700 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_700  sizeInBytes=4
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
_Label_698:
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
!   _temp_701 = &waitingThreads
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
!   if t == 0 then goto _Label_703		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_703
!	jmp	_Label_702
_Label_702:
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
!   _temp_704 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_704 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_705 = &_P_Kernel_readyList
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
_Label_703:
! ASSIGNMENT STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	416,r13		! source line 416
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	416,r13		! source line 416
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
	.word	_Label_706
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_707
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_708
	.word	12
	.word	4
	.word	_Label_709
	.word	-16
	.word	4
	.word	_Label_710
	.word	-20
	.word	4
	.word	_Label_711
	.word	-24
	.word	4
	.word	_Label_712
	.word	-28
	.word	4
	.word	_Label_713
	.word	-9
	.word	1
	.word	_Label_714
	.word	-32
	.word	4
	.word	_Label_715
	.word	-36
	.word	4
	.word	0
_Label_706:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_707:
	.ascii	"Pself\0"
	.align
_Label_708:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_713:
	.byte	'C'
	.ascii	"_temp_699\0"
	.align
_Label_714:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_715:
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
_Label_2831:
	push	r0
	sub	r1,1,r1
	bne	_Label_2831
	mov	421,r13		! source line 421
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0IF",r10
	mov	425,r13		! source line 425
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
!   Retrieve Result: targetName=_temp_718  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_718 then goto _Label_717 else goto _Label_716
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_716
	jmp	_Label_717
_Label_716:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_719 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_719  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	426,r13		! source line 426
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_717:
! ASSIGNMENT STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	428,r13		! source line 428
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0WH",r10
_Label_720:
!	jmp	_Label_721
_Label_721:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_723 = &waitingThreads
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
	mov	431,r13		! source line 431
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_724
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_724
	jmp	_Label_725
_Label_724:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_722
! END IF...
_Label_725:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_726 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_726 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_727 = &_P_Kernel_readyList
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
	jmp	_Label_720
_Label_722:
! ASSIGNMENT STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	437,r13		! source line 437
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	437,r13		! source line 437
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
	.word	_Label_728
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_729
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_730
	.word	12
	.word	4
	.word	_Label_731
	.word	-16
	.word	4
	.word	_Label_732
	.word	-20
	.word	4
	.word	_Label_733
	.word	-24
	.word	4
	.word	_Label_734
	.word	-28
	.word	4
	.word	_Label_735
	.word	-9
	.word	1
	.word	_Label_736
	.word	-32
	.word	4
	.word	_Label_737
	.word	-36
	.word	4
	.word	0
_Label_728:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_729:
	.ascii	"Pself\0"
	.align
_Label_730:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_735:
	.byte	'C'
	.ascii	"_temp_718\0"
	.align
_Label_736:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_737:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_738
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
_Label_738:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_739
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_739:
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
_Label_2832:
	push	r0
	sub	r1,1,r1
	bne	_Label_2832
	mov	448,r13		! source line 448
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   _temp_740 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_740) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_740 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_741 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_741 [0 ] into _temp_742
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
!   Data Move: *_temp_742 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_743 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_743 [999 ] into _temp_744
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
!   Data Move: *_temp_744 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_745 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_745 [999 ] into _temp_746
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
!   stackTop = _temp_746		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_747 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_749 = &_temp_748
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_749 = _temp_749 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_751:
!   Data Move: *_temp_749 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_749 = _temp_749 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_750 = _temp_750 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_750) then goto _Label_751
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_751
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_752 = &_temp_748
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_2833
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2833:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_747 = *_temp_752  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_2834:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2834
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0AS",r10
!   _temp_753 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_755 = &_temp_754
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_755 = _temp_755 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_757:
!   Data Move: *_temp_755 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_755 = _temp_755 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_756 = _temp_756 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_756) then goto _Label_757
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_757
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_758 = &_temp_754
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_2835
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2835:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_753 = *_temp_758  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_2836:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2836
! RETURN STATEMENT...
	mov	462,r13		! source line 462
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
	.word	_Label_759
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_760
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_761
	.word	12
	.word	4
	.word	_Label_762
	.word	-12
	.word	4
	.word	_Label_763
	.word	-16
	.word	4
	.word	_Label_764
	.word	-20
	.word	4
	.word	_Label_765
	.word	-84
	.word	64
	.word	_Label_766
	.word	-88
	.word	4
	.word	_Label_767
	.word	-92
	.word	4
	.word	_Label_768
	.word	-96
	.word	4
	.word	_Label_769
	.word	-100
	.word	4
	.word	_Label_770
	.word	-156
	.word	56
	.word	_Label_771
	.word	-160
	.word	4
	.word	_Label_772
	.word	-164
	.word	4
	.word	_Label_773
	.word	-168
	.word	4
	.word	_Label_774
	.word	-172
	.word	4
	.word	_Label_775
	.word	-176
	.word	4
	.word	_Label_776
	.word	-180
	.word	4
	.word	_Label_777
	.word	-184
	.word	4
	.word	_Label_778
	.word	-188
	.word	4
	.word	0
_Label_759:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_760:
	.ascii	"Pself\0"
	.align
_Label_761:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_740\0"
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
_Label_2837:
	push	r0
	sub	r1,1,r1
	bne	_Label_2837
	mov	467,r13		! source line 467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	478,r13		! source line 478
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
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
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_779 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_779  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_781 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_780  sizeInBytes=4
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
	mov	486,r13		! source line 486
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	486,r13		! source line 486
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	486,r13		! source line 486
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
	.word	_Label_782
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_783
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_784
	.word	12
	.word	4
	.word	_Label_785
	.word	16
	.word	4
	.word	_Label_786
	.word	-12
	.word	4
	.word	_Label_787
	.word	-16
	.word	4
	.word	_Label_788
	.word	-20
	.word	4
	.word	_Label_789
	.word	-24
	.word	4
	.word	_Label_790
	.word	-28
	.word	4
	.word	0
_Label_782:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_783:
	.ascii	"Pself\0"
	.align
_Label_784:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_785:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_789:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_790:
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
_Label_2838:
	push	r0
	sub	r1,1,r1
	bne	_Label_2838
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_793 == _P_Kernel_currentThread then goto _Label_792		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_792
!	jmp	_Label_791
_Label_791:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_794 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_794  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	508,r13		! source line 508
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_792:
! ASSIGNMENT STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	510,r13		! source line 510
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0AS",r10
	mov	514,r13		! source line 514
	mov	"\0\0SE",r10
!   _temp_795 = &_P_Kernel_readyList
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
	mov	515,r13		! source line 515
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_797		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_797
!	jmp	_Label_796
_Label_796:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_799		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_799
!	jmp	_Label_798
_Label_798:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_800 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_800  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	520,r13		! source line 520
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_799:
! ASSIGNMENT STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_802 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_801  sizeInBytes=4
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
	mov	524,r13		! source line 524
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_797:
! ASSIGNMENT STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	526,r13		! source line 526
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	526,r13		! source line 526
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
	.word	_Label_803
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_804
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_805
	.word	-12
	.word	4
	.word	_Label_806
	.word	-16
	.word	4
	.word	_Label_807
	.word	-20
	.word	4
	.word	_Label_808
	.word	-24
	.word	4
	.word	_Label_809
	.word	-28
	.word	4
	.word	_Label_810
	.word	-32
	.word	4
	.word	_Label_811
	.word	-36
	.word	4
	.word	_Label_812
	.word	-40
	.word	4
	.word	_Label_813
	.word	-44
	.word	4
	.word	0
_Label_803:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_804:
	.ascii	"Pself\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_811:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_812:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_813:
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
_Label_2839:
	push	r0
	sub	r1,1,r1
	bne	_Label_2839
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_815		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_815
!	jmp	_Label_814
_Label_814:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_816 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_816  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	544,r13		! source line 544
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_815:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_819 == _P_Kernel_currentThread then goto _Label_818		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_818
!	jmp	_Label_817
_Label_817:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_820 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_820  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	548,r13		! source line 548
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_818:
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0AS",r10
	mov	554,r13		! source line 554
	mov	"\0\0SE",r10
!   _temp_821 = &_P_Kernel_readyList
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
	mov	555,r13		! source line 555
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_822
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_822
	jmp	_Label_823
_Label_822:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_824 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_824  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	556,r13		! source line 556
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_823:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	558,r13		! source line 558
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	558,r13		! source line 558
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
	.word	_Label_825
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_826
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_827
	.word	-12
	.word	4
	.word	_Label_828
	.word	-16
	.word	4
	.word	_Label_829
	.word	-20
	.word	4
	.word	_Label_830
	.word	-24
	.word	4
	.word	_Label_831
	.word	-28
	.word	4
	.word	_Label_832
	.word	-32
	.word	4
	.word	0
_Label_825:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_826:
	.ascii	"Pself\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_832:
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
_Label_2840:
	push	r0
	sub	r1,1,r1
	bne	_Label_2840
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_836 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_836 [0 ] into _temp_837
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
!   Data Move: _temp_835 = *_temp_837  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_835 == 606348324 then goto _Label_834		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_834
!	jmp	_Label_833
_Label_833:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_838 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_838  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	570,r13		! source line 570
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_839
_Label_834:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_843 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_843 [999 ] into _temp_844
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
!   Data Move: _temp_842 = *_temp_844  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_842 == 606348324 then goto _Label_841		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_841
!	jmp	_Label_840
_Label_840:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_845 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_845  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	572,r13		! source line 572
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_841:
! END IF...
_Label_839:
! RETURN STATEMENT...
	mov	569,r13		! source line 569
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
	.word	_Label_846
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_847
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_848
	.word	-12
	.word	4
	.word	_Label_849
	.word	-16
	.word	4
	.word	_Label_850
	.word	-20
	.word	4
	.word	_Label_851
	.word	-24
	.word	4
	.word	_Label_852
	.word	-28
	.word	4
	.word	_Label_853
	.word	-32
	.word	4
	.word	_Label_854
	.word	-36
	.word	4
	.word	_Label_855
	.word	-40
	.word	4
	.word	0
_Label_846:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_847:
	.ascii	"Pself\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_835\0"
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
_Label_2841:
	push	r0
	sub	r1,1,r1
	bne	_Label_2841
	mov	578,r13		! source line 578
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	584,r13		! source line 584
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_856 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_856  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	585,r13		! source line 585
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_857 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_857  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_858  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_859 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_859  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_860 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_860  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_865 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_866 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_865  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_861:
!   Perform the FOR-LOOP termination test
!   if i > _temp_866 then goto _Label_864		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_864
_Label_862:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_867 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_867  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_868 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_868  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_869 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_869  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_871 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_871 [i ] into _temp_872
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
!   Data Move: _temp_870 = *_temp_872  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_870  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_873 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_873  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_875 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_875 [i ] into _temp_876
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
!   Data Move: _temp_874 = *_temp_876  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_874  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_877 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_877  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_863:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_861
! END FOR
_Label_864:
! CALL STATEMENT...
!   _temp_878 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-116]
!   _temp_879 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_878  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_879  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_880 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-108]
!   _temp_882 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_882 [0 ] into _temp_883
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
!   _temp_881 = _temp_883		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_880  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_881  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	602,r13		! source line 602
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_886
	cmp	r1,2
	be	_Label_887
	cmp	r1,3
	be	_Label_888
	cmp	r1,4
	be	_Label_889
	cmp	r1,5
	be	_Label_890
	jmp	_Label_884
! CASE 1...
_Label_886:
! CALL STATEMENT...
!   _temp_891 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_891  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_885
! CASE 2...
_Label_887:
! CALL STATEMENT...
!   _temp_892 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_892  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_885
! CASE 3...
_Label_888:
! CALL STATEMENT...
!   _temp_893 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_893  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_885
! CASE 4...
_Label_889:
! CALL STATEMENT...
!   _temp_894 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_894  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_885
! CASE 5...
_Label_890:
! CALL STATEMENT...
!   _temp_895 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_895  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_885
! DEFAULT CASE...
_Label_884:
! CALL STATEMENT...
!   _temp_896 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_896  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	619,r13		! source line 619
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_885:
! CALL STATEMENT...
!   _temp_897 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_897  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_898 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_898  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	625,r13		! source line 625
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_903 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_904 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_903  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_899:
!   Perform the FOR-LOOP termination test
!   if i > _temp_904 then goto _Label_902		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_902
_Label_900:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_905 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_905  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_906 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_906  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_907 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_907  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_909 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_909 [i ] into _temp_910
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
!   Data Move: _temp_908 = *_temp_910  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_908  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_911 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_911  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_913 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_913 [i ] into _temp_914
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
!   Data Move: _temp_912 = *_temp_914  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_912  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_915 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_915  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_901:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_899
! END FOR
_Label_902:
! ASSIGNMENT STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	634,r13		! source line 634
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
	.word	_Label_916
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_917
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_924
	.word	-36
	.word	4
	.word	_Label_925
	.word	-40
	.word	4
	.word	_Label_926
	.word	-44
	.word	4
	.word	_Label_927
	.word	-48
	.word	4
	.word	_Label_928
	.word	-52
	.word	4
	.word	_Label_929
	.word	-56
	.word	4
	.word	_Label_930
	.word	-60
	.word	4
	.word	_Label_931
	.word	-64
	.word	4
	.word	_Label_932
	.word	-68
	.word	4
	.word	_Label_933
	.word	-72
	.word	4
	.word	_Label_934
	.word	-76
	.word	4
	.word	_Label_935
	.word	-80
	.word	4
	.word	_Label_936
	.word	-84
	.word	4
	.word	_Label_937
	.word	-88
	.word	4
	.word	_Label_938
	.word	-92
	.word	4
	.word	_Label_939
	.word	-96
	.word	4
	.word	_Label_940
	.word	-100
	.word	4
	.word	_Label_941
	.word	-104
	.word	4
	.word	_Label_942
	.word	-108
	.word	4
	.word	_Label_943
	.word	-112
	.word	4
	.word	_Label_944
	.word	-116
	.word	4
	.word	_Label_945
	.word	-120
	.word	4
	.word	_Label_946
	.word	-124
	.word	4
	.word	_Label_947
	.word	-128
	.word	4
	.word	_Label_948
	.word	-132
	.word	4
	.word	_Label_949
	.word	-136
	.word	4
	.word	_Label_950
	.word	-140
	.word	4
	.word	_Label_951
	.word	-144
	.word	4
	.word	_Label_952
	.word	-148
	.word	4
	.word	_Label_953
	.word	-152
	.word	4
	.word	_Label_954
	.word	-156
	.word	4
	.word	_Label_955
	.word	-160
	.word	4
	.word	_Label_956
	.word	-164
	.word	4
	.word	_Label_957
	.word	-168
	.word	4
	.word	_Label_958
	.word	-172
	.word	4
	.word	_Label_959
	.word	-176
	.word	4
	.word	_Label_960
	.word	-180
	.word	4
	.word	_Label_961
	.word	-184
	.word	4
	.word	_Label_962
	.word	-188
	.word	4
	.word	_Label_963
	.word	-192
	.word	4
	.word	_Label_964
	.word	-196
	.word	4
	.word	0
_Label_916:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_917:
	.ascii	"Pself\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_963:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_964:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_965
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_965:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_966
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_966:
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
_Label_2842:
	push	r0
	sub	r1,1,r1
	bne	_Label_2842
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_967 = _StringConst_78
	set	_StringConst_78,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_967  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	696,r13		! source line 696
	mov	"\0\0AS",r10
!   _temp_968 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_970 = &_temp_969
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_970 = _temp_970 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_972 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_2843:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2843
!   _temp_972 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_974:
!   Data Move: *_temp_970 = _temp_972  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_2844:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2844
!   _temp_970 = _temp_970 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_971 = _temp_971 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_971) then goto _Label_974
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_974
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_975 = &_temp_969
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2845
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2845:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_968 = *_temp_975  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_2846:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2846
! ASSIGNMENT STATEMENT...
	mov	697,r13		! source line 697
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
	mov	698,r13		! source line 698
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
	mov	699,r13		! source line 699
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
	mov	700,r13		! source line 700
	mov	"\0\0SE",r10
!   _temp_979 = &threadManagerLock
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
	mov	701,r13		! source line 701
	mov	"\0\0SE",r10
!   _temp_980 = &aThreadBecomeFree
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
	mov	702,r13		! source line 702
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_985 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_986 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_985  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_981:
!   Perform the FOR-LOOP termination test
!   if i > _temp_986 then goto _Label_984		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_984
_Label_982:
	mov	702,r13		! source line 702
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0SE",r10
!   _temp_987 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-48]
!   _temp_988 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_988 [i ] into _temp_989
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
!   Prepare Argument: offset=12  value=_temp_987  sizeInBytes=4
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
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
!   _temp_991 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_991 [i ] into _temp_992
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
!   _temp_990 = _temp_992		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_993 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_990  sizeInBytes=4
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
	mov	705,r13		! source line 705
	mov	"\0\0AS",r10
!   _temp_994 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_994 [i ] into _temp_995
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
!   _temp_996 = _temp_995 + 76
	load	[r14+-16],r1
	add	r1,76,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_996 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-12],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_983:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_981
! END FOR
_Label_984:
! RETURN STATEMENT...
	mov	702,r13		! source line 702
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
	.word	_Label_997
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_998
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_999
	.word	-12
	.word	4
	.word	_Label_1000
	.word	-16
	.word	4
	.word	_Label_1001
	.word	-20
	.word	4
	.word	_Label_1002
	.word	-24
	.word	4
	.word	_Label_1003
	.word	-28
	.word	4
	.word	_Label_1004
	.word	-32
	.word	4
	.word	_Label_1005
	.word	-36
	.word	4
	.word	_Label_1006
	.word	-40
	.word	4
	.word	_Label_1007
	.word	-44
	.word	4
	.word	_Label_1008
	.word	-48
	.word	4
	.word	_Label_1009
	.word	-52
	.word	4
	.word	_Label_1010
	.word	-56
	.word	4
	.word	_Label_1011
	.word	-60
	.word	4
	.word	_Label_1012
	.word	-64
	.word	4
	.word	_Label_1013
	.word	-68
	.word	4
	.word	_Label_1014
	.word	-72
	.word	4
	.word	_Label_1015
	.word	-76
	.word	4
	.word	_Label_1016
	.word	-80
	.word	4
	.word	_Label_1017
	.word	-84
	.word	4
	.word	_Label_1018
	.word	-4248
	.word	4164
	.word	_Label_1019
	.word	-4252
	.word	4
	.word	_Label_1020
	.word	-4256
	.word	4
	.word	_Label_1021
	.word	-45900
	.word	41644
	.word	_Label_1022
	.word	-45904
	.word	4
	.word	_Label_1023
	.word	-45908
	.word	4
	.word	_Label_1024
	.word	-45912
	.word	4
	.word	0
_Label_997:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_998:
	.ascii	"Pself\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_1024:
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
_Label_2847:
	push	r0
	sub	r1,1,r1
	bne	_Label_2847
	mov	711,r13		! source line 711
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	718,r13		! source line 718
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1025 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1025  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	719,r13		! source line 719
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1030 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1031 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1030  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1026:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1031 then goto _Label_1029		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1029
_Label_1027:
	mov	720,r13		! source line 720
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1032 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1032  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	722,r13		! source line 722
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1033 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1033  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1035 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1035 [i ] into _temp_1036
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
!   _temp_1034 = _temp_1036		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1034  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CA",r10
	call	_function_187_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1028:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1026
! END FOR
_Label_1029:
! CALL STATEMENT...
!   _temp_1037 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1037  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0SE",r10
!   _temp_1038 = _function_186_PrintObjectAddr
	set	_function_186_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1039 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1038  sizeInBytes=4
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
	mov	728,r13		! source line 728
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	729,r13		! source line 729
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
	.word	_Label_1040
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1041
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1042
	.word	-12
	.word	4
	.word	_Label_1043
	.word	-16
	.word	4
	.word	_Label_1044
	.word	-20
	.word	4
	.word	_Label_1045
	.word	-24
	.word	4
	.word	_Label_1046
	.word	-28
	.word	4
	.word	_Label_1047
	.word	-32
	.word	4
	.word	_Label_1048
	.word	-36
	.word	4
	.word	_Label_1049
	.word	-40
	.word	4
	.word	_Label_1050
	.word	-44
	.word	4
	.word	_Label_1051
	.word	-48
	.word	4
	.word	_Label_1052
	.word	-52
	.word	4
	.word	_Label_1053
	.word	-56
	.word	4
	.word	_Label_1054
	.word	-60
	.word	4
	.word	0
_Label_1040:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1041:
	.ascii	"Pself\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1053:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1054:
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
	mov	11,r1
_Label_2848:
	push	r0
	sub	r1,1,r1
	bne	_Label_2848
	mov	734,r13		! source line 734
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0SE",r10
!   _temp_1055 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	741,r13		! source line 741
	mov	"\0\0WH",r10
_Label_1056:
	mov	741,r13		! source line 741
	mov	"\0\0SE",r10
!   _temp_1059 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1057 else goto _Label_1058
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1058
	jmp	_Label_1057
_Label_1057:
	mov	741,r13		! source line 741
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0SE",r10
!   _temp_1060 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   _temp_1061 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1060  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1056
_Label_1058:
! ASSIGNMENT STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0AS",r10
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_1062 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0AS",r10
!   if intIsZero (tmp) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1063 = tmp + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1063 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1064) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0SE",r10
!   _temp_1065 = &threadManagerLock
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
	mov	748,r13		! source line 748
	mov	"\0\0RE",r10
!   ReturnResult: tmp  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1066
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1067
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1068
	.word	-12
	.word	4
	.word	_Label_1069
	.word	-16
	.word	4
	.word	_Label_1070
	.word	-20
	.word	4
	.word	_Label_1071
	.word	-24
	.word	4
	.word	_Label_1072
	.word	-28
	.word	4
	.word	_Label_1073
	.word	-32
	.word	4
	.word	_Label_1074
	.word	-36
	.word	4
	.word	_Label_1075
	.word	-40
	.word	4
	.word	_Label_1076
	.word	-44
	.word	4
	.word	0
_Label_1066:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1067:
	.ascii	"Pself\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1076:
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
	mov	9,r1
_Label_2849:
	push	r0
	sub	r1,1,r1
	bne	_Label_2849
	mov	753,r13		! source line 753
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0SE",r10
!   _temp_1077 = &threadManagerLock
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
! ASSIGNMENT STATEMENT...
	mov	759,r13		! source line 759
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1078 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1078 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0SE",r10
!   _temp_1079 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1080) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0SE",r10
!   _temp_1081 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1082 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1081  sizeInBytes=4
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
	mov	763,r13		! source line 763
	mov	"\0\0SE",r10
!   _temp_1083 = &threadManagerLock
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
	mov	763,r13		! source line 763
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1084
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1085
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1086
	.word	12
	.word	4
	.word	_Label_1087
	.word	-12
	.word	4
	.word	_Label_1088
	.word	-16
	.word	4
	.word	_Label_1089
	.word	-20
	.word	4
	.word	_Label_1090
	.word	-24
	.word	4
	.word	_Label_1091
	.word	-28
	.word	4
	.word	_Label_1092
	.word	-32
	.word	4
	.word	_Label_1093
	.word	-36
	.word	4
	.word	0
_Label_1084:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1085:
	.ascii	"Pself\0"
	.align
_Label_1086:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1094
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1094:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1095
	.word	_sourceFileName
	.word	213		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1095:
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
_Label_2850:
	push	r0
	sub	r1,1,r1
	bne	_Label_2850
	mov	776,r13		! source line 776
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	778,r13		! source line 778
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	779,r13		! source line 779
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_2851:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2851
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_1097 = &addrSpace
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
	mov	780,r13		! source line 780
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
	.word	_Label_1098
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1099
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1100
	.word	-12
	.word	4
	.word	_Label_1101
	.word	-16
	.word	4
	.word	0
_Label_1098:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1099:
	.ascii	"Pself\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1096\0"
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
_Label_2852:
	push	r0
	sub	r1,1,r1
	bne	_Label_2852
	mov	790,r13		! source line 790
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1102) then goto _runtimeErrorNullPointer
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
	mov	796,r13		! source line 796
	mov	"\0\0SE",r10
!   _temp_1103 = &addrSpace
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
!   _temp_1104 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1104  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	797,r13		! source line 797
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	798,r13		! source line 798
	mov	"\0\0CA",r10
	call	_function_187_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	808,r13		! source line 808
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	808,r13		! source line 808
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
	.word	_Label_1105
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1106
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1107
	.word	-12
	.word	4
	.word	_Label_1108
	.word	-16
	.word	4
	.word	_Label_1109
	.word	-20
	.word	4
	.word	0
_Label_1105:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1106:
	.ascii	"Pself\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1102\0"
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
_Label_2853:
	push	r0
	sub	r1,1,r1
	bne	_Label_2853
	mov	813,r13		! source line 813
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1110 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1110  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1111  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1112 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1112  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	819,r13		! source line 819
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	820,r13		! source line 820
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1113 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1113  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1115		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1115
!	jmp	_Label_1114
_Label_1114:
! THEN...
	mov	823,r13		! source line 823
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1116 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1116  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1117
_Label_1115:
! ELSE...
	mov	824,r13		! source line 824
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1119		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1119
!	jmp	_Label_1118
_Label_1118:
! THEN...
	mov	825,r13		! source line 825
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1120 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1120  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1121
_Label_1119:
! ELSE...
	mov	826,r13		! source line 826
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1123		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1123
!	jmp	_Label_1122
_Label_1122:
! THEN...
	mov	827,r13		! source line 827
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1124 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1124  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1125
_Label_1123:
! ELSE...
	mov	829,r13		! source line 829
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1126 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1126  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	829,r13		! source line 829
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1125:
! END IF...
_Label_1121:
! END IF...
_Label_1117:
! CALL STATEMENT...
!   _temp_1127 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1127  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	832,r13		! source line 832
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1128 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1128  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	833,r13		! source line 833
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	834,r13		! source line 834
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	835,r13		! source line 835
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	835,r13		! source line 835
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
	.word	_Label_1129
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1130
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1131
	.word	-12
	.word	4
	.word	_Label_1132
	.word	-16
	.word	4
	.word	_Label_1133
	.word	-20
	.word	4
	.word	_Label_1134
	.word	-24
	.word	4
	.word	_Label_1135
	.word	-28
	.word	4
	.word	_Label_1136
	.word	-32
	.word	4
	.word	_Label_1137
	.word	-36
	.word	4
	.word	_Label_1138
	.word	-40
	.word	4
	.word	_Label_1139
	.word	-44
	.word	4
	.word	_Label_1140
	.word	-48
	.word	4
	.word	0
_Label_1129:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1130:
	.ascii	"Pself\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1141
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1141:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1142
	.word	_sourceFileName
	.word	233		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1142:
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
	mov	365,r1
_Label_2854:
	push	r0
	sub	r1,1,r1
	bne	_Label_2854
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0AS",r10
!   _temp_1143 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1456]
!   NEW ARRAY Constructor...
!   _temp_1145 = &_temp_1144
	add	r14,-1452,r1
	store	r1,[r14+-208]
!   _temp_1145 = _temp_1145 + 4
	load	[r14+-208],r1
	add	r1,4,r1
	store	r1,[r14+-208]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1147 = zeros  (sizeInBytes=124)
	add	r14,-200,r4
	mov	31,r3
_Label_2855:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2855
!   _temp_1147 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-200]
	mov	10,r1
	store	r1,[r14+-204]
_Label_1149:
!   Data Move: *_temp_1145 = _temp_1147  (sizeInBytes=124)
	add	r14,-200,r5
	load	[r14+-208],r4
	mov	31,r3
_Label_2856:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2856
!   _temp_1145 = _temp_1145 + 124
	load	[r14+-208],r1
	add	r1,124,r1
	store	r1,[r14+-208]
!   _temp_1146 = _temp_1146 + -1
	load	[r14+-204],r1
	add	r1,-1,r1
	store	r1,[r14+-204]
!   if intNotZero (_temp_1146) then goto _Label_1149
	load	[r14+-204],r1
	cmp	r1,r0
	bne	_Label_1149
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1452]
!   _temp_1150 = &_temp_1144
	add	r14,-1452,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	load	[r14+-1456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2857
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2857:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1143 = *_temp_1150  (sizeInBytes=1244)
	load	[r14+-72],r5
	load	[r14+-1456],r4
	mov	311,r3
_Label_2858:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2858
! ASSIGNMENT STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! ASSIGNMENT STATEMENT...
	mov	854,r13		! source line 854
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0SE",r10
!   _temp_1153 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-60]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0SE",r10
!   _temp_1154 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0SE",r10
!   _temp_1157 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-44]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1162 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1163 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1162  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-1460]
_Label_1158:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1163 then goto _Label_1161		
	load	[r14+-1460],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1161
_Label_1159:
	mov	860,r13		! source line 860
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0SE",r10
!   _temp_1164 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1164 [i ] into _temp_1165
!     make sure index expr is >= 0
	load	[r14+-1460],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	862,r13		! source line 862
	mov	"\0\0SE",r10
!   _temp_1167 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1167 [i ] into _temp_1168
!     make sure index expr is >= 0
	load	[r14+-1460],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1166 = _temp_1168		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1169 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1166  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1160:
!   i = i + 1
	load	[r14+-1460],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1460]
	jmp	_Label_1158
! END FOR
_Label_1161:
! RETURN STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0RE",r10
	add	r15,1464,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1170
	.word	4		! total size of parameters
	.word	1460		! frame size = 1460
	.word	_Label_1171
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1172
	.word	-12
	.word	4
	.word	_Label_1173
	.word	-16
	.word	4
	.word	_Label_1174
	.word	-20
	.word	4
	.word	_Label_1175
	.word	-24
	.word	4
	.word	_Label_1176
	.word	-28
	.word	4
	.word	_Label_1177
	.word	-32
	.word	4
	.word	_Label_1178
	.word	-36
	.word	4
	.word	_Label_1179
	.word	-40
	.word	4
	.word	_Label_1180
	.word	-44
	.word	4
	.word	_Label_1181
	.word	-48
	.word	4
	.word	_Label_1182
	.word	-52
	.word	4
	.word	_Label_1183
	.word	-56
	.word	4
	.word	_Label_1184
	.word	-60
	.word	4
	.word	_Label_1185
	.word	-64
	.word	4
	.word	_Label_1186
	.word	-68
	.word	4
	.word	_Label_1187
	.word	-72
	.word	4
	.word	_Label_1188
	.word	-76
	.word	4
	.word	_Label_1189
	.word	-200
	.word	124
	.word	_Label_1190
	.word	-204
	.word	4
	.word	_Label_1191
	.word	-208
	.word	4
	.word	_Label_1192
	.word	-1452
	.word	1244
	.word	_Label_1193
	.word	-1456
	.word	4
	.word	_Label_1194
	.word	-1460
	.word	4
	.word	0
_Label_1170:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1171:
	.ascii	"Pself\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1194:
	.byte	'I'
	.ascii	"i\0"
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
_Label_2859:
	push	r0
	sub	r1,1,r1
	bne	_Label_2859
	mov	868,r13		! source line 868
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	875,r13		! source line 875
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	875,r13		! source line 875
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1195 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1195  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	876,r13		! source line 876
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	877,r13		! source line 877
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1200 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1201 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1200  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1196:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1201 then goto _Label_1199		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1199
_Label_1197:
	mov	877,r13		! source line 877
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1202 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1202  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	878,r13		! source line 878
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	879,r13		! source line 879
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1203 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1203  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0SE",r10
!   _temp_1204 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1204 [i ] into _temp_1205
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
_Label_1198:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1196
! END FOR
_Label_1199:
! CALL STATEMENT...
!   _temp_1206 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1206  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0SE",r10
!   _temp_1207 = _function_186_PrintObjectAddr
	set	_function_186_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1208 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1207  sizeInBytes=4
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
	mov	885,r13		! source line 885
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	886,r13		! source line 886
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	886,r13		! source line 886
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
	.word	_Label_1209
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1210
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1211
	.word	-12
	.word	4
	.word	_Label_1212
	.word	-16
	.word	4
	.word	_Label_1213
	.word	-20
	.word	4
	.word	_Label_1214
	.word	-24
	.word	4
	.word	_Label_1215
	.word	-28
	.word	4
	.word	_Label_1216
	.word	-32
	.word	4
	.word	_Label_1217
	.word	-36
	.word	4
	.word	_Label_1218
	.word	-40
	.word	4
	.word	_Label_1219
	.word	-44
	.word	4
	.word	_Label_1220
	.word	-48
	.word	4
	.word	_Label_1221
	.word	-52
	.word	4
	.word	_Label_1222
	.word	-56
	.word	4
	.word	0
_Label_1209:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1210:
	.ascii	"Pself\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1221:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1222:
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
_Label_2860:
	push	r0
	sub	r1,1,r1
	bne	_Label_2860
	mov	891,r13		! source line 891
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	898,r13		! source line 898
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1223 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1223  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	899,r13		! source line 899
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1228 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1229 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1228  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1224:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1229 then goto _Label_1227		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1227
_Label_1225:
	mov	900,r13		! source line 900
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1230 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1230  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	901,r13		! source line 901
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	902,r13		! source line 902
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	903,r13		! source line 903
	mov	"\0\0SE",r10
!   _temp_1231 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1231 [i ] into _temp_1232
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
_Label_1226:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1224
! END FOR
_Label_1227:
! CALL STATEMENT...
!   _temp_1233 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1233  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_1234 = _function_186_PrintObjectAddr
	set	_function_186_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1235 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1234  sizeInBytes=4
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
	mov	907,r13		! source line 907
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	908,r13		! source line 908
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	908,r13		! source line 908
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
	.word	_Label_1236
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1237
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1238
	.word	-12
	.word	4
	.word	_Label_1239
	.word	-16
	.word	4
	.word	_Label_1240
	.word	-20
	.word	4
	.word	_Label_1241
	.word	-24
	.word	4
	.word	_Label_1242
	.word	-28
	.word	4
	.word	_Label_1243
	.word	-32
	.word	4
	.word	_Label_1244
	.word	-36
	.word	4
	.word	_Label_1245
	.word	-40
	.word	4
	.word	_Label_1246
	.word	-44
	.word	4
	.word	_Label_1247
	.word	-48
	.word	4
	.word	_Label_1248
	.word	-52
	.word	4
	.word	0
_Label_1236:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1237:
	.ascii	"Pself\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1247:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1248:
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
	mov	20,r1
_Label_2861:
	push	r0
	sub	r1,1,r1
	bne	_Label_2861
	mov	913,r13		! source line 913
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0SE",r10
!   _temp_1249 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-76]
!   Send message Lock
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	920,r13		! source line 920
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1250) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1251 = _temp_1250 + 1312
	load	[r14+-72],r1
	add	r1,1312,r1
	store	r1,[r14+-68]
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1254) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1255 = _temp_1254 + 1312
	load	[r14+-56],r1
	add	r1,1312,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1253 = *_temp_1255  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_1252 = _temp_1253 + 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Data Move: *_temp_1251 = _temp_1252  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r14+-68],r2
	store	r1,[r2]
! WHILE STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0WH",r10
_Label_1256:
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_1259 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-48]
!   Send message IsEmpty
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1257 else goto _Label_1258
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1258
	jmp	_Label_1257
_Label_1257:
	mov	921,r13		! source line 921
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0SE",r10
!   _temp_1260 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-44]
!   _temp_1261 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1260  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1256
_Label_1258:
! ASSIGNMENT STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0AS",r10
	mov	924,r13		! source line 924
	mov	"\0\0SE",r10
!   _temp_1262 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message Remove
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0AS",r10
!   if intIsZero (tmp) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1263 = tmp + 20
	load	[r14+-80],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1263 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	926,r13		! source line 926
	mov	"\0\0AS",r10
!   if intIsZero (tmp) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1264 = tmp + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-28]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1266) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1267 = _temp_1266 + 1312
	load	[r14+-20],r1
	add	r1,1312,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1265 = *_temp_1267  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1264 = _temp_1265  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_1268 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	929,r13		! source line 929
	mov	"\0\0RE",r10
!   ReturnResult: tmp  (sizeInBytes=4)
	load	[r14+-80],r1
	store	r1,[r14+8]
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1269
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_1270
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1271
	.word	-12
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
	.word	-32
	.word	4
	.word	_Label_1277
	.word	-36
	.word	4
	.word	_Label_1278
	.word	-40
	.word	4
	.word	_Label_1279
	.word	-44
	.word	4
	.word	_Label_1280
	.word	-48
	.word	4
	.word	_Label_1281
	.word	-52
	.word	4
	.word	_Label_1282
	.word	-56
	.word	4
	.word	_Label_1283
	.word	-60
	.word	4
	.word	_Label_1284
	.word	-64
	.word	4
	.word	_Label_1285
	.word	-68
	.word	4
	.word	_Label_1286
	.word	-72
	.word	4
	.word	_Label_1287
	.word	-76
	.word	4
	.word	_Label_1288
	.word	-80
	.word	4
	.word	0
_Label_1269:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1270:
	.ascii	"Pself\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1288:
	.byte	'P'
	.ascii	"tmp\0"
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
	mov	9,r1
_Label_2862:
	push	r0
	sub	r1,1,r1
	bne	_Label_2862
	mov	934,r13		! source line 934
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	939,r13		! source line 939
	mov	"\0\0SE",r10
!   _temp_1289 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1290 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1290 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	941,r13		! source line 941
	mov	"\0\0SE",r10
!   _temp_1291 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0SE",r10
!   _temp_1292 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-24]
!   _temp_1293 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1292  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1294) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	944,r13		! source line 944
	mov	"\0\0SE",r10
!   _temp_1295 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	944,r13		! source line 944
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1296
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1297
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1298
	.word	12
	.word	4
	.word	_Label_1299
	.word	-12
	.word	4
	.word	_Label_1300
	.word	-16
	.word	4
	.word	_Label_1301
	.word	-20
	.word	4
	.word	_Label_1302
	.word	-24
	.word	4
	.word	_Label_1303
	.word	-28
	.word	4
	.word	_Label_1304
	.word	-32
	.word	4
	.word	_Label_1305
	.word	-36
	.word	4
	.word	0
_Label_1296:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1297:
	.ascii	"Pself\0"
	.align
_Label_1298:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1306
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1306:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1307
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1307:
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
_Label_2863:
	push	r0
	sub	r1,1,r1
	bne	_Label_2863
	mov	977,r13		! source line 977
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1308 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1308  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	983,r13		! source line 983
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	984,r13		! source line 984
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
	mov	985,r13		! source line 985
	mov	"\0\0SE",r10
!   _temp_1310 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
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
	mov	986,r13		! source line 986
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	987,r13		! source line 987
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
	mov	988,r13		! source line 988
	mov	"\0\0SE",r10
!   _temp_1312 = &frameManagerLock
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
	mov	989,r13		! source line 989
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
	mov	990,r13		! source line 990
	mov	"\0\0SE",r10
!   _temp_1314 = &newFramesAvailable
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
	mov	996,r13		! source line 996
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1319 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1320 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1319  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1315:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1320 then goto _Label_1318		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1318
_Label_1316:
	mov	996,r13		! source line 996
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1323 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1323) then goto _Label_1322
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1322
!	jmp	_Label_1321
_Label_1321:
! THEN...
	mov	1000,r13		! source line 1000
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1324 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1324  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1000,r13		! source line 1000
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1322:
!   Increment the FOR-LOOP index variable and jump back
_Label_1317:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1315
! END FOR
_Label_1318:
! RETURN STATEMENT...
	mov	996,r13		! source line 996
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
	.word	_Label_1325
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1326
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1327
	.word	-12
	.word	4
	.word	_Label_1328
	.word	-16
	.word	4
	.word	_Label_1329
	.word	-20
	.word	4
	.word	_Label_1330
	.word	-24
	.word	4
	.word	_Label_1331
	.word	-28
	.word	4
	.word	_Label_1332
	.word	-32
	.word	4
	.word	_Label_1333
	.word	-36
	.word	4
	.word	_Label_1334
	.word	-40
	.word	4
	.word	_Label_1335
	.word	-44
	.word	4
	.word	_Label_1336
	.word	-48
	.word	4
	.word	_Label_1337
	.word	-52
	.word	4
	.word	_Label_1338
	.word	-56
	.word	4
	.word	0
_Label_1325:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1326:
	.ascii	"Pself\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1338:
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
_Label_2864:
	push	r0
	sub	r1,1,r1
	bne	_Label_2864
	mov	1007,r13		! source line 1007
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
!   _temp_1339 = &frameManagerLock
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
!   _temp_1340 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1340  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1012,r13		! source line 1012
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1341 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1341  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1013,r13		! source line 1013
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1342 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1342  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1014,r13		! source line 1014
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0SE",r10
!   _temp_1343 = &framesInUse
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
	mov	1016,r13		! source line 1016
	mov	"\0\0SE",r10
!   _temp_1344 = &frameManagerLock
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
	mov	1016,r13		! source line 1016
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
	.word	_Label_1345
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1346
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1347
	.word	-12
	.word	4
	.word	_Label_1348
	.word	-16
	.word	4
	.word	_Label_1349
	.word	-20
	.word	4
	.word	_Label_1350
	.word	-24
	.word	4
	.word	_Label_1351
	.word	-28
	.word	4
	.word	_Label_1352
	.word	-32
	.word	4
	.word	0
_Label_1345:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1346:
	.ascii	"Pself\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1339\0"
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
_Label_2865:
	push	r0
	sub	r1,1,r1
	bne	_Label_2865
	mov	1021,r13		! source line 1021
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0SE",r10
!   _temp_1353 = &frameManagerLock
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
	mov	1032,r13		! source line 1032
	mov	"\0\0WH",r10
_Label_1354:
!   if numberFreeFrames >= 1 then goto _Label_1356		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1356
!	jmp	_Label_1355
_Label_1355:
	mov	1032,r13		! source line 1032
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0SE",r10
!   _temp_1357 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1358 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1357  sizeInBytes=4
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
	jmp	_Label_1354
_Label_1356:
! ASSIGNMENT STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0AS",r10
	mov	1037,r13		! source line 1037
	mov	"\0\0SE",r10
!   _temp_1359 = &framesInUse
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
	mov	1038,r13		! source line 1038
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
	mov	1041,r13		! source line 1041
	mov	"\0\0SE",r10
!   _temp_1360 = &frameManagerLock
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
	mov	1044,r13		! source line 1044
	mov	"\0\0AS",r10
!   _temp_1361 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1361		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1046,r13		! source line 1046
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
	.word	_Label_1362
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1363
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1364
	.word	-12
	.word	4
	.word	_Label_1365
	.word	-16
	.word	4
	.word	_Label_1366
	.word	-20
	.word	4
	.word	_Label_1367
	.word	-24
	.word	4
	.word	_Label_1368
	.word	-28
	.word	4
	.word	_Label_1369
	.word	-32
	.word	4
	.word	_Label_1370
	.word	-36
	.word	4
	.word	_Label_1371
	.word	-40
	.word	4
	.word	0
_Label_1362:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1363:
	.ascii	"Pself\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1370:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1371:
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
	mov	15,r1
_Label_2866:
	push	r0
	sub	r1,1,r1
	bne	_Label_2866
	mov	1051,r13		! source line 1051
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1053,r13		! source line 1053
	mov	"\0\0SE",r10
!   _temp_1372 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0WH",r10
_Label_1373:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_1375		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1375
!	jmp	_Label_1374
_Label_1374:
	mov	1054,r13		! source line 1054
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0SE",r10
!   _temp_1376 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1377 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1376  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1373
_Label_1375:
! FOR STATEMENT...
	mov	1057,r13		! source line 1057
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1382 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1383 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1382  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1378:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1383 then goto _Label_1381		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1381
_Label_1379:
	mov	1057,r13		! source line 1057
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1058,r13		! source line 1058
	mov	"\0\0AS",r10
	mov	1058,r13		! source line 1058
	mov	"\0\0SE",r10
!   _temp_1384 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0AS",r10
!   _temp_1385 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1385		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1380:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1378
! END FOR
_Label_1381:
! ASSIGNMENT STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1063,r13		! source line 1063
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1386 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1386 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_1387 = &frameManagerLock
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
	mov	1064,r13		! source line 1064
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1388
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1389
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1390
	.word	12
	.word	4
	.word	_Label_1391
	.word	16
	.word	4
	.word	_Label_1392
	.word	-12
	.word	4
	.word	_Label_1393
	.word	-16
	.word	4
	.word	_Label_1394
	.word	-20
	.word	4
	.word	_Label_1395
	.word	-24
	.word	4
	.word	_Label_1396
	.word	-28
	.word	4
	.word	_Label_1397
	.word	-32
	.word	4
	.word	_Label_1398
	.word	-36
	.word	4
	.word	_Label_1399
	.word	-40
	.word	4
	.word	_Label_1400
	.word	-44
	.word	4
	.word	_Label_1401
	.word	-48
	.word	4
	.word	_Label_1402
	.word	-52
	.word	4
	.word	_Label_1403
	.word	-56
	.word	4
	.word	0
_Label_1388:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1389:
	.ascii	"Pself\0"
	.align
_Label_1390:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1391:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1401:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1402:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1403:
	.byte	'I'
	.ascii	"frameAddr\0"
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
	mov	18,r1
_Label_2867:
	push	r0
	sub	r1,1,r1
	bne	_Label_2867
	mov	1069,r13		! source line 1069
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0SE",r10
!   _temp_1404 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1072,r13		! source line 1072
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1409 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1412 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1411 = *_temp_1412  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1410 = _temp_1411 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1409  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_1405:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1410 then goto _Label_1408		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1408
_Label_1406:
	mov	1072,r13		! source line 1072
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0AS",r10
	mov	1073,r13		! source line 1073
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0AS",r10
!   _temp_1413 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1413 div 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0SE",r10
!   _temp_1414 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1407:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1405
! END FOR
_Label_1408:
! ASSIGNMENT STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1416 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1415 = *_temp_1416  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1415		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1417 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1417 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0SE",r10
!   _temp_1418 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1419 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1418  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1080,r13		! source line 1080
	mov	"\0\0SE",r10
!   _temp_1420 = &frameManagerLock
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
	mov	1080,r13		! source line 1080
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1421
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1422
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1423
	.word	12
	.word	4
	.word	_Label_1424
	.word	-12
	.word	4
	.word	_Label_1425
	.word	-16
	.word	4
	.word	_Label_1426
	.word	-20
	.word	4
	.word	_Label_1427
	.word	-24
	.word	4
	.word	_Label_1428
	.word	-28
	.word	4
	.word	_Label_1429
	.word	-32
	.word	4
	.word	_Label_1430
	.word	-36
	.word	4
	.word	_Label_1431
	.word	-40
	.word	4
	.word	_Label_1432
	.word	-44
	.word	4
	.word	_Label_1433
	.word	-48
	.word	4
	.word	_Label_1434
	.word	-52
	.word	4
	.word	_Label_1435
	.word	-56
	.word	4
	.word	_Label_1436
	.word	-60
	.word	4
	.word	_Label_1437
	.word	-64
	.word	4
	.word	_Label_1438
	.word	-68
	.word	4
	.word	_Label_1439
	.word	-72
	.word	4
	.word	0
_Label_1421:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1422:
	.ascii	"Pself\0"
	.align
_Label_1423:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1437:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1438:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1439:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1440
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
_Label_1440:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1441
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1441:
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
_Label_2868:
	push	r0
	sub	r1,1,r1
	bne	_Label_2868
	mov	1091,r13		! source line 1091
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1096,r13		! source line 1096
	mov	"\0\0AS",r10
!   _temp_1442 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1444 = &_temp_1443
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1444 = _temp_1444 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1446:
!   Data Move: *_temp_1444 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1444 = _temp_1444 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1445 = _temp_1445 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1445) then goto _Label_1446
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1446
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1447 = &_temp_1443
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_2869
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2869:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1442 = *_temp_1447  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_2870:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2870
! RETURN STATEMENT...
	mov	1096,r13		! source line 1096
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
	.word	_Label_1448
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1449
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1450
	.word	-12
	.word	4
	.word	_Label_1451
	.word	-16
	.word	4
	.word	_Label_1452
	.word	-20
	.word	4
	.word	_Label_1453
	.word	-104
	.word	84
	.word	_Label_1454
	.word	-108
	.word	4
	.word	0
_Label_1448:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1449:
	.ascii	"Pself\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1442\0"
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
_Label_2871:
	push	r0
	sub	r1,1,r1
	bne	_Label_2871
	mov	1101,r13		! source line 1101
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1455 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1455  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1106,r13		! source line 1106
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1456 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1456  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1107,r13		! source line 1107
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1108,r13		! source line 1108
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1461 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1462 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1461  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1457:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1462 then goto _Label_1460		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1460
_Label_1458:
	mov	1108,r13		! source line 1108
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1463 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1463  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1109,r13		! source line 1109
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1465 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1465 [i ] into _temp_1466
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
!   _temp_1464 = _temp_1466		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1464  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1110,r13		! source line 1110
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1467 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1467  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1469 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1469 [i ] into _temp_1470
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
!   Data Move: _temp_1468 = *_temp_1470  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1468  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1112,r13		! source line 1112
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1471 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1471  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1113,r13		! source line 1113
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1472 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1472  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1114,r13		! source line 1114
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1473 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1473  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1115,r13		! source line 1115
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1116,r13		! source line 1116
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1475) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1474  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1474  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1116,r13		! source line 1116
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1476 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1476  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1117,r13		! source line 1117
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1118,r13		! source line 1118
	mov	"\0\0IF",r10
	mov	1118,r13		! source line 1118
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1480) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1479  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1479) then goto _Label_1478
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1478
!	jmp	_Label_1477
_Label_1477:
! THEN...
	mov	1119,r13		! source line 1119
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1119,r13		! source line 1119
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1482) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1481  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1481  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1119,r13		! source line 1119
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1483
_Label_1478:
! ELSE...
	mov	1121,r13		! source line 1121
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1484 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1484  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1121,r13		! source line 1121
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1483:
! CALL STATEMENT...
!   _temp_1485 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1485  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1123,r13		! source line 1123
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1124,r13		! source line 1124
	mov	"\0\0IF",r10
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1488) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1486 else goto _Label_1487
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1487
	jmp	_Label_1486
_Label_1486:
! THEN...
	mov	1125,r13		! source line 1125
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1489 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1489  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1490
_Label_1487:
! ELSE...
	mov	1127,r13		! source line 1127
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1491 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1491  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1127,r13		! source line 1127
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1490:
! CALL STATEMENT...
!   _temp_1492 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1492  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1129,r13		! source line 1129
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1130,r13		! source line 1130
	mov	"\0\0IF",r10
	mov	1130,r13		! source line 1130
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1495) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1493 else goto _Label_1494
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1494
	jmp	_Label_1493
_Label_1493:
! THEN...
	mov	1131,r13		! source line 1131
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1496 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1496  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1131,r13		! source line 1131
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1497
_Label_1494:
! ELSE...
	mov	1133,r13		! source line 1133
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1498 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1498  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1133,r13		! source line 1133
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1497:
! CALL STATEMENT...
!   _temp_1499 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1499  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1135,r13		! source line 1135
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0IF",r10
	mov	1136,r13		! source line 1136
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1502) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1500 else goto _Label_1501
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1501
	jmp	_Label_1500
_Label_1500:
! THEN...
	mov	1137,r13		! source line 1137
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1503 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1503  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1137,r13		! source line 1137
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1504
_Label_1501:
! ELSE...
	mov	1139,r13		! source line 1139
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1505 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1505  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1139,r13		! source line 1139
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1504:
! CALL STATEMENT...
!   _temp_1506 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1506  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1141,r13		! source line 1141
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1142,r13		! source line 1142
	mov	"\0\0IF",r10
	mov	1142,r13		! source line 1142
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1509) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1507 else goto _Label_1508
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1508
	jmp	_Label_1507
_Label_1507:
! THEN...
	mov	1143,r13		! source line 1143
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1510 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1510  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1143,r13		! source line 1143
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1511
_Label_1508:
! ELSE...
	mov	1145,r13		! source line 1145
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1512 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1512  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1145,r13		! source line 1145
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1511:
! CALL STATEMENT...
!   Call the function
	mov	1147,r13		! source line 1147
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1459:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1457
! END FOR
_Label_1460:
! RETURN STATEMENT...
	mov	1108,r13		! source line 1108
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
	.word	_Label_1513
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1514
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1515
	.word	-12
	.word	4
	.word	_Label_1516
	.word	-16
	.word	4
	.word	_Label_1517
	.word	-20
	.word	4
	.word	_Label_1518
	.word	-24
	.word	4
	.word	_Label_1519
	.word	-28
	.word	4
	.word	_Label_1520
	.word	-32
	.word	4
	.word	_Label_1521
	.word	-36
	.word	4
	.word	_Label_1522
	.word	-40
	.word	4
	.word	_Label_1523
	.word	-44
	.word	4
	.word	_Label_1524
	.word	-48
	.word	4
	.word	_Label_1525
	.word	-52
	.word	4
	.word	_Label_1526
	.word	-56
	.word	4
	.word	_Label_1527
	.word	-60
	.word	4
	.word	_Label_1528
	.word	-64
	.word	4
	.word	_Label_1529
	.word	-68
	.word	4
	.word	_Label_1530
	.word	-72
	.word	4
	.word	_Label_1531
	.word	-76
	.word	4
	.word	_Label_1532
	.word	-80
	.word	4
	.word	_Label_1533
	.word	-84
	.word	4
	.word	_Label_1534
	.word	-88
	.word	4
	.word	_Label_1535
	.word	-92
	.word	4
	.word	_Label_1536
	.word	-96
	.word	4
	.word	_Label_1537
	.word	-100
	.word	4
	.word	_Label_1538
	.word	-104
	.word	4
	.word	_Label_1539
	.word	-108
	.word	4
	.word	_Label_1540
	.word	-112
	.word	4
	.word	_Label_1541
	.word	-116
	.word	4
	.word	_Label_1542
	.word	-120
	.word	4
	.word	_Label_1543
	.word	-124
	.word	4
	.word	_Label_1544
	.word	-128
	.word	4
	.word	_Label_1545
	.word	-132
	.word	4
	.word	_Label_1546
	.word	-136
	.word	4
	.word	_Label_1547
	.word	-140
	.word	4
	.word	_Label_1548
	.word	-144
	.word	4
	.word	_Label_1549
	.word	-148
	.word	4
	.word	_Label_1550
	.word	-152
	.word	4
	.word	_Label_1551
	.word	-156
	.word	4
	.word	_Label_1552
	.word	-160
	.word	4
	.word	_Label_1553
	.word	-164
	.word	4
	.word	_Label_1554
	.word	-168
	.word	4
	.word	0
_Label_1513:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1514:
	.ascii	"Pself\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1554:
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
_Label_2872:
	push	r0
	sub	r1,1,r1
	bne	_Label_2872
	mov	1153,r13		! source line 1153
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0RE",r10
!   _temp_1557 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1557 [entry ] into _temp_1558
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
!   Data Move: _temp_1556 = *_temp_1558  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1555 = _temp_1556 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1555  (sizeInBytes=4)
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
	.word	_Label_1559
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1560
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1561
	.word	12
	.word	4
	.word	_Label_1562
	.word	-12
	.word	4
	.word	_Label_1563
	.word	-16
	.word	4
	.word	_Label_1564
	.word	-20
	.word	4
	.word	_Label_1565
	.word	-24
	.word	4
	.word	0
_Label_1559:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1560:
	.ascii	"Pself\0"
	.align
_Label_1561:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1555\0"
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
_Label_2873:
	push	r0
	sub	r1,1,r1
	bne	_Label_2873
	mov	1163,r13		! source line 1163
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0RE",r10
!   _temp_1568 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1568 [entry ] into _temp_1569
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
!   Data Move: _temp_1567 = *_temp_1569  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1566 = _temp_1567 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1566  (sizeInBytes=4)
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
	.word	_Label_1570
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1571
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1572
	.word	12
	.word	4
	.word	_Label_1573
	.word	-12
	.word	4
	.word	_Label_1574
	.word	-16
	.word	4
	.word	_Label_1575
	.word	-20
	.word	4
	.word	_Label_1576
	.word	-24
	.word	4
	.word	0
_Label_1570:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1571:
	.ascii	"Pself\0"
	.align
_Label_1572:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1566\0"
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
_Label_2874:
	push	r0
	sub	r1,1,r1
	bne	_Label_2874
	mov	1172,r13		! source line 1172
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0AS",r10
!   _temp_1577 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1577 [entry ] into _temp_1578
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
!   _temp_1582 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1582 [entry ] into _temp_1583
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
!   Data Move: _temp_1581 = *_temp_1583  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1580 = _temp_1581 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1579 = _temp_1580 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1578 = _temp_1579  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1177,r13		! source line 1177
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
	.word	_Label_1584
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1585
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1586
	.word	12
	.word	4
	.word	_Label_1587
	.word	16
	.word	4
	.word	_Label_1588
	.word	-12
	.word	4
	.word	_Label_1589
	.word	-16
	.word	4
	.word	_Label_1590
	.word	-20
	.word	4
	.word	_Label_1591
	.word	-24
	.word	4
	.word	_Label_1592
	.word	-28
	.word	4
	.word	_Label_1593
	.word	-32
	.word	4
	.word	_Label_1594
	.word	-36
	.word	4
	.word	0
_Label_1584:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1585:
	.ascii	"Pself\0"
	.align
_Label_1586:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1587:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1577\0"
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
_Label_2875:
	push	r0
	sub	r1,1,r1
	bne	_Label_2875
	mov	1182,r13		! source line 1182
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0RE",r10
!   _temp_1598 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1598 [entry ] into _temp_1599
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
!   Data Move: _temp_1597 = *_temp_1599  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1596 = _temp_1597 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1596) then goto _Label_1600
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1600
!   _temp_1595 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1601
_Label_1600:
!   _temp_1595 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1601:
!   ReturnResult: _temp_1595  (sizeInBytes=1)
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
	.word	_Label_1602
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1603
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1604
	.word	12
	.word	4
	.word	_Label_1605
	.word	-16
	.word	4
	.word	_Label_1606
	.word	-20
	.word	4
	.word	_Label_1607
	.word	-24
	.word	4
	.word	_Label_1608
	.word	-28
	.word	4
	.word	_Label_1609
	.word	-9
	.word	1
	.word	0
_Label_1602:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1603:
	.ascii	"Pself\0"
	.align
_Label_1604:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1609:
	.byte	'C'
	.ascii	"_temp_1595\0"
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
_Label_2876:
	push	r0
	sub	r1,1,r1
	bne	_Label_2876
	mov	1191,r13		! source line 1191
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0RE",r10
!   _temp_1613 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1613 [entry ] into _temp_1614
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
!   Data Move: _temp_1612 = *_temp_1614  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1611 = _temp_1612 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1611) then goto _Label_1615
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1615
!   _temp_1610 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1616
_Label_1615:
!   _temp_1610 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1616:
!   ReturnResult: _temp_1610  (sizeInBytes=1)
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
	.word	_Label_1617
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1618
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1619
	.word	12
	.word	4
	.word	_Label_1620
	.word	-16
	.word	4
	.word	_Label_1621
	.word	-20
	.word	4
	.word	_Label_1622
	.word	-24
	.word	4
	.word	_Label_1623
	.word	-28
	.word	4
	.word	_Label_1624
	.word	-9
	.word	1
	.word	0
_Label_1617:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1618:
	.ascii	"Pself\0"
	.align
_Label_1619:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1624:
	.byte	'C'
	.ascii	"_temp_1610\0"
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
_Label_2877:
	push	r0
	sub	r1,1,r1
	bne	_Label_2877
	mov	1200,r13		! source line 1200
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0RE",r10
!   _temp_1628 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1628 [entry ] into _temp_1629
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
!   Data Move: _temp_1627 = *_temp_1629  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1626 = _temp_1627 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1626) then goto _Label_1630
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1630
!   _temp_1625 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1631
_Label_1630:
!   _temp_1625 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1631:
!   ReturnResult: _temp_1625  (sizeInBytes=1)
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
	.word	_Label_1632
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1633
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1634
	.word	12
	.word	4
	.word	_Label_1635
	.word	-16
	.word	4
	.word	_Label_1636
	.word	-20
	.word	4
	.word	_Label_1637
	.word	-24
	.word	4
	.word	_Label_1638
	.word	-28
	.word	4
	.word	_Label_1639
	.word	-9
	.word	1
	.word	0
_Label_1632:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1633:
	.ascii	"Pself\0"
	.align
_Label_1634:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1639:
	.byte	'C'
	.ascii	"_temp_1625\0"
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
_Label_2878:
	push	r0
	sub	r1,1,r1
	bne	_Label_2878
	mov	1209,r13		! source line 1209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1213,r13		! source line 1213
	mov	"\0\0RE",r10
!   _temp_1643 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1643 [entry ] into _temp_1644
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
!   Data Move: _temp_1642 = *_temp_1644  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1641 = _temp_1642 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1641) then goto _Label_1645
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1645
!   _temp_1640 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1646
_Label_1645:
!   _temp_1640 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1646:
!   ReturnResult: _temp_1640  (sizeInBytes=1)
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
	.word	_Label_1647
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1648
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1649
	.word	12
	.word	4
	.word	_Label_1650
	.word	-16
	.word	4
	.word	_Label_1651
	.word	-20
	.word	4
	.word	_Label_1652
	.word	-24
	.word	4
	.word	_Label_1653
	.word	-28
	.word	4
	.word	_Label_1654
	.word	-9
	.word	1
	.word	0
_Label_1647:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1648:
	.ascii	"Pself\0"
	.align
_Label_1649:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1654:
	.byte	'C'
	.ascii	"_temp_1640\0"
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
_Label_2879:
	push	r0
	sub	r1,1,r1
	bne	_Label_2879
	mov	1218,r13		! source line 1218
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1222,r13		! source line 1222
	mov	"\0\0AS",r10
!   _temp_1655 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1655 [entry ] into _temp_1656
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
!   _temp_1659 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1659 [entry ] into _temp_1660
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
!   Data Move: _temp_1658 = *_temp_1660  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1657 = _temp_1658 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1656 = _temp_1657  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1222,r13		! source line 1222
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
	.word	_Label_1661
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1662
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1663
	.word	12
	.word	4
	.word	_Label_1664
	.word	-12
	.word	4
	.word	_Label_1665
	.word	-16
	.word	4
	.word	_Label_1666
	.word	-20
	.word	4
	.word	_Label_1667
	.word	-24
	.word	4
	.word	_Label_1668
	.word	-28
	.word	4
	.word	_Label_1669
	.word	-32
	.word	4
	.word	0
_Label_1661:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1662:
	.ascii	"Pself\0"
	.align
_Label_1663:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1655\0"
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
_Label_2880:
	push	r0
	sub	r1,1,r1
	bne	_Label_2880
	mov	1227,r13		! source line 1227
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0AS",r10
!   _temp_1670 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1670 [entry ] into _temp_1671
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
!   _temp_1674 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1674 [entry ] into _temp_1675
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
!   Data Move: _temp_1673 = *_temp_1675  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1672 = _temp_1673 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1671 = _temp_1672  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1231,r13		! source line 1231
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
	.word	_Label_1676
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1677
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1678
	.word	12
	.word	4
	.word	_Label_1679
	.word	-12
	.word	4
	.word	_Label_1680
	.word	-16
	.word	4
	.word	_Label_1681
	.word	-20
	.word	4
	.word	_Label_1682
	.word	-24
	.word	4
	.word	_Label_1683
	.word	-28
	.word	4
	.word	_Label_1684
	.word	-32
	.word	4
	.word	0
_Label_1676:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1677:
	.ascii	"Pself\0"
	.align
_Label_1678:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1670\0"
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
_Label_2881:
	push	r0
	sub	r1,1,r1
	bne	_Label_2881
	mov	1236,r13		! source line 1236
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1240,r13		! source line 1240
	mov	"\0\0AS",r10
!   _temp_1685 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1685 [entry ] into _temp_1686
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
!   _temp_1689 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1689 [entry ] into _temp_1690
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
!   Data Move: _temp_1688 = *_temp_1690  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1687 = _temp_1688 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1686 = _temp_1687  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1240,r13		! source line 1240
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
	.word	_Label_1691
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1692
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1693
	.word	12
	.word	4
	.word	_Label_1694
	.word	-12
	.word	4
	.word	_Label_1695
	.word	-16
	.word	4
	.word	_Label_1696
	.word	-20
	.word	4
	.word	_Label_1697
	.word	-24
	.word	4
	.word	_Label_1698
	.word	-28
	.word	4
	.word	_Label_1699
	.word	-32
	.word	4
	.word	0
_Label_1691:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1692:
	.ascii	"Pself\0"
	.align
_Label_1693:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1685\0"
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
_Label_2882:
	push	r0
	sub	r1,1,r1
	bne	_Label_2882
	mov	1245,r13		! source line 1245
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0AS",r10
!   _temp_1700 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1700 [entry ] into _temp_1701
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
!   _temp_1704 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1704 [entry ] into _temp_1705
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
!   Data Move: _temp_1703 = *_temp_1705  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1702 = _temp_1703 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1701 = _temp_1702  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1249,r13		! source line 1249
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
	.word	_Label_1706
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1707
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1708
	.word	12
	.word	4
	.word	_Label_1709
	.word	-12
	.word	4
	.word	_Label_1710
	.word	-16
	.word	4
	.word	_Label_1711
	.word	-20
	.word	4
	.word	_Label_1712
	.word	-24
	.word	4
	.word	_Label_1713
	.word	-28
	.word	4
	.word	_Label_1714
	.word	-32
	.word	4
	.word	0
_Label_1706:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1707:
	.ascii	"Pself\0"
	.align
_Label_1708:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1700\0"
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
_Label_2883:
	push	r0
	sub	r1,1,r1
	bne	_Label_2883
	mov	1254,r13		! source line 1254
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0AS",r10
!   _temp_1715 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1715 [entry ] into _temp_1716
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
!   _temp_1719 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1719 [entry ] into _temp_1720
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
!   Data Move: _temp_1718 = *_temp_1720  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1717 = _temp_1718 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1716 = _temp_1717  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1258,r13		! source line 1258
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
	.word	_Label_1721
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1722
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1723
	.word	12
	.word	4
	.word	_Label_1724
	.word	-12
	.word	4
	.word	_Label_1725
	.word	-16
	.word	4
	.word	_Label_1726
	.word	-20
	.word	4
	.word	_Label_1727
	.word	-24
	.word	4
	.word	_Label_1728
	.word	-28
	.word	4
	.word	_Label_1729
	.word	-32
	.word	4
	.word	0
_Label_1721:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1722:
	.ascii	"Pself\0"
	.align
_Label_1723:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1715\0"
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
_Label_2884:
	push	r0
	sub	r1,1,r1
	bne	_Label_2884
	mov	1263,r13		! source line 1263
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1267,r13		! source line 1267
	mov	"\0\0AS",r10
!   _temp_1730 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1730 [entry ] into _temp_1731
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
!   _temp_1734 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1734 [entry ] into _temp_1735
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
!   Data Move: _temp_1733 = *_temp_1735  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1732 = _temp_1733 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1731 = _temp_1732  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1267,r13		! source line 1267
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
	.word	_Label_1736
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1737
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1738
	.word	12
	.word	4
	.word	_Label_1739
	.word	-12
	.word	4
	.word	_Label_1740
	.word	-16
	.word	4
	.word	_Label_1741
	.word	-20
	.word	4
	.word	_Label_1742
	.word	-24
	.word	4
	.word	_Label_1743
	.word	-28
	.word	4
	.word	_Label_1744
	.word	-32
	.word	4
	.word	0
_Label_1736:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1737:
	.ascii	"Pself\0"
	.align
_Label_1738:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1730\0"
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
_Label_2885:
	push	r0
	sub	r1,1,r1
	bne	_Label_2885
	mov	1272,r13		! source line 1272
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0AS",r10
!   _temp_1745 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1745 [entry ] into _temp_1746
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
!   _temp_1749 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1749 [entry ] into _temp_1750
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
!   Data Move: _temp_1748 = *_temp_1750  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1747 = _temp_1748 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1746 = _temp_1747  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1276,r13		! source line 1276
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
	.word	_Label_1751
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1752
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1753
	.word	12
	.word	4
	.word	_Label_1754
	.word	-12
	.word	4
	.word	_Label_1755
	.word	-16
	.word	4
	.word	_Label_1756
	.word	-20
	.word	4
	.word	_Label_1757
	.word	-24
	.word	4
	.word	_Label_1758
	.word	-28
	.word	4
	.word	_Label_1759
	.word	-32
	.word	4
	.word	0
_Label_1751:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1752:
	.ascii	"Pself\0"
	.align
_Label_1753:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1745\0"
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
_Label_2886:
	push	r0
	sub	r1,1,r1
	bne	_Label_2886
	mov	1281,r13		! source line 1281
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0AS",r10
!   _temp_1760 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1760 [entry ] into _temp_1761
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
!   _temp_1764 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1764 [entry ] into _temp_1765
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
!   Data Move: _temp_1763 = *_temp_1765  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1762 = _temp_1763 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1761 = _temp_1762  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1285,r13		! source line 1285
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
	.word	_Label_1766
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1767
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1768
	.word	12
	.word	4
	.word	_Label_1769
	.word	-12
	.word	4
	.word	_Label_1770
	.word	-16
	.word	4
	.word	_Label_1771
	.word	-20
	.word	4
	.word	_Label_1772
	.word	-24
	.word	4
	.word	_Label_1773
	.word	-28
	.word	4
	.word	_Label_1774
	.word	-32
	.word	4
	.word	0
_Label_1766:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1767:
	.ascii	"Pself\0"
	.align
_Label_1768:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1760\0"
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
_Label_2887:
	push	r0
	sub	r1,1,r1
	bne	_Label_2887
	mov	1290,r13		! source line 1290
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1776 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1776 [0 ] into _temp_1777
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
!   _temp_1775 = _temp_1777		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1778 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1775  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1778  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1296,r13		! source line 1296
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1296,r13		! source line 1296
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
	.word	_Label_1779
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1780
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1781
	.word	-12
	.word	4
	.word	_Label_1782
	.word	-16
	.word	4
	.word	_Label_1783
	.word	-20
	.word	4
	.word	_Label_1784
	.word	-24
	.word	4
	.word	0
_Label_1779:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1780:
	.ascii	"Pself\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1775\0"
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
_Label_2888:
	push	r0
	sub	r1,1,r1
	bne	_Label_2888
	mov	1301,r13		! source line 1301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1785
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1785
	jmp	_Label_1786
_Label_1785:
! THEN...
	mov	1317,r13		! source line 1317
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1317,r13		! source line 1317
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1787
_Label_1786:
! ELSE...
	mov	1318,r13		! source line 1318
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1789		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1789
!	jmp	_Label_1788
_Label_1788:
! THEN...
	mov	1319,r13		! source line 1319
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1789:
! END IF...
_Label_1787:
! ASSIGNMENT STATEMENT...
	mov	1321,r13		! source line 1321
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
	mov	1322,r13		! source line 1322
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
	mov	1325,r13		! source line 1325
	mov	"\0\0WH",r10
_Label_1790:
!	jmp	_Label_1791
_Label_1791:
	mov	1325,r13		! source line 1325
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1326,r13		! source line 1326
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1794		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1794
!	jmp	_Label_1793
_Label_1793:
! THEN...
	mov	1327,r13		! source line 1327
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1795 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1795  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1327,r13		! source line 1327
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1328,r13		! source line 1328
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1794:
! IF STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0IF",r10
	mov	1330,r13		! source line 1330
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1799) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1798  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1798 then goto _Label_1797 else goto _Label_1796
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1796
	jmp	_Label_1797
_Label_1796:
! THEN...
	mov	1331,r13		! source line 1331
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1800 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1800  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1331,r13		! source line 1331
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1797:
! ASSIGNMENT STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0AS",r10
	mov	1334,r13		! source line 1334
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1802) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1801  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1801 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0WH",r10
_Label_1803:
!   if offset >= 8192 then goto _Label_1805		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1805
!	jmp	_Label_1804
_Label_1804:
	mov	1336,r13		! source line 1336
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1806 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1806  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1340,r13		! source line 1340
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1341,r13		! source line 1341
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1342,r13		! source line 1342
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1344,r13		! source line 1344
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1808		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1808
!	jmp	_Label_1807
_Label_1807:
! THEN...
	mov	1345,r13		! source line 1345
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1345,r13		! source line 1345
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1808:
! END WHILE...
	jmp	_Label_1803
_Label_1805:
! ASSIGNMENT STATEMENT...
	mov	1348,r13		! source line 1348
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1349,r13		! source line 1349
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1790
_Label_1792:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1809
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1810
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1811
	.word	12
	.word	4
	.word	_Label_1812
	.word	16
	.word	4
	.word	_Label_1813
	.word	20
	.word	4
	.word	_Label_1814
	.word	-9
	.word	1
	.word	_Label_1815
	.word	-16
	.word	4
	.word	_Label_1816
	.word	-20
	.word	4
	.word	_Label_1817
	.word	-24
	.word	4
	.word	_Label_1818
	.word	-28
	.word	4
	.word	_Label_1819
	.word	-10
	.word	1
	.word	_Label_1820
	.word	-32
	.word	4
	.word	_Label_1821
	.word	-36
	.word	4
	.word	_Label_1822
	.word	-40
	.word	4
	.word	_Label_1823
	.word	-44
	.word	4
	.word	_Label_1824
	.word	-48
	.word	4
	.word	0
_Label_1809:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1810:
	.ascii	"Pself\0"
	.align
_Label_1811:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1812:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1813:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1814:
	.byte	'C'
	.ascii	"_temp_1806\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1819:
	.byte	'C'
	.ascii	"_temp_1798\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1821:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1822:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1823:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1824:
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
_Label_2889:
	push	r0
	sub	r1,1,r1
	bne	_Label_2889
	mov	1355,r13		! source line 1355
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1825
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1825
	jmp	_Label_1826
_Label_1825:
! THEN...
	mov	1367,r13		! source line 1367
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1827
_Label_1826:
! ELSE...
	mov	1368,r13		! source line 1368
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1368,r13		! source line 1368
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1829		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1829
!	jmp	_Label_1828
_Label_1828:
! THEN...
	mov	1369,r13		! source line 1369
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1829:
! END IF...
_Label_1827:
! ASSIGNMENT STATEMENT...
	mov	1371,r13		! source line 1371
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
	mov	1372,r13		! source line 1372
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
	mov	1373,r13		! source line 1373
	mov	"\0\0WH",r10
_Label_1830:
!	jmp	_Label_1831
_Label_1831:
	mov	1373,r13		! source line 1373
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1836		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1836
	jmp	_Label_1833
_Label_1836:
	mov	1375,r13		! source line 1375
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1838) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1837  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1837 then goto _Label_1835 else goto _Label_1833
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1833
	jmp	_Label_1835
_Label_1835:
	mov	1376,r13		! source line 1376
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1840) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1839  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1839 then goto _Label_1834 else goto _Label_1833
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1833
	jmp	_Label_1834
_Label_1833:
! THEN...
	mov	1377,r13		! source line 1377
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1377,r13		! source line 1377
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1834:
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
	mov	1379,r13		! source line 1379
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1842) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1841  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1841 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1380,r13		! source line 1380
	mov	"\0\0WH",r10
_Label_1843:
!   if offset >= 8192 then goto _Label_1845		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1845
!	jmp	_Label_1844
_Label_1844:
	mov	1380,r13		! source line 1380
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1846 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1846  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1848		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1848
!	jmp	_Label_1847
_Label_1847:
! THEN...
	mov	1387,r13		! source line 1387
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1848:
! END WHILE...
	jmp	_Label_1843
_Label_1845:
! ASSIGNMENT STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1391,r13		! source line 1391
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1830
_Label_1832:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1849
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1850
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1851
	.word	12
	.word	4
	.word	_Label_1852
	.word	16
	.word	4
	.word	_Label_1853
	.word	20
	.word	4
	.word	_Label_1854
	.word	-9
	.word	1
	.word	_Label_1855
	.word	-16
	.word	4
	.word	_Label_1856
	.word	-20
	.word	4
	.word	_Label_1857
	.word	-24
	.word	4
	.word	_Label_1858
	.word	-10
	.word	1
	.word	_Label_1859
	.word	-28
	.word	4
	.word	_Label_1860
	.word	-11
	.word	1
	.word	_Label_1861
	.word	-32
	.word	4
	.word	_Label_1862
	.word	-36
	.word	4
	.word	_Label_1863
	.word	-40
	.word	4
	.word	_Label_1864
	.word	-44
	.word	4
	.word	0
_Label_1849:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1850:
	.ascii	"Pself\0"
	.align
_Label_1851:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1852:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1853:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1854:
	.byte	'C'
	.ascii	"_temp_1846\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1858:
	.byte	'C'
	.ascii	"_temp_1839\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1860:
	.byte	'C'
	.ascii	"_temp_1837\0"
	.align
_Label_1861:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1862:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1863:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1864:
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
_Label_2890:
	push	r0
	sub	r1,1,r1
	bne	_Label_2890
	mov	1397,r13		! source line 1397
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1421,r13		! source line 1421
	mov	"\0\0IF",r10
	mov	1421,r13		! source line 1421
	mov	"\0\0SE",r10
!   _temp_1868 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1869) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1868  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1867  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1867 >= 4 then goto _Label_1866		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1866
!	jmp	_Label_1865
_Label_1865:
! THEN...
	mov	1424,r13		! source line 1424
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1866:
! IF STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1871		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1871
!	jmp	_Label_1870
_Label_1870:
! THEN...
	mov	1429,r13		! source line 1429
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1871:
! ASSIGNMENT STATEMENT...
	mov	1432,r13		! source line 1432
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
	mov	1434,r13		! source line 1434
	mov	"\0\0RE",r10
	mov	1434,r13		! source line 1434
	mov	"\0\0SE",r10
!   _temp_1874 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1873 = _temp_1874 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1875 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1876) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1873  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1875  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1872  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1872  (sizeInBytes=4)
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
	.word	_Label_1877
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1878
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1879
	.word	12
	.word	4
	.word	_Label_1880
	.word	16
	.word	4
	.word	_Label_1881
	.word	20
	.word	4
	.word	_Label_1882
	.word	-12
	.word	4
	.word	_Label_1883
	.word	-16
	.word	4
	.word	_Label_1884
	.word	-20
	.word	4
	.word	_Label_1885
	.word	-24
	.word	4
	.word	_Label_1886
	.word	-28
	.word	4
	.word	_Label_1887
	.word	-32
	.word	4
	.word	_Label_1888
	.word	-36
	.word	4
	.word	_Label_1889
	.word	-40
	.word	4
	.word	_Label_1890
	.word	-44
	.word	4
	.word	0
_Label_1877:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1878:
	.ascii	"Pself\0"
	.align
_Label_1879:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1880:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1881:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1890:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_1891
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_1891:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1892
	.word	_sourceFileName
	.word	308		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_1892:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_2891:
	push	r0
	sub	r1,1,r1
	bne	_Label_2891
	mov	1767,r13		! source line 1767
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1893 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1893  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1768,r13		! source line 1768
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	1771,r13		! source line 1771
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1773,r13		! source line 1773
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1775,r13		! source line 1775
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	1776,r13		! source line 1776
	mov	"\0\0SE",r10
!   _temp_1895 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1777,r13		! source line 1777
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	1778,r13		! source line 1778
	mov	"\0\0SE",r10
!   _temp_1897 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
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
	mov	1778,r13		! source line 1778
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_1898
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1899
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1900
	.word	-12
	.word	4
	.word	_Label_1901
	.word	-16
	.word	4
	.word	_Label_1902
	.word	-20
	.word	4
	.word	_Label_1903
	.word	-24
	.word	4
	.word	_Label_1904
	.word	-28
	.word	4
	.word	0
_Label_1898:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1899:
	.ascii	"Pself\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_2892:
	push	r0
	sub	r1,1,r1
	bne	_Label_2892
	mov	1783,r13		! source line 1783
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1796,r13		! source line 1796
	mov	"\0\0SE",r10
!   _temp_1905 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0WH",r10
_Label_1906:
!	jmp	_Label_1907
_Label_1907:
	mov	1797,r13		! source line 1797
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1799,r13		! source line 1799
	mov	"\0\0SE",r10
!   _temp_1909 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1910) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_1909  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1801,r13		! source line 1801
	mov	"\0\0SE",r10
!   _temp_1911 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	1804,r13		! source line 1804
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1920 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_1914
	cmp	r1,2
	be	_Label_1915
	cmp	r1,3
	be	_Label_1916
	cmp	r1,4
	be	_Label_1917
	cmp	r1,5
	be	_Label_1918
	cmp	r1,6
	be	_Label_1919
	jmp	_Label_1912
! CASE 1...
_Label_1914:
! SEND STATEMENT...
	mov	1806,r13		! source line 1806
	mov	"\0\0SE",r10
!   _temp_1921 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_1915:
! CALL STATEMENT...
!   _temp_1922 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1922  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1809,r13		! source line 1809
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_1916:
! CALL STATEMENT...
!   _temp_1923 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1923  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1811,r13		! source line 1811
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_1917:
! CALL STATEMENT...
!   _temp_1924 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1924  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1813,r13		! source line 1813
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_1918:
! BREAK STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0BR",r10
	jmp	_Label_1913
! CASE 6...
_Label_1919:
! CALL STATEMENT...
!   _temp_1925 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1925  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1819,r13		! source line 1819
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_1912:
! CALL STATEMENT...
!   _temp_1926 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1926  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1821,r13		! source line 1821
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1913:
! END WHILE...
	jmp	_Label_1906
_Label_1908:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_1927
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1928
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1929
	.word	12
	.word	4
	.word	_Label_1930
	.word	16
	.word	4
	.word	_Label_1931
	.word	20
	.word	4
	.word	_Label_1932
	.word	-12
	.word	4
	.word	_Label_1933
	.word	-16
	.word	4
	.word	_Label_1934
	.word	-20
	.word	4
	.word	_Label_1935
	.word	-24
	.word	4
	.word	_Label_1936
	.word	-28
	.word	4
	.word	_Label_1937
	.word	-32
	.word	4
	.word	_Label_1938
	.word	-36
	.word	4
	.word	_Label_1939
	.word	-40
	.word	4
	.word	_Label_1940
	.word	-44
	.word	4
	.word	_Label_1941
	.word	-48
	.word	4
	.word	_Label_1942
	.word	-52
	.word	4
	.word	0
_Label_1927:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_1928:
	.ascii	"Pself\0"
	.align
_Label_1929:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_1930:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_1931:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	1830,r13		! source line 1830
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1845,r13		! source line 1845
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1848,r13		! source line 1848
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1849,r13		! source line 1849
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1850,r13		! source line 1850
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_1943
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1944
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1945
	.word	12
	.word	4
	.word	_Label_1946
	.word	16
	.word	4
	.word	_Label_1947
	.word	20
	.word	4
	.word	_Label_1948
	.word	24
	.word	4
	.word	0
_Label_1943:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_1944:
	.ascii	"Pself\0"
	.align
_Label_1945:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_1946:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_1947:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_1948:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_2893:
	push	r0
	sub	r1,1,r1
	bne	_Label_2893
	mov	1856,r13		! source line 1856
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1868,r13		! source line 1868
	mov	"\0\0SE",r10
!   _temp_1949 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1869,r13		! source line 1869
	mov	"\0\0WH",r10
_Label_1950:
!	jmp	_Label_1951
_Label_1951:
	mov	1869,r13		! source line 1869
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1870,r13		! source line 1870
	mov	"\0\0SE",r10
!   _temp_1953 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1954) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_1953  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0SE",r10
!   _temp_1955 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	1875,r13		! source line 1875
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1964 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_1958
	cmp	r1,2
	be	_Label_1959
	cmp	r1,3
	be	_Label_1960
	cmp	r1,4
	be	_Label_1961
	cmp	r1,5
	be	_Label_1962
	cmp	r1,6
	be	_Label_1963
	jmp	_Label_1956
! CASE 1...
_Label_1958:
! SEND STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0SE",r10
!   _temp_1965 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_1959:
! CALL STATEMENT...
!   _temp_1966 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1966  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1880,r13		! source line 1880
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_1960:
! CALL STATEMENT...
!   _temp_1967 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1967  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1882,r13		! source line 1882
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_1961:
! CALL STATEMENT...
!   _temp_1968 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1968  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1884,r13		! source line 1884
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_1962:
! BREAK STATEMENT...
	mov	1888,r13		! source line 1888
	mov	"\0\0BR",r10
	jmp	_Label_1957
! CASE 6...
_Label_1963:
! CALL STATEMENT...
!   _temp_1969 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1969  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1890,r13		! source line 1890
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_1956:
! CALL STATEMENT...
!   _temp_1970 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1970  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1892,r13		! source line 1892
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1957:
! END WHILE...
	jmp	_Label_1950
_Label_1952:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_1971
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1972
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1973
	.word	12
	.word	4
	.word	_Label_1974
	.word	16
	.word	4
	.word	_Label_1975
	.word	20
	.word	4
	.word	_Label_1976
	.word	-12
	.word	4
	.word	_Label_1977
	.word	-16
	.word	4
	.word	_Label_1978
	.word	-20
	.word	4
	.word	_Label_1979
	.word	-24
	.word	4
	.word	_Label_1980
	.word	-28
	.word	4
	.word	_Label_1981
	.word	-32
	.word	4
	.word	_Label_1982
	.word	-36
	.word	4
	.word	_Label_1983
	.word	-40
	.word	4
	.word	_Label_1984
	.word	-44
	.word	4
	.word	_Label_1985
	.word	-48
	.word	4
	.word	_Label_1986
	.word	-52
	.word	4
	.word	0
_Label_1971:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_1972:
	.ascii	"Pself\0"
	.align
_Label_1973:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_1974:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_1975:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	1901,r13		! source line 1901
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_1987
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1988
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1989
	.word	12
	.word	4
	.word	_Label_1990
	.word	16
	.word	4
	.word	_Label_1991
	.word	20
	.word	4
	.word	_Label_1992
	.word	24
	.word	4
	.word	0
_Label_1987:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_1988:
	.ascii	"Pself\0"
	.align
_Label_1989:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_1990:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_1991:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_1992:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_1993
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_1993:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1994
	.word	_sourceFileName
	.word	331		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_1994:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_2894:
	push	r0
	sub	r1,1,r1
	bne	_Label_2894
	mov	1932,r13		! source line 1932
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1995 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_1995  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	1939,r13		! source line 1939
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1941,r13		! source line 1941
	mov	"\0\0SE",r10
!   _temp_1997 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	1945,r13		! source line 1945
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0SE",r10
!   _temp_2000 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0AS",r10
!   _temp_2001 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2003 = &_temp_2002
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2003 = _temp_2003 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2005 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_2895:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2895
!   _temp_2005 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2007:
!   Data Move: *_temp_2003 = _temp_2005  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_2896:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2896
!   _temp_2003 = _temp_2003 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2004 = _temp_2004 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2004) then goto _Label_2007
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2007
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2008 = &_temp_2002
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2897
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2897:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2001 = *_temp_2008  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_2898:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2898
! FOR STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2013 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2014 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2013  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2009:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2014 then goto _Label_2012		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2012
_Label_2010:
	mov	1949,r13		! source line 1949
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1950,r13		! source line 1950
	mov	"\0\0AS",r10
!   _temp_2015 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2015 [i ] into _temp_2016
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2017 = _temp_2016 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2017 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0SE",r10
!   _temp_2018 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2018 [i ] into _temp_2019
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1952,r13		! source line 1952
	mov	"\0\0SE",r10
!   _temp_2021 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2021 [i ] into _temp_2022
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2020 = _temp_2022		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2023 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2020  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2011:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2009
! END FOR
_Label_2012:
! ASSIGNMENT STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	1957,r13		! source line 1957
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0SE",r10
!   _temp_2026 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1959,r13		! source line 1959
	mov	"\0\0AS",r10
!   _temp_2027 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2029 = &_temp_2028
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2029 = _temp_2029 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2031 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_2899:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2899
!   _temp_2031 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2033:
!   Data Move: *_temp_2029 = _temp_2031  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_2900:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2900
!   _temp_2029 = _temp_2029 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2030 = _temp_2030 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2030) then goto _Label_2033
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2033
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2034 = &_temp_2028
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2901
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2901:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2027 = *_temp_2034  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_2902:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2902
! FOR STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2039 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2040 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2039  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2035:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2040 then goto _Label_2038		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2038
_Label_2036:
	mov	1961,r13		! source line 1961
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1962,r13		! source line 1962
	mov	"\0\0AS",r10
!   _temp_2041 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2041 [i ] into _temp_2042
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2043 = _temp_2042 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2043 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0SE",r10
!   _temp_2045 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2045 [i ] into _temp_2046
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2044 = _temp_2046		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2047 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2044  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2037:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2035
! END FOR
_Label_2038:
! ASSIGNMENT STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_2903:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2903
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0AS",r10
!   _temp_2049 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2050 = _temp_2049 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2050 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0AS",r10
	mov	1973,r13		! source line 1973
	mov	"\0\0SE",r10
!   _temp_2051 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0SE",r10
!   _temp_2052 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2053
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2054
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2055
	.word	-12
	.word	4
	.word	_Label_2056
	.word	-16
	.word	4
	.word	_Label_2057
	.word	-20
	.word	4
	.word	_Label_2058
	.word	-24
	.word	4
	.word	_Label_2059
	.word	-28
	.word	4
	.word	_Label_2060
	.word	-32
	.word	4
	.word	_Label_2061
	.word	-36
	.word	4
	.word	_Label_2062
	.word	-40
	.word	4
	.word	_Label_2063
	.word	-44
	.word	4
	.word	_Label_2064
	.word	-48
	.word	4
	.word	_Label_2065
	.word	-52
	.word	4
	.word	_Label_2066
	.word	-56
	.word	4
	.word	_Label_2067
	.word	-60
	.word	4
	.word	_Label_2068
	.word	-64
	.word	4
	.word	_Label_2069
	.word	-68
	.word	4
	.word	_Label_2070
	.word	-72
	.word	4
	.word	_Label_2071
	.word	-100
	.word	28
	.word	_Label_2072
	.word	-104
	.word	4
	.word	_Label_2073
	.word	-108
	.word	4
	.word	_Label_2074
	.word	-392
	.word	284
	.word	_Label_2075
	.word	-396
	.word	4
	.word	_Label_2076
	.word	-400
	.word	4
	.word	_Label_2077
	.word	-404
	.word	4
	.word	_Label_2078
	.word	-408
	.word	4
	.word	_Label_2079
	.word	-412
	.word	4
	.word	_Label_2080
	.word	-416
	.word	4
	.word	_Label_2081
	.word	-420
	.word	4
	.word	_Label_2082
	.word	-424
	.word	4
	.word	_Label_2083
	.word	-428
	.word	4
	.word	_Label_2084
	.word	-432
	.word	4
	.word	_Label_2085
	.word	-436
	.word	4
	.word	_Label_2086
	.word	-440
	.word	4
	.word	_Label_2087
	.word	-444
	.word	4
	.word	_Label_2088
	.word	-448
	.word	4
	.word	_Label_2089
	.word	-452
	.word	4
	.word	_Label_2090
	.word	-456
	.word	4
	.word	_Label_2091
	.word	-460
	.word	4
	.word	_Label_2092
	.word	-500
	.word	40
	.word	_Label_2093
	.word	-504
	.word	4
	.word	_Label_2094
	.word	-508
	.word	4
	.word	_Label_2095
	.word	-912
	.word	404
	.word	_Label_2096
	.word	-916
	.word	4
	.word	_Label_2097
	.word	-920
	.word	4
	.word	_Label_2098
	.word	-924
	.word	4
	.word	_Label_2099
	.word	-928
	.word	4
	.word	_Label_2100
	.word	-932
	.word	4
	.word	_Label_2101
	.word	-936
	.word	4
	.word	_Label_2102
	.word	-940
	.word	4
	.word	_Label_2103
	.word	-944
	.word	4
	.word	0
_Label_2053:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2054:
	.ascii	"Pself\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2059:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2103:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_2904:
	push	r0
	sub	r1,1,r1
	bne	_Label_2904
	mov	1981,r13		! source line 1981
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0SE",r10
!   _temp_2104 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2105 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2105  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1984,r13		! source line 1984
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2110 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2111 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2110  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2106:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2111 then goto _Label_2109		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2109
_Label_2107:
	mov	1985,r13		! source line 1985
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2112 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2112  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1986,r13		! source line 1986
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1987,r13		! source line 1987
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2113 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2113  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	1988,r13		! source line 1988
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1989,r13		! source line 1989
	mov	"\0\0SE",r10
!   _temp_2114 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2114 [i ] into _temp_2115
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2108:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2106
! END FOR
_Label_2109:
! CALL STATEMENT...
!   _temp_2116 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2116  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	1991,r13		! source line 1991
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0SE",r10
!   _temp_2117 = _function_183_printFCB
	set	_function_183_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2118 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2117  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1993,r13		! source line 1993
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2119 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2119  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1994,r13		! source line 1994
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2124 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2125 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2124  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2120:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2125 then goto _Label_2123		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2123
_Label_2121:
	mov	1995,r13		! source line 1995
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2126 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2126  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1996,r13		! source line 1996
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1997,r13		! source line 1997
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2127 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2127  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1998,r13		! source line 1998
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2129 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2129 [i ] into _temp_2130
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2128 = _temp_2130		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2128  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1999,r13		! source line 1999
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2131 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2131  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2000,r13		! source line 2000
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2001,r13		! source line 2001
	mov	"\0\0SE",r10
!   _temp_2132 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2132 [i ] into _temp_2133
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2122:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2120
! END FOR
_Label_2123:
! CALL STATEMENT...
!   _temp_2134 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2134  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2003,r13		! source line 2003
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2004,r13		! source line 2004
	mov	"\0\0SE",r10
!   _temp_2135 = _function_182_printOpen
	set	_function_182_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2136 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2135  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2005,r13		! source line 2005
	mov	"\0\0SE",r10
!   _temp_2137 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2005,r13		! source line 2005
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2138
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2139
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2140
	.word	-12
	.word	4
	.word	_Label_2141
	.word	-16
	.word	4
	.word	_Label_2142
	.word	-20
	.word	4
	.word	_Label_2143
	.word	-24
	.word	4
	.word	_Label_2144
	.word	-28
	.word	4
	.word	_Label_2145
	.word	-32
	.word	4
	.word	_Label_2146
	.word	-36
	.word	4
	.word	_Label_2147
	.word	-40
	.word	4
	.word	_Label_2148
	.word	-44
	.word	4
	.word	_Label_2149
	.word	-48
	.word	4
	.word	_Label_2150
	.word	-52
	.word	4
	.word	_Label_2151
	.word	-56
	.word	4
	.word	_Label_2152
	.word	-60
	.word	4
	.word	_Label_2153
	.word	-64
	.word	4
	.word	_Label_2154
	.word	-68
	.word	4
	.word	_Label_2155
	.word	-72
	.word	4
	.word	_Label_2156
	.word	-76
	.word	4
	.word	_Label_2157
	.word	-80
	.word	4
	.word	_Label_2158
	.word	-84
	.word	4
	.word	_Label_2159
	.word	-88
	.word	4
	.word	_Label_2160
	.word	-92
	.word	4
	.word	_Label_2161
	.word	-96
	.word	4
	.word	_Label_2162
	.word	-100
	.word	4
	.word	_Label_2163
	.word	-104
	.word	4
	.word	_Label_2164
	.word	-108
	.word	4
	.word	_Label_2165
	.word	-112
	.word	4
	.word	_Label_2166
	.word	-116
	.word	4
	.word	0
_Label_2138:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2139:
	.ascii	"Pself\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2112\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2166:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_2905:
	push	r0
	sub	r1,1,r1
	bne	_Label_2905
	mov	2010,r13		! source line 2010
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0AS",r10
	mov	2026,r13		! source line 2026
	mov	"\0\0SE",r10
!   _temp_2167 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2027,r13		! source line 2027
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2168
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2168
	jmp	_Label_2169
_Label_2168:
! THEN...
	mov	2028,r13		! source line 2028
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2169:
! SEND STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0SE",r10
!   _temp_2170 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0WH",r10
_Label_2171:
	mov	2033,r13		! source line 2033
	mov	"\0\0SE",r10
!   _temp_2174 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2172 else goto _Label_2173
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2173
	jmp	_Label_2172
_Label_2172:
	mov	2033,r13		! source line 2033
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0SE",r10
!   _temp_2175 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2176 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2175  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2171
_Label_2173:
! ASSIGNMENT STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0AS",r10
	mov	2036,r13		! source line 2036
	mov	"\0\0SE",r10
!   _temp_2177 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2178 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2178 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2179 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2179 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2180 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2180 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0SE",r10
!   _temp_2181 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2046,r13		! source line 2046
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2182
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2183
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2184
	.word	12
	.word	4
	.word	_Label_2185
	.word	-12
	.word	4
	.word	_Label_2186
	.word	-16
	.word	4
	.word	_Label_2187
	.word	-20
	.word	4
	.word	_Label_2188
	.word	-24
	.word	4
	.word	_Label_2189
	.word	-28
	.word	4
	.word	_Label_2190
	.word	-32
	.word	4
	.word	_Label_2191
	.word	-36
	.word	4
	.word	_Label_2192
	.word	-40
	.word	4
	.word	_Label_2193
	.word	-44
	.word	4
	.word	_Label_2194
	.word	-48
	.word	4
	.word	_Label_2195
	.word	-52
	.word	4
	.word	_Label_2196
	.word	-56
	.word	4
	.word	0
_Label_2182:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2183:
	.ascii	"Pself\0"
	.align
_Label_2184:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2195:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2196:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_2906:
	push	r0
	sub	r1,1,r1
	bne	_Label_2906
	mov	2051,r13		! source line 2051
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2198		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2198
!	jmp	_Label_2197
_Label_2197:
! THEN...
	mov	2082,r13		! source line 2082
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2199 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2199  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2082,r13		! source line 2082
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2198:
! ASSIGNMENT STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0WH",r10
_Label_2200:
!   if numFiles <= 0 then goto _Label_2202		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2202
!	jmp	_Label_2201
_Label_2201:
	mov	2092,r13		! source line 2092
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2203 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2203  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2093,r13		! source line 2093
	mov	"\0\0CA",r10
	call	_function_184_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2204 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2204  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2095,r13		! source line 2095
	mov	"\0\0CA",r10
	call	_function_184_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2205 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2205  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2097,r13		! source line 2097
	mov	"\0\0CA",r10
	call	_function_184_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2209 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2209 then goto _Label_2207		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2207
!	jmp	_Label_2208
_Label_2208:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2211
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2210 = _temp_2211		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2210  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2100,r13		! source line 2100
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2206 else goto _Label_2207
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2207
	jmp	_Label_2206
_Label_2206:
! THEN...
	mov	2101,r13		! source line 2101
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0BR",r10
	jmp	_Label_2202
! END IF...
_Label_2207:
! ASSIGNMENT STATEMENT...
	mov	2103,r13		! source line 2103
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2200
_Label_2202:
! IF STATEMENT...
	mov	2108,r13		! source line 2108
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2213		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2213
!	jmp	_Label_2212
_Label_2212:
! THEN...
	mov	2109,r13		! source line 2109
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2213:
! SEND STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0SE",r10
!   _temp_2214 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2219 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2220 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2219  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2215:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2220 then goto _Label_2218		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2218
_Label_2216:
	mov	2114,r13		! source line 2114
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   _temp_2221 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2221 [i ] into _temp_2222
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2222		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2226 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2225 = *_temp_2226  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2225 != start then goto _Label_2224		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2224
!	jmp	_Label_2223
_Label_2223:
! THEN...
	mov	2117,r13		! source line 2117
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2227 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2230 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2229 = *_temp_2230  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2228 = _temp_2229 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2227 = _temp_2228  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0SE",r10
!   _temp_2231 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2224:
!   Increment the FOR-LOOP index variable and jump back
_Label_2217:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2215
! END FOR
_Label_2218:
! WHILE STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0WH",r10
_Label_2232:
	mov	2124,r13		! source line 2124
	mov	"\0\0SE",r10
!   _temp_2235 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2233 else goto _Label_2234
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2234
	jmp	_Label_2233
_Label_2233:
	mov	2124,r13		! source line 2124
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0SE",r10
!   _temp_2236 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2237 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2236  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2232
_Label_2234:
! ASSIGNMENT STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0AS",r10
	mov	2127,r13		! source line 2127
	mov	"\0\0SE",r10
!   _temp_2238 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0SE",r10
!   _temp_2239 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2240 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2240 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2241 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2241 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2242 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2242 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2247 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2246 = *_temp_2247  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2246 < 0 then goto _Label_2245		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2245
	jmp	_Label_2243
_Label_2245:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2248 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2248 ) then goto _Label_2244		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2244
!	jmp	_Label_2243
_Label_2243:
! THEN...
	mov	2137,r13		! source line 2137
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2249 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2249  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2137,r13		! source line 2137
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2244:
! RETURN STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2250
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2251
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2252
	.word	12
	.word	4
	.word	_Label_2253
	.word	-12
	.word	4
	.word	_Label_2254
	.word	-16
	.word	4
	.word	_Label_2255
	.word	-20
	.word	4
	.word	_Label_2256
	.word	-24
	.word	4
	.word	_Label_2257
	.word	-28
	.word	4
	.word	_Label_2258
	.word	-32
	.word	4
	.word	_Label_2259
	.word	-36
	.word	4
	.word	_Label_2260
	.word	-40
	.word	4
	.word	_Label_2261
	.word	-44
	.word	4
	.word	_Label_2262
	.word	-48
	.word	4
	.word	_Label_2263
	.word	-52
	.word	4
	.word	_Label_2264
	.word	-56
	.word	4
	.word	_Label_2265
	.word	-60
	.word	4
	.word	_Label_2266
	.word	-64
	.word	4
	.word	_Label_2267
	.word	-68
	.word	4
	.word	_Label_2268
	.word	-72
	.word	4
	.word	_Label_2269
	.word	-76
	.word	4
	.word	_Label_2270
	.word	-80
	.word	4
	.word	_Label_2271
	.word	-84
	.word	4
	.word	_Label_2272
	.word	-88
	.word	4
	.word	_Label_2273
	.word	-92
	.word	4
	.word	_Label_2274
	.word	-96
	.word	4
	.word	_Label_2275
	.word	-100
	.word	4
	.word	_Label_2276
	.word	-104
	.word	4
	.word	_Label_2277
	.word	-108
	.word	4
	.word	_Label_2278
	.word	-112
	.word	4
	.word	_Label_2279
	.word	-116
	.word	4
	.word	_Label_2280
	.word	-120
	.word	4
	.word	_Label_2281
	.word	-124
	.word	4
	.word	_Label_2282
	.word	-128
	.word	4
	.word	_Label_2283
	.word	-132
	.word	4
	.word	_Label_2284
	.word	-136
	.word	4
	.word	_Label_2285
	.word	-140
	.word	4
	.word	_Label_2286
	.word	-144
	.word	4
	.word	_Label_2287
	.word	-148
	.word	4
	.word	_Label_2288
	.word	-152
	.word	4
	.word	_Label_2289
	.word	-156
	.word	4
	.word	_Label_2290
	.word	-160
	.word	4
	.word	0
_Label_2250:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2251:
	.ascii	"Pself\0"
	.align
_Label_2252:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2284:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2285:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2286:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2287:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2288:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2289:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2290:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_2907:
	push	r0
	sub	r1,1,r1
	bne	_Label_2907
	mov	2152,r13		! source line 2152
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2154,r13		! source line 2154
	mov	"\0\0IF",r10
!   _temp_2293 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2293 then goto _Label_2292		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2292
!	jmp	_Label_2291
_Label_2291:
! THEN...
	mov	2155,r13		! source line 2155
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2292:
! SEND STATEMENT...
	mov	2157,r13		! source line 2157
	mov	"\0\0SE",r10
!   _temp_2294 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2158,r13		! source line 2158
	mov	"\0\0SE",r10
!   _temp_2295 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2296 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2296  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2297 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2300 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2299 = *_temp_2300  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2298 = _temp_2299 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2297 = _temp_2298  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2304 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2303 = *_temp_2304  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2303 > 0 then goto _Label_2302		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2302
!	jmp	_Label_2301
_Label_2301:
! THEN...
	mov	2162,r13		! source line 2162
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0SE",r10
!   _temp_2305 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0SE",r10
!   _temp_2306 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2307 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2306  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2308 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2311 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2310 = *_temp_2311  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2309 = _temp_2310 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2308 = _temp_2309  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2315 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2314 = *_temp_2315  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2314 > 0 then goto _Label_2313		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2313
!	jmp	_Label_2312
_Label_2312:
! THEN...
	mov	2166,r13		! source line 2166
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0SE",r10
!   _temp_2316 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	2167,r13		! source line 2167
	mov	"\0\0SE",r10
!   _temp_2317 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2318 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2317  sizeInBytes=4
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
! END IF...
_Label_2313:
! END IF...
_Label_2302:
! SEND STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0SE",r10
!   _temp_2319 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2170,r13		! source line 2170
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2320
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2321
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2322
	.word	12
	.word	4
	.word	_Label_2323
	.word	-12
	.word	4
	.word	_Label_2324
	.word	-16
	.word	4
	.word	_Label_2325
	.word	-20
	.word	4
	.word	_Label_2326
	.word	-24
	.word	4
	.word	_Label_2327
	.word	-28
	.word	4
	.word	_Label_2328
	.word	-32
	.word	4
	.word	_Label_2329
	.word	-36
	.word	4
	.word	_Label_2330
	.word	-40
	.word	4
	.word	_Label_2331
	.word	-44
	.word	4
	.word	_Label_2332
	.word	-48
	.word	4
	.word	_Label_2333
	.word	-52
	.word	4
	.word	_Label_2334
	.word	-56
	.word	4
	.word	_Label_2335
	.word	-60
	.word	4
	.word	_Label_2336
	.word	-64
	.word	4
	.word	_Label_2337
	.word	-68
	.word	4
	.word	_Label_2338
	.word	-72
	.word	4
	.word	_Label_2339
	.word	-76
	.word	4
	.word	_Label_2340
	.word	-80
	.word	4
	.word	_Label_2341
	.word	-84
	.word	4
	.word	_Label_2342
	.word	-88
	.word	4
	.word	_Label_2343
	.word	-92
	.word	4
	.word	_Label_2344
	.word	-96
	.word	4
	.word	_Label_2345
	.word	-100
	.word	4
	.word	_Label_2346
	.word	-104
	.word	4
	.word	0
_Label_2320:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2321:
	.ascii	"Pself\0"
	.align
_Label_2322:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2346:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_2908:
	push	r0
	sub	r1,1,r1
	bne	_Label_2908
	mov	2175,r13		! source line 2175
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2350 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2349 = *_temp_2350  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2349) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2351 = _temp_2349 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2351 ) then goto _Label_2348		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2348
!	jmp	_Label_2347
_Label_2347:
! THEN...
	mov	2181,r13		! source line 2181
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2181,r13		! source line 2181
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2356 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2355 = *_temp_2356  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2355) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2357 = _temp_2355 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2354 = *_temp_2357  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2354 >= 0 then goto _Label_2353		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2353
!	jmp	_Label_2352
_Label_2352:
! THEN...
	mov	2182,r13		! source line 2182
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2358 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2358  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2182,r13		! source line 2182
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2353:
! ASSIGNMENT STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2360 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2359 = *_temp_2360  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2359) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2361 = _temp_2359 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2361 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2185,r13		! source line 2185
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2365 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2364 = *_temp_2365  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2364) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2366 = _temp_2364 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2363 = *_temp_2366  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2369 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2368 = *_temp_2369  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2368) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2370 = _temp_2368 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2367 = *_temp_2370  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2362 = _temp_2363 + _temp_2367		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2373 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2372 = *_temp_2373  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2372) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2374 = _temp_2372 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2371 = *_temp_2374  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2375 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2362  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2371  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2348:
! RETURN STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2376
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2377
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2378
	.word	12
	.word	4
	.word	_Label_2379
	.word	-12
	.word	4
	.word	_Label_2380
	.word	-16
	.word	4
	.word	_Label_2381
	.word	-20
	.word	4
	.word	_Label_2382
	.word	-24
	.word	4
	.word	_Label_2383
	.word	-28
	.word	4
	.word	_Label_2384
	.word	-32
	.word	4
	.word	_Label_2385
	.word	-36
	.word	4
	.word	_Label_2386
	.word	-40
	.word	4
	.word	_Label_2387
	.word	-44
	.word	4
	.word	_Label_2388
	.word	-48
	.word	4
	.word	_Label_2389
	.word	-52
	.word	4
	.word	_Label_2390
	.word	-56
	.word	4
	.word	_Label_2391
	.word	-60
	.word	4
	.word	_Label_2392
	.word	-64
	.word	4
	.word	_Label_2393
	.word	-68
	.word	4
	.word	_Label_2394
	.word	-72
	.word	4
	.word	_Label_2395
	.word	-76
	.word	4
	.word	_Label_2396
	.word	-80
	.word	4
	.word	_Label_2397
	.word	-84
	.word	4
	.word	_Label_2398
	.word	-88
	.word	4
	.word	_Label_2399
	.word	-92
	.word	4
	.word	_Label_2400
	.word	-96
	.word	4
	.word	_Label_2401
	.word	-100
	.word	4
	.word	_Label_2402
	.word	-104
	.word	4
	.word	_Label_2403
	.word	-108
	.word	4
	.word	0
_Label_2376:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2377:
	.ascii	"Pself\0"
	.align
_Label_2378:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_2909:
	push	r0
	sub	r1,1,r1
	bne	_Label_2909
	mov	2194,r13		! source line 2194
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0SE",r10
!   _temp_2404 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2410		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2410
!   _temp_2409 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2411
_Label_2410:
!   _temp_2409 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2411:
!   if _temp_2409 then goto _Label_2408 else goto _Label_2405
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2405
	jmp	_Label_2408
_Label_2408:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2414 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2413 = *_temp_2414  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2413 == 0 then goto _Label_2415		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2415
!   _temp_2412 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2416
_Label_2415:
!   _temp_2412 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2416:
!   if _temp_2412 then goto _Label_2407 else goto _Label_2405
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2405
	jmp	_Label_2407
_Label_2407:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2419 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2418 = *_temp_2419  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2418) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2420 = _temp_2418 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2417 = *_temp_2420  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2417 >= 0 then goto _Label_2406		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2406
!	jmp	_Label_2405
_Label_2405:
! THEN...
	mov	2211,r13		! source line 2211
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2421 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2421  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2211,r13		! source line 2211
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2406:
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2422 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2422  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0WH",r10
_Label_2423:
!   if numBytes <= 0 then goto _Label_2425		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2425
!	jmp	_Label_2424
_Label_2424:
	mov	2214,r13		! source line 2214
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2429 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2428 = *_temp_2429  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2428 == sector then goto _Label_2427		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2427
!	jmp	_Label_2426
_Label_2426:
! THEN...
	mov	2229,r13		! source line 2229
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2229,r13		! source line 2229
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2430) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2433 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2432 = *_temp_2433  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2431 = sector + _temp_2432		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2435 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2434 = *_temp_2435  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2436 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2431  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2434  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2234,r13		! source line 2234
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2437 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2437 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2438 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2438 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2427:
! ASSIGNMENT STATEMENT...
	mov	2237,r13		! source line 2237
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2440 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2439 = *_temp_2440  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2439 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0AS",r10
!   _temp_2441 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2441  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2238,r13		! source line 2238
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2242,r13		! source line 2242
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2423
_Label_2425:
! SEND STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0SE",r10
!   _temp_2442 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2253,r13		! source line 2253
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2443
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2444
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2445
	.word	12
	.word	4
	.word	_Label_2446
	.word	16
	.word	4
	.word	_Label_2447
	.word	20
	.word	4
	.word	_Label_2448
	.word	24
	.word	4
	.word	_Label_2449
	.word	-16
	.word	4
	.word	_Label_2450
	.word	-20
	.word	4
	.word	_Label_2451
	.word	-24
	.word	4
	.word	_Label_2452
	.word	-28
	.word	4
	.word	_Label_2453
	.word	-32
	.word	4
	.word	_Label_2454
	.word	-36
	.word	4
	.word	_Label_2455
	.word	-40
	.word	4
	.word	_Label_2456
	.word	-44
	.word	4
	.word	_Label_2457
	.word	-48
	.word	4
	.word	_Label_2458
	.word	-52
	.word	4
	.word	_Label_2459
	.word	-56
	.word	4
	.word	_Label_2460
	.word	-60
	.word	4
	.word	_Label_2461
	.word	-64
	.word	4
	.word	_Label_2462
	.word	-68
	.word	4
	.word	_Label_2463
	.word	-72
	.word	4
	.word	_Label_2464
	.word	-76
	.word	4
	.word	_Label_2465
	.word	-80
	.word	4
	.word	_Label_2466
	.word	-84
	.word	4
	.word	_Label_2467
	.word	-88
	.word	4
	.word	_Label_2468
	.word	-92
	.word	4
	.word	_Label_2469
	.word	-96
	.word	4
	.word	_Label_2470
	.word	-100
	.word	4
	.word	_Label_2471
	.word	-104
	.word	4
	.word	_Label_2472
	.word	-9
	.word	1
	.word	_Label_2473
	.word	-10
	.word	1
	.word	_Label_2474
	.word	-108
	.word	4
	.word	_Label_2475
	.word	-112
	.word	4
	.word	_Label_2476
	.word	-116
	.word	4
	.word	_Label_2477
	.word	-120
	.word	4
	.word	_Label_2478
	.word	-124
	.word	4
	.word	_Label_2479
	.word	-128
	.word	4
	.word	0
_Label_2443:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2444:
	.ascii	"Pself\0"
	.align
_Label_2445:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2446:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2447:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2448:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2472:
	.byte	'C'
	.ascii	"_temp_2412\0"
	.align
_Label_2473:
	.byte	'C'
	.ascii	"_temp_2409\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2475:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2476:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2477:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2478:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2479:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_2910:
	push	r0
	sub	r1,1,r1
	bne	_Label_2910
	mov	2258,r13		! source line 2258
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0SE",r10
!   _temp_2480 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2486		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2486
!   _temp_2485 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2487
_Label_2486:
!   _temp_2485 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2487:
!   if _temp_2485 then goto _Label_2484 else goto _Label_2481
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2481
	jmp	_Label_2484
_Label_2484:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2490 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2489 = *_temp_2490  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2489 == 0 then goto _Label_2491		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2491
!   _temp_2488 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2492
_Label_2491:
!   _temp_2488 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2492:
!   if _temp_2488 then goto _Label_2483 else goto _Label_2481
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2481
	jmp	_Label_2483
_Label_2483:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2495 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2494 = *_temp_2495  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2494) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2496 = _temp_2494 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2493 = *_temp_2496  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2493 >= 0 then goto _Label_2482		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2482
!	jmp	_Label_2481
_Label_2481:
! THEN...
	mov	2276,r13		! source line 2276
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2497 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2497  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2276,r13		! source line 2276
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2482:
! ASSIGNMENT STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2498 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2498  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0WH",r10
_Label_2499:
!   if numBytes <= 0 then goto _Label_2501		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2501
!	jmp	_Label_2500
_Label_2500:
	mov	2279,r13		! source line 2279
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2288,r13		! source line 2288
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2505 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2504 = *_temp_2505  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2504 == sector then goto _Label_2503		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2503
!	jmp	_Label_2502
_Label_2502:
! THEN...
	mov	2295,r13		! source line 2295
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2506) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2503:
! ASSIGNMENT STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2508 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2507 = *_temp_2508  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2507 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0AS",r10
!   _temp_2509 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2509  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2298,r13		! source line 2298
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2513 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2512 = *_temp_2513  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2512 != sector then goto _Label_2511		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2511
!	jmp	_Label_2510
_Label_2510:
	jmp	_Label_2514
_Label_2511:
! ELSE...
	mov	2301,r13		! source line 2301
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2517
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2517
	jmp	_Label_2516
_Label_2517:
!   if bytesToMove != 8192 then goto _Label_2516		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2516
!	jmp	_Label_2515
_Label_2515:
	jmp	_Label_2518
_Label_2516:
! ELSE...
	mov	2305,r13		! source line 2305
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2305,r13		! source line 2305
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2521 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2520 = *_temp_2521  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2519 = sector + _temp_2520		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2523 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2522 = *_temp_2523  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2524 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2519  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2522  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2518:
! END IF...
_Label_2514:
! ASSIGNMENT STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2525 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2525 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2310,r13		! source line 2310
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2526 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2526 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2314,r13		! source line 2314
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2315,r13		! source line 2315
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2316,r13		! source line 2316
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2499
_Label_2501:
! SEND STATEMENT...
	mov	2324,r13		! source line 2324
	mov	"\0\0SE",r10
!   _temp_2527 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2528
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2529
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2530
	.word	12
	.word	4
	.word	_Label_2531
	.word	16
	.word	4
	.word	_Label_2532
	.word	20
	.word	4
	.word	_Label_2533
	.word	24
	.word	4
	.word	_Label_2534
	.word	-16
	.word	4
	.word	_Label_2535
	.word	-20
	.word	4
	.word	_Label_2536
	.word	-24
	.word	4
	.word	_Label_2537
	.word	-28
	.word	4
	.word	_Label_2538
	.word	-32
	.word	4
	.word	_Label_2539
	.word	-36
	.word	4
	.word	_Label_2540
	.word	-40
	.word	4
	.word	_Label_2541
	.word	-44
	.word	4
	.word	_Label_2542
	.word	-48
	.word	4
	.word	_Label_2543
	.word	-52
	.word	4
	.word	_Label_2544
	.word	-56
	.word	4
	.word	_Label_2545
	.word	-60
	.word	4
	.word	_Label_2546
	.word	-64
	.word	4
	.word	_Label_2547
	.word	-68
	.word	4
	.word	_Label_2548
	.word	-72
	.word	4
	.word	_Label_2549
	.word	-76
	.word	4
	.word	_Label_2550
	.word	-80
	.word	4
	.word	_Label_2551
	.word	-84
	.word	4
	.word	_Label_2552
	.word	-88
	.word	4
	.word	_Label_2553
	.word	-92
	.word	4
	.word	_Label_2554
	.word	-96
	.word	4
	.word	_Label_2555
	.word	-100
	.word	4
	.word	_Label_2556
	.word	-104
	.word	4
	.word	_Label_2557
	.word	-108
	.word	4
	.word	_Label_2558
	.word	-112
	.word	4
	.word	_Label_2559
	.word	-9
	.word	1
	.word	_Label_2560
	.word	-10
	.word	1
	.word	_Label_2561
	.word	-116
	.word	4
	.word	_Label_2562
	.word	-120
	.word	4
	.word	_Label_2563
	.word	-124
	.word	4
	.word	_Label_2564
	.word	-128
	.word	4
	.word	_Label_2565
	.word	-132
	.word	4
	.word	_Label_2566
	.word	-136
	.word	4
	.word	0
_Label_2528:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2529:
	.ascii	"Pself\0"
	.align
_Label_2530:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2531:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2532:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2533:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2559:
	.byte	'C'
	.ascii	"_temp_2488\0"
	.align
_Label_2560:
	.byte	'C'
	.ascii	"_temp_2485\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2562:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2563:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2564:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2565:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2566:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2567
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2567:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2568
	.word	_sourceFileName
	.word	356		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2568:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_2911:
	push	r0
	sub	r1,1,r1
	bne	_Label_2911
	mov	2362,r13		! source line 2362
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0AS",r10
	mov	2364,r13		! source line 2364
	mov	"\0\0SE",r10
!   _temp_2569 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2570
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2571
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2572
	.word	-12
	.word	4
	.word	0
_Label_2570:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2571:
	.ascii	"Pself\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_2912:
	push	r0
	sub	r1,1,r1
	bne	_Label_2912
	mov	2372,r13		! source line 2372
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2573 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2573  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2373,r13		! source line 2373
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2374,r13		! source line 2374
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2574 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2574  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2375,r13		! source line 2375
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2376,r13		! source line 2376
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2575 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2575  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2377,r13		! source line 2377
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2378,r13		! source line 2378
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2576 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2576  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2379,r13		! source line 2379
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2380,r13		! source line 2380
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2577 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2577  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2381,r13		! source line 2381
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2382,r13		! source line 2382
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2578 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2578  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2383,r13		! source line 2383
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2384,r13		! source line 2384
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2385,r13		! source line 2385
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2579
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2580
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2581
	.word	-12
	.word	4
	.word	_Label_2582
	.word	-16
	.word	4
	.word	_Label_2583
	.word	-20
	.word	4
	.word	_Label_2584
	.word	-24
	.word	4
	.word	_Label_2585
	.word	-28
	.word	4
	.word	_Label_2586
	.word	-32
	.word	4
	.word	0
_Label_2579:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2580:
	.ascii	"Pself\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2587
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2587:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2588
	.word	_sourceFileName
	.word	373		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2588:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_2913:
	push	r0
	sub	r1,1,r1
	bne	_Label_2913
	mov	2396,r13		! source line 2396
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2589 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2589  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2397,r13		! source line 2397
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2398,r13		! source line 2398
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2590 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2590  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2399,r13		! source line 2399
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2592		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2592
!	jmp	_Label_2591
_Label_2591:
! THEN...
	mov	2401,r13		! source line 2401
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2401,r13		! source line 2401
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2593
_Label_2592:
! ELSE...
	mov	2403,r13		! source line 2403
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2594 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2594  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2403,r13		! source line 2403
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2593:
! RETURN STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2595
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2596
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2597
	.word	-12
	.word	4
	.word	_Label_2598
	.word	-16
	.word	4
	.word	_Label_2599
	.word	-20
	.word	4
	.word	0
_Label_2595:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2596:
	.ascii	"Pself\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_2914:
	push	r0
	sub	r1,1,r1
	bne	_Label_2914
	mov	2409,r13		! source line 2409
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2419,r13		! source line 2419
	mov	"\0\0SE",r10
!   _temp_2600 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2601 = _temp_2600 + 4
	load	[r14+-36],r1
	add	r1,4,r1
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
	mov	2420,r13		! source line 2420
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0SE",r10
!   _temp_2602 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2603 = _temp_2602 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0RE",r10
	mov	2423,r13		! source line 2423
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2606 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2605  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2604  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2604  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2607
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2608
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2609
	.word	12
	.word	4
	.word	_Label_2610
	.word	16
	.word	4
	.word	_Label_2611
	.word	-16
	.word	4
	.word	_Label_2612
	.word	-20
	.word	4
	.word	_Label_2613
	.word	-9
	.word	1
	.word	_Label_2614
	.word	-24
	.word	4
	.word	_Label_2615
	.word	-28
	.word	4
	.word	_Label_2616
	.word	-32
	.word	4
	.word	_Label_2617
	.word	-36
	.word	4
	.word	_Label_2618
	.word	-40
	.word	4
	.word	0
_Label_2607:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2608:
	.ascii	"Pself\0"
	.align
_Label_2609:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2610:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2613:
	.byte	'C'
	.ascii	"_temp_2604\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2618:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_2915:
	push	r0
	sub	r1,1,r1
	bne	_Label_2915
	mov	2428,r13		! source line 2428
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0IF",r10
	mov	2433,r13		! source line 2433
	mov	"\0\0SE",r10
!   _temp_2622 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2623) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2622  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2621  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2621 then goto _Label_2620 else goto _Label_2619
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2619
	jmp	_Label_2620
_Label_2619:
! THEN...
	mov	2434,r13		! source line 2434
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2624 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2624  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2434,r13		! source line 2434
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2620:
! RETURN STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2625
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2626
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2627
	.word	-16
	.word	4
	.word	_Label_2628
	.word	-20
	.word	4
	.word	_Label_2629
	.word	-24
	.word	4
	.word	_Label_2630
	.word	-9
	.word	1
	.word	_Label_2631
	.word	-28
	.word	4
	.word	0
_Label_2625:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2626:
	.ascii	"Pself\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2630:
	.byte	'C'
	.ascii	"_temp_2621\0"
	.align
_Label_2631:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_2916:
	push	r0
	sub	r1,1,r1
	bne	_Label_2916
	mov	2441,r13		! source line 2441
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2467,r13		! source line 2467
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2635 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2634 = *_temp_2635  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2634) then goto _Label_2633
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2633
!	jmp	_Label_2632
_Label_2632:
! THEN...
	mov	2468,r13		! source line 2468
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2636 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2636  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2468,r13		! source line 2468
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2633:
! IF STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0IF",r10
	mov	2472,r13		! source line 2472
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2640) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2639  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2639 == 1112300152 then goto _Label_2638		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2638
!	jmp	_Label_2637
_Label_2637:
! THEN...
	mov	2473,r13		! source line 2473
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2641 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2641  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2473,r13		! source line 2473
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2638:
! ASSIGNMENT STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0AS",r10
	mov	2478,r13		! source line 2478
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2642) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0AS",r10
	mov	2479,r13		! source line 2479
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2643) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0AS",r10
	mov	2480,r13		! source line 2480
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2644) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0AS",r10
	mov	2481,r13		! source line 2481
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2645) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0AS",r10
	mov	2482,r13		! source line 2482
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2646) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0AS",r10
	mov	2483,r13		! source line 2483
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2647) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0IF",r10
!   _temp_2650 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2650) then goto _Label_2649
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2649
!	jmp	_Label_2648
_Label_2648:
! THEN...
	mov	2487,r13		! source line 2487
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2651 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2651  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2487,r13		! source line 2487
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2649:
! ASSIGNMENT STATEMENT...
	mov	2490,r13		! source line 2490
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2653
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2653
!	jmp	_Label_2652
_Label_2652:
! THEN...
	mov	2495,r13		! source line 2495
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2654 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2654  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2495,r13		! source line 2495
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2496,r13		! source line 2496
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2653:
! IF STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0IF",r10
!   _temp_2657 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2657) then goto _Label_2656
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2656
!	jmp	_Label_2655
_Label_2655:
! THEN...
	mov	2501,r13		! source line 2501
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2658 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2658  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2501,r13		! source line 2501
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2656:
! IF STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0IF",r10
!   _temp_2661 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2661 then goto _Label_2660		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2660
!	jmp	_Label_2659
_Label_2659:
! THEN...
	mov	2505,r13		! source line 2505
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2662 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2662  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2505,r13		! source line 2505
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2660:
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0IF",r10
!   _temp_2665 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2665) then goto _Label_2664
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2664
!	jmp	_Label_2663
_Label_2663:
! THEN...
	mov	2512,r13		! source line 2512
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2666 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2666  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2512,r13		! source line 2512
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2664:
! IF STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0IF",r10
!   _temp_2669 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2669 then goto _Label_2668		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2668
!	jmp	_Label_2667
_Label_2667:
! THEN...
	mov	2516,r13		! source line 2516
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2670 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2670  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2516,r13		! source line 2516
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2517,r13		! source line 2517
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2668:
! ASSIGNMENT STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0AS",r10
!   _temp_2673 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2672 = _temp_2673 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2671 = _temp_2672 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2671 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2675		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2675
!	jmp	_Label_2674
_Label_2674:
! THEN...
	mov	2538,r13		! source line 2538
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2676 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2676  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2538,r13		! source line 2538
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2677 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2677  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2539,r13		! source line 2539
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2678 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2678  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2540,r13		! source line 2540
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2541,r13		! source line 2541
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2675:
! SEND STATEMENT...
	mov	2543,r13		! source line 2543
	mov	"\0\0SE",r10
!   _temp_2679 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0IF",r10
	mov	2549,r13		! source line 2549
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2683) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2682  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2682 == 707406378 then goto _Label_2681		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2681
!	jmp	_Label_2680
_Label_2680:
! THEN...
	mov	2550,r13		! source line 2550
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2684 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2684  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2550,r13		! source line 2550
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2551,r13		! source line 2551
	mov	"\0\0SE",r10
!   _temp_2685 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2552,r13		! source line 2552
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2681:
! ASSIGNMENT STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2690 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2691 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2690  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2686:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2691 then goto _Label_2689		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2689
_Label_2687:
	mov	2557,r13		! source line 2557
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0AS",r10
	mov	2558,r13		! source line 2558
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2561,r13		! source line 2561
	mov	"\0\0IF",r10
	mov	2561,r13		! source line 2561
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2695) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2694  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2694 then goto _Label_2693 else goto _Label_2692
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2692
	jmp	_Label_2693
_Label_2692:
! THEN...
	mov	2562,r13		! source line 2562
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2696 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2696  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2562,r13		! source line 2562
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0SE",r10
!   _temp_2697 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2693:
! SEND STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2688:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2686
! END FOR
_Label_2689:
! IF STATEMENT...
	mov	2571,r13		! source line 2571
	mov	"\0\0IF",r10
	mov	2571,r13		! source line 2571
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2701) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2700  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2700 == 707406378 then goto _Label_2699		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2699
!	jmp	_Label_2698
_Label_2698:
! THEN...
	mov	2572,r13		! source line 2572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2702 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2702  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2572,r13		! source line 2572
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0SE",r10
!   _temp_2703 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2699:
! FOR STATEMENT...
	mov	2578,r13		! source line 2578
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2708 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2709 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2708  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2704:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2709 then goto _Label_2707		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2707
_Label_2705:
	mov	2578,r13		! source line 2578
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2579,r13		! source line 2579
	mov	"\0\0AS",r10
	mov	2579,r13		! source line 2579
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2582,r13		! source line 2582
	mov	"\0\0IF",r10
	mov	2582,r13		! source line 2582
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2713) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2712  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2712 then goto _Label_2711 else goto _Label_2710
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2710
	jmp	_Label_2711
_Label_2710:
! THEN...
	mov	2583,r13		! source line 2583
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2714 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2714  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2583,r13		! source line 2583
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0SE",r10
!   _temp_2715 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2711:
! ASSIGNMENT STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2706:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2704
! END FOR
_Label_2707:
! IF STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0IF",r10
	mov	2591,r13		! source line 2591
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2719) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2718  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2718 == 707406378 then goto _Label_2717		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2717
!	jmp	_Label_2716
_Label_2716:
! THEN...
	mov	2592,r13		! source line 2592
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2720 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2720  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2592,r13		! source line 2592
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0SE",r10
!   _temp_2721 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2717:
! ASSIGNMENT STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0AS",r10
	mov	2598,r13		! source line 2598
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	2602,r13		! source line 2602
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_2722
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2723
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2724
	.word	12
	.word	4
	.word	_Label_2725
	.word	-16
	.word	4
	.word	_Label_2726
	.word	-20
	.word	4
	.word	_Label_2727
	.word	-24
	.word	4
	.word	_Label_2728
	.word	-28
	.word	4
	.word	_Label_2729
	.word	-32
	.word	4
	.word	_Label_2730
	.word	-36
	.word	4
	.word	_Label_2731
	.word	-40
	.word	4
	.word	_Label_2732
	.word	-9
	.word	1
	.word	_Label_2733
	.word	-44
	.word	4
	.word	_Label_2734
	.word	-48
	.word	4
	.word	_Label_2735
	.word	-52
	.word	4
	.word	_Label_2736
	.word	-56
	.word	4
	.word	_Label_2737
	.word	-60
	.word	4
	.word	_Label_2738
	.word	-64
	.word	4
	.word	_Label_2739
	.word	-68
	.word	4
	.word	_Label_2740
	.word	-72
	.word	4
	.word	_Label_2741
	.word	-76
	.word	4
	.word	_Label_2742
	.word	-10
	.word	1
	.word	_Label_2743
	.word	-80
	.word	4
	.word	_Label_2744
	.word	-84
	.word	4
	.word	_Label_2745
	.word	-88
	.word	4
	.word	_Label_2746
	.word	-92
	.word	4
	.word	_Label_2747
	.word	-96
	.word	4
	.word	_Label_2748
	.word	-100
	.word	4
	.word	_Label_2749
	.word	-104
	.word	4
	.word	_Label_2750
	.word	-108
	.word	4
	.word	_Label_2751
	.word	-112
	.word	4
	.word	_Label_2752
	.word	-116
	.word	4
	.word	_Label_2753
	.word	-120
	.word	4
	.word	_Label_2754
	.word	-124
	.word	4
	.word	_Label_2755
	.word	-128
	.word	4
	.word	_Label_2756
	.word	-132
	.word	4
	.word	_Label_2757
	.word	-136
	.word	4
	.word	_Label_2758
	.word	-140
	.word	4
	.word	_Label_2759
	.word	-144
	.word	4
	.word	_Label_2760
	.word	-148
	.word	4
	.word	_Label_2761
	.word	-152
	.word	4
	.word	_Label_2762
	.word	-156
	.word	4
	.word	_Label_2763
	.word	-160
	.word	4
	.word	_Label_2764
	.word	-164
	.word	4
	.word	_Label_2765
	.word	-168
	.word	4
	.word	_Label_2766
	.word	-172
	.word	4
	.word	_Label_2767
	.word	-176
	.word	4
	.word	_Label_2768
	.word	-180
	.word	4
	.word	_Label_2769
	.word	-184
	.word	4
	.word	_Label_2770
	.word	-188
	.word	4
	.word	_Label_2771
	.word	-192
	.word	4
	.word	_Label_2772
	.word	-196
	.word	4
	.word	_Label_2773
	.word	-200
	.word	4
	.word	_Label_2774
	.word	-204
	.word	4
	.word	_Label_2775
	.word	-208
	.word	4
	.word	_Label_2776
	.word	-212
	.word	4
	.word	_Label_2777
	.word	-216
	.word	4
	.word	_Label_2778
	.word	-220
	.word	4
	.word	_Label_2779
	.word	-224
	.word	4
	.word	_Label_2780
	.word	-228
	.word	4
	.word	_Label_2781
	.word	-232
	.word	4
	.word	_Label_2782
	.word	-236
	.word	4
	.word	_Label_2783
	.word	-240
	.word	4
	.word	_Label_2784
	.word	-244
	.word	4
	.word	_Label_2785
	.word	-248
	.word	4
	.word	_Label_2786
	.word	-252
	.word	4
	.word	_Label_2787
	.word	-256
	.word	4
	.word	_Label_2788
	.word	-260
	.word	4
	.word	_Label_2789
	.word	-264
	.word	4
	.word	_Label_2790
	.word	-268
	.word	4
	.word	0
_Label_2722:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2723:
	.ascii	"Pself\0"
	.align
_Label_2724:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2732:
	.byte	'C'
	.ascii	"_temp_2712\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2742:
	.byte	'C'
	.ascii	"_temp_2694\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2779:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2780:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2781:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2782:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2783:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2784:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2785:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2786:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2787:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2788:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_2789:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_2790:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
