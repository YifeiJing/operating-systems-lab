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
_StringConst_201:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_200:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_199:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_198:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_197:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_196:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_195:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_194:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_193:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_192:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_191:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_190:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_189:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_188:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_187:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_186:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_185:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_184:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_183:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_182:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_181:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_180:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_179:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_178:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_177:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_176:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_175:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_174:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_173:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_172:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_171:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_170:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_169:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_168:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_167:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_166:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_165:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_164:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_163:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_162:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_161:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_160:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_159:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_158:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_157:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_156:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_155:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_154:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_153:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_152:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_151:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_150:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_149:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_148:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_147:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_146:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_145:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_143:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_142:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_141:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_140:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_139:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_138:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_137:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_136:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_135:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_134:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_133:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_132:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_131:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_130:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_129:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_128:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_127:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_126:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_125:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_124:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_123:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_122:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_121:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_120:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_119:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_118:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_117:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_116:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_115:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_114:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_113:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_112:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_111:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_110:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_109:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_108:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_107:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_106:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_105:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_104:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_103:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_102:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_101:
	.word	10			! length
	.ascii	"Threadpool"
	.align
_StringConst_100:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_99:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_98:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_97:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_96:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_95:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_94:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_93:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_92:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_91:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_90:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_89:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_88:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_87:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_86:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_85:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_84:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_83:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_82:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_81:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_80:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_79:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_78:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_77:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_76:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_75:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_74:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_73:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_72:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_71:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_70:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_69:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_68:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_67:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_66:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_65:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_64:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_63:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_62:
	.word	33			! length
	.ascii	"Failed to open file: TestProgram1"
	.align
_StringConst_61:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_60:
	.word	9			! length
	.ascii	"myProgram"
	.align
_StringConst_59:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_58:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_57:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_56:
	.word	24			! length
	.ascii	"Invoke System call Close"
	.align
_StringConst_55:
	.word	15			! length
	.ascii	"newCurrentPos: "
	.align
_StringConst_54:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_53:
	.word	23			! length
	.ascii	"Invoke System call Seek"
	.align
_StringConst_52:
	.word	8			! length
	.ascii	"buffer: "
	.align
_StringConst_51:
	.word	24			! length
	.ascii	"Invoke System call Write"
	.align
_StringConst_50:
	.word	8			! length
	.ascii	"buffer: "
	.align
_StringConst_49:
	.word	23			! length
	.ascii	"Invoke System call Read"
	.align
_StringConst_48:
	.word	10			! length
	.ascii	"filename: "
	.align
_StringConst_47:
	.word	23			! length
	.ascii	"Invoke System call Open"
	.align
_StringConst_46:
	.word	10			! length
	.ascii	"filename: "
	.align
_StringConst_45:
	.word	25			! length
	.ascii	"Invoke System call Create"
	.align
_StringConst_44:
	.word	21			! length
	.ascii	"Failed to open file: "
	.align
_StringConst_43:
	.word	39			! length
	.ascii	"Failed to get string from virtual space"
	.align
_StringConst_42:
	.word	26			! length
	.ascii	"Invoke System call Execute"
	.align
_StringConst_41:
	.word	23			! length
	.ascii	"Invoke System call Join"
	.align
_StringConst_40:
	.word	23			! length
	.ascii	"Invoke System call Fork"
	.align
_StringConst_39:
	.word	24			! length
	.ascii	"Invoke System call Yield"
	.align
_StringConst_38:
	.word	27			! length
	.ascii	"Invoke System call Shutdown"
	.align
_StringConst_37:
	.word	14			! length
	.ascii	"ReturnStatus: "
	.align
_StringConst_36:
	.word	16			! length
	.ascii	"Call System Exit"
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
	be	_Label_210
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
_Label_210:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_211
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_211
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_211
_Label_211:
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
_Label_2978:
	push	r0
	sub	r1,1,r1
	bne	_Label_2978
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_212 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_212  sizeInBytes=4
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
_Label_2979:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2979
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_216 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_217 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_216  sizeInBytes=4
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
!   _temp_218 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_219 = _temp_218 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_219 = 3  (sizeInBytes=4)
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
_Label_2980:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2980
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_221 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_222 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_221  sizeInBytes=4
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
!   _temp_223 = _function_209_IdleFunction
	set	_function_209_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_224 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_223  sizeInBytes=4
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
	.word	_Label_225
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_226
	.word	-12
	.word	4
	.word	_Label_227
	.word	-16
	.word	4
	.word	_Label_228
	.word	-20
	.word	4
	.word	_Label_229
	.word	-24
	.word	4
	.word	_Label_230
	.word	-28
	.word	4
	.word	_Label_231
	.word	-32
	.word	4
	.word	_Label_232
	.word	-36
	.word	4
	.word	_Label_233
	.word	-40
	.word	4
	.word	_Label_234
	.word	-44
	.word	4
	.word	_Label_235
	.word	-48
	.word	4
	.word	_Label_236
	.word	-52
	.word	4
	.word	_Label_237
	.word	-56
	.word	4
	.word	_Label_238
	.word	-60
	.word	4
	.word	0
_Label_225:
	.ascii	"InitializeScheduler\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_209_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_209_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2981:
	push	r0
	sub	r1,1,r1
	bne	_Label_2981
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_239:
!	jmp	_Label_240
_Label_240:
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
!   _temp_244 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_242 else goto _Label_243
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_243
	jmp	_Label_242
_Label_242:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_245
_Label_243:
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
_Label_245:
! END WHILE...
	jmp	_Label_239
_Label_241:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_209_IdleFunction:
	.word	_sourceFileName
	.word	_Label_246
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_247
	.word	8
	.word	4
	.word	_Label_248
	.word	-12
	.word	4
	.word	_Label_249
	.word	-16
	.word	4
	.word	0
_Label_246:
	.ascii	"IdleFunction\0"
	.align
_Label_247:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_249:
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
_Label_2982:
	push	r0
	sub	r1,1,r1
	bne	_Label_2982
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
!   _temp_252 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_252 ) then goto _Label_251		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_251
!	jmp	_Label_250
_Label_250:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_254 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_254 [0 ] into _temp_255
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
!   _temp_253 = _temp_255		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_253  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_251:
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
!   _temp_256 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_256 = 3  (sizeInBytes=4)
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
_Label_257:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_261 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_260  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_260 then goto _Label_259 else goto _Label_258
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_258
	jmp	_Label_259
_Label_258:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_262 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_263 = &_P_Kernel_threadManager
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
	jmp	_Label_257
_Label_259:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_266 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_266 ) then goto _Label_265		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_265
!	jmp	_Label_264
_Label_264:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_268 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_268 [0 ] into _temp_269
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
!   _temp_267 = _temp_269		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
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
!   _temp_271 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_270 = *_temp_271  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_270) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_272 = _temp_270 + 32
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
_Label_265:
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
	.word	_Label_273
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_274
	.word	8
	.word	4
	.word	_Label_275
	.word	-16
	.word	4
	.word	_Label_276
	.word	-20
	.word	4
	.word	_Label_277
	.word	-24
	.word	4
	.word	_Label_278
	.word	-28
	.word	4
	.word	_Label_279
	.word	-32
	.word	4
	.word	_Label_280
	.word	-36
	.word	4
	.word	_Label_281
	.word	-40
	.word	4
	.word	_Label_282
	.word	-44
	.word	4
	.word	_Label_283
	.word	-48
	.word	4
	.word	_Label_284
	.word	-52
	.word	4
	.word	_Label_285
	.word	-9
	.word	1
	.word	_Label_286
	.word	-56
	.word	4
	.word	_Label_287
	.word	-60
	.word	4
	.word	_Label_288
	.word	-64
	.word	4
	.word	_Label_289
	.word	-68
	.word	4
	.word	_Label_290
	.word	-72
	.word	4
	.word	_Label_291
	.word	-76
	.word	4
	.word	_Label_292
	.word	-80
	.word	4
	.word	0
_Label_273:
	.ascii	"Run\0"
	.align
_Label_274:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_285:
	.byte	'C'
	.ascii	"_temp_260\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_291:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_292:
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
_Label_2983:
	push	r0
	sub	r1,1,r1
	bne	_Label_2983
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
!   _temp_293 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_293  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_294 = _function_208_ThreadPrintShort
	set	_function_208_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_295 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_294  sizeInBytes=4
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
	.word	_Label_296
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_297
	.word	-12
	.word	4
	.word	_Label_298
	.word	-16
	.word	4
	.word	_Label_299
	.word	-20
	.word	4
	.word	_Label_300
	.word	-24
	.word	4
	.word	0
_Label_296:
	.ascii	"PrintReadyList\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_300:
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
_Label_2984:
	push	r0
	sub	r1,1,r1
	bne	_Label_2984
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
!   _temp_301 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_301  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_303 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_302 = *_temp_303  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_302  sizeInBytes=4
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
!   _temp_304 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_304  sizeInBytes=4
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
	.word	_Label_305
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_306
	.word	-12
	.word	4
	.word	_Label_307
	.word	-16
	.word	4
	.word	_Label_308
	.word	-20
	.word	4
	.word	_Label_309
	.word	-24
	.word	4
	.word	_Label_310
	.word	-28
	.word	4
	.word	_Label_311
	.word	-32
	.word	4
	.word	0
_Label_305:
	.ascii	"ThreadStartMain\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_310:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_311:
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
_Label_2985:
	push	r0
	sub	r1,1,r1
	bne	_Label_2985
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
!   _temp_312 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_313 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
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
	.word	_Label_314
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_315
	.word	-12
	.word	4
	.word	_Label_316
	.word	-16
	.word	4
	.word	_Label_317
	.word	-20
	.word	4
	.word	0
_Label_314:
	.ascii	"ThreadFinish\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_317:
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
_Label_2986:
	push	r0
	sub	r1,1,r1
	bne	_Label_2986
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
!   _temp_318 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_318  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_320		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_320
!	jmp	_Label_319
_Label_319:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_321 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
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
!   _temp_323 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_322 = *_temp_323  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_320:
! CALL STATEMENT...
!   _temp_324 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
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
!   _temp_325 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_326 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_326  sizeInBytes=4
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
	.word	_Label_327
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_328
	.word	8
	.word	4
	.word	_Label_329
	.word	-12
	.word	4
	.word	_Label_330
	.word	-16
	.word	4
	.word	_Label_331
	.word	-20
	.word	4
	.word	_Label_332
	.word	-24
	.word	4
	.word	_Label_333
	.word	-28
	.word	4
	.word	_Label_334
	.word	-32
	.word	4
	.word	_Label_335
	.word	-36
	.word	4
	.word	_Label_336
	.word	-40
	.word	4
	.word	0
_Label_327:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_328:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_336:
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
_Label_2987:
	push	r0
	sub	r1,1,r1
	bne	_Label_2987
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
!   if newStatus != 1 then goto _Label_338		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_338
!	jmp	_Label_337
_Label_337:
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
	jmp	_Label_339
_Label_338:
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
_Label_339:
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
	.word	_Label_340
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_341
	.word	8
	.word	4
	.word	_Label_342
	.word	-12
	.word	4
	.word	0
_Label_340:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_341:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_342:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_208_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_208_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_2988:
	push	r0
	sub	r1,1,r1
	bne	_Label_2988
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
!   if t == 0 then goto _Label_346		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_346
!   _temp_345 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_347
_Label_346:
!   _temp_345 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_347:
!   if _temp_345 then goto _Label_344 else goto _Label_343
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_343
	jmp	_Label_344
_Label_343:
! THEN...
	mov	650,r13		! source line 650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_348 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
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
_Label_344:
! CALL STATEMENT...
!   _temp_349 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
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
!   _temp_351 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_350 = *_temp_351  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_352 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
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
!   _temp_361 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_360 = *_temp_361  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_355
	cmp	r1,2
	be	_Label_356
	cmp	r1,3
	be	_Label_357
	cmp	r1,4
	be	_Label_358
	cmp	r1,5
	be	_Label_359
	jmp	_Label_353
! CASE 1...
_Label_355:
! CALL STATEMENT...
!   _temp_362 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_354
! CASE 2...
_Label_356:
! CALL STATEMENT...
!   _temp_363 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_354
! CASE 3...
_Label_357:
! CALL STATEMENT...
!   _temp_364 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_354
! CASE 4...
_Label_358:
! CALL STATEMENT...
!   _temp_365 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0BR",r10
	jmp	_Label_354
! CASE 5...
_Label_359:
! CALL STATEMENT...
!   _temp_366 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0BR",r10
	jmp	_Label_354
! DEFAULT CASE...
_Label_353:
! CALL STATEMENT...
!   _temp_367 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_367  sizeInBytes=4
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
_Label_354:
! CALL STATEMENT...
!   _temp_368 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_369 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_370 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_370  sizeInBytes=4
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
_RoutineDescriptor__function_208_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_371
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_372
	.word	8
	.word	4
	.word	_Label_373
	.word	-16
	.word	4
	.word	_Label_374
	.word	-20
	.word	4
	.word	_Label_375
	.word	-24
	.word	4
	.word	_Label_376
	.word	-28
	.word	4
	.word	_Label_377
	.word	-32
	.word	4
	.word	_Label_378
	.word	-36
	.word	4
	.word	_Label_379
	.word	-40
	.word	4
	.word	_Label_380
	.word	-44
	.word	4
	.word	_Label_381
	.word	-48
	.word	4
	.word	_Label_382
	.word	-52
	.word	4
	.word	_Label_383
	.word	-56
	.word	4
	.word	_Label_384
	.word	-60
	.word	4
	.word	_Label_385
	.word	-64
	.word	4
	.word	_Label_386
	.word	-68
	.word	4
	.word	_Label_387
	.word	-72
	.word	4
	.word	_Label_388
	.word	-76
	.word	4
	.word	_Label_389
	.word	-9
	.word	1
	.word	_Label_390
	.word	-80
	.word	4
	.word	0
_Label_371:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_372:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_389:
	.byte	'C'
	.ascii	"_temp_345\0"
	.align
_Label_390:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_207_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_207_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_2989:
	push	r0
	sub	r1,1,r1
	bne	_Label_2989
	mov	952,r13		! source line 952
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_391 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_391  sizeInBytes=4
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
_RoutineDescriptor__function_207_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_392
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_393
	.word	8
	.word	4
	.word	_Label_394
	.word	-12
	.word	4
	.word	0
_Label_392:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_393:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_391\0"
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
_Label_2990:
	push	r0
	sub	r1,1,r1
	bne	_Label_2990
	mov	962,r13		! source line 962
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_395 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
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
	.word	_Label_396
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_397
	.word	8
	.word	4
	.word	_Label_398
	.word	-12
	.word	4
	.word	0
_Label_396:
	.ascii	"ProcessFinish\0"
	.align
_Label_397:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_395\0"
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
_Label_2991:
	push	r0
	sub	r1,1,r1
	bne	_Label_2991
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
	.word	_Label_399
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_399:
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
_Label_2992:
	push	r0
	sub	r1,1,r1
	bne	_Label_2992
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
!   _temp_403 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_404 = _temp_403 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_402 = *_temp_404  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_402 == 0 then goto _Label_401		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_401
!	jmp	_Label_400
_Label_400:
! THEN...
	mov	1474,r13		! source line 1474
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0SE",r10
!   _temp_406 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_407 = _temp_406 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_405 = *_temp_407  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_405) then goto _runtimeErrorNullPointer
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
_Label_401:
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
	.word	_Label_408
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_409
	.word	-12
	.word	4
	.word	_Label_410
	.word	-16
	.word	4
	.word	_Label_411
	.word	-20
	.word	4
	.word	_Label_412
	.word	-24
	.word	4
	.word	_Label_413
	.word	-28
	.word	4
	.word	_Label_414
	.word	-32
	.word	4
	.word	0
_Label_408:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_402\0"
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
	.word	_Label_415
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_415:
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
_Label_2993:
	push	r0
	sub	r1,1,r1
	bne	_Label_2993
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
!   _temp_416 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_416  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1501,r13		! source line 1501
	mov	"\0\0CA",r10
	call	_function_206_ErrorInUserProcess
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
	.word	_Label_417
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_418
	.word	-12
	.word	4
	.word	0
_Label_417:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_416\0"
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
_Label_2994:
	push	r0
	sub	r1,1,r1
	bne	_Label_2994
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
!   _temp_419 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_419  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1513,r13		! source line 1513
	mov	"\0\0CA",r10
	call	_function_206_ErrorInUserProcess
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
	.word	_Label_420
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_421
	.word	-12
	.word	4
	.word	0
_Label_420:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_419\0"
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
_Label_2995:
	push	r0
	sub	r1,1,r1
	bne	_Label_2995
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
!   _temp_422 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_422  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1525,r13		! source line 1525
	mov	"\0\0CA",r10
	call	_function_206_ErrorInUserProcess
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
	.word	_Label_423
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_424
	.word	-12
	.word	4
	.word	0
_Label_423:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_422\0"
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
_Label_2996:
	push	r0
	sub	r1,1,r1
	bne	_Label_2996
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
!   _temp_425 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_425  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1537,r13		! source line 1537
	mov	"\0\0CA",r10
	call	_function_206_ErrorInUserProcess
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
	.word	_Label_426
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_427
	.word	-12
	.word	4
	.word	0
_Label_426:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_425\0"
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
_Label_2997:
	push	r0
	sub	r1,1,r1
	bne	_Label_2997
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
!   _temp_428 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_428  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1549,r13		! source line 1549
	mov	"\0\0CA",r10
	call	_function_206_ErrorInUserProcess
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
	.word	_Label_429
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_430
	.word	-12
	.word	4
	.word	0
_Label_429:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_428\0"
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
_Label_2998:
	push	r0
	sub	r1,1,r1
	bne	_Label_2998
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
!   _temp_431 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_431  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1561,r13		! source line 1561
	mov	"\0\0CA",r10
	call	_function_206_ErrorInUserProcess
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
	.word	_Label_432
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_433
	.word	-12
	.word	4
	.word	0
_Label_432:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_431\0"
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
_Label_2999:
	push	r0
	sub	r1,1,r1
	bne	_Label_2999
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
!   _temp_434 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_434  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1573,r13		! source line 1573
	mov	"\0\0CA",r10
	call	_function_206_ErrorInUserProcess
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
	.word	_Label_435
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_436
	.word	-12
	.word	4
	.word	0
_Label_435:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_206_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_206_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3000:
	push	r0
	sub	r1,1,r1
	bne	_Label_3000
	mov	1578,r13		! source line 1578
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_437 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_437  sizeInBytes=4
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
!   _temp_438 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
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
!   _temp_442 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_441 = *_temp_442  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_441 == 0 then goto _Label_440		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_440
!	jmp	_Label_439
_Label_439:
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
!   _temp_444 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_443 = *_temp_444  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_443) then goto _runtimeErrorNullPointer
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
	jmp	_Label_445
_Label_440:
! ELSE...
	mov	1591,r13		! source line 1591
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_446 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_446  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1591,r13		! source line 1591
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_445:
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
_RoutineDescriptor__function_206_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_447
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_448
	.word	8
	.word	4
	.word	_Label_449
	.word	-12
	.word	4
	.word	_Label_450
	.word	-16
	.word	4
	.word	_Label_451
	.word	-20
	.word	4
	.word	_Label_452
	.word	-24
	.word	4
	.word	_Label_453
	.word	-28
	.word	4
	.word	_Label_454
	.word	-32
	.word	4
	.word	_Label_455
	.word	-36
	.word	4
	.word	0
_Label_447:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_448:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_437\0"
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
_Label_3001:
	push	r0
	sub	r1,1,r1
	bne	_Label_3001
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
	be	_Label_3002
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_456
_Label_3002:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_456
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_456
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_470,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_470:
	jmp	_Label_462	! 1:	
	jmp	_Label_469	! 2:	
	jmp	_Label_459	! 3:	
	jmp	_Label_458	! 4:	
	jmp	_Label_461	! 5:	
	jmp	_Label_460	! 6:	
	jmp	_Label_463	! 7:	
	jmp	_Label_464	! 8:	
	jmp	_Label_465	! 9:	
	jmp	_Label_466	! 10:	
	jmp	_Label_467	! 11:	
	jmp	_Label_468	! 12:	
! CASE 4...
_Label_458:
! RETURN STATEMENT...
	mov	1627,r13		! source line 1627
	mov	"\0\0RE",r10
!   Call the function
	mov	1627,r13		! source line 1627
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_471  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_471  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_459:
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
_Label_460:
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
!   Retrieve Result: targetName=_temp_472  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_472  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_461:
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
!   Retrieve Result: targetName=_temp_473  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_473  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_462:
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
_Label_463:
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
!   Retrieve Result: targetName=_temp_474  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_474  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_464:
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
!   Retrieve Result: targetName=_temp_475  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_475  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_465:
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
!   Retrieve Result: targetName=_temp_476  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_476  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_466:
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
!   Retrieve Result: targetName=_temp_477  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_477  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_467:
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
!   Retrieve Result: targetName=_temp_478  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_478  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_468:
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
_Label_469:
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
_Label_456:
! CALL STATEMENT...
!   _temp_479 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_479  sizeInBytes=4
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
!   _temp_480 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_480  sizeInBytes=4
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
_Label_457:
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
	.word	_Label_481
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_482
	.word	8
	.word	4
	.word	_Label_483
	.word	12
	.word	4
	.word	_Label_484
	.word	16
	.word	4
	.word	_Label_485
	.word	20
	.word	4
	.word	_Label_486
	.word	24
	.word	4
	.word	_Label_487
	.word	-12
	.word	4
	.word	_Label_488
	.word	-16
	.word	4
	.word	_Label_489
	.word	-20
	.word	4
	.word	_Label_490
	.word	-24
	.word	4
	.word	_Label_491
	.word	-28
	.word	4
	.word	_Label_492
	.word	-32
	.word	4
	.word	_Label_493
	.word	-36
	.word	4
	.word	_Label_494
	.word	-40
	.word	4
	.word	_Label_495
	.word	-44
	.word	4
	.word	_Label_496
	.word	-48
	.word	4
	.word	0
_Label_481:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_482:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_483:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_484:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_485:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_486:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_476\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_471\0"
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
	mov	3,r1
_Label_3003:
	push	r0
	sub	r1,1,r1
	bne	_Label_3003
	mov	1665,r13		! source line 1665
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_497 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_497  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1666,r13		! source line 1666
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1667,r13		! source line 1667
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_498 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_498  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1668,r13		! source line 1668
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1669,r13		! source line 1669
	mov	"\0\0CE",r10
	call	printInt
! RETURN STATEMENT...
	mov	1669,r13		! source line 1669
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_499
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_500
	.word	8
	.word	4
	.word	_Label_501
	.word	-12
	.word	4
	.word	_Label_502
	.word	-16
	.word	4
	.word	0
_Label_499:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_500:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_497\0"
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
	mov	2,r1
_Label_3004:
	push	r0
	sub	r1,1,r1
	bne	_Label_3004
	mov	1674,r13		! source line 1674
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_503 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1675,r13		! source line 1675
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1675,r13		! source line 1675
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_504
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_505
	.word	-12
	.word	4
	.word	0
_Label_504:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_503\0"
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
	mov	2,r1
_Label_3005:
	push	r0
	sub	r1,1,r1
	bne	_Label_3005
	mov	1680,r13		! source line 1680
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_506 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_506  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1681,r13		! source line 1681
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1681,r13		! source line 1681
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_507
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_508
	.word	-12
	.word	4
	.word	0
_Label_507:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_506\0"
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
	mov	2,r1
_Label_3006:
	push	r0
	sub	r1,1,r1
	bne	_Label_3006
	mov	1686,r13		! source line 1686
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_509 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_509  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1687,r13		! source line 1687
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_510
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_511
	.word	-12
	.word	4
	.word	0
_Label_510:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_509\0"
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
	mov	2,r1
_Label_3007:
	push	r0
	sub	r1,1,r1
	bne	_Label_3007
	mov	1693,r13		! source line 1693
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_512 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_512  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1694,r13		! source line 1694
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_513
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_514
	.word	8
	.word	4
	.word	_Label_515
	.word	-12
	.word	4
	.word	0
_Label_513:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_514:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_512\0"
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
	mov	69,r1
_Label_3008:
	push	r0
	sub	r1,1,r1
	bne	_Label_3008
	mov	1700,r13		! source line 1700
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-264,r4
	mov	23,r3
_Label_3009:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3009
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	1709,r13		! source line 1709
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1709,r13		! source line 1709
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-148]
! CALL STATEMENT...
!   _temp_517 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_517  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	1710,r13		! source line 1710
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1711,r13		! source line 1711
	mov	"\0\0AS",r10
	mov	1711,r13		! source line 1711
	mov	"\0\0SE",r10
!   _temp_518 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-120]
!   _temp_519 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_521 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_520 = *_temp_521  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_520) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_522 = _temp_520 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_518  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_519  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	1712,r13		! source line 1712
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_524		(int)
	load	[r14+-268],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_524
!	jmp	_Label_523
_Label_523:
! THEN...
	mov	1713,r13		! source line 1713
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_525 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_525  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	1713,r13		! source line 1713
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_524:
! ASSIGNMENT STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0AS",r10
	mov	1716,r13		! source line 1716
	mov	"\0\0SE",r10
!   _temp_526 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-96]
!   _temp_527 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_526  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=fp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	1717,r13		! source line 1717
	mov	"\0\0IF",r10
!   if fp == 0 then goto _Label_529		(int)
	load	[r14+-132],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_529
!	jmp	_Label_528
_Label_528:
! THEN...
	mov	1718,r13		! source line 1718
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1718,r13		! source line 1718
	mov	"\0\0SE",r10
!   _temp_530 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-88]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1719,r13		! source line 1719
	mov	"\0\0AS",r10
	mov	1719,r13		! source line 1719
	mov	"\0\0SE",r10
!   _temp_531 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-84]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_531  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! SEND STATEMENT...
	mov	1720,r13		! source line 1720
	mov	"\0\0SE",r10
!   _temp_532 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=fp  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1721,r13		! source line 1721
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_535 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_534 = *_temp_535  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_534) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_536 = _temp_534 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   _temp_533 = _temp_536		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-76]
!   _temp_537 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_533  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1722,r13		! source line 1722
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_539 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_538 = *_temp_539  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_538) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_540 = _temp_538 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_540 = newAddrSpace  (sizeInBytes=92)
	add	r14,-264,r5
	load	[r14+-48],r4
	mov	23,r3
_Label_3010:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3010
! ASSIGNMENT STATEMENT...
	mov	1723,r13		! source line 1723
	mov	"\0\0AS",r10
!   _temp_542 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-40]
!   _temp_543 = _temp_542 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_541 = *_temp_543  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initUserStackTop = _temp_541 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! ASSIGNMENT STATEMENT...
	mov	1724,r13		! source line 1724
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_544 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_544 [999 ] into _temp_545
!     make sure index expr is >= 0
	mov	999,r2
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
!   initSystemStackTop = _temp_545		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-144]
! SEND STATEMENT...
	mov	1725,r13		! source line 1725
	mov	"\0\0SE",r10
!   _temp_546 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-24]
!   Send message SetToThisPageTable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1726,r13		! source line 1726
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_547 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_547 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+8]
!   Call the function
	mov	1727,r13		! source line 1727
	mov	"\0\0CE",r10
	call	BecomeUserThread
	jmp	_Label_548
_Label_529:
! ELSE...
	mov	1729,r13		! source line 1729
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_549 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_549  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1729,r13		! source line 1729
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_550 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_550  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1730,r13		! source line 1730
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1731,r13		! source line 1731
	mov	"\0\0CA",r10
	call	_P_System_nl
! END IF...
_Label_548:
! RETURN STATEMENT...
	mov	1734,r13		! source line 1734
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_551
	.word	4		! total size of parameters
	.word	276		! frame size = 276
	.word	_Label_552
	.word	8
	.word	4
	.word	_Label_553
	.word	-12
	.word	4
	.word	_Label_554
	.word	-16
	.word	4
	.word	_Label_555
	.word	-20
	.word	4
	.word	_Label_556
	.word	-24
	.word	4
	.word	_Label_557
	.word	-28
	.word	4
	.word	_Label_558
	.word	-32
	.word	4
	.word	_Label_559
	.word	-36
	.word	4
	.word	_Label_560
	.word	-40
	.word	4
	.word	_Label_561
	.word	-44
	.word	4
	.word	_Label_562
	.word	-48
	.word	4
	.word	_Label_563
	.word	-52
	.word	4
	.word	_Label_564
	.word	-56
	.word	4
	.word	_Label_565
	.word	-60
	.word	4
	.word	_Label_566
	.word	-64
	.word	4
	.word	_Label_567
	.word	-68
	.word	4
	.word	_Label_568
	.word	-72
	.word	4
	.word	_Label_569
	.word	-76
	.word	4
	.word	_Label_570
	.word	-80
	.word	4
	.word	_Label_571
	.word	-84
	.word	4
	.word	_Label_572
	.word	-88
	.word	4
	.word	_Label_573
	.word	-92
	.word	4
	.word	_Label_574
	.word	-96
	.word	4
	.word	_Label_575
	.word	-100
	.word	4
	.word	_Label_576
	.word	-104
	.word	4
	.word	_Label_577
	.word	-108
	.word	4
	.word	_Label_578
	.word	-112
	.word	4
	.word	_Label_579
	.word	-116
	.word	4
	.word	_Label_580
	.word	-120
	.word	4
	.word	_Label_581
	.word	-124
	.word	4
	.word	_Label_582
	.word	-128
	.word	4
	.word	_Label_583
	.word	-132
	.word	4
	.word	_Label_584
	.word	-136
	.word	4
	.word	_Label_585
	.word	-140
	.word	4
	.word	_Label_586
	.word	-144
	.word	4
	.word	_Label_587
	.word	-148
	.word	4
	.word	_Label_588
	.word	-172
	.word	24
	.word	_Label_589
	.word	-264
	.word	92
	.word	_Label_590
	.word	-268
	.word	4
	.word	0
_Label_551:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_552:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_583:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_584:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_585:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_586:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_587:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_588:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_589:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_590:
	.byte	'I'
	.ascii	"tmp\0"
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
	mov	19,r1
_Label_3011:
	push	r0
	sub	r1,1,r1
	bne	_Label_3011
	mov	1739,r13		! source line 1739
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0AS",r10
	mov	1742,r13		! source line 1742
	mov	"\0\0SE",r10
!   _temp_591 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_592 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_594 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_593 = *_temp_594  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_593) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_595 = _temp_593 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_591  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_592  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! CALL STATEMENT...
!   _temp_596 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_596  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1743,r13		! source line 1743
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1744,r13		! source line 1744
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_597 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_597  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1745,r13		! source line 1745
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_598 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_598  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1746,r13		! source line 1746
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1747,r13		! source line 1747
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1748,r13		! source line 1748
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_599
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_600
	.word	8
	.word	4
	.word	_Label_601
	.word	-12
	.word	4
	.word	_Label_602
	.word	-16
	.word	4
	.word	_Label_603
	.word	-20
	.word	4
	.word	_Label_604
	.word	-24
	.word	4
	.word	_Label_605
	.word	-28
	.word	4
	.word	_Label_606
	.word	-32
	.word	4
	.word	_Label_607
	.word	-36
	.word	4
	.word	_Label_608
	.word	-40
	.word	4
	.word	_Label_609
	.word	-64
	.word	24
	.word	_Label_610
	.word	-68
	.word	4
	.word	0
_Label_599:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_600:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_609:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_610:
	.byte	'I'
	.ascii	"tmp\0"
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
	mov	19,r1
_Label_3012:
	push	r0
	sub	r1,1,r1
	bne	_Label_3012
	mov	1753,r13		! source line 1753
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1757,r13		! source line 1757
	mov	"\0\0AS",r10
	mov	1757,r13		! source line 1757
	mov	"\0\0SE",r10
!   _temp_611 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_612 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_613 = *_temp_614  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_613) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_615 = _temp_613 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_611  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_612  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! CALL STATEMENT...
!   _temp_616 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_616  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1758,r13		! source line 1758
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1759,r13		! source line 1759
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_617 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_617  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1760,r13		! source line 1760
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_618 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_618  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1761,r13		! source line 1761
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_619
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_620
	.word	8
	.word	4
	.word	_Label_621
	.word	-12
	.word	4
	.word	_Label_622
	.word	-16
	.word	4
	.word	_Label_623
	.word	-20
	.word	4
	.word	_Label_624
	.word	-24
	.word	4
	.word	_Label_625
	.word	-28
	.word	4
	.word	_Label_626
	.word	-32
	.word	4
	.word	_Label_627
	.word	-36
	.word	4
	.word	_Label_628
	.word	-40
	.word	4
	.word	_Label_629
	.word	-64
	.word	24
	.word	_Label_630
	.word	-68
	.word	4
	.word	0
_Label_619:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_620:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_629:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_630:
	.byte	'I'
	.ascii	"tmp\0"
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
	mov	19,r1
_Label_3013:
	push	r0
	sub	r1,1,r1
	bne	_Label_3013
	mov	1768,r13		! source line 1768
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0AS",r10
	mov	1772,r13		! source line 1772
	mov	"\0\0SE",r10
!   _temp_631 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_632 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_634 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_633 = *_temp_634  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_633) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_635 = _temp_633 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_631  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_632  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! CALL STATEMENT...
!   _temp_636 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_636  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1773,r13		! source line 1773
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1774,r13		! source line 1774
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_637 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_637  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1775,r13		! source line 1775
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_638 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_638  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1776,r13		! source line 1776
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1777,r13		! source line 1777
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1778,r13		! source line 1778
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_639
	.word	12		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_640
	.word	8
	.word	4
	.word	_Label_641
	.word	12
	.word	4
	.word	_Label_642
	.word	16
	.word	4
	.word	_Label_643
	.word	-12
	.word	4
	.word	_Label_644
	.word	-16
	.word	4
	.word	_Label_645
	.word	-20
	.word	4
	.word	_Label_646
	.word	-24
	.word	4
	.word	_Label_647
	.word	-28
	.word	4
	.word	_Label_648
	.word	-32
	.word	4
	.word	_Label_649
	.word	-36
	.word	4
	.word	_Label_650
	.word	-40
	.word	4
	.word	_Label_651
	.word	-64
	.word	24
	.word	_Label_652
	.word	-68
	.word	4
	.word	0
_Label_639:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_640:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_641:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_642:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_651:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_652:
	.byte	'I'
	.ascii	"tmp\0"
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
	mov	19,r1
_Label_3014:
	push	r0
	sub	r1,1,r1
	bne	_Label_3014
	mov	1783,r13		! source line 1783
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0AS",r10
	mov	1787,r13		! source line 1787
	mov	"\0\0SE",r10
!   _temp_653 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_654 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_656 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_655 = *_temp_656  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_655) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_657 = _temp_655 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_653  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_654  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! CALL STATEMENT...
!   _temp_658 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_658  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1788,r13		! source line 1788
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1789,r13		! source line 1789
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_659 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_659  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1790,r13		! source line 1790
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_660 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_660  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1791,r13		! source line 1791
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1792,r13		! source line 1792
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1793,r13		! source line 1793
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_661
	.word	12		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_662
	.word	8
	.word	4
	.word	_Label_663
	.word	12
	.word	4
	.word	_Label_664
	.word	16
	.word	4
	.word	_Label_665
	.word	-12
	.word	4
	.word	_Label_666
	.word	-16
	.word	4
	.word	_Label_667
	.word	-20
	.word	4
	.word	_Label_668
	.word	-24
	.word	4
	.word	_Label_669
	.word	-28
	.word	4
	.word	_Label_670
	.word	-32
	.word	4
	.word	_Label_671
	.word	-36
	.word	4
	.word	_Label_672
	.word	-40
	.word	4
	.word	_Label_673
	.word	-64
	.word	24
	.word	_Label_674
	.word	-68
	.word	4
	.word	0
_Label_661:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_662:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_663:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_664:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_673:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_674:
	.byte	'I'
	.ascii	"tmp\0"
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
	mov	4,r1
_Label_3015:
	push	r0
	sub	r1,1,r1
	bne	_Label_3015
	mov	1798,r13		! source line 1798
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_675 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_675  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1800,r13		! source line 1800
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1801,r13		! source line 1801
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_676 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_676  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1802,r13		! source line 1802
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1803,r13		! source line 1803
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1804,r13		! source line 1804
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_677 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_677  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1805,r13		! source line 1805
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1806,r13		! source line 1806
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1807,r13		! source line 1807
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_678
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_679
	.word	8
	.word	4
	.word	_Label_680
	.word	12
	.word	4
	.word	_Label_681
	.word	-12
	.word	4
	.word	_Label_682
	.word	-16
	.word	4
	.word	_Label_683
	.word	-20
	.word	4
	.word	0
_Label_678:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_679:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_680:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_675\0"
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
	mov	3,r1
_Label_3016:
	push	r0
	sub	r1,1,r1
	bne	_Label_3016
	mov	1813,r13		! source line 1813
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_684 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_684  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1815,r13		! source line 1815
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1816,r13		! source line 1816
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_685 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_685  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1817,r13		! source line 1817
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1818,r13		! source line 1818
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1819,r13		! source line 1819
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1819,r13		! source line 1819
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_686
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_687
	.word	8
	.word	4
	.word	_Label_688
	.word	-12
	.word	4
	.word	_Label_689
	.word	-16
	.word	4
	.word	0
_Label_686:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_687:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_205_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_205_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3017:
	push	r0
	sub	r1,1,r1
	bne	_Label_3017
	mov	2410,r13		! source line 2410
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_690 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_690  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0AS",r10
!   _temp_691 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_691) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_693 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_693) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_692 = *_temp_693  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_691 = _temp_692  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0AS",r10
!   _temp_694 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_694) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_696 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_696) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_695 = *_temp_696  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_694 = _temp_695  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0AS",r10
!   _temp_697 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_697) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_699 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_699) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_698 = *_temp_699  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_697 = _temp_698  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_205_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_700
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_701
	.word	8
	.word	4
	.word	_Label_702
	.word	12
	.word	4
	.word	_Label_703
	.word	-16
	.word	4
	.word	_Label_704
	.word	-9
	.word	1
	.word	_Label_705
	.word	-20
	.word	4
	.word	_Label_706
	.word	-24
	.word	4
	.word	_Label_707
	.word	-10
	.word	1
	.word	_Label_708
	.word	-28
	.word	4
	.word	_Label_709
	.word	-32
	.word	4
	.word	_Label_710
	.word	-11
	.word	1
	.word	_Label_711
	.word	-36
	.word	4
	.word	_Label_712
	.word	-12
	.word	1
	.word	_Label_713
	.word	-40
	.word	4
	.word	_Label_714
	.word	-44
	.word	4
	.word	0
_Label_700:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_701:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_702:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_704:
	.byte	'C'
	.ascii	"_temp_698\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_707:
	.byte	'C'
	.ascii	"_temp_695\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_710:
	.byte	'C'
	.ascii	"_temp_692\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_712:
	.byte	'C'
	.ascii	"_temp_690\0"
	.align
_Label_713:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_714:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_204_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_204_printFCB,r1
	push	r1
	mov	3,r1
_Label_3018:
	push	r0
	sub	r1,1,r1
	bne	_Label_3018
	mov	2420,r13		! source line 2420
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_716 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_715 = *_temp_716  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_715  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2421,r13		! source line 2421
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2422,r13		! source line 2422
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_204_printFCB:
	.word	_sourceFileName
	.word	_Label_717
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_718
	.word	8
	.word	4
	.word	_Label_719
	.word	-12
	.word	4
	.word	_Label_720
	.word	-16
	.word	4
	.word	0
_Label_717:
	.ascii	"printFCB\0"
	.align
_Label_718:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_203_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_203_printOpen,r1
	push	r1
	mov	4,r1
_Label_3019:
	push	r0
	sub	r1,1,r1
	bne	_Label_3019
	mov	2425,r13		! source line 2425
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_721 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_721  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2426,r13		! source line 2426
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_722 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_722  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2427,r13		! source line 2427
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_723 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_723  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2428,r13		! source line 2428
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2429,r13		! source line 2429
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
	mov	2429,r13		! source line 2429
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_203_printOpen:
	.word	_sourceFileName
	.word	_Label_724
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_725
	.word	8
	.word	4
	.word	_Label_726
	.word	-12
	.word	4
	.word	_Label_727
	.word	-16
	.word	4
	.word	_Label_728
	.word	-20
	.word	4
	.word	0
_Label_724:
	.ascii	"printOpen\0"
	.align
_Label_725:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_721\0"
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
_Label_3020:
	push	r0
	sub	r1,1,r1
	bne	_Label_3020
	mov	2689,r13		! source line 2689
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2691,r13		! source line 2691
	mov	"\0\0AS",r10
	mov	2691,r13		! source line 2691
	mov	"\0\0SE",r10
!   _temp_729 = &_P_Kernel_threadManager
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
	mov	2692,r13		! source line 2692
	mov	"\0\0AS",r10
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_730 = myProgram + 72
	load	[r14+-28],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   _temp_731 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_730 = _temp_731  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0SE",r10
!   _temp_732 = _function_202_StartUserProcess
	set	_function_202_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_732  sizeInBytes=4
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
	mov	2693,r13		! source line 2693
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
	.word	_Label_733
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_734
	.word	-12
	.word	4
	.word	_Label_735
	.word	-16
	.word	4
	.word	_Label_736
	.word	-20
	.word	4
	.word	_Label_737
	.word	-24
	.word	4
	.word	_Label_738
	.word	-28
	.word	4
	.word	0
_Label_733:
	.ascii	"InitFirstProcess\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_738:
	.byte	'P'
	.ascii	"myProgram\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_202_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_3021:
	push	r0
	sub	r1,1,r1
	bne	_Label_3021
	mov	2696,r13		! source line 2696
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2703,r13		! source line 2703
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	2704,r13		! source line 2704
	mov	"\0\0AS",r10
	mov	2704,r13		! source line 2704
	mov	"\0\0SE",r10
!   _temp_739 = &_P_Kernel_processManager
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
	mov	2705,r13		! source line 2705
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_740 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_740 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_741 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_741 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2707,r13		! source line 2707
	mov	"\0\0AS",r10
	mov	2707,r13		! source line 2707
	mov	"\0\0SE",r10
!   _temp_742 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-60]
!   _temp_743 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_742  sizeInBytes=4
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
	mov	2708,r13		! source line 2708
	mov	"\0\0IF",r10
!   if fp == 0 then goto _Label_745		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_745
!	jmp	_Label_744
_Label_744:
! THEN...
	mov	2709,r13		! source line 2709
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2709,r13		! source line 2709
	mov	"\0\0AS",r10
	mov	2709,r13		! source line 2709
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_747 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_746 = _temp_747		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_746  sizeInBytes=4
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
	mov	2710,r13		! source line 2710
	mov	"\0\0SE",r10
!   _temp_748 = &_P_Kernel_fileManager
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
! ASSIGNMENT STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_750 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_751 = _temp_750 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_749 = *_temp_751  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_749 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_752 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_752 [999 ] into _temp_753
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
!   initSystemStackTop = _temp_753		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	2713,r13		! source line 2713
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_754 = pcb + 32
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
	mov	2714,r13		! source line 2714
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_755 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_755 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2715,r13		! source line 2715
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	2715,r13		! source line 2715
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
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
	mov	2716,r13		! source line 2716
	mov	"\0\0CE",r10
	call	BecomeUserThread
	jmp	_Label_756
_Label_745:
! ELSE...
	mov	2718,r13		! source line 2718
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_757 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_757  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2718,r13		! source line 2718
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2719,r13		! source line 2719
	mov	"\0\0CA",r10
	call	_P_System_nl
! END IF...
_Label_756:
! RETURN STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_202_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_758
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_759
	.word	8
	.word	4
	.word	_Label_760
	.word	-12
	.word	4
	.word	_Label_761
	.word	-16
	.word	4
	.word	_Label_762
	.word	-20
	.word	4
	.word	_Label_763
	.word	-24
	.word	4
	.word	_Label_764
	.word	-28
	.word	4
	.word	_Label_765
	.word	-32
	.word	4
	.word	_Label_766
	.word	-36
	.word	4
	.word	_Label_767
	.word	-40
	.word	4
	.word	_Label_768
	.word	-44
	.word	4
	.word	_Label_769
	.word	-48
	.word	4
	.word	_Label_770
	.word	-52
	.word	4
	.word	_Label_771
	.word	-56
	.word	4
	.word	_Label_772
	.word	-60
	.word	4
	.word	_Label_773
	.word	-64
	.word	4
	.word	_Label_774
	.word	-68
	.word	4
	.word	_Label_775
	.word	-72
	.word	4
	.word	_Label_776
	.word	-76
	.word	4
	.word	_Label_777
	.word	-80
	.word	4
	.word	_Label_778
	.word	-84
	.word	4
	.word	_Label_779
	.word	-88
	.word	4
	.word	_Label_780
	.word	-92
	.word	4
	.word	_Label_781
	.word	-96
	.word	4
	.word	0
_Label_758:
	.ascii	"StartUserProcess\0"
	.align
_Label_759:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_776:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_777:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_778:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_779:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_780:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_781:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_782
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_782:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_783
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_783:
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
_Label_3022:
	push	r0
	sub	r1,1,r1
	bne	_Label_3022
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_785		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_785
!	jmp	_Label_784
_Label_784:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_786 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_786  sizeInBytes=4
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
_Label_785:
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
	.word	_Label_788
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_789
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_790
	.word	12
	.word	4
	.word	_Label_791
	.word	-12
	.word	4
	.word	_Label_792
	.word	-16
	.word	4
	.word	0
_Label_788:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_789:
	.ascii	"Pself\0"
	.align
_Label_790:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_786\0"
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
_Label_3023:
	push	r0
	sub	r1,1,r1
	bne	_Label_3023
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
!   if count != 2147483647 then goto _Label_794		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_794
!	jmp	_Label_793
_Label_793:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_795 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_795  sizeInBytes=4
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
_Label_794:
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
!   if count > 0 then goto _Label_797		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_797
!	jmp	_Label_796
_Label_796:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_798 = &waitingThreads
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
!   _temp_799 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_799 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_800 = &_P_Kernel_readyList
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
_Label_797:
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
	.word	_Label_801
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_802
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_803
	.word	-12
	.word	4
	.word	_Label_804
	.word	-16
	.word	4
	.word	_Label_805
	.word	-20
	.word	4
	.word	_Label_806
	.word	-24
	.word	4
	.word	_Label_807
	.word	-28
	.word	4
	.word	_Label_808
	.word	-32
	.word	4
	.word	0
_Label_801:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_802:
	.ascii	"Pself\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_807:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_808:
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
_Label_3024:
	push	r0
	sub	r1,1,r1
	bne	_Label_3024
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
!   if count != -2147483648 then goto _Label_810		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_810
!	jmp	_Label_809
_Label_809:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_811 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_811  sizeInBytes=4
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
_Label_810:
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
!   if count >= 0 then goto _Label_813		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_813
!	jmp	_Label_812
_Label_812:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_814 = &waitingThreads
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
_Label_813:
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
	.word	_Label_815
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_816
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_817
	.word	-12
	.word	4
	.word	_Label_818
	.word	-16
	.word	4
	.word	_Label_819
	.word	-20
	.word	4
	.word	0
_Label_815:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_816:
	.ascii	"Pself\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_819:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_820
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_820:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_821
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_821:
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
_Label_3025:
	push	r0
	sub	r1,1,r1
	bne	_Label_3025
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
	.word	_Label_823
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_824
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_825
	.word	-12
	.word	4
	.word	0
_Label_823:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_824:
	.ascii	"Pself\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_822\0"
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
_Label_3026:
	push	r0
	sub	r1,1,r1
	bne	_Label_3026
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_827		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_827
!	jmp	_Label_826
_Label_826:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_828 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_828  sizeInBytes=4
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
_Label_827:
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
!   if heldBy == 0 then goto _Label_832		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_832
!   _temp_831 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_833
_Label_832:
!   _temp_831 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_833:
!   if _temp_831 then goto _Label_830 else goto _Label_829
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_829
	jmp	_Label_830
_Label_829:
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
	jmp	_Label_834
_Label_830:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_835 = &waitingThreads
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
_Label_834:
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
	.word	_Label_836
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_837
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_838
	.word	-16
	.word	4
	.word	_Label_839
	.word	-9
	.word	1
	.word	_Label_840
	.word	-20
	.word	4
	.word	_Label_841
	.word	-24
	.word	4
	.word	0
_Label_836:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_837:
	.ascii	"Pself\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_839:
	.byte	'C'
	.ascii	"_temp_831\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_841:
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
_Label_3027:
	push	r0
	sub	r1,1,r1
	bne	_Label_3027
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_843		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_843
!	jmp	_Label_842
_Label_842:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_844 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_844  sizeInBytes=4
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
_Label_843:
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
!   _temp_845 = &waitingThreads
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
!   if t == 0 then goto _Label_847		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_847
!	jmp	_Label_846
_Label_846:
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
!   _temp_848 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_848 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_849 = &_P_Kernel_readyList
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
	jmp	_Label_850
_Label_847:
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
_Label_850:
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
	.word	_Label_851
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_852
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_853
	.word	-12
	.word	4
	.word	_Label_854
	.word	-16
	.word	4
	.word	_Label_855
	.word	-20
	.word	4
	.word	_Label_856
	.word	-24
	.word	4
	.word	_Label_857
	.word	-28
	.word	4
	.word	_Label_858
	.word	-32
	.word	4
	.word	0
_Label_851:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_852:
	.ascii	"Pself\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_857:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_858:
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
_Label_3028:
	push	r0
	sub	r1,1,r1
	bne	_Label_3028
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_861		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_861
!	jmp	_Label_860
_Label_860:
!   _temp_859 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_862
_Label_861:
!   _temp_859 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_862:
!   ReturnResult: _temp_859  (sizeInBytes=1)
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
	.word	_Label_863
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_864
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_865
	.word	-9
	.word	1
	.word	0
_Label_863:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_864:
	.ascii	"Pself\0"
	.align
_Label_865:
	.byte	'C'
	.ascii	"_temp_859\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_866
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_866:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_867
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_867:
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
_Label_3029:
	push	r0
	sub	r1,1,r1
	bne	_Label_3029
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
	.word	_Label_869
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_870
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_871
	.word	-12
	.word	4
	.word	0
_Label_869:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_870:
	.ascii	"Pself\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_868\0"
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
_Label_3030:
	push	r0
	sub	r1,1,r1
	bne	_Label_3030
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
!   Retrieve Result: targetName=_temp_874  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_874 then goto _Label_873 else goto _Label_872
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_872
	jmp	_Label_873
_Label_872:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_875 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_875  sizeInBytes=4
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
_Label_873:
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
!   _temp_876 = &waitingThreads
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
	.word	_Label_877
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_878
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_879
	.word	12
	.word	4
	.word	_Label_880
	.word	-16
	.word	4
	.word	_Label_881
	.word	-20
	.word	4
	.word	_Label_882
	.word	-9
	.word	1
	.word	_Label_883
	.word	-24
	.word	4
	.word	0
_Label_877:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_878:
	.ascii	"Pself\0"
	.align
_Label_879:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_882:
	.byte	'C'
	.ascii	"_temp_874\0"
	.align
_Label_883:
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
_Label_3031:
	push	r0
	sub	r1,1,r1
	bne	_Label_3031
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
!   Retrieve Result: targetName=_temp_886  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_886 then goto _Label_885 else goto _Label_884
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_884
	jmp	_Label_885
_Label_884:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_887 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_887  sizeInBytes=4
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
_Label_885:
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
!   _temp_888 = &waitingThreads
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
!   if t == 0 then goto _Label_890		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_890
!	jmp	_Label_889
_Label_889:
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
!   _temp_891 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_891 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_892 = &_P_Kernel_readyList
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
_Label_890:
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
	.word	_Label_893
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_894
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_895
	.word	12
	.word	4
	.word	_Label_896
	.word	-16
	.word	4
	.word	_Label_897
	.word	-20
	.word	4
	.word	_Label_898
	.word	-24
	.word	4
	.word	_Label_899
	.word	-28
	.word	4
	.word	_Label_900
	.word	-9
	.word	1
	.word	_Label_901
	.word	-32
	.word	4
	.word	_Label_902
	.word	-36
	.word	4
	.word	0
_Label_893:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_894:
	.ascii	"Pself\0"
	.align
_Label_895:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_900:
	.byte	'C'
	.ascii	"_temp_886\0"
	.align
_Label_901:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_902:
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
_Label_3032:
	push	r0
	sub	r1,1,r1
	bne	_Label_3032
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
!   Retrieve Result: targetName=_temp_905  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_905 then goto _Label_904 else goto _Label_903
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_903
	jmp	_Label_904
_Label_903:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_906 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_906  sizeInBytes=4
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
_Label_904:
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
_Label_907:
!	jmp	_Label_908
_Label_908:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_910 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_911
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_911
	jmp	_Label_912
_Label_911:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_909
! END IF...
_Label_912:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_913 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_913 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_914 = &_P_Kernel_readyList
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
	jmp	_Label_907
_Label_909:
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
	.word	_Label_915
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_916
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_917
	.word	12
	.word	4
	.word	_Label_918
	.word	-16
	.word	4
	.word	_Label_919
	.word	-20
	.word	4
	.word	_Label_920
	.word	-24
	.word	4
	.word	_Label_921
	.word	-28
	.word	4
	.word	_Label_922
	.word	-9
	.word	1
	.word	_Label_923
	.word	-32
	.word	4
	.word	_Label_924
	.word	-36
	.word	4
	.word	0
_Label_915:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_916:
	.ascii	"Pself\0"
	.align
_Label_917:
	.byte	'P'
	.ascii	"mutex\0"
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
	.ascii	"_temp_910\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_922:
	.byte	'C'
	.ascii	"_temp_905\0"
	.align
_Label_923:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_924:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_925
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
_Label_925:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_926
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_926:
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
_Label_3033:
	push	r0
	sub	r1,1,r1
	bne	_Label_3033
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
!   _temp_927 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_927) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_927 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_928 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_928 [0 ] into _temp_929
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
!   Data Move: *_temp_929 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_930 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_930 [999 ] into _temp_931
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
!   Data Move: *_temp_931 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_932 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_932 [999 ] into _temp_933
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
!   stackTop = _temp_933		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_934 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_936 = &_temp_935
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_936 = _temp_936 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_938:
!   Data Move: *_temp_936 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_936 = _temp_936 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_937 = _temp_937 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_937) then goto _Label_938
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_938
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_939 = &_temp_935
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3034
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3034:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_934 = *_temp_939  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3035:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3035
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
!   _temp_940 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_942 = &_temp_941
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_942 = _temp_942 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_944:
!   Data Move: *_temp_942 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_942 = _temp_942 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_943 = _temp_943 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_943) then goto _Label_944
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_944
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_945 = &_temp_941
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3036
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3036:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_940 = *_temp_945  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3037:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3037
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
	.word	_Label_946
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_947
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_948
	.word	12
	.word	4
	.word	_Label_949
	.word	-12
	.word	4
	.word	_Label_950
	.word	-16
	.word	4
	.word	_Label_951
	.word	-20
	.word	4
	.word	_Label_952
	.word	-84
	.word	64
	.word	_Label_953
	.word	-88
	.word	4
	.word	_Label_954
	.word	-92
	.word	4
	.word	_Label_955
	.word	-96
	.word	4
	.word	_Label_956
	.word	-100
	.word	4
	.word	_Label_957
	.word	-156
	.word	56
	.word	_Label_958
	.word	-160
	.word	4
	.word	_Label_959
	.word	-164
	.word	4
	.word	_Label_960
	.word	-168
	.word	4
	.word	_Label_961
	.word	-172
	.word	4
	.word	_Label_962
	.word	-176
	.word	4
	.word	_Label_963
	.word	-180
	.word	4
	.word	_Label_964
	.word	-184
	.word	4
	.word	_Label_965
	.word	-188
	.word	4
	.word	0
_Label_946:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_947:
	.ascii	"Pself\0"
	.align
_Label_948:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_927\0"
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
_Label_3038:
	push	r0
	sub	r1,1,r1
	bne	_Label_3038
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
!   _temp_966 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_966  (sizeInBytes=4)
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
!   _temp_968 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_967  sizeInBytes=4
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
	.word	_Label_969
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_970
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_971
	.word	12
	.word	4
	.word	_Label_972
	.word	16
	.word	4
	.word	_Label_973
	.word	-12
	.word	4
	.word	_Label_974
	.word	-16
	.word	4
	.word	_Label_975
	.word	-20
	.word	4
	.word	_Label_976
	.word	-24
	.word	4
	.word	_Label_977
	.word	-28
	.word	4
	.word	0
_Label_969:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_970:
	.ascii	"Pself\0"
	.align
_Label_971:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_972:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_976:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_977:
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
_Label_3039:
	push	r0
	sub	r1,1,r1
	bne	_Label_3039
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_980 == _P_Kernel_currentThread then goto _Label_979		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_979
!	jmp	_Label_978
_Label_978:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_981 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_981  sizeInBytes=4
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
_Label_979:
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
!   _temp_982 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_984		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_984
!	jmp	_Label_983
_Label_983:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_986		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_986
!	jmp	_Label_985
_Label_985:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_987 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_987  sizeInBytes=4
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
_Label_986:
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
!   _temp_989 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_988  sizeInBytes=4
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
_Label_984:
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
	.word	_Label_990
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_991
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_992
	.word	-12
	.word	4
	.word	_Label_993
	.word	-16
	.word	4
	.word	_Label_994
	.word	-20
	.word	4
	.word	_Label_995
	.word	-24
	.word	4
	.word	_Label_996
	.word	-28
	.word	4
	.word	_Label_997
	.word	-32
	.word	4
	.word	_Label_998
	.word	-36
	.word	4
	.word	_Label_999
	.word	-40
	.word	4
	.word	_Label_1000
	.word	-44
	.word	4
	.word	0
_Label_990:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_991:
	.ascii	"Pself\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_998:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_999:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1000:
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
_Label_3040:
	push	r0
	sub	r1,1,r1
	bne	_Label_3040
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1002		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1002
!	jmp	_Label_1001
_Label_1001:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1003 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1003  sizeInBytes=4
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
_Label_1002:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1006 == _P_Kernel_currentThread then goto _Label_1005		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1005
!	jmp	_Label_1004
_Label_1004:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1007 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1007  sizeInBytes=4
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
_Label_1005:
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
!   _temp_1008 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1009
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1009
	jmp	_Label_1010
_Label_1009:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1011 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1011  sizeInBytes=4
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
_Label_1010:
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
	.word	_Label_1012
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1013
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1014
	.word	-12
	.word	4
	.word	_Label_1015
	.word	-16
	.word	4
	.word	_Label_1016
	.word	-20
	.word	4
	.word	_Label_1017
	.word	-24
	.word	4
	.word	_Label_1018
	.word	-28
	.word	4
	.word	_Label_1019
	.word	-32
	.word	4
	.word	0
_Label_1012:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1013:
	.ascii	"Pself\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1019:
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
_Label_3041:
	push	r0
	sub	r1,1,r1
	bne	_Label_3041
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_1023 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1023 [0 ] into _temp_1024
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
!   Data Move: _temp_1022 = *_temp_1024  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1022 == 606348324 then goto _Label_1021		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1021
!	jmp	_Label_1020
_Label_1020:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1025 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1025  sizeInBytes=4
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
	jmp	_Label_1026
_Label_1021:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_1030 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1030 [999 ] into _temp_1031
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
!   Data Move: _temp_1029 = *_temp_1031  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1029 == 606348324 then goto _Label_1028		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1028
!	jmp	_Label_1027
_Label_1027:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1032 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1032  sizeInBytes=4
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
_Label_1028:
! END IF...
_Label_1026:
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
	.word	_Label_1033
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1034
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1035
	.word	-12
	.word	4
	.word	_Label_1036
	.word	-16
	.word	4
	.word	_Label_1037
	.word	-20
	.word	4
	.word	_Label_1038
	.word	-24
	.word	4
	.word	_Label_1039
	.word	-28
	.word	4
	.word	_Label_1040
	.word	-32
	.word	4
	.word	_Label_1041
	.word	-36
	.word	4
	.word	_Label_1042
	.word	-40
	.word	4
	.word	0
_Label_1033:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1034:
	.ascii	"Pself\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1022\0"
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
_Label_3042:
	push	r0
	sub	r1,1,r1
	bne	_Label_3042
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
!   _temp_1043 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1043  sizeInBytes=4
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
!   _temp_1044 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1044  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1045  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1046 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1046  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1047 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1047  sizeInBytes=4
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
!   _temp_1052 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1053 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1052  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1048:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1053 then goto _Label_1051		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1051
_Label_1049:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1054 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1054  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1055 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1055  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1056 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1056  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1058 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1058 [i ] into _temp_1059
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
!   Data Move: _temp_1057 = *_temp_1059  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1057  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1060 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1060  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1062 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1062 [i ] into _temp_1063
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
!   Data Move: _temp_1061 = *_temp_1063  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1061  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1064 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1064  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1050:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1048
! END FOR
_Label_1051:
! CALL STATEMENT...
!   _temp_1065 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-116]
!   _temp_1066 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1065  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1066  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1067 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-108]
!   _temp_1069 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1069 [0 ] into _temp_1070
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
!   _temp_1068 = _temp_1070		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1067  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1068  sizeInBytes=4
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
	be	_Label_1073
	cmp	r1,2
	be	_Label_1074
	cmp	r1,3
	be	_Label_1075
	cmp	r1,4
	be	_Label_1076
	cmp	r1,5
	be	_Label_1077
	jmp	_Label_1071
! CASE 1...
_Label_1073:
! CALL STATEMENT...
!   _temp_1078 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1078  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_1072
! CASE 2...
_Label_1074:
! CALL STATEMENT...
!   _temp_1079 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1079  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_1072
! CASE 3...
_Label_1075:
! CALL STATEMENT...
!   _temp_1080 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1080  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_1072
! CASE 4...
_Label_1076:
! CALL STATEMENT...
!   _temp_1081 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1081  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_1072
! CASE 5...
_Label_1077:
! CALL STATEMENT...
!   _temp_1082 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1082  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_1072
! DEFAULT CASE...
_Label_1071:
! CALL STATEMENT...
!   _temp_1083 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1083  sizeInBytes=4
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
_Label_1072:
! CALL STATEMENT...
!   _temp_1084 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1084  sizeInBytes=4
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
!   _temp_1085 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1085  sizeInBytes=4
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
!   _temp_1090 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1091 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1090  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1086:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1091 then goto _Label_1089		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1089
_Label_1087:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1092 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1092  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1093 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1093  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1094 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1094  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1096 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1096 [i ] into _temp_1097
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
!   Data Move: _temp_1095 = *_temp_1097  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1095  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1098 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1098  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1100 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1100 [i ] into _temp_1101
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
!   Data Move: _temp_1099 = *_temp_1101  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1099  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1102 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1102  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1088:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1086
! END FOR
_Label_1089:
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
	.word	_Label_1103
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1104
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1105
	.word	-12
	.word	4
	.word	_Label_1106
	.word	-16
	.word	4
	.word	_Label_1107
	.word	-20
	.word	4
	.word	_Label_1108
	.word	-24
	.word	4
	.word	_Label_1109
	.word	-28
	.word	4
	.word	_Label_1110
	.word	-32
	.word	4
	.word	_Label_1111
	.word	-36
	.word	4
	.word	_Label_1112
	.word	-40
	.word	4
	.word	_Label_1113
	.word	-44
	.word	4
	.word	_Label_1114
	.word	-48
	.word	4
	.word	_Label_1115
	.word	-52
	.word	4
	.word	_Label_1116
	.word	-56
	.word	4
	.word	_Label_1117
	.word	-60
	.word	4
	.word	_Label_1118
	.word	-64
	.word	4
	.word	_Label_1119
	.word	-68
	.word	4
	.word	_Label_1120
	.word	-72
	.word	4
	.word	_Label_1121
	.word	-76
	.word	4
	.word	_Label_1122
	.word	-80
	.word	4
	.word	_Label_1123
	.word	-84
	.word	4
	.word	_Label_1124
	.word	-88
	.word	4
	.word	_Label_1125
	.word	-92
	.word	4
	.word	_Label_1126
	.word	-96
	.word	4
	.word	_Label_1127
	.word	-100
	.word	4
	.word	_Label_1128
	.word	-104
	.word	4
	.word	_Label_1129
	.word	-108
	.word	4
	.word	_Label_1130
	.word	-112
	.word	4
	.word	_Label_1131
	.word	-116
	.word	4
	.word	_Label_1132
	.word	-120
	.word	4
	.word	_Label_1133
	.word	-124
	.word	4
	.word	_Label_1134
	.word	-128
	.word	4
	.word	_Label_1135
	.word	-132
	.word	4
	.word	_Label_1136
	.word	-136
	.word	4
	.word	_Label_1137
	.word	-140
	.word	4
	.word	_Label_1138
	.word	-144
	.word	4
	.word	_Label_1139
	.word	-148
	.word	4
	.word	_Label_1140
	.word	-152
	.word	4
	.word	_Label_1141
	.word	-156
	.word	4
	.word	_Label_1142
	.word	-160
	.word	4
	.word	_Label_1143
	.word	-164
	.word	4
	.word	_Label_1144
	.word	-168
	.word	4
	.word	_Label_1145
	.word	-172
	.word	4
	.word	_Label_1146
	.word	-176
	.word	4
	.word	_Label_1147
	.word	-180
	.word	4
	.word	_Label_1148
	.word	-184
	.word	4
	.word	_Label_1149
	.word	-188
	.word	4
	.word	_Label_1150
	.word	-192
	.word	4
	.word	_Label_1151
	.word	-196
	.word	4
	.word	0
_Label_1103:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1104:
	.ascii	"Pself\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1150:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1151:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1152
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1152:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1153
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1153:
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
_Label_3043:
	push	r0
	sub	r1,1,r1
	bne	_Label_3043
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1154 = _StringConst_100
	set	_StringConst_100,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1154  sizeInBytes=4
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
!   _temp_1155 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1157 = &_temp_1156
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1157 = _temp_1157 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1159 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3044:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3044
!   _temp_1159 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1161:
!   Data Move: *_temp_1157 = _temp_1159  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3045:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3045
!   _temp_1157 = _temp_1157 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1158 = _temp_1158 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1158) then goto _Label_1161
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1161
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1162 = &_temp_1156
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3046
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3046:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1155 = *_temp_1162  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3047:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3047
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
!   _temp_1166 = &threadManagerLock
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
!   _temp_1167 = &aThreadBecomeFree
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
!   _temp_1172 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1173 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1172  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1168:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1173 then goto _Label_1171		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1171
_Label_1169:
	mov	702,r13		! source line 702
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0SE",r10
!   _temp_1174 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-48]
!   _temp_1175 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1175 [i ] into _temp_1176
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
!   Prepare Argument: offset=12  value=_temp_1174  sizeInBytes=4
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
!   _temp_1178 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1178 [i ] into _temp_1179
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
!   _temp_1177 = _temp_1179		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1180 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1177  sizeInBytes=4
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
!   _temp_1181 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1181 [i ] into _temp_1182
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
!   _temp_1183 = _temp_1182 + 76
	load	[r14+-16],r1
	add	r1,76,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1183 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-12],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1170:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1168
! END FOR
_Label_1171:
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
	.word	_Label_1184
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1185
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1186
	.word	-12
	.word	4
	.word	_Label_1187
	.word	-16
	.word	4
	.word	_Label_1188
	.word	-20
	.word	4
	.word	_Label_1189
	.word	-24
	.word	4
	.word	_Label_1190
	.word	-28
	.word	4
	.word	_Label_1191
	.word	-32
	.word	4
	.word	_Label_1192
	.word	-36
	.word	4
	.word	_Label_1193
	.word	-40
	.word	4
	.word	_Label_1194
	.word	-44
	.word	4
	.word	_Label_1195
	.word	-48
	.word	4
	.word	_Label_1196
	.word	-52
	.word	4
	.word	_Label_1197
	.word	-56
	.word	4
	.word	_Label_1198
	.word	-60
	.word	4
	.word	_Label_1199
	.word	-64
	.word	4
	.word	_Label_1200
	.word	-68
	.word	4
	.word	_Label_1201
	.word	-72
	.word	4
	.word	_Label_1202
	.word	-76
	.word	4
	.word	_Label_1203
	.word	-80
	.word	4
	.word	_Label_1204
	.word	-84
	.word	4
	.word	_Label_1205
	.word	-4248
	.word	4164
	.word	_Label_1206
	.word	-4252
	.word	4
	.word	_Label_1207
	.word	-4256
	.word	4
	.word	_Label_1208
	.word	-45900
	.word	41644
	.word	_Label_1209
	.word	-45904
	.word	4
	.word	_Label_1210
	.word	-45908
	.word	4
	.word	_Label_1211
	.word	-45912
	.word	4
	.word	0
_Label_1184:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1185:
	.ascii	"Pself\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1211:
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
_Label_3048:
	push	r0
	sub	r1,1,r1
	bne	_Label_3048
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
!   _temp_1212 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1212  sizeInBytes=4
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
!   _temp_1217 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1218 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1217  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1213:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1218 then goto _Label_1216		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1216
_Label_1214:
	mov	720,r13		! source line 720
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1219 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1219  sizeInBytes=4
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
!   _temp_1220 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1222 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1222 [i ] into _temp_1223
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
!   _temp_1221 = _temp_1223		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1221  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CA",r10
	call	_function_208_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1215:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1213
! END FOR
_Label_1216:
! CALL STATEMENT...
!   _temp_1224 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1224  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0SE",r10
!   _temp_1225 = _function_207_PrintObjectAddr
	set	_function_207_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1226 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1225  sizeInBytes=4
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
	.word	_Label_1227
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1228
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_1233
	.word	-28
	.word	4
	.word	_Label_1234
	.word	-32
	.word	4
	.word	_Label_1235
	.word	-36
	.word	4
	.word	_Label_1236
	.word	-40
	.word	4
	.word	_Label_1237
	.word	-44
	.word	4
	.word	_Label_1238
	.word	-48
	.word	4
	.word	_Label_1239
	.word	-52
	.word	4
	.word	_Label_1240
	.word	-56
	.word	4
	.word	_Label_1241
	.word	-60
	.word	4
	.word	0
_Label_1227:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1228:
	.ascii	"Pself\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1240:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1241:
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
_Label_3049:
	push	r0
	sub	r1,1,r1
	bne	_Label_3049
	mov	734,r13		! source line 734
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0SE",r10
!   _temp_1242 = &threadManagerLock
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
_Label_1243:
	mov	741,r13		! source line 741
	mov	"\0\0SE",r10
!   _temp_1246 = &freeList
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
!   if result==true then goto _Label_1244 else goto _Label_1245
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1245
	jmp	_Label_1244
_Label_1244:
	mov	741,r13		! source line 741
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0SE",r10
!   _temp_1247 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   _temp_1248 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1247  sizeInBytes=4
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
	jmp	_Label_1243
_Label_1245:
! ASSIGNMENT STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0AS",r10
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_1249 = &freeList
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
!   _temp_1250 = tmp + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1250 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1251) then goto _runtimeErrorNullPointer
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
!   _temp_1252 = &threadManagerLock
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
	.word	_Label_1253
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1254
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_1262
	.word	-40
	.word	4
	.word	_Label_1263
	.word	-44
	.word	4
	.word	0
_Label_1253:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1254:
	.ascii	"Pself\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1263:
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
_Label_3050:
	push	r0
	sub	r1,1,r1
	bne	_Label_3050
	mov	753,r13		! source line 753
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0SE",r10
!   _temp_1264 = &threadManagerLock
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
!   _temp_1265 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1265 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0SE",r10
!   _temp_1266 = &freeList
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
!   if intIsZero (_temp_1267) then goto _runtimeErrorNullPointer
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
!   _temp_1268 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1269 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1268  sizeInBytes=4
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
!   _temp_1270 = &threadManagerLock
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
	.word	_Label_1271
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1272
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1273
	.word	12
	.word	4
	.word	_Label_1274
	.word	-12
	.word	4
	.word	_Label_1275
	.word	-16
	.word	4
	.word	_Label_1276
	.word	-20
	.word	4
	.word	_Label_1277
	.word	-24
	.word	4
	.word	_Label_1278
	.word	-28
	.word	4
	.word	_Label_1279
	.word	-32
	.word	4
	.word	_Label_1280
	.word	-36
	.word	4
	.word	0
_Label_1271:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1272:
	.ascii	"Pself\0"
	.align
_Label_1273:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1281
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1281:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1282
	.word	_sourceFileName
	.word	213		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1282:
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
_Label_3051:
	push	r0
	sub	r1,1,r1
	bne	_Label_3051
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
_Label_3052:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3052
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_1284 = &addrSpace
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
	.word	_Label_1285
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1286
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1287
	.word	-12
	.word	4
	.word	_Label_1288
	.word	-16
	.word	4
	.word	0
_Label_1285:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1286:
	.ascii	"Pself\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1283\0"
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
_Label_3053:
	push	r0
	sub	r1,1,r1
	bne	_Label_3053
	mov	790,r13		! source line 790
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1289) then goto _runtimeErrorNullPointer
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
!   _temp_1290 = &addrSpace
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
!   _temp_1291 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1291  sizeInBytes=4
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
	call	_function_208_ThreadPrintShort
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
	.word	_Label_1292
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1293
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1294
	.word	-12
	.word	4
	.word	_Label_1295
	.word	-16
	.word	4
	.word	_Label_1296
	.word	-20
	.word	4
	.word	0
_Label_1292:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1293:
	.ascii	"Pself\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1289\0"
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
_Label_3054:
	push	r0
	sub	r1,1,r1
	bne	_Label_3054
	mov	813,r13		! source line 813
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1297 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1298  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1299 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1299  sizeInBytes=4
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
!   _temp_1300 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1300  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1302		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1302
!	jmp	_Label_1301
_Label_1301:
! THEN...
	mov	823,r13		! source line 823
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1303 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1303  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1304
_Label_1302:
! ELSE...
	mov	824,r13		! source line 824
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1306		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1306
!	jmp	_Label_1305
_Label_1305:
! THEN...
	mov	825,r13		! source line 825
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1307 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1307  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1308
_Label_1306:
! ELSE...
	mov	826,r13		! source line 826
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1310		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1310
!	jmp	_Label_1309
_Label_1309:
! THEN...
	mov	827,r13		! source line 827
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1311 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1311  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1312
_Label_1310:
! ELSE...
	mov	829,r13		! source line 829
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1313 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1313  sizeInBytes=4
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
_Label_1312:
! END IF...
_Label_1308:
! END IF...
_Label_1304:
! CALL STATEMENT...
!   _temp_1314 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1314  sizeInBytes=4
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
!   _temp_1315 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1315  sizeInBytes=4
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
	.word	_Label_1316
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1317
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1318
	.word	-12
	.word	4
	.word	_Label_1319
	.word	-16
	.word	4
	.word	_Label_1320
	.word	-20
	.word	4
	.word	_Label_1321
	.word	-24
	.word	4
	.word	_Label_1322
	.word	-28
	.word	4
	.word	_Label_1323
	.word	-32
	.word	4
	.word	_Label_1324
	.word	-36
	.word	4
	.word	_Label_1325
	.word	-40
	.word	4
	.word	_Label_1326
	.word	-44
	.word	4
	.word	_Label_1327
	.word	-48
	.word	4
	.word	0
_Label_1316:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1317:
	.ascii	"Pself\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1328
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1328:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1329
	.word	_sourceFileName
	.word	233		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1329:
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
_Label_3055:
	push	r0
	sub	r1,1,r1
	bne	_Label_3055
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0AS",r10
!   _temp_1330 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1456]
!   NEW ARRAY Constructor...
!   _temp_1332 = &_temp_1331
	add	r14,-1452,r1
	store	r1,[r14+-208]
!   _temp_1332 = _temp_1332 + 4
	load	[r14+-208],r1
	add	r1,4,r1
	store	r1,[r14+-208]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1334 = zeros  (sizeInBytes=124)
	add	r14,-200,r4
	mov	31,r3
_Label_3056:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3056
!   _temp_1334 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-200]
	mov	10,r1
	store	r1,[r14+-204]
_Label_1336:
!   Data Move: *_temp_1332 = _temp_1334  (sizeInBytes=124)
	add	r14,-200,r5
	load	[r14+-208],r4
	mov	31,r3
_Label_3057:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3057
!   _temp_1332 = _temp_1332 + 124
	load	[r14+-208],r1
	add	r1,124,r1
	store	r1,[r14+-208]
!   _temp_1333 = _temp_1333 + -1
	load	[r14+-204],r1
	add	r1,-1,r1
	store	r1,[r14+-204]
!   if intNotZero (_temp_1333) then goto _Label_1336
	load	[r14+-204],r1
	cmp	r1,r0
	bne	_Label_1336
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1452]
!   _temp_1337 = &_temp_1331
	add	r14,-1452,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	load	[r14+-1456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3058
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3058:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1330 = *_temp_1337  (sizeInBytes=1244)
	load	[r14+-72],r5
	load	[r14+-1456],r4
	mov	311,r3
_Label_3059:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3059
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
!   _temp_1340 = &processManagerLock
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
!   _temp_1341 = &aProcessBecameFree
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
!   _temp_1344 = &aProcessDied
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
!   _temp_1349 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1350 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1349  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-1460]
_Label_1345:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1350 then goto _Label_1348		
	load	[r14+-1460],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1348
_Label_1346:
	mov	860,r13		! source line 860
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0SE",r10
!   _temp_1351 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1351 [i ] into _temp_1352
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
!   _temp_1354 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1354 [i ] into _temp_1355
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
!   _temp_1353 = _temp_1355		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1356 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1353  sizeInBytes=4
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
_Label_1347:
!   i = i + 1
	load	[r14+-1460],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1460]
	jmp	_Label_1345
! END FOR
_Label_1348:
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
	.word	_Label_1357
	.word	4		! total size of parameters
	.word	1460		! frame size = 1460
	.word	_Label_1358
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1359
	.word	-12
	.word	4
	.word	_Label_1360
	.word	-16
	.word	4
	.word	_Label_1361
	.word	-20
	.word	4
	.word	_Label_1362
	.word	-24
	.word	4
	.word	_Label_1363
	.word	-28
	.word	4
	.word	_Label_1364
	.word	-32
	.word	4
	.word	_Label_1365
	.word	-36
	.word	4
	.word	_Label_1366
	.word	-40
	.word	4
	.word	_Label_1367
	.word	-44
	.word	4
	.word	_Label_1368
	.word	-48
	.word	4
	.word	_Label_1369
	.word	-52
	.word	4
	.word	_Label_1370
	.word	-56
	.word	4
	.word	_Label_1371
	.word	-60
	.word	4
	.word	_Label_1372
	.word	-64
	.word	4
	.word	_Label_1373
	.word	-68
	.word	4
	.word	_Label_1374
	.word	-72
	.word	4
	.word	_Label_1375
	.word	-76
	.word	4
	.word	_Label_1376
	.word	-200
	.word	124
	.word	_Label_1377
	.word	-204
	.word	4
	.word	_Label_1378
	.word	-208
	.word	4
	.word	_Label_1379
	.word	-1452
	.word	1244
	.word	_Label_1380
	.word	-1456
	.word	4
	.word	_Label_1381
	.word	-1460
	.word	4
	.word	0
_Label_1357:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1358:
	.ascii	"Pself\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1381:
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
_Label_3060:
	push	r0
	sub	r1,1,r1
	bne	_Label_3060
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
!   _temp_1382 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1382  sizeInBytes=4
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
!   _temp_1387 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1388 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1387  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1383:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1388 then goto _Label_1386		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1386
_Label_1384:
	mov	877,r13		! source line 877
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1389 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1389  sizeInBytes=4
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
!   _temp_1390 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1390  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0SE",r10
!   _temp_1391 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1391 [i ] into _temp_1392
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
_Label_1385:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1383
! END FOR
_Label_1386:
! CALL STATEMENT...
!   _temp_1393 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1393  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0SE",r10
!   _temp_1394 = _function_207_PrintObjectAddr
	set	_function_207_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1395 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1394  sizeInBytes=4
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
	.word	_Label_1396
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1397
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1398
	.word	-12
	.word	4
	.word	_Label_1399
	.word	-16
	.word	4
	.word	_Label_1400
	.word	-20
	.word	4
	.word	_Label_1401
	.word	-24
	.word	4
	.word	_Label_1402
	.word	-28
	.word	4
	.word	_Label_1403
	.word	-32
	.word	4
	.word	_Label_1404
	.word	-36
	.word	4
	.word	_Label_1405
	.word	-40
	.word	4
	.word	_Label_1406
	.word	-44
	.word	4
	.word	_Label_1407
	.word	-48
	.word	4
	.word	_Label_1408
	.word	-52
	.word	4
	.word	_Label_1409
	.word	-56
	.word	4
	.word	0
_Label_1396:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1397:
	.ascii	"Pself\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1408:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1409:
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
_Label_3061:
	push	r0
	sub	r1,1,r1
	bne	_Label_3061
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
!   _temp_1410 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1410  sizeInBytes=4
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
!   _temp_1415 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1416 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1415  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1411:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1416 then goto _Label_1414		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1414
_Label_1412:
	mov	900,r13		! source line 900
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1417 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1417  sizeInBytes=4
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
!   _temp_1418 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1418 [i ] into _temp_1419
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
_Label_1413:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1411
! END FOR
_Label_1414:
! CALL STATEMENT...
!   _temp_1420 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1420  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_1421 = _function_207_PrintObjectAddr
	set	_function_207_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1422 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1421  sizeInBytes=4
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
	.word	_Label_1423
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1424
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1425
	.word	-12
	.word	4
	.word	_Label_1426
	.word	-16
	.word	4
	.word	_Label_1427
	.word	-20
	.word	4
	.word	_Label_1428
	.word	-24
	.word	4
	.word	_Label_1429
	.word	-28
	.word	4
	.word	_Label_1430
	.word	-32
	.word	4
	.word	_Label_1431
	.word	-36
	.word	4
	.word	_Label_1432
	.word	-40
	.word	4
	.word	_Label_1433
	.word	-44
	.word	4
	.word	_Label_1434
	.word	-48
	.word	4
	.word	_Label_1435
	.word	-52
	.word	4
	.word	0
_Label_1423:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1424:
	.ascii	"Pself\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1434:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1435:
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
_Label_3062:
	push	r0
	sub	r1,1,r1
	bne	_Label_3062
	mov	913,r13		! source line 913
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0SE",r10
!   _temp_1436 = &processManagerLock
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
!   if intIsZero (_temp_1437) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1438 = _temp_1437 + 1312
	load	[r14+-72],r1
	add	r1,1312,r1
	store	r1,[r14+-68]
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1441) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1442 = _temp_1441 + 1312
	load	[r14+-56],r1
	add	r1,1312,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1440 = *_temp_1442  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_1439 = _temp_1440 + 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Data Move: *_temp_1438 = _temp_1439  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r14+-68],r2
	store	r1,[r2]
! WHILE STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0WH",r10
_Label_1443:
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_1446 = &freeList
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
!   if result==true then goto _Label_1444 else goto _Label_1445
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1445
	jmp	_Label_1444
_Label_1444:
	mov	921,r13		! source line 921
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0SE",r10
!   _temp_1447 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-44]
!   _temp_1448 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1447  sizeInBytes=4
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
	jmp	_Label_1443
_Label_1445:
! ASSIGNMENT STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0AS",r10
	mov	924,r13		! source line 924
	mov	"\0\0SE",r10
!   _temp_1449 = &freeList
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
!   _temp_1450 = tmp + 20
	load	[r14+-80],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1450 = 1  (sizeInBytes=4)
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
!   _temp_1451 = tmp + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-28]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1453) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1454 = _temp_1453 + 1312
	load	[r14+-20],r1
	add	r1,1312,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1452 = *_temp_1454  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1451 = _temp_1452  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_1455 = &processManagerLock
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
	.word	_Label_1456
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_1457
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1458
	.word	-12
	.word	4
	.word	_Label_1459
	.word	-16
	.word	4
	.word	_Label_1460
	.word	-20
	.word	4
	.word	_Label_1461
	.word	-24
	.word	4
	.word	_Label_1462
	.word	-28
	.word	4
	.word	_Label_1463
	.word	-32
	.word	4
	.word	_Label_1464
	.word	-36
	.word	4
	.word	_Label_1465
	.word	-40
	.word	4
	.word	_Label_1466
	.word	-44
	.word	4
	.word	_Label_1467
	.word	-48
	.word	4
	.word	_Label_1468
	.word	-52
	.word	4
	.word	_Label_1469
	.word	-56
	.word	4
	.word	_Label_1470
	.word	-60
	.word	4
	.word	_Label_1471
	.word	-64
	.word	4
	.word	_Label_1472
	.word	-68
	.word	4
	.word	_Label_1473
	.word	-72
	.word	4
	.word	_Label_1474
	.word	-76
	.word	4
	.word	_Label_1475
	.word	-80
	.word	4
	.word	0
_Label_1456:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1457:
	.ascii	"Pself\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1475:
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
_Label_3063:
	push	r0
	sub	r1,1,r1
	bne	_Label_3063
	mov	934,r13		! source line 934
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	939,r13		! source line 939
	mov	"\0\0SE",r10
!   _temp_1476 = &processManagerLock
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
!   _temp_1477 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1477 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	941,r13		! source line 941
	mov	"\0\0SE",r10
!   _temp_1478 = &freeList
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
!   _temp_1479 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-24]
!   _temp_1480 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1479  sizeInBytes=4
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
!   if intIsZero (_temp_1481) then goto _runtimeErrorNullPointer
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
!   _temp_1482 = &processManagerLock
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
	.word	_Label_1483
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1484
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1485
	.word	12
	.word	4
	.word	_Label_1486
	.word	-12
	.word	4
	.word	_Label_1487
	.word	-16
	.word	4
	.word	_Label_1488
	.word	-20
	.word	4
	.word	_Label_1489
	.word	-24
	.word	4
	.word	_Label_1490
	.word	-28
	.word	4
	.word	_Label_1491
	.word	-32
	.word	4
	.word	_Label_1492
	.word	-36
	.word	4
	.word	0
_Label_1483:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1484:
	.ascii	"Pself\0"
	.align
_Label_1485:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1493
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1493:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1494
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1494:
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
_Label_3064:
	push	r0
	sub	r1,1,r1
	bne	_Label_3064
	mov	977,r13		! source line 977
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1495 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1495  sizeInBytes=4
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
!   _temp_1497 = &framesInUse
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
!   _temp_1499 = &frameManagerLock
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
!   _temp_1501 = &newFramesAvailable
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
!   _temp_1506 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1507 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1506  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1502:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1507 then goto _Label_1505		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1505
_Label_1503:
	mov	996,r13		! source line 996
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1510 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1510) then goto _Label_1509
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1509
!	jmp	_Label_1508
_Label_1508:
! THEN...
	mov	1000,r13		! source line 1000
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1511 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1511  sizeInBytes=4
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
_Label_1509:
!   Increment the FOR-LOOP index variable and jump back
_Label_1504:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1502
! END FOR
_Label_1505:
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
	.word	_Label_1512
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1513
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1514
	.word	-12
	.word	4
	.word	_Label_1515
	.word	-16
	.word	4
	.word	_Label_1516
	.word	-20
	.word	4
	.word	_Label_1517
	.word	-24
	.word	4
	.word	_Label_1518
	.word	-28
	.word	4
	.word	_Label_1519
	.word	-32
	.word	4
	.word	_Label_1520
	.word	-36
	.word	4
	.word	_Label_1521
	.word	-40
	.word	4
	.word	_Label_1522
	.word	-44
	.word	4
	.word	_Label_1523
	.word	-48
	.word	4
	.word	_Label_1524
	.word	-52
	.word	4
	.word	_Label_1525
	.word	-56
	.word	4
	.word	0
_Label_1512:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1513:
	.ascii	"Pself\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1525:
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
_Label_3065:
	push	r0
	sub	r1,1,r1
	bne	_Label_3065
	mov	1007,r13		! source line 1007
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
!   _temp_1526 = &frameManagerLock
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
!   _temp_1527 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1527  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1012,r13		! source line 1012
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1528 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1528  sizeInBytes=4
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
!   _temp_1529 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1529  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1014,r13		! source line 1014
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0SE",r10
!   _temp_1530 = &framesInUse
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
!   _temp_1531 = &frameManagerLock
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
	.word	_Label_1532
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1533
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1534
	.word	-12
	.word	4
	.word	_Label_1535
	.word	-16
	.word	4
	.word	_Label_1536
	.word	-20
	.word	4
	.word	_Label_1537
	.word	-24
	.word	4
	.word	_Label_1538
	.word	-28
	.word	4
	.word	_Label_1539
	.word	-32
	.word	4
	.word	0
_Label_1532:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1533:
	.ascii	"Pself\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1526\0"
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
_Label_3066:
	push	r0
	sub	r1,1,r1
	bne	_Label_3066
	mov	1021,r13		! source line 1021
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0SE",r10
!   _temp_1540 = &frameManagerLock
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
_Label_1541:
!   if numberFreeFrames >= 1 then goto _Label_1543		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1543
!	jmp	_Label_1542
_Label_1542:
	mov	1032,r13		! source line 1032
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0SE",r10
!   _temp_1544 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1545 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1544  sizeInBytes=4
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
	jmp	_Label_1541
_Label_1543:
! ASSIGNMENT STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0AS",r10
	mov	1037,r13		! source line 1037
	mov	"\0\0SE",r10
!   _temp_1546 = &framesInUse
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
!   _temp_1547 = &frameManagerLock
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
!   _temp_1548 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1548		(int)
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
	.word	_Label_1549
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1550
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1551
	.word	-12
	.word	4
	.word	_Label_1552
	.word	-16
	.word	4
	.word	_Label_1553
	.word	-20
	.word	4
	.word	_Label_1554
	.word	-24
	.word	4
	.word	_Label_1555
	.word	-28
	.word	4
	.word	_Label_1556
	.word	-32
	.word	4
	.word	_Label_1557
	.word	-36
	.word	4
	.word	_Label_1558
	.word	-40
	.word	4
	.word	0
_Label_1549:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1550:
	.ascii	"Pself\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1557:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1558:
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
_Label_3067:
	push	r0
	sub	r1,1,r1
	bne	_Label_3067
	mov	1051,r13		! source line 1051
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1053,r13		! source line 1053
	mov	"\0\0SE",r10
!   _temp_1559 = &frameManagerLock
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
_Label_1560:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_1562		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1562
!	jmp	_Label_1561
_Label_1561:
	mov	1054,r13		! source line 1054
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0SE",r10
!   _temp_1563 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1564 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1563  sizeInBytes=4
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
	jmp	_Label_1560
_Label_1562:
! FOR STATEMENT...
	mov	1057,r13		! source line 1057
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1569 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1570 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1569  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1565:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1570 then goto _Label_1568		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1568
_Label_1566:
	mov	1057,r13		! source line 1057
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1058,r13		! source line 1058
	mov	"\0\0AS",r10
	mov	1058,r13		! source line 1058
	mov	"\0\0SE",r10
!   _temp_1571 = &framesInUse
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
!   _temp_1572 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1572		(int)
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
_Label_1567:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1565
! END FOR
_Label_1568:
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
!   _temp_1573 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1573 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_1574 = &frameManagerLock
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
	.word	_Label_1575
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1576
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1577
	.word	12
	.word	4
	.word	_Label_1578
	.word	16
	.word	4
	.word	_Label_1579
	.word	-12
	.word	4
	.word	_Label_1580
	.word	-16
	.word	4
	.word	_Label_1581
	.word	-20
	.word	4
	.word	_Label_1582
	.word	-24
	.word	4
	.word	_Label_1583
	.word	-28
	.word	4
	.word	_Label_1584
	.word	-32
	.word	4
	.word	_Label_1585
	.word	-36
	.word	4
	.word	_Label_1586
	.word	-40
	.word	4
	.word	_Label_1587
	.word	-44
	.word	4
	.word	_Label_1588
	.word	-48
	.word	4
	.word	_Label_1589
	.word	-52
	.word	4
	.word	_Label_1590
	.word	-56
	.word	4
	.word	0
_Label_1575:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1576:
	.ascii	"Pself\0"
	.align
_Label_1577:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1578:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1588:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1589:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1590:
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
_Label_3068:
	push	r0
	sub	r1,1,r1
	bne	_Label_3068
	mov	1069,r13		! source line 1069
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0SE",r10
!   _temp_1591 = &frameManagerLock
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
!   _temp_1596 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1599 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1598 = *_temp_1599  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1597 = _temp_1598 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1596  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_1592:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1597 then goto _Label_1595		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1595
_Label_1593:
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
!   _temp_1600 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1600 div 8192		(int)
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
!   _temp_1601 = &framesInUse
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
_Label_1594:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1592
! END FOR
_Label_1595:
! ASSIGNMENT STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1603 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1602 = *_temp_1603  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1602		(int)
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
!   _temp_1604 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1604 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0SE",r10
!   _temp_1605 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1606 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1605  sizeInBytes=4
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
!   _temp_1607 = &frameManagerLock
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
	.word	_Label_1608
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1609
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1610
	.word	12
	.word	4
	.word	_Label_1611
	.word	-12
	.word	4
	.word	_Label_1612
	.word	-16
	.word	4
	.word	_Label_1613
	.word	-20
	.word	4
	.word	_Label_1614
	.word	-24
	.word	4
	.word	_Label_1615
	.word	-28
	.word	4
	.word	_Label_1616
	.word	-32
	.word	4
	.word	_Label_1617
	.word	-36
	.word	4
	.word	_Label_1618
	.word	-40
	.word	4
	.word	_Label_1619
	.word	-44
	.word	4
	.word	_Label_1620
	.word	-48
	.word	4
	.word	_Label_1621
	.word	-52
	.word	4
	.word	_Label_1622
	.word	-56
	.word	4
	.word	_Label_1623
	.word	-60
	.word	4
	.word	_Label_1624
	.word	-64
	.word	4
	.word	_Label_1625
	.word	-68
	.word	4
	.word	_Label_1626
	.word	-72
	.word	4
	.word	0
_Label_1608:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1609:
	.ascii	"Pself\0"
	.align
_Label_1610:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1624:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1625:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1626:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1627
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
_Label_1627:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1628
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1628:
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
_Label_3069:
	push	r0
	sub	r1,1,r1
	bne	_Label_3069
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
!   _temp_1629 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1631 = &_temp_1630
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1631 = _temp_1631 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1633:
!   Data Move: *_temp_1631 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1631 = _temp_1631 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1632 = _temp_1632 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1632) then goto _Label_1633
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1633
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1634 = &_temp_1630
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3070
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3070:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1629 = *_temp_1634  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3071:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3071
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
	.word	_Label_1635
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1636
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1637
	.word	-12
	.word	4
	.word	_Label_1638
	.word	-16
	.word	4
	.word	_Label_1639
	.word	-20
	.word	4
	.word	_Label_1640
	.word	-104
	.word	84
	.word	_Label_1641
	.word	-108
	.word	4
	.word	0
_Label_1635:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1636:
	.ascii	"Pself\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1629\0"
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
_Label_3072:
	push	r0
	sub	r1,1,r1
	bne	_Label_3072
	mov	1101,r13		! source line 1101
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1642 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1642  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1106,r13		! source line 1106
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1643 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1643  sizeInBytes=4
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
!   _temp_1648 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1649 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1648  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1644:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1649 then goto _Label_1647		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1647
_Label_1645:
	mov	1108,r13		! source line 1108
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1650 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1650  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1109,r13		! source line 1109
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1652 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1652 [i ] into _temp_1653
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
!   _temp_1651 = _temp_1653		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1651  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1110,r13		! source line 1110
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1654 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1654  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1656 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1656 [i ] into _temp_1657
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
!   Data Move: _temp_1655 = *_temp_1657  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1655  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1112,r13		! source line 1112
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1658 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1658  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1113,r13		! source line 1113
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1659 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1659  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1114,r13		! source line 1114
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1660 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1660  sizeInBytes=4
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
!   if intIsZero (_temp_1662) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1661  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1661  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1116,r13		! source line 1116
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1663 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1663  sizeInBytes=4
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
!   if intIsZero (_temp_1667) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1666  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1666) then goto _Label_1665
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1665
!	jmp	_Label_1664
_Label_1664:
! THEN...
	mov	1119,r13		! source line 1119
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1119,r13		! source line 1119
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1669) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1668  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1668  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1119,r13		! source line 1119
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1670
_Label_1665:
! ELSE...
	mov	1121,r13		! source line 1121
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1671 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1671  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1121,r13		! source line 1121
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1670:
! CALL STATEMENT...
!   _temp_1672 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1672  sizeInBytes=4
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
!   if intIsZero (_temp_1675) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1673 else goto _Label_1674
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1674
	jmp	_Label_1673
_Label_1673:
! THEN...
	mov	1125,r13		! source line 1125
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1676 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1676  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1677
_Label_1674:
! ELSE...
	mov	1127,r13		! source line 1127
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1678 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1678  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1127,r13		! source line 1127
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1677:
! CALL STATEMENT...
!   _temp_1679 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1679  sizeInBytes=4
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
!   if intIsZero (_temp_1682) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1680 else goto _Label_1681
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1681
	jmp	_Label_1680
_Label_1680:
! THEN...
	mov	1131,r13		! source line 1131
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1683 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1683  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1131,r13		! source line 1131
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1684
_Label_1681:
! ELSE...
	mov	1133,r13		! source line 1133
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1685 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1685  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1133,r13		! source line 1133
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1684:
! CALL STATEMENT...
!   _temp_1686 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1686  sizeInBytes=4
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
!   if intIsZero (_temp_1689) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1687 else goto _Label_1688
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1688
	jmp	_Label_1687
_Label_1687:
! THEN...
	mov	1137,r13		! source line 1137
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1690 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1690  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1137,r13		! source line 1137
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1691
_Label_1688:
! ELSE...
	mov	1139,r13		! source line 1139
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1692 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1692  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1139,r13		! source line 1139
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1691:
! CALL STATEMENT...
!   _temp_1693 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1693  sizeInBytes=4
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
!   if intIsZero (_temp_1696) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1694 else goto _Label_1695
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1695
	jmp	_Label_1694
_Label_1694:
! THEN...
	mov	1143,r13		! source line 1143
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1697 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1697  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1143,r13		! source line 1143
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1698
_Label_1695:
! ELSE...
	mov	1145,r13		! source line 1145
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1699 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1699  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1145,r13		! source line 1145
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1698:
! CALL STATEMENT...
!   Call the function
	mov	1147,r13		! source line 1147
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1646:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1644
! END FOR
_Label_1647:
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
	.word	_Label_1700
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1701
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1702
	.word	-12
	.word	4
	.word	_Label_1703
	.word	-16
	.word	4
	.word	_Label_1704
	.word	-20
	.word	4
	.word	_Label_1705
	.word	-24
	.word	4
	.word	_Label_1706
	.word	-28
	.word	4
	.word	_Label_1707
	.word	-32
	.word	4
	.word	_Label_1708
	.word	-36
	.word	4
	.word	_Label_1709
	.word	-40
	.word	4
	.word	_Label_1710
	.word	-44
	.word	4
	.word	_Label_1711
	.word	-48
	.word	4
	.word	_Label_1712
	.word	-52
	.word	4
	.word	_Label_1713
	.word	-56
	.word	4
	.word	_Label_1714
	.word	-60
	.word	4
	.word	_Label_1715
	.word	-64
	.word	4
	.word	_Label_1716
	.word	-68
	.word	4
	.word	_Label_1717
	.word	-72
	.word	4
	.word	_Label_1718
	.word	-76
	.word	4
	.word	_Label_1719
	.word	-80
	.word	4
	.word	_Label_1720
	.word	-84
	.word	4
	.word	_Label_1721
	.word	-88
	.word	4
	.word	_Label_1722
	.word	-92
	.word	4
	.word	_Label_1723
	.word	-96
	.word	4
	.word	_Label_1724
	.word	-100
	.word	4
	.word	_Label_1725
	.word	-104
	.word	4
	.word	_Label_1726
	.word	-108
	.word	4
	.word	_Label_1727
	.word	-112
	.word	4
	.word	_Label_1728
	.word	-116
	.word	4
	.word	_Label_1729
	.word	-120
	.word	4
	.word	_Label_1730
	.word	-124
	.word	4
	.word	_Label_1731
	.word	-128
	.word	4
	.word	_Label_1732
	.word	-132
	.word	4
	.word	_Label_1733
	.word	-136
	.word	4
	.word	_Label_1734
	.word	-140
	.word	4
	.word	_Label_1735
	.word	-144
	.word	4
	.word	_Label_1736
	.word	-148
	.word	4
	.word	_Label_1737
	.word	-152
	.word	4
	.word	_Label_1738
	.word	-156
	.word	4
	.word	_Label_1739
	.word	-160
	.word	4
	.word	_Label_1740
	.word	-164
	.word	4
	.word	_Label_1741
	.word	-168
	.word	4
	.word	0
_Label_1700:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1701:
	.ascii	"Pself\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1741:
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
_Label_3073:
	push	r0
	sub	r1,1,r1
	bne	_Label_3073
	mov	1153,r13		! source line 1153
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0RE",r10
!   _temp_1744 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1744 [entry ] into _temp_1745
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
!   Data Move: _temp_1743 = *_temp_1745  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1742 = _temp_1743 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1742  (sizeInBytes=4)
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
	.word	_Label_1746
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1747
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1748
	.word	12
	.word	4
	.word	_Label_1749
	.word	-12
	.word	4
	.word	_Label_1750
	.word	-16
	.word	4
	.word	_Label_1751
	.word	-20
	.word	4
	.word	_Label_1752
	.word	-24
	.word	4
	.word	0
_Label_1746:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1747:
	.ascii	"Pself\0"
	.align
_Label_1748:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1742\0"
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
_Label_3074:
	push	r0
	sub	r1,1,r1
	bne	_Label_3074
	mov	1163,r13		! source line 1163
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0RE",r10
!   _temp_1755 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1755 [entry ] into _temp_1756
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
!   Data Move: _temp_1754 = *_temp_1756  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1753 = _temp_1754 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1753  (sizeInBytes=4)
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
	.word	_Label_1757
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1758
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1759
	.word	12
	.word	4
	.word	_Label_1760
	.word	-12
	.word	4
	.word	_Label_1761
	.word	-16
	.word	4
	.word	_Label_1762
	.word	-20
	.word	4
	.word	_Label_1763
	.word	-24
	.word	4
	.word	0
_Label_1757:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1758:
	.ascii	"Pself\0"
	.align
_Label_1759:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1753\0"
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
_Label_3075:
	push	r0
	sub	r1,1,r1
	bne	_Label_3075
	mov	1172,r13		! source line 1172
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0AS",r10
!   _temp_1764 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1764 [entry ] into _temp_1765
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
!   _temp_1769 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1769 [entry ] into _temp_1770
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
!   Data Move: _temp_1768 = *_temp_1770  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1767 = _temp_1768 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1766 = _temp_1767 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1765 = _temp_1766  (sizeInBytes=4)
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
	.word	_Label_1771
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1772
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1773
	.word	12
	.word	4
	.word	_Label_1774
	.word	16
	.word	4
	.word	_Label_1775
	.word	-12
	.word	4
	.word	_Label_1776
	.word	-16
	.word	4
	.word	_Label_1777
	.word	-20
	.word	4
	.word	_Label_1778
	.word	-24
	.word	4
	.word	_Label_1779
	.word	-28
	.word	4
	.word	_Label_1780
	.word	-32
	.word	4
	.word	_Label_1781
	.word	-36
	.word	4
	.word	0
_Label_1771:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1772:
	.ascii	"Pself\0"
	.align
_Label_1773:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1774:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1764\0"
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
_Label_3076:
	push	r0
	sub	r1,1,r1
	bne	_Label_3076
	mov	1182,r13		! source line 1182
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0RE",r10
!   _temp_1785 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1785 [entry ] into _temp_1786
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
!   Data Move: _temp_1784 = *_temp_1786  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1783 = _temp_1784 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1783) then goto _Label_1787
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1787
!   _temp_1782 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1788
_Label_1787:
!   _temp_1782 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1788:
!   ReturnResult: _temp_1782  (sizeInBytes=1)
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
	.word	_Label_1789
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1790
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1791
	.word	12
	.word	4
	.word	_Label_1792
	.word	-16
	.word	4
	.word	_Label_1793
	.word	-20
	.word	4
	.word	_Label_1794
	.word	-24
	.word	4
	.word	_Label_1795
	.word	-28
	.word	4
	.word	_Label_1796
	.word	-9
	.word	1
	.word	0
_Label_1789:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1790:
	.ascii	"Pself\0"
	.align
_Label_1791:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1796:
	.byte	'C'
	.ascii	"_temp_1782\0"
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
_Label_3077:
	push	r0
	sub	r1,1,r1
	bne	_Label_3077
	mov	1191,r13		! source line 1191
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0RE",r10
!   _temp_1800 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1800 [entry ] into _temp_1801
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
!   Data Move: _temp_1799 = *_temp_1801  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1798 = _temp_1799 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1798) then goto _Label_1802
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1802
!   _temp_1797 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1803
_Label_1802:
!   _temp_1797 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1803:
!   ReturnResult: _temp_1797  (sizeInBytes=1)
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
	.word	_Label_1804
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1805
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1806
	.word	12
	.word	4
	.word	_Label_1807
	.word	-16
	.word	4
	.word	_Label_1808
	.word	-20
	.word	4
	.word	_Label_1809
	.word	-24
	.word	4
	.word	_Label_1810
	.word	-28
	.word	4
	.word	_Label_1811
	.word	-9
	.word	1
	.word	0
_Label_1804:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1805:
	.ascii	"Pself\0"
	.align
_Label_1806:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1811:
	.byte	'C'
	.ascii	"_temp_1797\0"
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
_Label_3078:
	push	r0
	sub	r1,1,r1
	bne	_Label_3078
	mov	1200,r13		! source line 1200
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0RE",r10
!   _temp_1815 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1815 [entry ] into _temp_1816
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
!   Data Move: _temp_1814 = *_temp_1816  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1813 = _temp_1814 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1813) then goto _Label_1817
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1817
!   _temp_1812 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1818
_Label_1817:
!   _temp_1812 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1818:
!   ReturnResult: _temp_1812  (sizeInBytes=1)
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
	.word	_Label_1819
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1820
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1821
	.word	12
	.word	4
	.word	_Label_1822
	.word	-16
	.word	4
	.word	_Label_1823
	.word	-20
	.word	4
	.word	_Label_1824
	.word	-24
	.word	4
	.word	_Label_1825
	.word	-28
	.word	4
	.word	_Label_1826
	.word	-9
	.word	1
	.word	0
_Label_1819:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1820:
	.ascii	"Pself\0"
	.align
_Label_1821:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1826:
	.byte	'C'
	.ascii	"_temp_1812\0"
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
_Label_3079:
	push	r0
	sub	r1,1,r1
	bne	_Label_3079
	mov	1209,r13		! source line 1209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1213,r13		! source line 1213
	mov	"\0\0RE",r10
!   _temp_1830 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1830 [entry ] into _temp_1831
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
!   Data Move: _temp_1829 = *_temp_1831  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1828 = _temp_1829 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1828) then goto _Label_1832
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1832
!   _temp_1827 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1833
_Label_1832:
!   _temp_1827 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1833:
!   ReturnResult: _temp_1827  (sizeInBytes=1)
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
	.word	_Label_1834
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1836
	.word	12
	.word	4
	.word	_Label_1837
	.word	-16
	.word	4
	.word	_Label_1838
	.word	-20
	.word	4
	.word	_Label_1839
	.word	-24
	.word	4
	.word	_Label_1840
	.word	-28
	.word	4
	.word	_Label_1841
	.word	-9
	.word	1
	.word	0
_Label_1834:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1835:
	.ascii	"Pself\0"
	.align
_Label_1836:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1841:
	.byte	'C'
	.ascii	"_temp_1827\0"
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
_Label_3080:
	push	r0
	sub	r1,1,r1
	bne	_Label_3080
	mov	1218,r13		! source line 1218
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1222,r13		! source line 1222
	mov	"\0\0AS",r10
!   _temp_1842 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1842 [entry ] into _temp_1843
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
!   _temp_1846 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1846 [entry ] into _temp_1847
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
!   Data Move: _temp_1845 = *_temp_1847  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1844 = _temp_1845 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1843 = _temp_1844  (sizeInBytes=4)
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
	.word	_Label_1848
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1849
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1850
	.word	12
	.word	4
	.word	_Label_1851
	.word	-12
	.word	4
	.word	_Label_1852
	.word	-16
	.word	4
	.word	_Label_1853
	.word	-20
	.word	4
	.word	_Label_1854
	.word	-24
	.word	4
	.word	_Label_1855
	.word	-28
	.word	4
	.word	_Label_1856
	.word	-32
	.word	4
	.word	0
_Label_1848:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1849:
	.ascii	"Pself\0"
	.align
_Label_1850:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1842\0"
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
_Label_3081:
	push	r0
	sub	r1,1,r1
	bne	_Label_3081
	mov	1227,r13		! source line 1227
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0AS",r10
!   _temp_1857 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1857 [entry ] into _temp_1858
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
!   _temp_1861 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1861 [entry ] into _temp_1862
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
!   Data Move: _temp_1860 = *_temp_1862  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1859 = _temp_1860 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1858 = _temp_1859  (sizeInBytes=4)
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
	.word	_Label_1863
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1864
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1865
	.word	12
	.word	4
	.word	_Label_1866
	.word	-12
	.word	4
	.word	_Label_1867
	.word	-16
	.word	4
	.word	_Label_1868
	.word	-20
	.word	4
	.word	_Label_1869
	.word	-24
	.word	4
	.word	_Label_1870
	.word	-28
	.word	4
	.word	_Label_1871
	.word	-32
	.word	4
	.word	0
_Label_1863:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1864:
	.ascii	"Pself\0"
	.align
_Label_1865:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1857\0"
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
_Label_3082:
	push	r0
	sub	r1,1,r1
	bne	_Label_3082
	mov	1236,r13		! source line 1236
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1240,r13		! source line 1240
	mov	"\0\0AS",r10
!   _temp_1872 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1872 [entry ] into _temp_1873
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
!   _temp_1876 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1876 [entry ] into _temp_1877
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
!   Data Move: _temp_1875 = *_temp_1877  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1874 = _temp_1875 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1873 = _temp_1874  (sizeInBytes=4)
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
	.word	_Label_1878
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1879
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1880
	.word	12
	.word	4
	.word	_Label_1881
	.word	-12
	.word	4
	.word	_Label_1882
	.word	-16
	.word	4
	.word	_Label_1883
	.word	-20
	.word	4
	.word	_Label_1884
	.word	-24
	.word	4
	.word	_Label_1885
	.word	-28
	.word	4
	.word	_Label_1886
	.word	-32
	.word	4
	.word	0
_Label_1878:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1879:
	.ascii	"Pself\0"
	.align
_Label_1880:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1877\0"
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
_Label_3083:
	push	r0
	sub	r1,1,r1
	bne	_Label_3083
	mov	1245,r13		! source line 1245
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0AS",r10
!   _temp_1887 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1887 [entry ] into _temp_1888
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
!   _temp_1891 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1891 [entry ] into _temp_1892
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
!   Data Move: _temp_1890 = *_temp_1892  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1889 = _temp_1890 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1888 = _temp_1889  (sizeInBytes=4)
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
	.word	_Label_1893
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1894
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1895
	.word	12
	.word	4
	.word	_Label_1896
	.word	-12
	.word	4
	.word	_Label_1897
	.word	-16
	.word	4
	.word	_Label_1898
	.word	-20
	.word	4
	.word	_Label_1899
	.word	-24
	.word	4
	.word	_Label_1900
	.word	-28
	.word	4
	.word	_Label_1901
	.word	-32
	.word	4
	.word	0
_Label_1893:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1894:
	.ascii	"Pself\0"
	.align
_Label_1895:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1887\0"
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
_Label_3084:
	push	r0
	sub	r1,1,r1
	bne	_Label_3084
	mov	1254,r13		! source line 1254
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0AS",r10
!   _temp_1902 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1902 [entry ] into _temp_1903
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
!   _temp_1906 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1906 [entry ] into _temp_1907
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
!   Data Move: _temp_1905 = *_temp_1907  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1904 = _temp_1905 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1903 = _temp_1904  (sizeInBytes=4)
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
	.word	_Label_1908
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1909
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1910
	.word	12
	.word	4
	.word	_Label_1911
	.word	-12
	.word	4
	.word	_Label_1912
	.word	-16
	.word	4
	.word	_Label_1913
	.word	-20
	.word	4
	.word	_Label_1914
	.word	-24
	.word	4
	.word	_Label_1915
	.word	-28
	.word	4
	.word	_Label_1916
	.word	-32
	.word	4
	.word	0
_Label_1908:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1909:
	.ascii	"Pself\0"
	.align
_Label_1910:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1902\0"
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
_Label_3085:
	push	r0
	sub	r1,1,r1
	bne	_Label_3085
	mov	1263,r13		! source line 1263
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1267,r13		! source line 1267
	mov	"\0\0AS",r10
!   _temp_1917 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1917 [entry ] into _temp_1918
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
!   _temp_1921 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1921 [entry ] into _temp_1922
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
!   Data Move: _temp_1920 = *_temp_1922  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1919 = _temp_1920 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1918 = _temp_1919  (sizeInBytes=4)
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
	.word	_Label_1923
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1924
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1925
	.word	12
	.word	4
	.word	_Label_1926
	.word	-12
	.word	4
	.word	_Label_1927
	.word	-16
	.word	4
	.word	_Label_1928
	.word	-20
	.word	4
	.word	_Label_1929
	.word	-24
	.word	4
	.word	_Label_1930
	.word	-28
	.word	4
	.word	_Label_1931
	.word	-32
	.word	4
	.word	0
_Label_1923:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1924:
	.ascii	"Pself\0"
	.align
_Label_1925:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1917\0"
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
_Label_3086:
	push	r0
	sub	r1,1,r1
	bne	_Label_3086
	mov	1272,r13		! source line 1272
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0AS",r10
!   _temp_1932 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1932 [entry ] into _temp_1933
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
!   _temp_1936 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1936 [entry ] into _temp_1937
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
!   Data Move: _temp_1935 = *_temp_1937  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1934 = _temp_1935 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1933 = _temp_1934  (sizeInBytes=4)
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
	.word	_Label_1938
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1939
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1940
	.word	12
	.word	4
	.word	_Label_1941
	.word	-12
	.word	4
	.word	_Label_1942
	.word	-16
	.word	4
	.word	_Label_1943
	.word	-20
	.word	4
	.word	_Label_1944
	.word	-24
	.word	4
	.word	_Label_1945
	.word	-28
	.word	4
	.word	_Label_1946
	.word	-32
	.word	4
	.word	0
_Label_1938:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1939:
	.ascii	"Pself\0"
	.align
_Label_1940:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1932\0"
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
_Label_3087:
	push	r0
	sub	r1,1,r1
	bne	_Label_3087
	mov	1281,r13		! source line 1281
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0AS",r10
!   _temp_1947 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1947 [entry ] into _temp_1948
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
!   _temp_1951 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1951 [entry ] into _temp_1952
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
!   Data Move: _temp_1950 = *_temp_1952  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1949 = _temp_1950 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1948 = _temp_1949  (sizeInBytes=4)
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
	.word	_Label_1953
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1954
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1955
	.word	12
	.word	4
	.word	_Label_1956
	.word	-12
	.word	4
	.word	_Label_1957
	.word	-16
	.word	4
	.word	_Label_1958
	.word	-20
	.word	4
	.word	_Label_1959
	.word	-24
	.word	4
	.word	_Label_1960
	.word	-28
	.word	4
	.word	_Label_1961
	.word	-32
	.word	4
	.word	0
_Label_1953:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1954:
	.ascii	"Pself\0"
	.align
_Label_1955:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1947\0"
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
_Label_3088:
	push	r0
	sub	r1,1,r1
	bne	_Label_3088
	mov	1290,r13		! source line 1290
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1963 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1963 [0 ] into _temp_1964
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
!   _temp_1962 = _temp_1964		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1965 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1962  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1965  sizeInBytes=4
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
	.word	_Label_1966
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1967
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1968
	.word	-12
	.word	4
	.word	_Label_1969
	.word	-16
	.word	4
	.word	_Label_1970
	.word	-20
	.word	4
	.word	_Label_1971
	.word	-24
	.word	4
	.word	0
_Label_1966:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1967:
	.ascii	"Pself\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1962\0"
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
_Label_3089:
	push	r0
	sub	r1,1,r1
	bne	_Label_3089
	mov	1301,r13		! source line 1301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1972
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1972
	jmp	_Label_1973
_Label_1972:
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
	jmp	_Label_1974
_Label_1973:
! ELSE...
	mov	1318,r13		! source line 1318
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1976		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1976
!	jmp	_Label_1975
_Label_1975:
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
_Label_1976:
! END IF...
_Label_1974:
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
_Label_1977:
!	jmp	_Label_1978
_Label_1978:
	mov	1325,r13		! source line 1325
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1326,r13		! source line 1326
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1981		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1981
!	jmp	_Label_1980
_Label_1980:
! THEN...
	mov	1327,r13		! source line 1327
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1982 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1982  sizeInBytes=4
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
_Label_1981:
! IF STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0IF",r10
	mov	1330,r13		! source line 1330
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1986) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1985  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1985 then goto _Label_1984 else goto _Label_1983
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1983
	jmp	_Label_1984
_Label_1983:
! THEN...
	mov	1331,r13		! source line 1331
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1987 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1987  sizeInBytes=4
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
_Label_1984:
! ASSIGNMENT STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0AS",r10
	mov	1334,r13		! source line 1334
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1989) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1988  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1988 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0WH",r10
_Label_1990:
!   if offset >= 8192 then goto _Label_1992		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1992
!	jmp	_Label_1991
_Label_1991:
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
!   Data Move: _temp_1993 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1993  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_1995		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1995
!	jmp	_Label_1994
_Label_1994:
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
_Label_1995:
! END WHILE...
	jmp	_Label_1990
_Label_1992:
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
	jmp	_Label_1977
_Label_1979:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1996
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1997
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1998
	.word	12
	.word	4
	.word	_Label_1999
	.word	16
	.word	4
	.word	_Label_2000
	.word	20
	.word	4
	.word	_Label_2001
	.word	-9
	.word	1
	.word	_Label_2002
	.word	-16
	.word	4
	.word	_Label_2003
	.word	-20
	.word	4
	.word	_Label_2004
	.word	-24
	.word	4
	.word	_Label_2005
	.word	-28
	.word	4
	.word	_Label_2006
	.word	-10
	.word	1
	.word	_Label_2007
	.word	-32
	.word	4
	.word	_Label_2008
	.word	-36
	.word	4
	.word	_Label_2009
	.word	-40
	.word	4
	.word	_Label_2010
	.word	-44
	.word	4
	.word	_Label_2011
	.word	-48
	.word	4
	.word	0
_Label_1996:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1997:
	.ascii	"Pself\0"
	.align
_Label_1998:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1999:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2000:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2001:
	.byte	'C'
	.ascii	"_temp_1993\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_2006:
	.byte	'C'
	.ascii	"_temp_1985\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_2008:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2009:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2010:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2011:
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
_Label_3090:
	push	r0
	sub	r1,1,r1
	bne	_Label_3090
	mov	1355,r13		! source line 1355
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2012
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2012
	jmp	_Label_2013
_Label_2012:
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
	jmp	_Label_2014
_Label_2013:
! ELSE...
	mov	1368,r13		! source line 1368
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1368,r13		! source line 1368
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2016		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2016
!	jmp	_Label_2015
_Label_2015:
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
_Label_2016:
! END IF...
_Label_2014:
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
_Label_2017:
!	jmp	_Label_2018
_Label_2018:
	mov	1373,r13		! source line 1373
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2023		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2023
	jmp	_Label_2020
_Label_2023:
	mov	1375,r13		! source line 1375
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2025) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2024  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2024 then goto _Label_2022 else goto _Label_2020
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2020
	jmp	_Label_2022
_Label_2022:
	mov	1376,r13		! source line 1376
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2027) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2026  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2026 then goto _Label_2021 else goto _Label_2020
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2020
	jmp	_Label_2021
_Label_2020:
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
_Label_2021:
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
	mov	1379,r13		! source line 1379
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2029) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2028  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2028 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1380,r13		! source line 1380
	mov	"\0\0WH",r10
_Label_2030:
!   if offset >= 8192 then goto _Label_2032		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2032
!	jmp	_Label_2031
_Label_2031:
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
!   Data Move: _temp_2033 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2033  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2035		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2035
!	jmp	_Label_2034
_Label_2034:
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
_Label_2035:
! END WHILE...
	jmp	_Label_2030
_Label_2032:
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
	jmp	_Label_2017
_Label_2019:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2036
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2037
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2038
	.word	12
	.word	4
	.word	_Label_2039
	.word	16
	.word	4
	.word	_Label_2040
	.word	20
	.word	4
	.word	_Label_2041
	.word	-9
	.word	1
	.word	_Label_2042
	.word	-16
	.word	4
	.word	_Label_2043
	.word	-20
	.word	4
	.word	_Label_2044
	.word	-24
	.word	4
	.word	_Label_2045
	.word	-10
	.word	1
	.word	_Label_2046
	.word	-28
	.word	4
	.word	_Label_2047
	.word	-11
	.word	1
	.word	_Label_2048
	.word	-32
	.word	4
	.word	_Label_2049
	.word	-36
	.word	4
	.word	_Label_2050
	.word	-40
	.word	4
	.word	_Label_2051
	.word	-44
	.word	4
	.word	0
_Label_2036:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2037:
	.ascii	"Pself\0"
	.align
_Label_2038:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2039:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2040:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2041:
	.byte	'C'
	.ascii	"_temp_2033\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2045:
	.byte	'C'
	.ascii	"_temp_2026\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2047:
	.byte	'C'
	.ascii	"_temp_2024\0"
	.align
_Label_2048:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2049:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2050:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2051:
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
_Label_3091:
	push	r0
	sub	r1,1,r1
	bne	_Label_3091
	mov	1397,r13		! source line 1397
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1421,r13		! source line 1421
	mov	"\0\0IF",r10
	mov	1421,r13		! source line 1421
	mov	"\0\0SE",r10
!   _temp_2055 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2056) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2055  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2054  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2054 >= 4 then goto _Label_2053		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2053
!	jmp	_Label_2052
_Label_2052:
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
_Label_2053:
! IF STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2058		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2058
!	jmp	_Label_2057
_Label_2057:
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
_Label_2058:
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
!   _temp_2061 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2060 = _temp_2061 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2062 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2063) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2060  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2062  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2059  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2059  (sizeInBytes=4)
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
	.word	_Label_2064
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2065
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2066
	.word	12
	.word	4
	.word	_Label_2067
	.word	16
	.word	4
	.word	_Label_2068
	.word	20
	.word	4
	.word	_Label_2069
	.word	-12
	.word	4
	.word	_Label_2070
	.word	-16
	.word	4
	.word	_Label_2071
	.word	-20
	.word	4
	.word	_Label_2072
	.word	-24
	.word	4
	.word	_Label_2073
	.word	-28
	.word	4
	.word	_Label_2074
	.word	-32
	.word	4
	.word	_Label_2075
	.word	-36
	.word	4
	.word	_Label_2076
	.word	-40
	.word	4
	.word	_Label_2077
	.word	-44
	.word	4
	.word	0
_Label_2064:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2065:
	.ascii	"Pself\0"
	.align
_Label_2066:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2067:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2068:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2077:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2078
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2078:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2079
	.word	_sourceFileName
	.word	308		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2079:
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
_Label_3092:
	push	r0
	sub	r1,1,r1
	bne	_Label_3092
	mov	1846,r13		! source line 1846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2080 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2080  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1847,r13		! source line 1847
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1848,r13		! source line 1848
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1849,r13		! source line 1849
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	1850,r13		! source line 1850
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1852,r13		! source line 1852
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1854,r13		! source line 1854
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
	mov	1855,r13		! source line 1855
	mov	"\0\0SE",r10
!   _temp_2082 = &semUsedInSynchMethods
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
	mov	1856,r13		! source line 1856
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
	mov	1857,r13		! source line 1857
	mov	"\0\0SE",r10
!   _temp_2084 = &diskBusy
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
	mov	1857,r13		! source line 1857
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
	.word	_Label_2085
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2086
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2087
	.word	-12
	.word	4
	.word	_Label_2088
	.word	-16
	.word	4
	.word	_Label_2089
	.word	-20
	.word	4
	.word	_Label_2090
	.word	-24
	.word	4
	.word	_Label_2091
	.word	-28
	.word	4
	.word	0
_Label_2085:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2086:
	.ascii	"Pself\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2080\0"
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
_Label_3093:
	push	r0
	sub	r1,1,r1
	bne	_Label_3093
	mov	1862,r13		! source line 1862
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0SE",r10
!   _temp_2092 = &diskBusy
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
	mov	1876,r13		! source line 1876
	mov	"\0\0WH",r10
_Label_2093:
!	jmp	_Label_2094
_Label_2094:
	mov	1876,r13		! source line 1876
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0SE",r10
!   _temp_2096 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2097) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2096  sizeInBytes=4
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
	mov	1880,r13		! source line 1880
	mov	"\0\0SE",r10
!   _temp_2098 = &semUsedInSynchMethods
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
	mov	1883,r13		! source line 1883
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2107 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2101
	cmp	r1,2
	be	_Label_2102
	cmp	r1,3
	be	_Label_2103
	cmp	r1,4
	be	_Label_2104
	cmp	r1,5
	be	_Label_2105
	cmp	r1,6
	be	_Label_2106
	jmp	_Label_2099
! CASE 1...
_Label_2101:
! SEND STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0SE",r10
!   _temp_2108 = &diskBusy
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
	mov	1886,r13		! source line 1886
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2102:
! CALL STATEMENT...
!   _temp_2109 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2109  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1888,r13		! source line 1888
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2103:
! CALL STATEMENT...
!   _temp_2110 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2110  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1890,r13		! source line 1890
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2104:
! CALL STATEMENT...
!   _temp_2111 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2111  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1892,r13		! source line 1892
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2105:
! BREAK STATEMENT...
	mov	1896,r13		! source line 1896
	mov	"\0\0BR",r10
	jmp	_Label_2100
! CASE 6...
_Label_2106:
! CALL STATEMENT...
!   _temp_2112 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2112  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1898,r13		! source line 1898
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2099:
! CALL STATEMENT...
!   _temp_2113 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2113  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1900,r13		! source line 1900
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2100:
! END WHILE...
	jmp	_Label_2093
_Label_2095:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2114
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2115
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2116
	.word	12
	.word	4
	.word	_Label_2117
	.word	16
	.word	4
	.word	_Label_2118
	.word	20
	.word	4
	.word	_Label_2119
	.word	-12
	.word	4
	.word	_Label_2120
	.word	-16
	.word	4
	.word	_Label_2121
	.word	-20
	.word	4
	.word	_Label_2122
	.word	-24
	.word	4
	.word	_Label_2123
	.word	-28
	.word	4
	.word	_Label_2124
	.word	-32
	.word	4
	.word	_Label_2125
	.word	-36
	.word	4
	.word	_Label_2126
	.word	-40
	.word	4
	.word	_Label_2127
	.word	-44
	.word	4
	.word	_Label_2128
	.word	-48
	.word	4
	.word	_Label_2129
	.word	-52
	.word	4
	.word	0
_Label_2114:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2115:
	.ascii	"Pself\0"
	.align
_Label_2116:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2117:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2118:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2112\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2092\0"
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
	mov	1909,r13		! source line 1909
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1924,r13		! source line 1924
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1927,r13		! source line 1927
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
	mov	1928,r13		! source line 1928
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
	mov	1929,r13		! source line 1929
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
	mov	1930,r13		! source line 1930
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
	mov	1930,r13		! source line 1930
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
	.word	_Label_2130
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2131
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2132
	.word	12
	.word	4
	.word	_Label_2133
	.word	16
	.word	4
	.word	_Label_2134
	.word	20
	.word	4
	.word	_Label_2135
	.word	24
	.word	4
	.word	0
_Label_2130:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2131:
	.ascii	"Pself\0"
	.align
_Label_2132:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2133:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2134:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2135:
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
_Label_3094:
	push	r0
	sub	r1,1,r1
	bne	_Label_3094
	mov	1935,r13		! source line 1935
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0SE",r10
!   _temp_2136 = &diskBusy
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
	mov	1948,r13		! source line 1948
	mov	"\0\0WH",r10
_Label_2137:
!	jmp	_Label_2138
_Label_2138:
	mov	1948,r13		! source line 1948
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0SE",r10
!   _temp_2140 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2141) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2140  sizeInBytes=4
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
	mov	1951,r13		! source line 1951
	mov	"\0\0SE",r10
!   _temp_2142 = &semUsedInSynchMethods
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
	mov	1954,r13		! source line 1954
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2151 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2145
	cmp	r1,2
	be	_Label_2146
	cmp	r1,3
	be	_Label_2147
	cmp	r1,4
	be	_Label_2148
	cmp	r1,5
	be	_Label_2149
	cmp	r1,6
	be	_Label_2150
	jmp	_Label_2143
! CASE 1...
_Label_2145:
! SEND STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0SE",r10
!   _temp_2152 = &diskBusy
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
	mov	1957,r13		! source line 1957
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2146:
! CALL STATEMENT...
!   _temp_2153 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2153  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1959,r13		! source line 1959
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2147:
! CALL STATEMENT...
!   _temp_2154 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2154  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1961,r13		! source line 1961
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2148:
! CALL STATEMENT...
!   _temp_2155 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2155  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1963,r13		! source line 1963
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2149:
! BREAK STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0BR",r10
	jmp	_Label_2144
! CASE 6...
_Label_2150:
! CALL STATEMENT...
!   _temp_2156 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2156  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1969,r13		! source line 1969
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2143:
! CALL STATEMENT...
!   _temp_2157 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2157  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1971,r13		! source line 1971
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2144:
! END WHILE...
	jmp	_Label_2137
_Label_2139:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2158
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2159
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2160
	.word	12
	.word	4
	.word	_Label_2161
	.word	16
	.word	4
	.word	_Label_2162
	.word	20
	.word	4
	.word	_Label_2163
	.word	-12
	.word	4
	.word	_Label_2164
	.word	-16
	.word	4
	.word	_Label_2165
	.word	-20
	.word	4
	.word	_Label_2166
	.word	-24
	.word	4
	.word	_Label_2167
	.word	-28
	.word	4
	.word	_Label_2168
	.word	-32
	.word	4
	.word	_Label_2169
	.word	-36
	.word	4
	.word	_Label_2170
	.word	-40
	.word	4
	.word	_Label_2171
	.word	-44
	.word	4
	.word	_Label_2172
	.word	-48
	.word	4
	.word	_Label_2173
	.word	-52
	.word	4
	.word	0
_Label_2158:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2159:
	.ascii	"Pself\0"
	.align
_Label_2160:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2161:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2162:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2136\0"
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
	mov	1980,r13		! source line 1980
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1997,r13		! source line 1997
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
	mov	1998,r13		! source line 1998
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
	mov	1999,r13		! source line 1999
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
	mov	2000,r13		! source line 2000
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
	mov	2000,r13		! source line 2000
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
	.word	_Label_2174
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2175
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2176
	.word	12
	.word	4
	.word	_Label_2177
	.word	16
	.word	4
	.word	_Label_2178
	.word	20
	.word	4
	.word	_Label_2179
	.word	24
	.word	4
	.word	0
_Label_2174:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2175:
	.ascii	"Pself\0"
	.align
_Label_2176:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2177:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2178:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2179:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2180
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
_Label_2180:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2181
	.word	_sourceFileName
	.word	331		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2181:
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
_Label_3095:
	push	r0
	sub	r1,1,r1
	bne	_Label_3095
	mov	2011,r13		! source line 2011
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2182 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2182  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2018,r13		! source line 2018
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2019,r13		! source line 2019
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
	mov	2020,r13		! source line 2020
	mov	"\0\0SE",r10
!   _temp_2184 = &fileManagerLock
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
	mov	2023,r13		! source line 2023
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
	mov	2024,r13		! source line 2024
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
	mov	2025,r13		! source line 2025
	mov	"\0\0SE",r10
!   _temp_2187 = &anFCBBecameFree
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
	mov	2026,r13		! source line 2026
	mov	"\0\0AS",r10
!   _temp_2188 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2190 = &_temp_2189
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2190 = _temp_2190 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2192 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3096:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3096
!   _temp_2192 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2194:
!   Data Move: *_temp_2190 = _temp_2192  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3097:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3097
!   _temp_2190 = _temp_2190 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2191 = _temp_2191 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2191) then goto _Label_2194
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2194
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2195 = &_temp_2189
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3098
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3098:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2188 = *_temp_2195  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3099:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3099
! FOR STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2200 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2201 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2200  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2196:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2201 then goto _Label_2199		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2199
_Label_2197:
	mov	2028,r13		! source line 2028
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0AS",r10
!   _temp_2202 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2202 [i ] into _temp_2203
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
!   _temp_2204 = _temp_2203 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2204 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0SE",r10
!   _temp_2205 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2205 [i ] into _temp_2206
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
	mov	2031,r13		! source line 2031
	mov	"\0\0SE",r10
!   _temp_2208 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2208 [i ] into _temp_2209
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
!   _temp_2207 = _temp_2209		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2210 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2207  sizeInBytes=4
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
_Label_2198:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2196
! END FOR
_Label_2199:
! ASSIGNMENT STATEMENT...
	mov	2035,r13		! source line 2035
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
	mov	2036,r13		! source line 2036
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
	mov	2037,r13		! source line 2037
	mov	"\0\0SE",r10
!   _temp_2213 = &anOpenFileBecameFree
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
	mov	2038,r13		! source line 2038
	mov	"\0\0AS",r10
!   _temp_2214 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2216 = &_temp_2215
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2216 = _temp_2216 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2218 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3100:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3100
!   _temp_2218 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2220:
!   Data Move: *_temp_2216 = _temp_2218  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3101:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3101
!   _temp_2216 = _temp_2216 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2217 = _temp_2217 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2217) then goto _Label_2220
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2220
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2221 = &_temp_2215
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3102
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3102:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2214 = *_temp_2221  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3103:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3103
! FOR STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2226 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2227 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2226  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2222:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2227 then goto _Label_2225		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2225
_Label_2223:
	mov	2040,r13		! source line 2040
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0AS",r10
!   _temp_2228 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2228 [i ] into _temp_2229
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
!   _temp_2230 = _temp_2229 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2230 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0SE",r10
!   _temp_2232 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2232 [i ] into _temp_2233
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
!   _temp_2231 = _temp_2233		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2234 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2231  sizeInBytes=4
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
_Label_2224:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2222
! END FOR
_Label_2225:
! ASSIGNMENT STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3104:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3104
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0AS",r10
!   _temp_2236 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2237 = _temp_2236 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2237 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0AS",r10
	mov	2052,r13		! source line 2052
	mov	"\0\0SE",r10
!   _temp_2238 = &_P_Kernel_frameManager
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
	mov	2053,r13		! source line 2053
	mov	"\0\0SE",r10
!   _temp_2239 = &_P_Kernel_diskDriver
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
	mov	2053,r13		! source line 2053
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
	.word	_Label_2240
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2241
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2242
	.word	-12
	.word	4
	.word	_Label_2243
	.word	-16
	.word	4
	.word	_Label_2244
	.word	-20
	.word	4
	.word	_Label_2245
	.word	-24
	.word	4
	.word	_Label_2246
	.word	-28
	.word	4
	.word	_Label_2247
	.word	-32
	.word	4
	.word	_Label_2248
	.word	-36
	.word	4
	.word	_Label_2249
	.word	-40
	.word	4
	.word	_Label_2250
	.word	-44
	.word	4
	.word	_Label_2251
	.word	-48
	.word	4
	.word	_Label_2252
	.word	-52
	.word	4
	.word	_Label_2253
	.word	-56
	.word	4
	.word	_Label_2254
	.word	-60
	.word	4
	.word	_Label_2255
	.word	-64
	.word	4
	.word	_Label_2256
	.word	-68
	.word	4
	.word	_Label_2257
	.word	-72
	.word	4
	.word	_Label_2258
	.word	-100
	.word	28
	.word	_Label_2259
	.word	-104
	.word	4
	.word	_Label_2260
	.word	-108
	.word	4
	.word	_Label_2261
	.word	-392
	.word	284
	.word	_Label_2262
	.word	-396
	.word	4
	.word	_Label_2263
	.word	-400
	.word	4
	.word	_Label_2264
	.word	-404
	.word	4
	.word	_Label_2265
	.word	-408
	.word	4
	.word	_Label_2266
	.word	-412
	.word	4
	.word	_Label_2267
	.word	-416
	.word	4
	.word	_Label_2268
	.word	-420
	.word	4
	.word	_Label_2269
	.word	-424
	.word	4
	.word	_Label_2270
	.word	-428
	.word	4
	.word	_Label_2271
	.word	-432
	.word	4
	.word	_Label_2272
	.word	-436
	.word	4
	.word	_Label_2273
	.word	-440
	.word	4
	.word	_Label_2274
	.word	-444
	.word	4
	.word	_Label_2275
	.word	-448
	.word	4
	.word	_Label_2276
	.word	-452
	.word	4
	.word	_Label_2277
	.word	-456
	.word	4
	.word	_Label_2278
	.word	-460
	.word	4
	.word	_Label_2279
	.word	-500
	.word	40
	.word	_Label_2280
	.word	-504
	.word	4
	.word	_Label_2281
	.word	-508
	.word	4
	.word	_Label_2282
	.word	-912
	.word	404
	.word	_Label_2283
	.word	-916
	.word	4
	.word	_Label_2284
	.word	-920
	.word	4
	.word	_Label_2285
	.word	-924
	.word	4
	.word	_Label_2286
	.word	-928
	.word	4
	.word	_Label_2287
	.word	-932
	.word	4
	.word	_Label_2288
	.word	-936
	.word	4
	.word	_Label_2289
	.word	-940
	.word	4
	.word	_Label_2290
	.word	-944
	.word	4
	.word	0
_Label_2240:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2241:
	.ascii	"Pself\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2290:
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
_Label_3105:
	push	r0
	sub	r1,1,r1
	bne	_Label_3105
	mov	2060,r13		! source line 2060
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0SE",r10
!   _temp_2291 = &fileManagerLock
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
!   _temp_2292 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2292  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2063,r13		! source line 2063
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2297 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2298 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2297  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2293:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2298 then goto _Label_2296		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2296
_Label_2294:
	mov	2064,r13		! source line 2064
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2299 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2299  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2065,r13		! source line 2065
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2066,r13		! source line 2066
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2300 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2300  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2067,r13		! source line 2067
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0SE",r10
!   _temp_2301 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2301 [i ] into _temp_2302
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
_Label_2295:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2293
! END FOR
_Label_2296:
! CALL STATEMENT...
!   _temp_2303 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2303  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2070,r13		! source line 2070
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0SE",r10
!   _temp_2304 = _function_204_printFCB
	set	_function_204_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2305 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2304  sizeInBytes=4
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
	mov	2072,r13		! source line 2072
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2306 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2306  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2073,r13		! source line 2073
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2311 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2312 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2311  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2307:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2312 then goto _Label_2310		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2310
_Label_2308:
	mov	2074,r13		! source line 2074
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2313 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2313  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2075,r13		! source line 2075
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2076,r13		! source line 2076
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2314 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2314  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2077,r13		! source line 2077
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2316 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2316 [i ] into _temp_2317
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
!   _temp_2315 = _temp_2317		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2315  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2078,r13		! source line 2078
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2318 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2318  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2079,r13		! source line 2079
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0SE",r10
!   _temp_2319 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2319 [i ] into _temp_2320
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
_Label_2309:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2307
! END FOR
_Label_2310:
! CALL STATEMENT...
!   _temp_2321 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2321  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2082,r13		! source line 2082
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0SE",r10
!   _temp_2322 = _function_203_printOpen
	set	_function_203_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2323 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2322  sizeInBytes=4
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
	mov	2084,r13		! source line 2084
	mov	"\0\0SE",r10
!   _temp_2324 = &fileManagerLock
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
	mov	2084,r13		! source line 2084
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
	.word	_Label_2325
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2326
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2327
	.word	-12
	.word	4
	.word	_Label_2328
	.word	-16
	.word	4
	.word	_Label_2329
	.word	-20
	.word	4
	.word	_Label_2330
	.word	-24
	.word	4
	.word	_Label_2331
	.word	-28
	.word	4
	.word	_Label_2332
	.word	-32
	.word	4
	.word	_Label_2333
	.word	-36
	.word	4
	.word	_Label_2334
	.word	-40
	.word	4
	.word	_Label_2335
	.word	-44
	.word	4
	.word	_Label_2336
	.word	-48
	.word	4
	.word	_Label_2337
	.word	-52
	.word	4
	.word	_Label_2338
	.word	-56
	.word	4
	.word	_Label_2339
	.word	-60
	.word	4
	.word	_Label_2340
	.word	-64
	.word	4
	.word	_Label_2341
	.word	-68
	.word	4
	.word	_Label_2342
	.word	-72
	.word	4
	.word	_Label_2343
	.word	-76
	.word	4
	.word	_Label_2344
	.word	-80
	.word	4
	.word	_Label_2345
	.word	-84
	.word	4
	.word	_Label_2346
	.word	-88
	.word	4
	.word	_Label_2347
	.word	-92
	.word	4
	.word	_Label_2348
	.word	-96
	.word	4
	.word	_Label_2349
	.word	-100
	.word	4
	.word	_Label_2350
	.word	-104
	.word	4
	.word	_Label_2351
	.word	-108
	.word	4
	.word	_Label_2352
	.word	-112
	.word	4
	.word	_Label_2353
	.word	-116
	.word	4
	.word	0
_Label_2325:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2326:
	.ascii	"Pself\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2353:
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
_Label_3106:
	push	r0
	sub	r1,1,r1
	bne	_Label_3106
	mov	2089,r13		! source line 2089
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0AS",r10
	mov	2105,r13		! source line 2105
	mov	"\0\0SE",r10
!   _temp_2354 = &_P_Kernel_fileManager
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
	mov	2106,r13		! source line 2106
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2355
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2355
	jmp	_Label_2356
_Label_2355:
! THEN...
	mov	2107,r13		! source line 2107
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2356:
! SEND STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0SE",r10
!   _temp_2357 = &fileManagerLock
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
	mov	2112,r13		! source line 2112
	mov	"\0\0WH",r10
_Label_2358:
	mov	2112,r13		! source line 2112
	mov	"\0\0SE",r10
!   _temp_2361 = &openFileFreeList
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
!   if result==true then goto _Label_2359 else goto _Label_2360
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2360
	jmp	_Label_2359
_Label_2359:
	mov	2112,r13		! source line 2112
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0SE",r10
!   _temp_2362 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2363 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2362  sizeInBytes=4
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
	jmp	_Label_2358
_Label_2360:
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
	mov	2115,r13		! source line 2115
	mov	"\0\0SE",r10
!   _temp_2364 = &openFileFreeList
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
	mov	2118,r13		! source line 2118
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2365 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2365 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2366 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2366 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2367 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2367 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0SE",r10
!   _temp_2368 = &fileManagerLock
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
	mov	2125,r13		! source line 2125
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
	.word	_Label_2369
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2370
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2371
	.word	12
	.word	4
	.word	_Label_2372
	.word	-12
	.word	4
	.word	_Label_2373
	.word	-16
	.word	4
	.word	_Label_2374
	.word	-20
	.word	4
	.word	_Label_2375
	.word	-24
	.word	4
	.word	_Label_2376
	.word	-28
	.word	4
	.word	_Label_2377
	.word	-32
	.word	4
	.word	_Label_2378
	.word	-36
	.word	4
	.word	_Label_2379
	.word	-40
	.word	4
	.word	_Label_2380
	.word	-44
	.word	4
	.word	_Label_2381
	.word	-48
	.word	4
	.word	_Label_2382
	.word	-52
	.word	4
	.word	_Label_2383
	.word	-56
	.word	4
	.word	0
_Label_2369:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2370:
	.ascii	"Pself\0"
	.align
_Label_2371:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2382:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2383:
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
_Label_3107:
	push	r0
	sub	r1,1,r1
	bne	_Label_3107
	mov	2130,r13		! source line 2130
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2158,r13		! source line 2158
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
	mov	2159,r13		! source line 2159
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2385		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2385
!	jmp	_Label_2384
_Label_2384:
! THEN...
	mov	2161,r13		! source line 2161
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2386 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2386  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2161,r13		! source line 2161
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2385:
! ASSIGNMENT STATEMENT...
	mov	2165,r13		! source line 2165
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
	mov	2166,r13		! source line 2166
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2167,r13		! source line 2167
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
	mov	2168,r13		! source line 2168
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0WH",r10
_Label_2387:
!   if numFiles <= 0 then goto _Label_2389		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2389
!	jmp	_Label_2388
_Label_2388:
	mov	2171,r13		! source line 2171
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2390 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2390  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2172,r13		! source line 2172
	mov	"\0\0CA",r10
	call	_function_205_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2391 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2391  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2174,r13		! source line 2174
	mov	"\0\0CA",r10
	call	_function_205_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2392 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2392  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2176,r13		! source line 2176
	mov	"\0\0CA",r10
	call	_function_205_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2396 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2396 then goto _Label_2394		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2394
!	jmp	_Label_2395
_Label_2395:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2398
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
!   _temp_2397 = _temp_2398		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2397  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2179,r13		! source line 2179
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2393 else goto _Label_2394
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2394
	jmp	_Label_2393
_Label_2393:
! THEN...
	mov	2180,r13		! source line 2180
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0BR",r10
	jmp	_Label_2389
! END IF...
_Label_2394:
! ASSIGNMENT STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2183,r13		! source line 2183
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2387
_Label_2389:
! IF STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2400		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2400
!	jmp	_Label_2399
_Label_2399:
! THEN...
	mov	2188,r13		! source line 2188
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2400:
! SEND STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0SE",r10
!   _temp_2401 = &fileManagerLock
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
	mov	2193,r13		! source line 2193
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2406 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2407 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2406  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2402:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2407 then goto _Label_2405		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2405
_Label_2403:
	mov	2193,r13		! source line 2193
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0AS",r10
!   _temp_2408 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2408 [i ] into _temp_2409
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
!   fcb = _temp_2409		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2195,r13		! source line 2195
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2413 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2412 = *_temp_2413  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2412 != start then goto _Label_2411		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2411
!	jmp	_Label_2410
_Label_2410:
! THEN...
	mov	2196,r13		! source line 2196
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2414 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2417 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2416 = *_temp_2417  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2415 = _temp_2416 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2414 = _temp_2415  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0SE",r10
!   _temp_2418 = &fileManagerLock
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
	mov	2198,r13		! source line 2198
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2411:
!   Increment the FOR-LOOP index variable and jump back
_Label_2404:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2402
! END FOR
_Label_2405:
! WHILE STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0WH",r10
_Label_2419:
	mov	2203,r13		! source line 2203
	mov	"\0\0SE",r10
!   _temp_2422 = &fcbFreeList
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
!   if result==true then goto _Label_2420 else goto _Label_2421
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2421
	jmp	_Label_2420
_Label_2420:
	mov	2203,r13		! source line 2203
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0SE",r10
!   _temp_2423 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2424 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2423  sizeInBytes=4
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
	jmp	_Label_2419
_Label_2421:
! ASSIGNMENT STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0AS",r10
	mov	2206,r13		! source line 2206
	mov	"\0\0SE",r10
!   _temp_2425 = &fcbFreeList
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
	mov	2209,r13		! source line 2209
	mov	"\0\0SE",r10
!   _temp_2426 = &fileManagerLock
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
	mov	2212,r13		! source line 2212
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2427 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2427 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2428 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2428 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2429 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2429 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2434 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2433 = *_temp_2434  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2433 < 0 then goto _Label_2432		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2432
	jmp	_Label_2430
_Label_2432:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2435 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2435 ) then goto _Label_2431		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2431
!	jmp	_Label_2430
_Label_2430:
! THEN...
	mov	2216,r13		! source line 2216
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2436 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2436  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2216,r13		! source line 2216
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2431:
! RETURN STATEMENT...
	mov	2218,r13		! source line 2218
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
	.word	_Label_2437
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2438
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2439
	.word	12
	.word	4
	.word	_Label_2440
	.word	-12
	.word	4
	.word	_Label_2441
	.word	-16
	.word	4
	.word	_Label_2442
	.word	-20
	.word	4
	.word	_Label_2443
	.word	-24
	.word	4
	.word	_Label_2444
	.word	-28
	.word	4
	.word	_Label_2445
	.word	-32
	.word	4
	.word	_Label_2446
	.word	-36
	.word	4
	.word	_Label_2447
	.word	-40
	.word	4
	.word	_Label_2448
	.word	-44
	.word	4
	.word	_Label_2449
	.word	-48
	.word	4
	.word	_Label_2450
	.word	-52
	.word	4
	.word	_Label_2451
	.word	-56
	.word	4
	.word	_Label_2452
	.word	-60
	.word	4
	.word	_Label_2453
	.word	-64
	.word	4
	.word	_Label_2454
	.word	-68
	.word	4
	.word	_Label_2455
	.word	-72
	.word	4
	.word	_Label_2456
	.word	-76
	.word	4
	.word	_Label_2457
	.word	-80
	.word	4
	.word	_Label_2458
	.word	-84
	.word	4
	.word	_Label_2459
	.word	-88
	.word	4
	.word	_Label_2460
	.word	-92
	.word	4
	.word	_Label_2461
	.word	-96
	.word	4
	.word	_Label_2462
	.word	-100
	.word	4
	.word	_Label_2463
	.word	-104
	.word	4
	.word	_Label_2464
	.word	-108
	.word	4
	.word	_Label_2465
	.word	-112
	.word	4
	.word	_Label_2466
	.word	-116
	.word	4
	.word	_Label_2467
	.word	-120
	.word	4
	.word	_Label_2468
	.word	-124
	.word	4
	.word	_Label_2469
	.word	-128
	.word	4
	.word	_Label_2470
	.word	-132
	.word	4
	.word	_Label_2471
	.word	-136
	.word	4
	.word	_Label_2472
	.word	-140
	.word	4
	.word	_Label_2473
	.word	-144
	.word	4
	.word	_Label_2474
	.word	-148
	.word	4
	.word	_Label_2475
	.word	-152
	.word	4
	.word	_Label_2476
	.word	-156
	.word	4
	.word	_Label_2477
	.word	-160
	.word	4
	.word	0
_Label_2437:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2438:
	.ascii	"Pself\0"
	.align
_Label_2439:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2471:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2472:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2473:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2474:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2475:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2476:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2477:
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
_Label_3108:
	push	r0
	sub	r1,1,r1
	bne	_Label_3108
	mov	2231,r13		! source line 2231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0IF",r10
!   _temp_2480 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2480 then goto _Label_2479		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2479
!	jmp	_Label_2478
_Label_2478:
! THEN...
	mov	2234,r13		! source line 2234
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2234,r13		! source line 2234
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2479:
! SEND STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0SE",r10
!   _temp_2481 = &fileManagerLock
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
	mov	2237,r13		! source line 2237
	mov	"\0\0SE",r10
!   _temp_2482 = &_P_Kernel_fileManager
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
	mov	2238,r13		! source line 2238
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2483 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2483  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2484 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2487 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2486 = *_temp_2487  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2485 = _temp_2486 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2484 = _temp_2485  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2491 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2490 = *_temp_2491  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2490 > 0 then goto _Label_2489		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2489
!	jmp	_Label_2488
_Label_2488:
! THEN...
	mov	2241,r13		! source line 2241
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0SE",r10
!   _temp_2492 = &openFileFreeList
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
	mov	2242,r13		! source line 2242
	mov	"\0\0SE",r10
!   _temp_2493 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2494 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2493  sizeInBytes=4
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
	mov	2243,r13		! source line 2243
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2495 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2498 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2497 = *_temp_2498  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2496 = _temp_2497 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2495 = _temp_2496  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2502 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2501 = *_temp_2502  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2501 > 0 then goto _Label_2500		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2500
!	jmp	_Label_2499
_Label_2499:
! THEN...
	mov	2245,r13		! source line 2245
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0SE",r10
!   _temp_2503 = &fcbFreeList
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
	mov	2246,r13		! source line 2246
	mov	"\0\0SE",r10
!   _temp_2504 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2505 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2504  sizeInBytes=4
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
_Label_2500:
! END IF...
_Label_2489:
! SEND STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0SE",r10
!   _temp_2506 = &fileManagerLock
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
	mov	2249,r13		! source line 2249
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
	.word	_Label_2507
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2508
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2509
	.word	12
	.word	4
	.word	_Label_2510
	.word	-12
	.word	4
	.word	_Label_2511
	.word	-16
	.word	4
	.word	_Label_2512
	.word	-20
	.word	4
	.word	_Label_2513
	.word	-24
	.word	4
	.word	_Label_2514
	.word	-28
	.word	4
	.word	_Label_2515
	.word	-32
	.word	4
	.word	_Label_2516
	.word	-36
	.word	4
	.word	_Label_2517
	.word	-40
	.word	4
	.word	_Label_2518
	.word	-44
	.word	4
	.word	_Label_2519
	.word	-48
	.word	4
	.word	_Label_2520
	.word	-52
	.word	4
	.word	_Label_2521
	.word	-56
	.word	4
	.word	_Label_2522
	.word	-60
	.word	4
	.word	_Label_2523
	.word	-64
	.word	4
	.word	_Label_2524
	.word	-68
	.word	4
	.word	_Label_2525
	.word	-72
	.word	4
	.word	_Label_2526
	.word	-76
	.word	4
	.word	_Label_2527
	.word	-80
	.word	4
	.word	_Label_2528
	.word	-84
	.word	4
	.word	_Label_2529
	.word	-88
	.word	4
	.word	_Label_2530
	.word	-92
	.word	4
	.word	_Label_2531
	.word	-96
	.word	4
	.word	_Label_2532
	.word	-100
	.word	4
	.word	_Label_2533
	.word	-104
	.word	4
	.word	0
_Label_2507:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2508:
	.ascii	"Pself\0"
	.align
_Label_2509:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2533:
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
_Label_3109:
	push	r0
	sub	r1,1,r1
	bne	_Label_3109
	mov	2254,r13		! source line 2254
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2537 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2536 = *_temp_2537  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2536) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2538 = _temp_2536 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2538 ) then goto _Label_2535		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2535
!	jmp	_Label_2534
_Label_2534:
! THEN...
	mov	2260,r13		! source line 2260
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2543 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2542 = *_temp_2543  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2542) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2544 = _temp_2542 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2541 = *_temp_2544  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2541 >= 0 then goto _Label_2540		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2540
!	jmp	_Label_2539
_Label_2539:
! THEN...
	mov	2261,r13		! source line 2261
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2545 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2545  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2261,r13		! source line 2261
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2540:
! ASSIGNMENT STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2547 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2546 = *_temp_2547  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2546) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2548 = _temp_2546 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2548 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2552 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2551 = *_temp_2552  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2551) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2553 = _temp_2551 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2550 = *_temp_2553  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2556 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2555 = *_temp_2556  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2555) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2557 = _temp_2555 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2554 = *_temp_2557  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2549 = _temp_2550 + _temp_2554		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2560 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2559 = *_temp_2560  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2559) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2561 = _temp_2559 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2558 = *_temp_2561  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2562 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2549  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2558  sizeInBytes=4
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
_Label_2535:
! RETURN STATEMENT...
	mov	2259,r13		! source line 2259
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
	.word	_Label_2563
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2564
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2565
	.word	12
	.word	4
	.word	_Label_2566
	.word	-12
	.word	4
	.word	_Label_2567
	.word	-16
	.word	4
	.word	_Label_2568
	.word	-20
	.word	4
	.word	_Label_2569
	.word	-24
	.word	4
	.word	_Label_2570
	.word	-28
	.word	4
	.word	_Label_2571
	.word	-32
	.word	4
	.word	_Label_2572
	.word	-36
	.word	4
	.word	_Label_2573
	.word	-40
	.word	4
	.word	_Label_2574
	.word	-44
	.word	4
	.word	_Label_2575
	.word	-48
	.word	4
	.word	_Label_2576
	.word	-52
	.word	4
	.word	_Label_2577
	.word	-56
	.word	4
	.word	_Label_2578
	.word	-60
	.word	4
	.word	_Label_2579
	.word	-64
	.word	4
	.word	_Label_2580
	.word	-68
	.word	4
	.word	_Label_2581
	.word	-72
	.word	4
	.word	_Label_2582
	.word	-76
	.word	4
	.word	_Label_2583
	.word	-80
	.word	4
	.word	_Label_2584
	.word	-84
	.word	4
	.word	_Label_2585
	.word	-88
	.word	4
	.word	_Label_2586
	.word	-92
	.word	4
	.word	_Label_2587
	.word	-96
	.word	4
	.word	_Label_2588
	.word	-100
	.word	4
	.word	_Label_2589
	.word	-104
	.word	4
	.word	_Label_2590
	.word	-108
	.word	4
	.word	0
_Label_2563:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2564:
	.ascii	"Pself\0"
	.align
_Label_2565:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2536\0"
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
_Label_3110:
	push	r0
	sub	r1,1,r1
	bne	_Label_3110
	mov	2273,r13		! source line 2273
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2288,r13		! source line 2288
	mov	"\0\0SE",r10
!   _temp_2591 = &fileManagerLock
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
	mov	2289,r13		! source line 2289
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2597		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2597
!   _temp_2596 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2598
_Label_2597:
!   _temp_2596 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2598:
!   if _temp_2596 then goto _Label_2595 else goto _Label_2592
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2592
	jmp	_Label_2595
_Label_2595:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2601 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2600 = *_temp_2601  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2600 == 0 then goto _Label_2602		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2602
!   _temp_2599 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2603
_Label_2602:
!   _temp_2599 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2603:
!   if _temp_2599 then goto _Label_2594 else goto _Label_2592
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2592
	jmp	_Label_2594
_Label_2594:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2606 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2605 = *_temp_2606  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2605) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2607 = _temp_2605 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2604 = *_temp_2607  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2604 >= 0 then goto _Label_2593		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2593
!	jmp	_Label_2592
_Label_2592:
! THEN...
	mov	2290,r13		! source line 2290
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2608 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2608  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2290,r13		! source line 2290
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2593:
! ASSIGNMENT STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2609 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2609  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0WH",r10
_Label_2610:
!   if numBytes <= 0 then goto _Label_2612		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2612
!	jmp	_Label_2611
_Label_2611:
	mov	2293,r13		! source line 2293
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2302,r13		! source line 2302
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
	mov	2303,r13		! source line 2303
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
	mov	2307,r13		! source line 2307
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2616 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2615 = *_temp_2616  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2615 == sector then goto _Label_2614		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2614
!	jmp	_Label_2613
_Label_2613:
! THEN...
	mov	2308,r13		! source line 2308
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2308,r13		! source line 2308
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2617) then goto _runtimeErrorNullPointer
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
	mov	2310,r13		! source line 2310
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2620 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2619 = *_temp_2620  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2618 = sector + _temp_2619		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2622 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2621 = *_temp_2622  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2623 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2618  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2621  sizeInBytes=4
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
	mov	2313,r13		! source line 2313
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2624 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2624 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2314,r13		! source line 2314
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2625 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2625 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2614:
! ASSIGNMENT STATEMENT...
	mov	2316,r13		! source line 2316
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2627 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2626 = *_temp_2627  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2626 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0AS",r10
!   _temp_2628 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2628  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2317,r13		! source line 2317
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
	mov	2321,r13		! source line 2321
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2324,r13		! source line 2324
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2610
_Label_2612:
! SEND STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0SE",r10
!   _temp_2629 = &fileManagerLock
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
	mov	2332,r13		! source line 2332
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
	.word	_Label_2630
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2631
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2632
	.word	12
	.word	4
	.word	_Label_2633
	.word	16
	.word	4
	.word	_Label_2634
	.word	20
	.word	4
	.word	_Label_2635
	.word	24
	.word	4
	.word	_Label_2636
	.word	-16
	.word	4
	.word	_Label_2637
	.word	-20
	.word	4
	.word	_Label_2638
	.word	-24
	.word	4
	.word	_Label_2639
	.word	-28
	.word	4
	.word	_Label_2640
	.word	-32
	.word	4
	.word	_Label_2641
	.word	-36
	.word	4
	.word	_Label_2642
	.word	-40
	.word	4
	.word	_Label_2643
	.word	-44
	.word	4
	.word	_Label_2644
	.word	-48
	.word	4
	.word	_Label_2645
	.word	-52
	.word	4
	.word	_Label_2646
	.word	-56
	.word	4
	.word	_Label_2647
	.word	-60
	.word	4
	.word	_Label_2648
	.word	-64
	.word	4
	.word	_Label_2649
	.word	-68
	.word	4
	.word	_Label_2650
	.word	-72
	.word	4
	.word	_Label_2651
	.word	-76
	.word	4
	.word	_Label_2652
	.word	-80
	.word	4
	.word	_Label_2653
	.word	-84
	.word	4
	.word	_Label_2654
	.word	-88
	.word	4
	.word	_Label_2655
	.word	-92
	.word	4
	.word	_Label_2656
	.word	-96
	.word	4
	.word	_Label_2657
	.word	-100
	.word	4
	.word	_Label_2658
	.word	-104
	.word	4
	.word	_Label_2659
	.word	-9
	.word	1
	.word	_Label_2660
	.word	-10
	.word	1
	.word	_Label_2661
	.word	-108
	.word	4
	.word	_Label_2662
	.word	-112
	.word	4
	.word	_Label_2663
	.word	-116
	.word	4
	.word	_Label_2664
	.word	-120
	.word	4
	.word	_Label_2665
	.word	-124
	.word	4
	.word	_Label_2666
	.word	-128
	.word	4
	.word	0
_Label_2630:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2631:
	.ascii	"Pself\0"
	.align
_Label_2632:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2633:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2634:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2635:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2659:
	.byte	'C'
	.ascii	"_temp_2599\0"
	.align
_Label_2660:
	.byte	'C'
	.ascii	"_temp_2596\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2662:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2663:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2664:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2665:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2666:
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
_Label_3111:
	push	r0
	sub	r1,1,r1
	bne	_Label_3111
	mov	2337,r13		! source line 2337
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2353,r13		! source line 2353
	mov	"\0\0SE",r10
!   _temp_2667 = &fileManagerLock
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
	mov	2354,r13		! source line 2354
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2673		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2673
!   _temp_2672 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2674
_Label_2673:
!   _temp_2672 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2674:
!   if _temp_2672 then goto _Label_2671 else goto _Label_2668
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2668
	jmp	_Label_2671
_Label_2671:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2677 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2676 = *_temp_2677  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2676 == 0 then goto _Label_2678		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2678
!   _temp_2675 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2679
_Label_2678:
!   _temp_2675 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2679:
!   if _temp_2675 then goto _Label_2670 else goto _Label_2668
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2668
	jmp	_Label_2670
_Label_2670:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2682 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2681 = *_temp_2682  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2681) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2683 = _temp_2681 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2680 = *_temp_2683  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2680 >= 0 then goto _Label_2669		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2669
!	jmp	_Label_2668
_Label_2668:
! THEN...
	mov	2355,r13		! source line 2355
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2684 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2684  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2355,r13		! source line 2355
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2669:
! ASSIGNMENT STATEMENT...
	mov	2357,r13		! source line 2357
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2685 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2685  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2358,r13		! source line 2358
	mov	"\0\0WH",r10
_Label_2686:
!   if numBytes <= 0 then goto _Label_2688		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2688
!	jmp	_Label_2687
_Label_2687:
	mov	2358,r13		! source line 2358
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2367,r13		! source line 2367
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
	mov	2368,r13		! source line 2368
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
	mov	2372,r13		! source line 2372
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2692 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2691 = *_temp_2692  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2691 == sector then goto _Label_2690		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2690
!	jmp	_Label_2689
_Label_2689:
! THEN...
	mov	2374,r13		! source line 2374
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2693) then goto _runtimeErrorNullPointer
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
_Label_2690:
! ASSIGNMENT STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2695 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2694 = *_temp_2695  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2694 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0AS",r10
!   _temp_2696 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2696  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2377,r13		! source line 2377
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2700 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2699 = *_temp_2700  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2699 != sector then goto _Label_2698		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2698
!	jmp	_Label_2697
_Label_2697:
	jmp	_Label_2701
_Label_2698:
! ELSE...
	mov	2380,r13		! source line 2380
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2380,r13		! source line 2380
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2704
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2704
	jmp	_Label_2703
_Label_2704:
!   if bytesToMove != 8192 then goto _Label_2703		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2703
!	jmp	_Label_2702
_Label_2702:
	jmp	_Label_2705
_Label_2703:
! ELSE...
	mov	2384,r13		! source line 2384
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2708 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2707 = *_temp_2708  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2706 = sector + _temp_2707		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2710 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2709 = *_temp_2710  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2711 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2706  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2709  sizeInBytes=4
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
_Label_2705:
! END IF...
_Label_2701:
! ASSIGNMENT STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2712 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2712 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2713 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2713 = 1  (sizeInBytes=1)
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
	mov	2393,r13		! source line 2393
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2396,r13		! source line 2396
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2686
_Label_2688:
! SEND STATEMENT...
	mov	2403,r13		! source line 2403
	mov	"\0\0SE",r10
!   _temp_2714 = &fileManagerLock
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
	mov	2405,r13		! source line 2405
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
	.word	_Label_2715
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2716
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2717
	.word	12
	.word	4
	.word	_Label_2718
	.word	16
	.word	4
	.word	_Label_2719
	.word	20
	.word	4
	.word	_Label_2720
	.word	24
	.word	4
	.word	_Label_2721
	.word	-16
	.word	4
	.word	_Label_2722
	.word	-20
	.word	4
	.word	_Label_2723
	.word	-24
	.word	4
	.word	_Label_2724
	.word	-28
	.word	4
	.word	_Label_2725
	.word	-32
	.word	4
	.word	_Label_2726
	.word	-36
	.word	4
	.word	_Label_2727
	.word	-40
	.word	4
	.word	_Label_2728
	.word	-44
	.word	4
	.word	_Label_2729
	.word	-48
	.word	4
	.word	_Label_2730
	.word	-52
	.word	4
	.word	_Label_2731
	.word	-56
	.word	4
	.word	_Label_2732
	.word	-60
	.word	4
	.word	_Label_2733
	.word	-64
	.word	4
	.word	_Label_2734
	.word	-68
	.word	4
	.word	_Label_2735
	.word	-72
	.word	4
	.word	_Label_2736
	.word	-76
	.word	4
	.word	_Label_2737
	.word	-80
	.word	4
	.word	_Label_2738
	.word	-84
	.word	4
	.word	_Label_2739
	.word	-88
	.word	4
	.word	_Label_2740
	.word	-92
	.word	4
	.word	_Label_2741
	.word	-96
	.word	4
	.word	_Label_2742
	.word	-100
	.word	4
	.word	_Label_2743
	.word	-104
	.word	4
	.word	_Label_2744
	.word	-108
	.word	4
	.word	_Label_2745
	.word	-112
	.word	4
	.word	_Label_2746
	.word	-9
	.word	1
	.word	_Label_2747
	.word	-10
	.word	1
	.word	_Label_2748
	.word	-116
	.word	4
	.word	_Label_2749
	.word	-120
	.word	4
	.word	_Label_2750
	.word	-124
	.word	4
	.word	_Label_2751
	.word	-128
	.word	4
	.word	_Label_2752
	.word	-132
	.word	4
	.word	_Label_2753
	.word	-136
	.word	4
	.word	0
_Label_2715:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2716:
	.ascii	"Pself\0"
	.align
_Label_2717:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2718:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2719:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2720:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2746:
	.byte	'C'
	.ascii	"_temp_2675\0"
	.align
_Label_2747:
	.byte	'C'
	.ascii	"_temp_2672\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2749:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2750:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2751:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2752:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2753:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2754
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2754:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2755
	.word	_sourceFileName
	.word	356		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2755:
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
_Label_3112:
	push	r0
	sub	r1,1,r1
	bne	_Label_3112
	mov	2441,r13		! source line 2441
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0AS",r10
	mov	2443,r13		! source line 2443
	mov	"\0\0SE",r10
!   _temp_2756 = &_P_Kernel_frameManager
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
	mov	2444,r13		! source line 2444
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2446,r13		! source line 2446
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
	.word	_Label_2757
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2758
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2759
	.word	-12
	.word	4
	.word	0
_Label_2757:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2758:
	.ascii	"Pself\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2756\0"
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
_Label_3113:
	push	r0
	sub	r1,1,r1
	bne	_Label_3113
	mov	2451,r13		! source line 2451
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2760 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2760  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2452,r13		! source line 2452
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2453,r13		! source line 2453
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2761 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2761  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2454,r13		! source line 2454
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2455,r13		! source line 2455
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2762 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2762  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2456,r13		! source line 2456
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2457,r13		! source line 2457
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2763 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2763  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2458,r13		! source line 2458
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2459,r13		! source line 2459
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2764 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2764  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2460,r13		! source line 2460
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2461,r13		! source line 2461
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2765 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2765  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2462,r13		! source line 2462
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2463,r13		! source line 2463
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2464,r13		! source line 2464
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2464,r13		! source line 2464
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
	.word	_Label_2766
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2767
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2768
	.word	-12
	.word	4
	.word	_Label_2769
	.word	-16
	.word	4
	.word	_Label_2770
	.word	-20
	.word	4
	.word	_Label_2771
	.word	-24
	.word	4
	.word	_Label_2772
	.word	-28
	.word	4
	.word	_Label_2773
	.word	-32
	.word	4
	.word	0
_Label_2766:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2767:
	.ascii	"Pself\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2765\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2774
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2774:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2775
	.word	_sourceFileName
	.word	373		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2775:
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
_Label_3114:
	push	r0
	sub	r1,1,r1
	bne	_Label_3114
	mov	2475,r13		! source line 2475
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2776 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2776  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2476,r13		! source line 2476
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2477,r13		! source line 2477
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2777 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2777  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2478,r13		! source line 2478
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2779		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2779
!	jmp	_Label_2778
_Label_2778:
! THEN...
	mov	2480,r13		! source line 2480
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2480,r13		! source line 2480
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
	jmp	_Label_2780
_Label_2779:
! ELSE...
	mov	2482,r13		! source line 2482
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2781 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2781  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2482,r13		! source line 2482
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2780:
! RETURN STATEMENT...
	mov	2479,r13		! source line 2479
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
	.word	_Label_2782
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2783
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2784
	.word	-12
	.word	4
	.word	_Label_2785
	.word	-16
	.word	4
	.word	_Label_2786
	.word	-20
	.word	4
	.word	0
_Label_2782:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2783:
	.ascii	"Pself\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2776\0"
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
_Label_3115:
	push	r0
	sub	r1,1,r1
	bne	_Label_3115
	mov	2488,r13		! source line 2488
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2498,r13		! source line 2498
	mov	"\0\0SE",r10
!   _temp_2787 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2788 = _temp_2787 + 4
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
	mov	2499,r13		! source line 2499
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2500,r13		! source line 2500
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
	mov	2501,r13		! source line 2501
	mov	"\0\0SE",r10
!   _temp_2789 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2790 = _temp_2789 + 4
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
	mov	2502,r13		! source line 2502
	mov	"\0\0RE",r10
	mov	2502,r13		! source line 2502
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2793 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2792  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2791  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2791  (sizeInBytes=1)
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
	.word	_Label_2794
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2795
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2796
	.word	12
	.word	4
	.word	_Label_2797
	.word	16
	.word	4
	.word	_Label_2798
	.word	-16
	.word	4
	.word	_Label_2799
	.word	-20
	.word	4
	.word	_Label_2800
	.word	-9
	.word	1
	.word	_Label_2801
	.word	-24
	.word	4
	.word	_Label_2802
	.word	-28
	.word	4
	.word	_Label_2803
	.word	-32
	.word	4
	.word	_Label_2804
	.word	-36
	.word	4
	.word	_Label_2805
	.word	-40
	.word	4
	.word	0
_Label_2794:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2795:
	.ascii	"Pself\0"
	.align
_Label_2796:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2797:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2800:
	.byte	'C'
	.ascii	"_temp_2791\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2805:
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
_Label_3116:
	push	r0
	sub	r1,1,r1
	bne	_Label_3116
	mov	2507,r13		! source line 2507
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0IF",r10
	mov	2512,r13		! source line 2512
	mov	"\0\0SE",r10
!   _temp_2809 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2810) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2809  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2808  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2808 then goto _Label_2807 else goto _Label_2806
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2806
	jmp	_Label_2807
_Label_2806:
! THEN...
	mov	2513,r13		! source line 2513
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2811 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2811  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2513,r13		! source line 2513
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2807:
! RETURN STATEMENT...
	mov	2515,r13		! source line 2515
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
	.word	_Label_2812
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2813
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2814
	.word	-16
	.word	4
	.word	_Label_2815
	.word	-20
	.word	4
	.word	_Label_2816
	.word	-24
	.word	4
	.word	_Label_2817
	.word	-9
	.word	1
	.word	_Label_2818
	.word	-28
	.word	4
	.word	0
_Label_2812:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2813:
	.ascii	"Pself\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2817:
	.byte	'C'
	.ascii	"_temp_2808\0"
	.align
_Label_2818:
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
_Label_3117:
	push	r0
	sub	r1,1,r1
	bne	_Label_3117
	mov	2520,r13		! source line 2520
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2822 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2821 = *_temp_2822  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2821) then goto _Label_2820
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2820
!	jmp	_Label_2819
_Label_2819:
! THEN...
	mov	2547,r13		! source line 2547
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2823 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2823  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2547,r13		! source line 2547
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2820:
! IF STATEMENT...
	mov	2551,r13		! source line 2551
	mov	"\0\0IF",r10
	mov	2551,r13		! source line 2551
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2827) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2826  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2826 == 1112300152 then goto _Label_2825		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2825
!	jmp	_Label_2824
_Label_2824:
! THEN...
	mov	2552,r13		! source line 2552
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2828 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2828  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2552,r13		! source line 2552
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2825:
! ASSIGNMENT STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0AS",r10
	mov	2557,r13		! source line 2557
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2829) then goto _runtimeErrorNullPointer
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
	mov	2558,r13		! source line 2558
	mov	"\0\0AS",r10
	mov	2558,r13		! source line 2558
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2830) then goto _runtimeErrorNullPointer
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
	mov	2559,r13		! source line 2559
	mov	"\0\0AS",r10
	mov	2559,r13		! source line 2559
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2831) then goto _runtimeErrorNullPointer
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
	mov	2560,r13		! source line 2560
	mov	"\0\0AS",r10
	mov	2560,r13		! source line 2560
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2832) then goto _runtimeErrorNullPointer
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
	mov	2561,r13		! source line 2561
	mov	"\0\0AS",r10
	mov	2561,r13		! source line 2561
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2833) then goto _runtimeErrorNullPointer
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
	mov	2562,r13		! source line 2562
	mov	"\0\0AS",r10
	mov	2562,r13		! source line 2562
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2834) then goto _runtimeErrorNullPointer
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
	mov	2565,r13		! source line 2565
	mov	"\0\0IF",r10
!   _temp_2837 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2837) then goto _Label_2836
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2836
!	jmp	_Label_2835
_Label_2835:
! THEN...
	mov	2566,r13		! source line 2566
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2838 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2838  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2566,r13		! source line 2566
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2836:
! ASSIGNMENT STATEMENT...
	mov	2569,r13		! source line 2569
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
	mov	2573,r13		! source line 2573
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2840
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2840
!	jmp	_Label_2839
_Label_2839:
! THEN...
	mov	2574,r13		! source line 2574
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2841 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2841  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2574,r13		! source line 2574
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2840:
! IF STATEMENT...
	mov	2579,r13		! source line 2579
	mov	"\0\0IF",r10
!   _temp_2844 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2844) then goto _Label_2843
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2843
!	jmp	_Label_2842
_Label_2842:
! THEN...
	mov	2580,r13		! source line 2580
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2845 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2845  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2580,r13		! source line 2580
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2843:
! IF STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0IF",r10
!   _temp_2848 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2848 then goto _Label_2847		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2847
!	jmp	_Label_2846
_Label_2846:
! THEN...
	mov	2584,r13		! source line 2584
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2849 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2849  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2584,r13		! source line 2584
	mov	"\0\0CE",r10
	call	print
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
_Label_2847:
! ASSIGNMENT STATEMENT...
	mov	2587,r13		! source line 2587
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
	mov	2590,r13		! source line 2590
	mov	"\0\0IF",r10
!   _temp_2852 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2852) then goto _Label_2851
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2851
!	jmp	_Label_2850
_Label_2850:
! THEN...
	mov	2591,r13		! source line 2591
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2853 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2853  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2591,r13		! source line 2591
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2851:
! IF STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0IF",r10
!   _temp_2856 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2856 then goto _Label_2855		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2855
!	jmp	_Label_2854
_Label_2854:
! THEN...
	mov	2595,r13		! source line 2595
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2857 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2857  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2595,r13		! source line 2595
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2855:
! ASSIGNMENT STATEMENT...
	mov	2598,r13		! source line 2598
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
	mov	2601,r13		! source line 2601
	mov	"\0\0AS",r10
!   _temp_2860 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2859 = _temp_2860 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2858 = _temp_2859 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2858 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2616,r13		! source line 2616
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2862		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2862
!	jmp	_Label_2861
_Label_2861:
! THEN...
	mov	2617,r13		! source line 2617
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2863 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2863  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2617,r13		! source line 2617
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2864 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2864  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2618,r13		! source line 2618
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2865 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2865  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2619,r13		! source line 2619
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2620,r13		! source line 2620
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2862:
! SEND STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0SE",r10
!   _temp_2866 = &_P_Kernel_frameManager
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
	mov	2628,r13		! source line 2628
	mov	"\0\0IF",r10
	mov	2628,r13		! source line 2628
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2870) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2869  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2869 == 707406378 then goto _Label_2868		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2868
!	jmp	_Label_2867
_Label_2867:
! THEN...
	mov	2629,r13		! source line 2629
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2871 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2871  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2629,r13		! source line 2629
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0SE",r10
!   _temp_2872 = &_P_Kernel_frameManager
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
	mov	2631,r13		! source line 2631
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2868:
! ASSIGNMENT STATEMENT...
	mov	2635,r13		! source line 2635
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
	mov	2636,r13		! source line 2636
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2877 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2878 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2877  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2873:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2878 then goto _Label_2876		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2876
_Label_2874:
	mov	2636,r13		! source line 2636
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0AS",r10
	mov	2637,r13		! source line 2637
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
	mov	2640,r13		! source line 2640
	mov	"\0\0IF",r10
	mov	2640,r13		! source line 2640
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2882) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2881  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2881 then goto _Label_2880 else goto _Label_2879
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2879
	jmp	_Label_2880
_Label_2879:
! THEN...
	mov	2641,r13		! source line 2641
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2883 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2883  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2641,r13		! source line 2641
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0SE",r10
!   _temp_2884 = &_P_Kernel_frameManager
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
	mov	2643,r13		! source line 2643
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2880:
! SEND STATEMENT...
	mov	2645,r13		! source line 2645
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
	mov	2646,r13		! source line 2646
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2875:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2873
! END FOR
_Label_2876:
! IF STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0IF",r10
	mov	2650,r13		! source line 2650
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2888) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2887  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2887 == 707406378 then goto _Label_2886		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2886
!	jmp	_Label_2885
_Label_2885:
! THEN...
	mov	2651,r13		! source line 2651
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2889 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2889  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2651,r13		! source line 2651
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0SE",r10
!   _temp_2890 = &_P_Kernel_frameManager
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
	mov	2653,r13		! source line 2653
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2886:
! FOR STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2895 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2896 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2895  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2891:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2896 then goto _Label_2894		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2894
_Label_2892:
	mov	2657,r13		! source line 2657
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0AS",r10
	mov	2658,r13		! source line 2658
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
	mov	2661,r13		! source line 2661
	mov	"\0\0IF",r10
	mov	2661,r13		! source line 2661
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2900) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2899  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2899 then goto _Label_2898 else goto _Label_2897
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2897
	jmp	_Label_2898
_Label_2897:
! THEN...
	mov	2662,r13		! source line 2662
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2901 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2901  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2662,r13		! source line 2662
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2663,r13		! source line 2663
	mov	"\0\0SE",r10
!   _temp_2902 = &_P_Kernel_frameManager
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
	mov	2664,r13		! source line 2664
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2898:
! ASSIGNMENT STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2893:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2891
! END FOR
_Label_2894:
! IF STATEMENT...
	mov	2670,r13		! source line 2670
	mov	"\0\0IF",r10
	mov	2670,r13		! source line 2670
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2906) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2905  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2905 == 707406378 then goto _Label_2904		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2904
!	jmp	_Label_2903
_Label_2903:
! THEN...
	mov	2671,r13		! source line 2671
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2907 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2907  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2671,r13		! source line 2671
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0SE",r10
!   _temp_2908 = &_P_Kernel_frameManager
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
	mov	2673,r13		! source line 2673
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2904:
! ASSIGNMENT STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0AS",r10
	mov	2677,r13		! source line 2677
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
	mov	2681,r13		! source line 2681
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2684,r13		! source line 2684
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
	.word	_Label_2909
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2910
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2911
	.word	12
	.word	4
	.word	_Label_2912
	.word	-16
	.word	4
	.word	_Label_2913
	.word	-20
	.word	4
	.word	_Label_2914
	.word	-24
	.word	4
	.word	_Label_2915
	.word	-28
	.word	4
	.word	_Label_2916
	.word	-32
	.word	4
	.word	_Label_2917
	.word	-36
	.word	4
	.word	_Label_2918
	.word	-40
	.word	4
	.word	_Label_2919
	.word	-9
	.word	1
	.word	_Label_2920
	.word	-44
	.word	4
	.word	_Label_2921
	.word	-48
	.word	4
	.word	_Label_2922
	.word	-52
	.word	4
	.word	_Label_2923
	.word	-56
	.word	4
	.word	_Label_2924
	.word	-60
	.word	4
	.word	_Label_2925
	.word	-64
	.word	4
	.word	_Label_2926
	.word	-68
	.word	4
	.word	_Label_2927
	.word	-72
	.word	4
	.word	_Label_2928
	.word	-76
	.word	4
	.word	_Label_2929
	.word	-10
	.word	1
	.word	_Label_2930
	.word	-80
	.word	4
	.word	_Label_2931
	.word	-84
	.word	4
	.word	_Label_2932
	.word	-88
	.word	4
	.word	_Label_2933
	.word	-92
	.word	4
	.word	_Label_2934
	.word	-96
	.word	4
	.word	_Label_2935
	.word	-100
	.word	4
	.word	_Label_2936
	.word	-104
	.word	4
	.word	_Label_2937
	.word	-108
	.word	4
	.word	_Label_2938
	.word	-112
	.word	4
	.word	_Label_2939
	.word	-116
	.word	4
	.word	_Label_2940
	.word	-120
	.word	4
	.word	_Label_2941
	.word	-124
	.word	4
	.word	_Label_2942
	.word	-128
	.word	4
	.word	_Label_2943
	.word	-132
	.word	4
	.word	_Label_2944
	.word	-136
	.word	4
	.word	_Label_2945
	.word	-140
	.word	4
	.word	_Label_2946
	.word	-144
	.word	4
	.word	_Label_2947
	.word	-148
	.word	4
	.word	_Label_2948
	.word	-152
	.word	4
	.word	_Label_2949
	.word	-156
	.word	4
	.word	_Label_2950
	.word	-160
	.word	4
	.word	_Label_2951
	.word	-164
	.word	4
	.word	_Label_2952
	.word	-168
	.word	4
	.word	_Label_2953
	.word	-172
	.word	4
	.word	_Label_2954
	.word	-176
	.word	4
	.word	_Label_2955
	.word	-180
	.word	4
	.word	_Label_2956
	.word	-184
	.word	4
	.word	_Label_2957
	.word	-188
	.word	4
	.word	_Label_2958
	.word	-192
	.word	4
	.word	_Label_2959
	.word	-196
	.word	4
	.word	_Label_2960
	.word	-200
	.word	4
	.word	_Label_2961
	.word	-204
	.word	4
	.word	_Label_2962
	.word	-208
	.word	4
	.word	_Label_2963
	.word	-212
	.word	4
	.word	_Label_2964
	.word	-216
	.word	4
	.word	_Label_2965
	.word	-220
	.word	4
	.word	_Label_2966
	.word	-224
	.word	4
	.word	_Label_2967
	.word	-228
	.word	4
	.word	_Label_2968
	.word	-232
	.word	4
	.word	_Label_2969
	.word	-236
	.word	4
	.word	_Label_2970
	.word	-240
	.word	4
	.word	_Label_2971
	.word	-244
	.word	4
	.word	_Label_2972
	.word	-248
	.word	4
	.word	_Label_2973
	.word	-252
	.word	4
	.word	_Label_2974
	.word	-256
	.word	4
	.word	_Label_2975
	.word	-260
	.word	4
	.word	_Label_2976
	.word	-264
	.word	4
	.word	_Label_2977
	.word	-268
	.word	4
	.word	0
_Label_2909:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2910:
	.ascii	"Pself\0"
	.align
_Label_2911:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2919:
	.byte	'C'
	.ascii	"_temp_2899\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2929:
	.byte	'C'
	.ascii	"_temp_2881\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2966:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2967:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2968:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2969:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2970:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2971:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2972:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2973:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2974:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2975:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_2976:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_2977:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
