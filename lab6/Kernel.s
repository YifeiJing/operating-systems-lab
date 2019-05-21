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
_StringConst_200:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_199:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_198:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_197:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_196:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_195:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_194:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_193:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_192:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_191:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_190:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_189:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_188:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_187:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_186:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_185:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_184:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_183:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_182:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_181:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_180:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_179:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_178:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_177:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_176:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_175:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_174:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_173:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_172:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_171:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_170:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_169:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_168:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_167:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_166:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_165:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_164:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_163:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_162:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_161:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_160:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_159:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_158:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_157:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_156:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_155:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_154:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_153:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_152:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_151:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_150:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_149:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_148:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_147:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_146:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_145:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_144:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_143:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_142:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_141:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_140:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_139:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_138:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_137:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_136:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_135:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_134:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_133:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_132:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_131:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_130:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_129:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_128:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_127:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_126:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_125:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_124:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_123:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_122:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_121:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_120:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_119:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_118:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_117:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_116:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_115:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_114:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_113:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_112:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_111:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_110:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_109:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_108:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_107:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_106:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_105:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_104:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_103:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_102:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_101:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_100:
	.word	10			! length
	.ascii	"Threadpool"
	.align
_StringConst_99:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_98:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_97:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_96:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_95:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_94:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_93:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_92:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_91:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_90:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_89:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_88:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_87:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_86:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_85:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_84:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_83:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_82:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_81:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_80:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_79:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_78:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_77:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_76:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_75:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_74:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_73:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_72:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_71:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_70:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_69:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_68:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_67:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_66:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_65:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_64:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_63:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_62:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_61:
	.word	33			! length
	.ascii	"Failed to open file: TestProgram1"
	.align
_StringConst_60:
	.word	12			! length
	.ascii	"TestProgram3"
	.align
_StringConst_59:
	.word	9			! length
	.ascii	"myProgram"
	.align
_StringConst_58:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_57:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_56:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_55:
	.word	24			! length
	.ascii	"Invoke System call Close"
	.align
_StringConst_54:
	.word	15			! length
	.ascii	"newCurrentPos: "
	.align
_StringConst_53:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_52:
	.word	23			! length
	.ascii	"Invoke System call Seek"
	.align
_StringConst_51:
	.word	8			! length
	.ascii	"buffer: "
	.align
_StringConst_50:
	.word	24			! length
	.ascii	"Invoke System call Write"
	.align
_StringConst_49:
	.word	8			! length
	.ascii	"buffer: "
	.align
_StringConst_48:
	.word	23			! length
	.ascii	"Invoke System call Read"
	.align
_StringConst_47:
	.word	10			! length
	.ascii	"filename: "
	.align
_StringConst_46:
	.word	23			! length
	.ascii	"Invoke System call Open"
	.align
_StringConst_45:
	.word	10			! length
	.ascii	"filename: "
	.align
_StringConst_44:
	.word	25			! length
	.ascii	"Invoke System call Create"
	.align
_StringConst_43:
	.word	21			! length
	.ascii	"Failed to open file: "
	.align
_StringConst_42:
	.word	39			! length
	.ascii	"Failed to get string from virtual space"
	.align
_StringConst_41:
	.word	26			! length
	.ascii	"Invoke System call Execute"
	.align
_StringConst_40:
	.word	23			! length
	.ascii	"Invoke System call Join"
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
	set	0x82d85760,r4		! myHashVal = -2099751072
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
_Label_3098:
	push	r0
	sub	r1,1,r1
	bne	_Label_3098
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
_Label_3099:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3099
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
_Label_3100:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3100
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
_Label_3101:
	push	r0
	sub	r1,1,r1
	bne	_Label_3101
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
_Label_3102:
	push	r0
	sub	r1,1,r1
	bne	_Label_3102
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
_Label_3103:
	push	r0
	sub	r1,1,r1
	bne	_Label_3103
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
_Label_3104:
	push	r0
	sub	r1,1,r1
	bne	_Label_3104
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
_Label_3105:
	push	r0
	sub	r1,1,r1
	bne	_Label_3105
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
_Label_3106:
	push	r0
	sub	r1,1,r1
	bne	_Label_3106
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
_Label_3107:
	push	r0
	sub	r1,1,r1
	bne	_Label_3107
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
_Label_3108:
	push	r0
	sub	r1,1,r1
	bne	_Label_3108
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
_Label_3109:
	push	r0
	sub	r1,1,r1
	bne	_Label_3109
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
_Label_3110:
	push	r0
	sub	r1,1,r1
	bne	_Label_3110
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
_Label_3111:
	push	r0
	sub	r1,1,r1
	bne	_Label_3111
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
_Label_3112:
	push	r0
	sub	r1,1,r1
	bne	_Label_3112
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
_Label_3113:
	push	r0
	sub	r1,1,r1
	bne	_Label_3113
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
_Label_3114:
	push	r0
	sub	r1,1,r1
	bne	_Label_3114
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
_Label_3115:
	push	r0
	sub	r1,1,r1
	bne	_Label_3115
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
_Label_3116:
	push	r0
	sub	r1,1,r1
	bne	_Label_3116
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
_Label_3117:
	push	r0
	sub	r1,1,r1
	bne	_Label_3117
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
_Label_3118:
	push	r0
	sub	r1,1,r1
	bne	_Label_3118
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
_Label_3119:
	push	r0
	sub	r1,1,r1
	bne	_Label_3119
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
_Label_3120:
	push	r0
	sub	r1,1,r1
	bne	_Label_3120
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
_Label_3121:
	push	r0
	sub	r1,1,r1
	bne	_Label_3121
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
	be	_Label_3122
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_456
_Label_3122:
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
_Label_3123:
	push	r0
	sub	r1,1,r1
	bne	_Label_3123
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
_Label_3124:
	push	r0
	sub	r1,1,r1
	bne	_Label_3124
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
_Label_3125:
	push	r0
	sub	r1,1,r1
	bne	_Label_3125
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
	mov	49,r1
_Label_3126:
	push	r0
	sub	r1,1,r1
	bne	_Label_3126
	mov	1686,r13		! source line 1686
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0AS",r10
	mov	1693,r13		! source line 1693
	mov	"\0\0SE",r10
!   _temp_509 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-168]
!   Send message GetANewProcess
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=childPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-172]
! ASSIGNMENT STATEMENT...
	mov	1694,r13		! source line 1694
	mov	"\0\0AS",r10
	mov	1694,r13		! source line 1694
	mov	"\0\0SE",r10
!   _temp_510 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-164]
!   Send message GetANewThread
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=childThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-176]
! ASSIGNMENT STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0AS",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_511 = childPCB + 24
	load	[r14+-172],r1
	add	r1,24,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_511 = childThread  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r14+-160],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1696,r13		! source line 1696
	mov	"\0\0AS",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_512 = childPCB + 16
	load	[r14+-172],r1
	add	r1,16,r1
	store	r1,[r14+-156]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_515 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-144]
!   Data Move: _temp_514 = *_temp_515  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_514) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_516 = _temp_514 + 12
	load	[r14+-148],r1
	add	r1,12,r1
	store	r1,[r14+-140]
!   Data Move: _temp_513 = *_temp_516  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   Data Move: *_temp_512 = _temp_513  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r14+-156],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1697,r13		! source line 1697
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_517 = childThread + 68
	load	[r14+-176],r1
	add	r1,68,r1
	store	r1,[r14+-136]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_519 = childThread + 88
	load	[r14+-176],r1
	add	r1,88,r1
	store	r1,[r14+-128]
!   Move address of _temp_519 [999 ] into _temp_520
!     make sure index expr is >= 0
	mov	999,r2
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
!   _temp_518 = _temp_520		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-132]
!   Data Move: *_temp_517 = _temp_518  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r14+-136],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_521 = childThread + 4160
	load	[r14+-176],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: *_temp_521 = childPCB  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r14+-120],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1699,r13		! source line 1699
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_522 = childThread + 76
	load	[r14+-176],r1
	add	r1,76,r1
	store	r1,[r14+-116]
!   Data Move: *_temp_522 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-116],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_524 = childThread + 4096
	load	[r14+-176],r1
	add	r1,4096,r1
	store	r1,[r14+-108]
!   Move address of _temp_524 [0 ] into _temp_525
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-108],r1
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
	store	r2,[r14+-104]
!   _temp_523 = _temp_525		(4 bytes)
	load	[r14+-104],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_523  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1700,r13		! source line 1700
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1701,r13		! source line 1701
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1701,r13		! source line 1701
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	1702,r13		! source line 1702
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_527 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_526 = *_temp_527  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_526) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_528 = _temp_526 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   _temp_529 = _temp_528 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Data Move: tmp = *_temp_529  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-180]
! IF STATEMENT...
	mov	1703,r13		! source line 1703
	mov	"\0\0IF",r10
!   if tmp <= 0 then goto _Label_531		(int)
	load	[r14+-180],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_531
!	jmp	_Label_530
_Label_530:
! THEN...
	mov	1704,r13		! source line 1704
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_533 = childPCB + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_532 = _temp_533		(4 bytes)
	load	[r14+-80],r1
	store	r1,[r14+-84]
!   _temp_534 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_532  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=tmp  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_539 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_540 = tmp - 1		(int)
	load	[r14+-180],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_539  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-184]
_Label_535:
!   Perform the FOR-LOOP termination test
!   if i > _temp_540 then goto _Label_538		
	load	[r14+-184],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_538
_Label_536:
	mov	1705,r13		! source line 1705
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1706,r13		! source line 1706
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_542 = childPCB + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_541  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
	mov	1707,r13		! source line 1707
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_545 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_544 = *_temp_545  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_544) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_546 = _temp_544 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_543  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_541  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_543  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1706,r13		! source line 1706
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0IF",r10
	mov	1708,r13		! source line 1708
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_550 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_549 = *_temp_550  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_549) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_551 = _temp_549 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_547 else goto _Label_548
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_548
	jmp	_Label_547
_Label_547:
! THEN...
	mov	1709,r13		! source line 1709
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1709,r13		! source line 1709
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_552 = childPCB + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
	jmp	_Label_553
_Label_548:
! ELSE...
	mov	1711,r13		! source line 1711
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1711,r13		! source line 1711
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_554 = childPCB + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! END IF...
_Label_553:
!   Increment the FOR-LOOP index variable and jump back
_Label_537:
!   i = i + 1
	load	[r14+-184],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
	jmp	_Label_535
! END FOR
_Label_538:
! END IF...
_Label_531:
! ASSIGNMENT STATEMENT...
	mov	1715,r13		! source line 1715
	mov	"\0\0AS",r10
!   Call the function
	mov	1715,r13		! source line 1715
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-188]
! SEND STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0SE",r10
!   _temp_555 = _function_205_ResumeChildAfterFork
	set	_function_205_ResumeChildAfterFork,r1
	store	r1,[r14+-20]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_555  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldUserPC  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1717,r13		! source line 1717
	mov	"\0\0RE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_557 = childPCB + 12
	load	[r14+-172],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_556 = *_temp_557  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_556  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_558
	.word	0		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_559
	.word	-12
	.word	4
	.word	_Label_560
	.word	-16
	.word	4
	.word	_Label_561
	.word	-20
	.word	4
	.word	_Label_562
	.word	-24
	.word	4
	.word	_Label_563
	.word	-28
	.word	4
	.word	_Label_564
	.word	-32
	.word	4
	.word	_Label_565
	.word	-36
	.word	4
	.word	_Label_566
	.word	-40
	.word	4
	.word	_Label_567
	.word	-44
	.word	4
	.word	_Label_568
	.word	-48
	.word	4
	.word	_Label_569
	.word	-52
	.word	4
	.word	_Label_570
	.word	-56
	.word	4
	.word	_Label_571
	.word	-60
	.word	4
	.word	_Label_572
	.word	-64
	.word	4
	.word	_Label_573
	.word	-68
	.word	4
	.word	_Label_574
	.word	-72
	.word	4
	.word	_Label_575
	.word	-76
	.word	4
	.word	_Label_576
	.word	-80
	.word	4
	.word	_Label_577
	.word	-84
	.word	4
	.word	_Label_578
	.word	-88
	.word	4
	.word	_Label_579
	.word	-92
	.word	4
	.word	_Label_580
	.word	-96
	.word	4
	.word	_Label_581
	.word	-100
	.word	4
	.word	_Label_582
	.word	-104
	.word	4
	.word	_Label_583
	.word	-108
	.word	4
	.word	_Label_584
	.word	-112
	.word	4
	.word	_Label_585
	.word	-116
	.word	4
	.word	_Label_586
	.word	-120
	.word	4
	.word	_Label_587
	.word	-124
	.word	4
	.word	_Label_588
	.word	-128
	.word	4
	.word	_Label_589
	.word	-132
	.word	4
	.word	_Label_590
	.word	-136
	.word	4
	.word	_Label_591
	.word	-140
	.word	4
	.word	_Label_592
	.word	-144
	.word	4
	.word	_Label_593
	.word	-148
	.word	4
	.word	_Label_594
	.word	-152
	.word	4
	.word	_Label_595
	.word	-156
	.word	4
	.word	_Label_596
	.word	-160
	.word	4
	.word	_Label_597
	.word	-164
	.word	4
	.word	_Label_598
	.word	-168
	.word	4
	.word	_Label_599
	.word	-172
	.word	4
	.word	_Label_600
	.word	-176
	.word	4
	.word	_Label_601
	.word	-180
	.word	4
	.word	_Label_602
	.word	-184
	.word	4
	.word	_Label_603
	.word	-188
	.word	4
	.word	_Label_604
	.word	-192
	.word	4
	.word	0
_Label_558:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_599:
	.byte	'P'
	.ascii	"childPCB\0"
	.align
_Label_600:
	.byte	'P'
	.ascii	"childThread\0"
	.align
_Label_601:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_602:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_603:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_604:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_205_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_205_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_3127:
	push	r0
	sub	r1,1,r1
	bne	_Label_3127
	mov	1720,r13		! source line 1720
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1725,r13		! source line 1725
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1725,r13		! source line 1725
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1726,r13		! source line 1726
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_606 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_605 = *_temp_606  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_605) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_607 = _temp_605 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Send message SetToThisPageTable
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_609 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_609 [0 ] into _temp_610
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
!   _temp_608 = _temp_610		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_608  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1727,r13		! source line 1727
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1728,r13		! source line 1728
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_611 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_611 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1730,r13		! source line 1730
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_612 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_612 [14 ] into _temp_613
!     make sure index expr is >= 0
	mov	14,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
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
	store	r2,[r14+-20]
!   Data Move: initUserStackTop = *_temp_613  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1731,r13		! source line 1731
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_614 [999 ] into _temp_615
!     make sure index expr is >= 0
	mov	999,r2
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
!   initSystemStackTop = _temp_615		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-64]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=oldUserPC  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+8]
!   Call the function
	mov	1732,r13		! source line 1732
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1732,r13		! source line 1732
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_205_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_616
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_617
	.word	8
	.word	4
	.word	_Label_618
	.word	-12
	.word	4
	.word	_Label_619
	.word	-16
	.word	4
	.word	_Label_620
	.word	-20
	.word	4
	.word	_Label_621
	.word	-24
	.word	4
	.word	_Label_622
	.word	-28
	.word	4
	.word	_Label_623
	.word	-32
	.word	4
	.word	_Label_624
	.word	-36
	.word	4
	.word	_Label_625
	.word	-40
	.word	4
	.word	_Label_626
	.word	-44
	.word	4
	.word	_Label_627
	.word	-48
	.word	4
	.word	_Label_628
	.word	-52
	.word	4
	.word	_Label_629
	.word	-56
	.word	4
	.word	_Label_630
	.word	-60
	.word	4
	.word	_Label_631
	.word	-64
	.word	4
	.word	0
_Label_616:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_617:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_629:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_630:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_631:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
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
_Label_3128:
	push	r0
	sub	r1,1,r1
	bne	_Label_3128
	mov	1737,r13		! source line 1737
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_632 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_632  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1738,r13		! source line 1738
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1739,r13		! source line 1739
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
	.word	_Label_633
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_634
	.word	8
	.word	4
	.word	_Label_635
	.word	-12
	.word	4
	.word	0
_Label_633:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_634:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_632\0"
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
_Label_3129:
	push	r0
	sub	r1,1,r1
	bne	_Label_3129
	mov	1744,r13		! source line 1744
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-264,r4
	mov	23,r3
_Label_3130:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3130
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1753,r13		! source line 1753
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-148]
! CALL STATEMENT...
!   _temp_637 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_637  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	1754,r13		! source line 1754
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1755,r13		! source line 1755
	mov	"\0\0AS",r10
	mov	1755,r13		! source line 1755
	mov	"\0\0SE",r10
!   _temp_638 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-120]
!   _temp_639 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_641 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_640 = *_temp_641  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_640) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_642 = _temp_640 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_638  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_639  sizeInBytes=4
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
	mov	1756,r13		! source line 1756
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_644		(int)
	load	[r14+-268],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_644
!	jmp	_Label_643
_Label_643:
! THEN...
	mov	1757,r13		! source line 1757
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_645 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_645  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	1757,r13		! source line 1757
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1758,r13		! source line 1758
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_644:
! ASSIGNMENT STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0AS",r10
	mov	1760,r13		! source line 1760
	mov	"\0\0SE",r10
!   _temp_646 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-96]
!   _temp_647 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_646  sizeInBytes=4
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
	mov	1761,r13		! source line 1761
	mov	"\0\0IF",r10
!   if fp == 0 then goto _Label_649		(int)
	load	[r14+-132],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_649
!	jmp	_Label_648
_Label_648:
! THEN...
	mov	1762,r13		! source line 1762
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0SE",r10
!   _temp_650 = &newAddrSpace
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
	mov	1763,r13		! source line 1763
	mov	"\0\0AS",r10
	mov	1763,r13		! source line 1763
	mov	"\0\0SE",r10
!   _temp_651 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-84]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_651  sizeInBytes=4
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
	mov	1764,r13		! source line 1764
	mov	"\0\0SE",r10
!   _temp_652 = &_P_Kernel_fileManager
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
	mov	1765,r13		! source line 1765
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_655 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_654 = *_temp_655  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_654) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_656 = _temp_654 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   _temp_653 = _temp_656		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-76]
!   _temp_657 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_653  sizeInBytes=4
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
	mov	1766,r13		! source line 1766
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_659 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_658 = *_temp_659  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_658) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_660 = _temp_658 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_660 = newAddrSpace  (sizeInBytes=92)
	add	r14,-264,r5
	load	[r14+-48],r4
	mov	23,r3
_Label_3131:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3131
! ASSIGNMENT STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0AS",r10
!   _temp_662 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-40]
!   _temp_663 = _temp_662 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_661 = *_temp_663  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initUserStackTop = _temp_661 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! ASSIGNMENT STATEMENT...
	mov	1768,r13		! source line 1768
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_664 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_664 [999 ] into _temp_665
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
!   initSystemStackTop = _temp_665		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-144]
! SEND STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0SE",r10
!   _temp_666 = &newAddrSpace
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
	mov	1770,r13		! source line 1770
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_667 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_667 = 1  (sizeInBytes=1)
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
	mov	1771,r13		! source line 1771
	mov	"\0\0CE",r10
	call	BecomeUserThread
	jmp	_Label_668
_Label_649:
! ELSE...
	mov	1773,r13		! source line 1773
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_669 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_669  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1773,r13		! source line 1773
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_670 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_670  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1774,r13		! source line 1774
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1775,r13		! source line 1775
	mov	"\0\0CA",r10
	call	_P_System_nl
! END IF...
_Label_668:
! RETURN STATEMENT...
	mov	1778,r13		! source line 1778
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
	.word	_Label_671
	.word	4		! total size of parameters
	.word	276		! frame size = 276
	.word	_Label_672
	.word	8
	.word	4
	.word	_Label_673
	.word	-12
	.word	4
	.word	_Label_674
	.word	-16
	.word	4
	.word	_Label_675
	.word	-20
	.word	4
	.word	_Label_676
	.word	-24
	.word	4
	.word	_Label_677
	.word	-28
	.word	4
	.word	_Label_678
	.word	-32
	.word	4
	.word	_Label_679
	.word	-36
	.word	4
	.word	_Label_680
	.word	-40
	.word	4
	.word	_Label_681
	.word	-44
	.word	4
	.word	_Label_682
	.word	-48
	.word	4
	.word	_Label_683
	.word	-52
	.word	4
	.word	_Label_684
	.word	-56
	.word	4
	.word	_Label_685
	.word	-60
	.word	4
	.word	_Label_686
	.word	-64
	.word	4
	.word	_Label_687
	.word	-68
	.word	4
	.word	_Label_688
	.word	-72
	.word	4
	.word	_Label_689
	.word	-76
	.word	4
	.word	_Label_690
	.word	-80
	.word	4
	.word	_Label_691
	.word	-84
	.word	4
	.word	_Label_692
	.word	-88
	.word	4
	.word	_Label_693
	.word	-92
	.word	4
	.word	_Label_694
	.word	-96
	.word	4
	.word	_Label_695
	.word	-100
	.word	4
	.word	_Label_696
	.word	-104
	.word	4
	.word	_Label_697
	.word	-108
	.word	4
	.word	_Label_698
	.word	-112
	.word	4
	.word	_Label_699
	.word	-116
	.word	4
	.word	_Label_700
	.word	-120
	.word	4
	.word	_Label_701
	.word	-124
	.word	4
	.word	_Label_702
	.word	-128
	.word	4
	.word	_Label_703
	.word	-132
	.word	4
	.word	_Label_704
	.word	-136
	.word	4
	.word	_Label_705
	.word	-140
	.word	4
	.word	_Label_706
	.word	-144
	.word	4
	.word	_Label_707
	.word	-148
	.word	4
	.word	_Label_708
	.word	-172
	.word	24
	.word	_Label_709
	.word	-264
	.word	92
	.word	_Label_710
	.word	-268
	.word	4
	.word	0
_Label_671:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_672:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_703:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_704:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_705:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_706:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_707:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_708:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_709:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_710:
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
_Label_3132:
	push	r0
	sub	r1,1,r1
	bne	_Label_3132
	mov	1783,r13		! source line 1783
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0AS",r10
	mov	1786,r13		! source line 1786
	mov	"\0\0SE",r10
!   _temp_711 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_712 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_714 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_713 = *_temp_714  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_713) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_715 = _temp_713 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_711  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_712  sizeInBytes=4
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
!   _temp_716 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_716  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1787,r13		! source line 1787
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1788,r13		! source line 1788
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_717 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_717  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1789,r13		! source line 1789
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_718 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_718  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1790,r13		! source line 1790
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1791,r13		! source line 1791
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1792,r13		! source line 1792
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
	.word	_Label_719
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_720
	.word	8
	.word	4
	.word	_Label_721
	.word	-12
	.word	4
	.word	_Label_722
	.word	-16
	.word	4
	.word	_Label_723
	.word	-20
	.word	4
	.word	_Label_724
	.word	-24
	.word	4
	.word	_Label_725
	.word	-28
	.word	4
	.word	_Label_726
	.word	-32
	.word	4
	.word	_Label_727
	.word	-36
	.word	4
	.word	_Label_728
	.word	-40
	.word	4
	.word	_Label_729
	.word	-64
	.word	24
	.word	_Label_730
	.word	-68
	.word	4
	.word	0
_Label_719:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_720:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_729:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_730:
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
_Label_3133:
	push	r0
	sub	r1,1,r1
	bne	_Label_3133
	mov	1797,r13		! source line 1797
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1801,r13		! source line 1801
	mov	"\0\0AS",r10
	mov	1801,r13		! source line 1801
	mov	"\0\0SE",r10
!   _temp_731 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_732 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_734 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_733 = *_temp_734  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_733) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_735 = _temp_733 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_731  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_732  sizeInBytes=4
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
!   _temp_736 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1802,r13		! source line 1802
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1803,r13		! source line 1803
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_737 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1804,r13		! source line 1804
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_738 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1805,r13		! source line 1805
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1806,r13		! source line 1806
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1807,r13		! source line 1807
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
	.word	_Label_739
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_740
	.word	8
	.word	4
	.word	_Label_741
	.word	-12
	.word	4
	.word	_Label_742
	.word	-16
	.word	4
	.word	_Label_743
	.word	-20
	.word	4
	.word	_Label_744
	.word	-24
	.word	4
	.word	_Label_745
	.word	-28
	.word	4
	.word	_Label_746
	.word	-32
	.word	4
	.word	_Label_747
	.word	-36
	.word	4
	.word	_Label_748
	.word	-40
	.word	4
	.word	_Label_749
	.word	-64
	.word	24
	.word	_Label_750
	.word	-68
	.word	4
	.word	0
_Label_739:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_740:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_749:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_750:
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
_Label_3134:
	push	r0
	sub	r1,1,r1
	bne	_Label_3134
	mov	1812,r13		! source line 1812
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0AS",r10
	mov	1816,r13		! source line 1816
	mov	"\0\0SE",r10
!   _temp_751 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_752 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_754 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_753 = *_temp_754  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_753) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_755 = _temp_753 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_751  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_752  sizeInBytes=4
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
!   _temp_756 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_756  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1817,r13		! source line 1817
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1818,r13		! source line 1818
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_757 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_757  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1819,r13		! source line 1819
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_758 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_758  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1820,r13		! source line 1820
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1821,r13		! source line 1821
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1822,r13		! source line 1822
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
	.word	_Label_759
	.word	12		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_760
	.word	8
	.word	4
	.word	_Label_761
	.word	12
	.word	4
	.word	_Label_762
	.word	16
	.word	4
	.word	_Label_763
	.word	-12
	.word	4
	.word	_Label_764
	.word	-16
	.word	4
	.word	_Label_765
	.word	-20
	.word	4
	.word	_Label_766
	.word	-24
	.word	4
	.word	_Label_767
	.word	-28
	.word	4
	.word	_Label_768
	.word	-32
	.word	4
	.word	_Label_769
	.word	-36
	.word	4
	.word	_Label_770
	.word	-40
	.word	4
	.word	_Label_771
	.word	-64
	.word	24
	.word	_Label_772
	.word	-68
	.word	4
	.word	0
_Label_759:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_760:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_761:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_762:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_771:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_772:
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
_Label_3135:
	push	r0
	sub	r1,1,r1
	bne	_Label_3135
	mov	1827,r13		! source line 1827
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0AS",r10
	mov	1831,r13		! source line 1831
	mov	"\0\0SE",r10
!   _temp_773 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_774 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_776 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_775 = *_temp_776  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_775) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_777 = _temp_775 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_773  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_774  sizeInBytes=4
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
!   _temp_778 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_778  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1832,r13		! source line 1832
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1833,r13		! source line 1833
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_779 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_779  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1834,r13		! source line 1834
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_780 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_780  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1835,r13		! source line 1835
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1836,r13		! source line 1836
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1837,r13		! source line 1837
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
	.word	_Label_781
	.word	12		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_782
	.word	8
	.word	4
	.word	_Label_783
	.word	12
	.word	4
	.word	_Label_784
	.word	16
	.word	4
	.word	_Label_785
	.word	-12
	.word	4
	.word	_Label_786
	.word	-16
	.word	4
	.word	_Label_787
	.word	-20
	.word	4
	.word	_Label_788
	.word	-24
	.word	4
	.word	_Label_789
	.word	-28
	.word	4
	.word	_Label_790
	.word	-32
	.word	4
	.word	_Label_791
	.word	-36
	.word	4
	.word	_Label_792
	.word	-40
	.word	4
	.word	_Label_793
	.word	-64
	.word	24
	.word	_Label_794
	.word	-68
	.word	4
	.word	0
_Label_781:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_782:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_783:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_784:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_793:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_794:
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
_Label_3136:
	push	r0
	sub	r1,1,r1
	bne	_Label_3136
	mov	1842,r13		! source line 1842
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_795 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_795  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1844,r13		! source line 1844
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1845,r13		! source line 1845
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_796 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_796  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1846,r13		! source line 1846
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1847,r13		! source line 1847
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1848,r13		! source line 1848
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_797 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_797  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1849,r13		! source line 1849
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1850,r13		! source line 1850
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1851,r13		! source line 1851
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1852,r13		! source line 1852
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
	.word	_Label_798
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_799
	.word	8
	.word	4
	.word	_Label_800
	.word	12
	.word	4
	.word	_Label_801
	.word	-12
	.word	4
	.word	_Label_802
	.word	-16
	.word	4
	.word	_Label_803
	.word	-20
	.word	4
	.word	0
_Label_798:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_799:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_800:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_795\0"
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
_Label_3137:
	push	r0
	sub	r1,1,r1
	bne	_Label_3137
	mov	1857,r13		! source line 1857
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_804 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_804  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1859,r13		! source line 1859
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1860,r13		! source line 1860
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_805 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_805  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1861,r13		! source line 1861
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1862,r13		! source line 1862
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1863,r13		! source line 1863
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1863,r13		! source line 1863
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
	.word	_Label_806
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_807
	.word	8
	.word	4
	.word	_Label_808
	.word	-12
	.word	4
	.word	_Label_809
	.word	-16
	.word	4
	.word	0
_Label_806:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_807:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_204_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_204_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3138:
	push	r0
	sub	r1,1,r1
	bne	_Label_3138
	mov	2454,r13		! source line 2454
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_810 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_810  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2459,r13		! source line 2459
	mov	"\0\0AS",r10
!   _temp_811 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_811) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_813 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_813) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_812 = *_temp_813  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_811 = _temp_812  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0AS",r10
!   _temp_814 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_814) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_816 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_816) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_815 = *_temp_816  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_814 = _temp_815  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0AS",r10
!   _temp_817 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_817) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_819 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_819) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_818 = *_temp_819  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_817 = _temp_818  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_204_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_820
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_821
	.word	8
	.word	4
	.word	_Label_822
	.word	12
	.word	4
	.word	_Label_823
	.word	-16
	.word	4
	.word	_Label_824
	.word	-9
	.word	1
	.word	_Label_825
	.word	-20
	.word	4
	.word	_Label_826
	.word	-24
	.word	4
	.word	_Label_827
	.word	-10
	.word	1
	.word	_Label_828
	.word	-28
	.word	4
	.word	_Label_829
	.word	-32
	.word	4
	.word	_Label_830
	.word	-11
	.word	1
	.word	_Label_831
	.word	-36
	.word	4
	.word	_Label_832
	.word	-12
	.word	1
	.word	_Label_833
	.word	-40
	.word	4
	.word	_Label_834
	.word	-44
	.word	4
	.word	0
_Label_820:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_821:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_822:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_824:
	.byte	'C'
	.ascii	"_temp_818\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_827:
	.byte	'C'
	.ascii	"_temp_815\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_830:
	.byte	'C'
	.ascii	"_temp_812\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_832:
	.byte	'C'
	.ascii	"_temp_810\0"
	.align
_Label_833:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_834:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_203_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_203_printFCB,r1
	push	r1
	mov	3,r1
_Label_3139:
	push	r0
	sub	r1,1,r1
	bne	_Label_3139
	mov	2464,r13		! source line 2464
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_836 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_835 = *_temp_836  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_835  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2465,r13		! source line 2465
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2466,r13		! source line 2466
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2466,r13		! source line 2466
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_203_printFCB:
	.word	_sourceFileName
	.word	_Label_837
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_838
	.word	8
	.word	4
	.word	_Label_839
	.word	-12
	.word	4
	.word	_Label_840
	.word	-16
	.word	4
	.word	0
_Label_837:
	.ascii	"printFCB\0"
	.align
_Label_838:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_202_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_printOpen,r1
	push	r1
	mov	4,r1
_Label_3140:
	push	r0
	sub	r1,1,r1
	bne	_Label_3140
	mov	2469,r13		! source line 2469
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_841 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_841  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2470,r13		! source line 2470
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_842 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_842  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2471,r13		! source line 2471
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_843 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_843  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2472,r13		! source line 2472
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2473,r13		! source line 2473
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
	mov	2473,r13		! source line 2473
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_202_printOpen:
	.word	_sourceFileName
	.word	_Label_844
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_845
	.word	8
	.word	4
	.word	_Label_846
	.word	-12
	.word	4
	.word	_Label_847
	.word	-16
	.word	4
	.word	_Label_848
	.word	-20
	.word	4
	.word	0
_Label_844:
	.ascii	"printOpen\0"
	.align
_Label_845:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_841\0"
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
_Label_3141:
	push	r0
	sub	r1,1,r1
	bne	_Label_3141
	mov	2733,r13		! source line 2733
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2735,r13		! source line 2735
	mov	"\0\0AS",r10
	mov	2735,r13		! source line 2735
	mov	"\0\0SE",r10
!   _temp_849 = &_P_Kernel_threadManager
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
	mov	2736,r13		! source line 2736
	mov	"\0\0AS",r10
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_850 = myProgram + 72
	load	[r14+-28],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   _temp_851 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_850 = _temp_851  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2737,r13		! source line 2737
	mov	"\0\0SE",r10
!   _temp_852 = _function_201_StartUserProcess
	set	_function_201_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_852  sizeInBytes=4
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
	mov	2737,r13		! source line 2737
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
	.word	_Label_853
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_854
	.word	-12
	.word	4
	.word	_Label_855
	.word	-16
	.word	4
	.word	_Label_856
	.word	-20
	.word	4
	.word	_Label_857
	.word	-24
	.word	4
	.word	_Label_858
	.word	-28
	.word	4
	.word	0
_Label_853:
	.ascii	"InitFirstProcess\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_858:
	.byte	'P'
	.ascii	"myProgram\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_201_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_201_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_3142:
	push	r0
	sub	r1,1,r1
	bne	_Label_3142
	mov	2740,r13		! source line 2740
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2747,r13		! source line 2747
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2747,r13		! source line 2747
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0AS",r10
	mov	2748,r13		! source line 2748
	mov	"\0\0SE",r10
!   _temp_859 = &_P_Kernel_processManager
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
	mov	2749,r13		! source line 2749
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_860 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_860 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_861 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_861 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0AS",r10
	mov	2751,r13		! source line 2751
	mov	"\0\0SE",r10
!   _temp_862 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-60]
!   _temp_863 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_862  sizeInBytes=4
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
	mov	2752,r13		! source line 2752
	mov	"\0\0IF",r10
!   if fp == 0 then goto _Label_865		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_865
!	jmp	_Label_864
_Label_864:
! THEN...
	mov	2753,r13		! source line 2753
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0AS",r10
	mov	2753,r13		! source line 2753
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_867 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_866 = _temp_867		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_866  sizeInBytes=4
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
	mov	2754,r13		! source line 2754
	mov	"\0\0SE",r10
!   _temp_868 = &_P_Kernel_fileManager
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
	mov	2755,r13		! source line 2755
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_870 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_871 = _temp_870 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_869 = *_temp_871  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_869 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_872 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_872 [999 ] into _temp_873
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
!   initSystemStackTop = _temp_873		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_874 = pcb + 32
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
	mov	2758,r13		! source line 2758
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_875 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_875 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2759,r13		! source line 2759
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	2759,r13		! source line 2759
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
	mov	2760,r13		! source line 2760
	mov	"\0\0CE",r10
	call	BecomeUserThread
	jmp	_Label_876
_Label_865:
! ELSE...
	mov	2762,r13		! source line 2762
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_877 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_877  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2762,r13		! source line 2762
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2763,r13		! source line 2763
	mov	"\0\0CA",r10
	call	_P_System_nl
! END IF...
_Label_876:
! RETURN STATEMENT...
	mov	2752,r13		! source line 2752
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_201_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_878
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_879
	.word	8
	.word	4
	.word	_Label_880
	.word	-12
	.word	4
	.word	_Label_881
	.word	-16
	.word	4
	.word	_Label_882
	.word	-20
	.word	4
	.word	_Label_883
	.word	-24
	.word	4
	.word	_Label_884
	.word	-28
	.word	4
	.word	_Label_885
	.word	-32
	.word	4
	.word	_Label_886
	.word	-36
	.word	4
	.word	_Label_887
	.word	-40
	.word	4
	.word	_Label_888
	.word	-44
	.word	4
	.word	_Label_889
	.word	-48
	.word	4
	.word	_Label_890
	.word	-52
	.word	4
	.word	_Label_891
	.word	-56
	.word	4
	.word	_Label_892
	.word	-60
	.word	4
	.word	_Label_893
	.word	-64
	.word	4
	.word	_Label_894
	.word	-68
	.word	4
	.word	_Label_895
	.word	-72
	.word	4
	.word	_Label_896
	.word	-76
	.word	4
	.word	_Label_897
	.word	-80
	.word	4
	.word	_Label_898
	.word	-84
	.word	4
	.word	_Label_899
	.word	-88
	.word	4
	.word	_Label_900
	.word	-92
	.word	4
	.word	_Label_901
	.word	-96
	.word	4
	.word	0
_Label_878:
	.ascii	"StartUserProcess\0"
	.align
_Label_879:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_896:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_897:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_898:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_899:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_900:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_901:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_902
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_902:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_903
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_903:
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
_Label_3143:
	push	r0
	sub	r1,1,r1
	bne	_Label_3143
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_905		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_905
!	jmp	_Label_904
_Label_904:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_906 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_906  sizeInBytes=4
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
_Label_905:
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
	.word	_Label_908
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_909
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_910
	.word	12
	.word	4
	.word	_Label_911
	.word	-12
	.word	4
	.word	_Label_912
	.word	-16
	.word	4
	.word	0
_Label_908:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_909:
	.ascii	"Pself\0"
	.align
_Label_910:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_906\0"
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
_Label_3144:
	push	r0
	sub	r1,1,r1
	bne	_Label_3144
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
!   if count != 2147483647 then goto _Label_914		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_914
!	jmp	_Label_913
_Label_913:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_915 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_915  sizeInBytes=4
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
_Label_914:
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
!   if count > 0 then goto _Label_917		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_917
!	jmp	_Label_916
_Label_916:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_918 = &waitingThreads
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
!   _temp_919 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_919 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_920 = &_P_Kernel_readyList
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
_Label_917:
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
	.word	_Label_921
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_922
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_923
	.word	-12
	.word	4
	.word	_Label_924
	.word	-16
	.word	4
	.word	_Label_925
	.word	-20
	.word	4
	.word	_Label_926
	.word	-24
	.word	4
	.word	_Label_927
	.word	-28
	.word	4
	.word	_Label_928
	.word	-32
	.word	4
	.word	0
_Label_921:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_922:
	.ascii	"Pself\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_927:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_928:
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
_Label_3145:
	push	r0
	sub	r1,1,r1
	bne	_Label_3145
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
!   if count != -2147483648 then goto _Label_930		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_930
!	jmp	_Label_929
_Label_929:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_931 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_931  sizeInBytes=4
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
_Label_930:
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
!   if count >= 0 then goto _Label_933		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_933
!	jmp	_Label_932
_Label_932:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_934 = &waitingThreads
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
_Label_933:
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
	.word	_Label_935
	.word	4		! total size of parameters
	.word	20		! frame size = 20
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
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
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
	.ascii	"_temp_931\0"
	.align
_Label_939:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_940
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_940:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_941
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_941:
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
_Label_3146:
	push	r0
	sub	r1,1,r1
	bne	_Label_3146
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
	.word	_Label_943
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_944
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_945
	.word	-12
	.word	4
	.word	0
_Label_943:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_944:
	.ascii	"Pself\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_942\0"
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
_Label_3147:
	push	r0
	sub	r1,1,r1
	bne	_Label_3147
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_947		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_947
!	jmp	_Label_946
_Label_946:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_948 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_948  sizeInBytes=4
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
_Label_947:
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
!   if heldBy == 0 then goto _Label_952		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_952
!   _temp_951 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_953
_Label_952:
!   _temp_951 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_953:
!   if _temp_951 then goto _Label_950 else goto _Label_949
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_949
	jmp	_Label_950
_Label_949:
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
	jmp	_Label_954
_Label_950:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_955 = &waitingThreads
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
_Label_954:
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
	.word	_Label_956
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_957
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_958
	.word	-16
	.word	4
	.word	_Label_959
	.word	-9
	.word	1
	.word	_Label_960
	.word	-20
	.word	4
	.word	_Label_961
	.word	-24
	.word	4
	.word	0
_Label_956:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_957:
	.ascii	"Pself\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_959:
	.byte	'C'
	.ascii	"_temp_951\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_961:
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
_Label_3148:
	push	r0
	sub	r1,1,r1
	bne	_Label_3148
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_963		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_963
!	jmp	_Label_962
_Label_962:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_964 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_964  sizeInBytes=4
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
_Label_963:
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
!   _temp_965 = &waitingThreads
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
!   if t == 0 then goto _Label_967		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_967
!	jmp	_Label_966
_Label_966:
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
!   _temp_968 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_968 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_969 = &_P_Kernel_readyList
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
	jmp	_Label_970
_Label_967:
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
_Label_970:
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
	.word	_Label_971
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_972
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_978
	.word	-32
	.word	4
	.word	0
_Label_971:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_972:
	.ascii	"Pself\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_977:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_978:
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
_Label_3149:
	push	r0
	sub	r1,1,r1
	bne	_Label_3149
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_981		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_981
!	jmp	_Label_980
_Label_980:
!   _temp_979 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_982
_Label_981:
!   _temp_979 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_982:
!   ReturnResult: _temp_979  (sizeInBytes=1)
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
	.word	_Label_983
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_984
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_985
	.word	-9
	.word	1
	.word	0
_Label_983:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_984:
	.ascii	"Pself\0"
	.align
_Label_985:
	.byte	'C'
	.ascii	"_temp_979\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_986
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_986:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_987
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_987:
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
_Label_3150:
	push	r0
	sub	r1,1,r1
	bne	_Label_3150
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
	.word	_Label_989
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_990
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_991
	.word	-12
	.word	4
	.word	0
_Label_989:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_990:
	.ascii	"Pself\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_988\0"
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
_Label_3151:
	push	r0
	sub	r1,1,r1
	bne	_Label_3151
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
!   Retrieve Result: targetName=_temp_994  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_994 then goto _Label_993 else goto _Label_992
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_992
	jmp	_Label_993
_Label_992:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_995 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_995  sizeInBytes=4
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
_Label_993:
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
!   _temp_996 = &waitingThreads
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
	.word	_Label_997
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_998
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_999
	.word	12
	.word	4
	.word	_Label_1000
	.word	-16
	.word	4
	.word	_Label_1001
	.word	-20
	.word	4
	.word	_Label_1002
	.word	-9
	.word	1
	.word	_Label_1003
	.word	-24
	.word	4
	.word	0
_Label_997:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_998:
	.ascii	"Pself\0"
	.align
_Label_999:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1002:
	.byte	'C'
	.ascii	"_temp_994\0"
	.align
_Label_1003:
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
_Label_3152:
	push	r0
	sub	r1,1,r1
	bne	_Label_3152
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
!   Retrieve Result: targetName=_temp_1006  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1006 then goto _Label_1005 else goto _Label_1004
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1004
	jmp	_Label_1005
_Label_1004:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1007 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1007  sizeInBytes=4
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
_Label_1005:
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
!   _temp_1008 = &waitingThreads
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
!   if t == 0 then goto _Label_1010		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1010
!	jmp	_Label_1009
_Label_1009:
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
!   _temp_1011 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1011 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_1012 = &_P_Kernel_readyList
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
_Label_1010:
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
	.word	_Label_1013
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1014
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1015
	.word	12
	.word	4
	.word	_Label_1016
	.word	-16
	.word	4
	.word	_Label_1017
	.word	-20
	.word	4
	.word	_Label_1018
	.word	-24
	.word	4
	.word	_Label_1019
	.word	-28
	.word	4
	.word	_Label_1020
	.word	-9
	.word	1
	.word	_Label_1021
	.word	-32
	.word	4
	.word	_Label_1022
	.word	-36
	.word	4
	.word	0
_Label_1013:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1014:
	.ascii	"Pself\0"
	.align
_Label_1015:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1020:
	.byte	'C'
	.ascii	"_temp_1006\0"
	.align
_Label_1021:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1022:
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
_Label_3153:
	push	r0
	sub	r1,1,r1
	bne	_Label_3153
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
!   Retrieve Result: targetName=_temp_1025  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1025 then goto _Label_1024 else goto _Label_1023
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1023
	jmp	_Label_1024
_Label_1023:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1026 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1026  sizeInBytes=4
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
_Label_1024:
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
_Label_1027:
!	jmp	_Label_1028
_Label_1028:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_1030 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1031
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1031
	jmp	_Label_1032
_Label_1031:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_1029
! END IF...
_Label_1032:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1033 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1033 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_1034 = &_P_Kernel_readyList
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
	jmp	_Label_1027
_Label_1029:
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
	.word	_Label_1035
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1036
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1037
	.word	12
	.word	4
	.word	_Label_1038
	.word	-16
	.word	4
	.word	_Label_1039
	.word	-20
	.word	4
	.word	_Label_1040
	.word	-24
	.word	4
	.word	_Label_1041
	.word	-28
	.word	4
	.word	_Label_1042
	.word	-9
	.word	1
	.word	_Label_1043
	.word	-32
	.word	4
	.word	_Label_1044
	.word	-36
	.word	4
	.word	0
_Label_1035:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1036:
	.ascii	"Pself\0"
	.align
_Label_1037:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1042:
	.byte	'C'
	.ascii	"_temp_1025\0"
	.align
_Label_1043:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1044:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1045
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
_Label_1045:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1046
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1046:
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
_Label_3154:
	push	r0
	sub	r1,1,r1
	bne	_Label_3154
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
!   _temp_1047 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1047) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1047 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_1048 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1048 [0 ] into _temp_1049
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
!   Data Move: *_temp_1049 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1050 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1050 [999 ] into _temp_1051
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
!   Data Move: *_temp_1051 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1052 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1052 [999 ] into _temp_1053
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
!   stackTop = _temp_1053		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1054 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1056 = &_temp_1055
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1056 = _temp_1056 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1058:
!   Data Move: *_temp_1056 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1056 = _temp_1056 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1057 = _temp_1057 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1057) then goto _Label_1058
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1058
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1059 = &_temp_1055
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3155
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3155:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1054 = *_temp_1059  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3156:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3156
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
!   _temp_1060 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1062 = &_temp_1061
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1062 = _temp_1062 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1064:
!   Data Move: *_temp_1062 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1062 = _temp_1062 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1063 = _temp_1063 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1063) then goto _Label_1064
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1064
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1065 = &_temp_1061
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3157
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3157:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1060 = *_temp_1065  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3158:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3158
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
	.word	_Label_1066
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1067
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1068
	.word	12
	.word	4
	.word	_Label_1069
	.word	-12
	.word	4
	.word	_Label_1070
	.word	-16
	.word	4
	.word	_Label_1071
	.word	-20
	.word	4
	.word	_Label_1072
	.word	-84
	.word	64
	.word	_Label_1073
	.word	-88
	.word	4
	.word	_Label_1074
	.word	-92
	.word	4
	.word	_Label_1075
	.word	-96
	.word	4
	.word	_Label_1076
	.word	-100
	.word	4
	.word	_Label_1077
	.word	-156
	.word	56
	.word	_Label_1078
	.word	-160
	.word	4
	.word	_Label_1079
	.word	-164
	.word	4
	.word	_Label_1080
	.word	-168
	.word	4
	.word	_Label_1081
	.word	-172
	.word	4
	.word	_Label_1082
	.word	-176
	.word	4
	.word	_Label_1083
	.word	-180
	.word	4
	.word	_Label_1084
	.word	-184
	.word	4
	.word	_Label_1085
	.word	-188
	.word	4
	.word	0
_Label_1066:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1067:
	.ascii	"Pself\0"
	.align
_Label_1068:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1065\0"
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
	.ascii	"_temp_1057\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1047\0"
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
_Label_3159:
	push	r0
	sub	r1,1,r1
	bne	_Label_3159
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
!   _temp_1086 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1086  (sizeInBytes=4)
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
!   _temp_1088 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1087  sizeInBytes=4
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
	.word	_Label_1089
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1090
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1091
	.word	12
	.word	4
	.word	_Label_1092
	.word	16
	.word	4
	.word	_Label_1093
	.word	-12
	.word	4
	.word	_Label_1094
	.word	-16
	.word	4
	.word	_Label_1095
	.word	-20
	.word	4
	.word	_Label_1096
	.word	-24
	.word	4
	.word	_Label_1097
	.word	-28
	.word	4
	.word	0
_Label_1089:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1090:
	.ascii	"Pself\0"
	.align
_Label_1091:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1092:
	.byte	'I'
	.ascii	"arg\0"
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
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1097:
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
_Label_3160:
	push	r0
	sub	r1,1,r1
	bne	_Label_3160
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1100 == _P_Kernel_currentThread then goto _Label_1099		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1099
!	jmp	_Label_1098
_Label_1098:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1101 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1101  sizeInBytes=4
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
_Label_1099:
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
!   _temp_1102 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1104		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1104
!	jmp	_Label_1103
_Label_1103:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1106		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1106
!	jmp	_Label_1105
_Label_1105:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1107 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1107  sizeInBytes=4
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
_Label_1106:
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
!   _temp_1109 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1108  sizeInBytes=4
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
_Label_1104:
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
	.word	_Label_1110
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1111
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1112
	.word	-12
	.word	4
	.word	_Label_1113
	.word	-16
	.word	4
	.word	_Label_1114
	.word	-20
	.word	4
	.word	_Label_1115
	.word	-24
	.word	4
	.word	_Label_1116
	.word	-28
	.word	4
	.word	_Label_1117
	.word	-32
	.word	4
	.word	_Label_1118
	.word	-36
	.word	4
	.word	_Label_1119
	.word	-40
	.word	4
	.word	_Label_1120
	.word	-44
	.word	4
	.word	0
_Label_1110:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1111:
	.ascii	"Pself\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1118:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1119:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1120:
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
_Label_3161:
	push	r0
	sub	r1,1,r1
	bne	_Label_3161
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1122		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1122
!	jmp	_Label_1121
_Label_1121:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1123 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1123  sizeInBytes=4
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
_Label_1122:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1126 == _P_Kernel_currentThread then goto _Label_1125		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1125
!	jmp	_Label_1124
_Label_1124:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1127 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1127  sizeInBytes=4
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
_Label_1125:
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
!   _temp_1128 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1129
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1129
	jmp	_Label_1130
_Label_1129:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1131 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1131  sizeInBytes=4
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
_Label_1130:
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
	.word	_Label_1132
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1133
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1134
	.word	-12
	.word	4
	.word	_Label_1135
	.word	-16
	.word	4
	.word	_Label_1136
	.word	-20
	.word	4
	.word	_Label_1137
	.word	-24
	.word	4
	.word	_Label_1138
	.word	-28
	.word	4
	.word	_Label_1139
	.word	-32
	.word	4
	.word	0
_Label_1132:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1133:
	.ascii	"Pself\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1139:
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
_Label_3162:
	push	r0
	sub	r1,1,r1
	bne	_Label_3162
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_1143 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1143 [0 ] into _temp_1144
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
!   Data Move: _temp_1142 = *_temp_1144  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1142 == 606348324 then goto _Label_1141		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1141
!	jmp	_Label_1140
_Label_1140:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1145 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1145  sizeInBytes=4
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
	jmp	_Label_1146
_Label_1141:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_1150 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1150 [999 ] into _temp_1151
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
!   Data Move: _temp_1149 = *_temp_1151  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1149 == 606348324 then goto _Label_1148		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1148
!	jmp	_Label_1147
_Label_1147:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1152 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1152  sizeInBytes=4
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
_Label_1148:
! END IF...
_Label_1146:
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
	.word	_Label_1153
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1154
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1155
	.word	-12
	.word	4
	.word	_Label_1156
	.word	-16
	.word	4
	.word	_Label_1157
	.word	-20
	.word	4
	.word	_Label_1158
	.word	-24
	.word	4
	.word	_Label_1159
	.word	-28
	.word	4
	.word	_Label_1160
	.word	-32
	.word	4
	.word	_Label_1161
	.word	-36
	.word	4
	.word	_Label_1162
	.word	-40
	.word	4
	.word	0
_Label_1153:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1154:
	.ascii	"Pself\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1142\0"
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
_Label_3163:
	push	r0
	sub	r1,1,r1
	bne	_Label_3163
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
!   _temp_1163 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1163  sizeInBytes=4
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
!   _temp_1164 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1164  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1165  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1166 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1166  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1167 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1167  sizeInBytes=4
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
!   _temp_1172 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1173 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1172  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1168:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1173 then goto _Label_1171		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1171
_Label_1169:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1174 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1174  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1175 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1175  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1176 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1176  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1178 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1178 [i ] into _temp_1179
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
!   Data Move: _temp_1177 = *_temp_1179  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1177  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1180 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1180  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1182 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1182 [i ] into _temp_1183
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
!   Data Move: _temp_1181 = *_temp_1183  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1181  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1184 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1184  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1170:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1168
! END FOR
_Label_1171:
! CALL STATEMENT...
!   _temp_1185 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-116]
!   _temp_1186 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1185  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1186  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1187 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-108]
!   _temp_1189 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1189 [0 ] into _temp_1190
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
!   _temp_1188 = _temp_1190		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1187  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1188  sizeInBytes=4
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
	be	_Label_1193
	cmp	r1,2
	be	_Label_1194
	cmp	r1,3
	be	_Label_1195
	cmp	r1,4
	be	_Label_1196
	cmp	r1,5
	be	_Label_1197
	jmp	_Label_1191
! CASE 1...
_Label_1193:
! CALL STATEMENT...
!   _temp_1198 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1198  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_1192
! CASE 2...
_Label_1194:
! CALL STATEMENT...
!   _temp_1199 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1199  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_1192
! CASE 3...
_Label_1195:
! CALL STATEMENT...
!   _temp_1200 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1200  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_1192
! CASE 4...
_Label_1196:
! CALL STATEMENT...
!   _temp_1201 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1201  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_1192
! CASE 5...
_Label_1197:
! CALL STATEMENT...
!   _temp_1202 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1202  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_1192
! DEFAULT CASE...
_Label_1191:
! CALL STATEMENT...
!   _temp_1203 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1203  sizeInBytes=4
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
_Label_1192:
! CALL STATEMENT...
!   _temp_1204 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1204  sizeInBytes=4
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
!   _temp_1205 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1205  sizeInBytes=4
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
!   _temp_1210 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1211 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1210  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1206:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1211 then goto _Label_1209		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1209
_Label_1207:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1212 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1212  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1213 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1213  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1214 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1214  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1216 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1216 [i ] into _temp_1217
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
!   Data Move: _temp_1215 = *_temp_1217  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1215  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1218 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1218  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1220 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1220 [i ] into _temp_1221
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
!   Data Move: _temp_1219 = *_temp_1221  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1219  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1222 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1222  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1208:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1206
! END FOR
_Label_1209:
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
	.word	_Label_1223
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1224
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1225
	.word	-12
	.word	4
	.word	_Label_1226
	.word	-16
	.word	4
	.word	_Label_1227
	.word	-20
	.word	4
	.word	_Label_1228
	.word	-24
	.word	4
	.word	_Label_1229
	.word	-28
	.word	4
	.word	_Label_1230
	.word	-32
	.word	4
	.word	_Label_1231
	.word	-36
	.word	4
	.word	_Label_1232
	.word	-40
	.word	4
	.word	_Label_1233
	.word	-44
	.word	4
	.word	_Label_1234
	.word	-48
	.word	4
	.word	_Label_1235
	.word	-52
	.word	4
	.word	_Label_1236
	.word	-56
	.word	4
	.word	_Label_1237
	.word	-60
	.word	4
	.word	_Label_1238
	.word	-64
	.word	4
	.word	_Label_1239
	.word	-68
	.word	4
	.word	_Label_1240
	.word	-72
	.word	4
	.word	_Label_1241
	.word	-76
	.word	4
	.word	_Label_1242
	.word	-80
	.word	4
	.word	_Label_1243
	.word	-84
	.word	4
	.word	_Label_1244
	.word	-88
	.word	4
	.word	_Label_1245
	.word	-92
	.word	4
	.word	_Label_1246
	.word	-96
	.word	4
	.word	_Label_1247
	.word	-100
	.word	4
	.word	_Label_1248
	.word	-104
	.word	4
	.word	_Label_1249
	.word	-108
	.word	4
	.word	_Label_1250
	.word	-112
	.word	4
	.word	_Label_1251
	.word	-116
	.word	4
	.word	_Label_1252
	.word	-120
	.word	4
	.word	_Label_1253
	.word	-124
	.word	4
	.word	_Label_1254
	.word	-128
	.word	4
	.word	_Label_1255
	.word	-132
	.word	4
	.word	_Label_1256
	.word	-136
	.word	4
	.word	_Label_1257
	.word	-140
	.word	4
	.word	_Label_1258
	.word	-144
	.word	4
	.word	_Label_1259
	.word	-148
	.word	4
	.word	_Label_1260
	.word	-152
	.word	4
	.word	_Label_1261
	.word	-156
	.word	4
	.word	_Label_1262
	.word	-160
	.word	4
	.word	_Label_1263
	.word	-164
	.word	4
	.word	_Label_1264
	.word	-168
	.word	4
	.word	_Label_1265
	.word	-172
	.word	4
	.word	_Label_1266
	.word	-176
	.word	4
	.word	_Label_1267
	.word	-180
	.word	4
	.word	_Label_1268
	.word	-184
	.word	4
	.word	_Label_1269
	.word	-188
	.word	4
	.word	_Label_1270
	.word	-192
	.word	4
	.word	_Label_1271
	.word	-196
	.word	4
	.word	0
_Label_1223:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1224:
	.ascii	"Pself\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1270:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1271:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1272
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1272:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1273
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1273:
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
_Label_3164:
	push	r0
	sub	r1,1,r1
	bne	_Label_3164
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1274 = _StringConst_99
	set	_StringConst_99,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1274  sizeInBytes=4
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
!   _temp_1275 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1277 = &_temp_1276
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1277 = _temp_1277 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1279 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3165:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3165
!   _temp_1279 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1281:
!   Data Move: *_temp_1277 = _temp_1279  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3166:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3166
!   _temp_1277 = _temp_1277 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1278 = _temp_1278 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1278) then goto _Label_1281
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1281
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1282 = &_temp_1276
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3167
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3167:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1275 = *_temp_1282  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3168:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3168
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
!   _temp_1286 = &threadManagerLock
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
!   _temp_1287 = &aThreadBecomeFree
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
!   _temp_1292 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1293 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1292  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1288:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1293 then goto _Label_1291		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1291
_Label_1289:
	mov	702,r13		! source line 702
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0SE",r10
!   _temp_1294 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-48]
!   _temp_1295 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1295 [i ] into _temp_1296
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
!   Prepare Argument: offset=12  value=_temp_1294  sizeInBytes=4
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
!   _temp_1298 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1298 [i ] into _temp_1299
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
!   _temp_1297 = _temp_1299		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1300 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1297  sizeInBytes=4
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
!   _temp_1301 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1301 [i ] into _temp_1302
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
!   _temp_1303 = _temp_1302 + 76
	load	[r14+-16],r1
	add	r1,76,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1303 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-12],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1290:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1288
! END FOR
_Label_1291:
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
	.word	_Label_1304
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1305
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1306
	.word	-12
	.word	4
	.word	_Label_1307
	.word	-16
	.word	4
	.word	_Label_1308
	.word	-20
	.word	4
	.word	_Label_1309
	.word	-24
	.word	4
	.word	_Label_1310
	.word	-28
	.word	4
	.word	_Label_1311
	.word	-32
	.word	4
	.word	_Label_1312
	.word	-36
	.word	4
	.word	_Label_1313
	.word	-40
	.word	4
	.word	_Label_1314
	.word	-44
	.word	4
	.word	_Label_1315
	.word	-48
	.word	4
	.word	_Label_1316
	.word	-52
	.word	4
	.word	_Label_1317
	.word	-56
	.word	4
	.word	_Label_1318
	.word	-60
	.word	4
	.word	_Label_1319
	.word	-64
	.word	4
	.word	_Label_1320
	.word	-68
	.word	4
	.word	_Label_1321
	.word	-72
	.word	4
	.word	_Label_1322
	.word	-76
	.word	4
	.word	_Label_1323
	.word	-80
	.word	4
	.word	_Label_1324
	.word	-84
	.word	4
	.word	_Label_1325
	.word	-4248
	.word	4164
	.word	_Label_1326
	.word	-4252
	.word	4
	.word	_Label_1327
	.word	-4256
	.word	4
	.word	_Label_1328
	.word	-45900
	.word	41644
	.word	_Label_1329
	.word	-45904
	.word	4
	.word	_Label_1330
	.word	-45908
	.word	4
	.word	_Label_1331
	.word	-45912
	.word	4
	.word	0
_Label_1304:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1305:
	.ascii	"Pself\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1331:
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
_Label_3169:
	push	r0
	sub	r1,1,r1
	bne	_Label_3169
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
!   _temp_1332 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1332  sizeInBytes=4
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
!   _temp_1337 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1338 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1337  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1333:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1338 then goto _Label_1336		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1336
_Label_1334:
	mov	720,r13		! source line 720
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1339 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1339  sizeInBytes=4
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
!   _temp_1340 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1340  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1342 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1342 [i ] into _temp_1343
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
!   _temp_1341 = _temp_1343		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1341  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CA",r10
	call	_function_208_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1335:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1333
! END FOR
_Label_1336:
! CALL STATEMENT...
!   _temp_1344 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1344  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0SE",r10
!   _temp_1345 = _function_207_PrintObjectAddr
	set	_function_207_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1346 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1345  sizeInBytes=4
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
	.word	_Label_1347
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1348
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1349
	.word	-12
	.word	4
	.word	_Label_1350
	.word	-16
	.word	4
	.word	_Label_1351
	.word	-20
	.word	4
	.word	_Label_1352
	.word	-24
	.word	4
	.word	_Label_1353
	.word	-28
	.word	4
	.word	_Label_1354
	.word	-32
	.word	4
	.word	_Label_1355
	.word	-36
	.word	4
	.word	_Label_1356
	.word	-40
	.word	4
	.word	_Label_1357
	.word	-44
	.word	4
	.word	_Label_1358
	.word	-48
	.word	4
	.word	_Label_1359
	.word	-52
	.word	4
	.word	_Label_1360
	.word	-56
	.word	4
	.word	_Label_1361
	.word	-60
	.word	4
	.word	0
_Label_1347:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1348:
	.ascii	"Pself\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1360:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1361:
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
_Label_3170:
	push	r0
	sub	r1,1,r1
	bne	_Label_3170
	mov	734,r13		! source line 734
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0SE",r10
!   _temp_1362 = &threadManagerLock
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
_Label_1363:
	mov	741,r13		! source line 741
	mov	"\0\0SE",r10
!   _temp_1366 = &freeList
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
!   if result==true then goto _Label_1364 else goto _Label_1365
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1365
	jmp	_Label_1364
_Label_1364:
	mov	741,r13		! source line 741
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0SE",r10
!   _temp_1367 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   _temp_1368 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1367  sizeInBytes=4
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
	jmp	_Label_1363
_Label_1365:
! ASSIGNMENT STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0AS",r10
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_1369 = &freeList
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
!   _temp_1370 = tmp + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1370 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1371) then goto _runtimeErrorNullPointer
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
!   _temp_1372 = &threadManagerLock
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
	.word	_Label_1373
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1374
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1375
	.word	-12
	.word	4
	.word	_Label_1376
	.word	-16
	.word	4
	.word	_Label_1377
	.word	-20
	.word	4
	.word	_Label_1378
	.word	-24
	.word	4
	.word	_Label_1379
	.word	-28
	.word	4
	.word	_Label_1380
	.word	-32
	.word	4
	.word	_Label_1381
	.word	-36
	.word	4
	.word	_Label_1382
	.word	-40
	.word	4
	.word	_Label_1383
	.word	-44
	.word	4
	.word	0
_Label_1373:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1374:
	.ascii	"Pself\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1383:
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
_Label_3171:
	push	r0
	sub	r1,1,r1
	bne	_Label_3171
	mov	753,r13		! source line 753
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0SE",r10
!   _temp_1384 = &threadManagerLock
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
!   _temp_1385 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1385 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0SE",r10
!   _temp_1386 = &freeList
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
!   if intIsZero (_temp_1387) then goto _runtimeErrorNullPointer
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
!   _temp_1388 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1389 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1388  sizeInBytes=4
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
!   _temp_1390 = &threadManagerLock
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
	.word	_Label_1391
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1392
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1393
	.word	12
	.word	4
	.word	_Label_1394
	.word	-12
	.word	4
	.word	_Label_1395
	.word	-16
	.word	4
	.word	_Label_1396
	.word	-20
	.word	4
	.word	_Label_1397
	.word	-24
	.word	4
	.word	_Label_1398
	.word	-28
	.word	4
	.word	_Label_1399
	.word	-32
	.word	4
	.word	_Label_1400
	.word	-36
	.word	4
	.word	0
_Label_1391:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1392:
	.ascii	"Pself\0"
	.align
_Label_1393:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1401
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1401:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1402
	.word	_sourceFileName
	.word	213		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1402:
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
_Label_3172:
	push	r0
	sub	r1,1,r1
	bne	_Label_3172
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
_Label_3173:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3173
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_1404 = &addrSpace
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
	.word	_Label_1405
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1406
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1407
	.word	-12
	.word	4
	.word	_Label_1408
	.word	-16
	.word	4
	.word	0
_Label_1405:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1406:
	.ascii	"Pself\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1403\0"
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
_Label_3174:
	push	r0
	sub	r1,1,r1
	bne	_Label_3174
	mov	790,r13		! source line 790
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1409) then goto _runtimeErrorNullPointer
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
!   _temp_1410 = &addrSpace
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
!   _temp_1411 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1411  sizeInBytes=4
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
	.word	_Label_1412
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1413
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1414
	.word	-12
	.word	4
	.word	_Label_1415
	.word	-16
	.word	4
	.word	_Label_1416
	.word	-20
	.word	4
	.word	0
_Label_1412:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1413:
	.ascii	"Pself\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1409\0"
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
_Label_3175:
	push	r0
	sub	r1,1,r1
	bne	_Label_3175
	mov	813,r13		! source line 813
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1417 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1417  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1418  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1419 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1419  sizeInBytes=4
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
!   _temp_1420 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1420  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1422		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1422
!	jmp	_Label_1421
_Label_1421:
! THEN...
	mov	823,r13		! source line 823
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1423 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1423  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1424
_Label_1422:
! ELSE...
	mov	824,r13		! source line 824
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1426		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1426
!	jmp	_Label_1425
_Label_1425:
! THEN...
	mov	825,r13		! source line 825
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1427 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1427  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1428
_Label_1426:
! ELSE...
	mov	826,r13		! source line 826
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1430		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1430
!	jmp	_Label_1429
_Label_1429:
! THEN...
	mov	827,r13		! source line 827
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1431 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1431  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1432
_Label_1430:
! ELSE...
	mov	829,r13		! source line 829
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1433 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1433  sizeInBytes=4
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
_Label_1432:
! END IF...
_Label_1428:
! END IF...
_Label_1424:
! CALL STATEMENT...
!   _temp_1434 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1434  sizeInBytes=4
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
!   _temp_1435 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1435  sizeInBytes=4
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
	.word	_Label_1436
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1437
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1438
	.word	-12
	.word	4
	.word	_Label_1439
	.word	-16
	.word	4
	.word	_Label_1440
	.word	-20
	.word	4
	.word	_Label_1441
	.word	-24
	.word	4
	.word	_Label_1442
	.word	-28
	.word	4
	.word	_Label_1443
	.word	-32
	.word	4
	.word	_Label_1444
	.word	-36
	.word	4
	.word	_Label_1445
	.word	-40
	.word	4
	.word	_Label_1446
	.word	-44
	.word	4
	.word	_Label_1447
	.word	-48
	.word	4
	.word	0
_Label_1436:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1437:
	.ascii	"Pself\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1448
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1448:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1449
	.word	_sourceFileName
	.word	233		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1449:
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
_Label_3176:
	push	r0
	sub	r1,1,r1
	bne	_Label_3176
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0AS",r10
!   _temp_1450 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1456]
!   NEW ARRAY Constructor...
!   _temp_1452 = &_temp_1451
	add	r14,-1452,r1
	store	r1,[r14+-208]
!   _temp_1452 = _temp_1452 + 4
	load	[r14+-208],r1
	add	r1,4,r1
	store	r1,[r14+-208]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1454 = zeros  (sizeInBytes=124)
	add	r14,-200,r4
	mov	31,r3
_Label_3177:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3177
!   _temp_1454 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-200]
	mov	10,r1
	store	r1,[r14+-204]
_Label_1456:
!   Data Move: *_temp_1452 = _temp_1454  (sizeInBytes=124)
	add	r14,-200,r5
	load	[r14+-208],r4
	mov	31,r3
_Label_3178:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3178
!   _temp_1452 = _temp_1452 + 124
	load	[r14+-208],r1
	add	r1,124,r1
	store	r1,[r14+-208]
!   _temp_1453 = _temp_1453 + -1
	load	[r14+-204],r1
	add	r1,-1,r1
	store	r1,[r14+-204]
!   if intNotZero (_temp_1453) then goto _Label_1456
	load	[r14+-204],r1
	cmp	r1,r0
	bne	_Label_1456
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1452]
!   _temp_1457 = &_temp_1451
	add	r14,-1452,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	load	[r14+-1456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3179
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3179:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1450 = *_temp_1457  (sizeInBytes=1244)
	load	[r14+-72],r5
	load	[r14+-1456],r4
	mov	311,r3
_Label_3180:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3180
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
!   _temp_1460 = &processManagerLock
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
!   _temp_1461 = &aProcessBecameFree
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
!   _temp_1464 = &aProcessDied
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
!   _temp_1469 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1470 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1469  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-1460]
_Label_1465:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1470 then goto _Label_1468		
	load	[r14+-1460],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1468
_Label_1466:
	mov	860,r13		! source line 860
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0SE",r10
!   _temp_1471 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1471 [i ] into _temp_1472
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
!   _temp_1474 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1474 [i ] into _temp_1475
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
!   _temp_1473 = _temp_1475		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1476 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1473  sizeInBytes=4
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
_Label_1467:
!   i = i + 1
	load	[r14+-1460],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1460]
	jmp	_Label_1465
! END FOR
_Label_1468:
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
	.word	_Label_1477
	.word	4		! total size of parameters
	.word	1460		! frame size = 1460
	.word	_Label_1478
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1479
	.word	-12
	.word	4
	.word	_Label_1480
	.word	-16
	.word	4
	.word	_Label_1481
	.word	-20
	.word	4
	.word	_Label_1482
	.word	-24
	.word	4
	.word	_Label_1483
	.word	-28
	.word	4
	.word	_Label_1484
	.word	-32
	.word	4
	.word	_Label_1485
	.word	-36
	.word	4
	.word	_Label_1486
	.word	-40
	.word	4
	.word	_Label_1487
	.word	-44
	.word	4
	.word	_Label_1488
	.word	-48
	.word	4
	.word	_Label_1489
	.word	-52
	.word	4
	.word	_Label_1490
	.word	-56
	.word	4
	.word	_Label_1491
	.word	-60
	.word	4
	.word	_Label_1492
	.word	-64
	.word	4
	.word	_Label_1493
	.word	-68
	.word	4
	.word	_Label_1494
	.word	-72
	.word	4
	.word	_Label_1495
	.word	-76
	.word	4
	.word	_Label_1496
	.word	-200
	.word	124
	.word	_Label_1497
	.word	-204
	.word	4
	.word	_Label_1498
	.word	-208
	.word	4
	.word	_Label_1499
	.word	-1452
	.word	1244
	.word	_Label_1500
	.word	-1456
	.word	4
	.word	_Label_1501
	.word	-1460
	.word	4
	.word	0
_Label_1477:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1478:
	.ascii	"Pself\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1501:
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
_Label_3181:
	push	r0
	sub	r1,1,r1
	bne	_Label_3181
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
!   _temp_1502 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1502  sizeInBytes=4
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
!   _temp_1507 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1508 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1507  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1503:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1508 then goto _Label_1506		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1506
_Label_1504:
	mov	877,r13		! source line 877
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1509 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1509  sizeInBytes=4
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
!   _temp_1510 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1510  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0SE",r10
!   _temp_1511 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1511 [i ] into _temp_1512
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
_Label_1505:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1503
! END FOR
_Label_1506:
! CALL STATEMENT...
!   _temp_1513 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1513  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0SE",r10
!   _temp_1514 = _function_207_PrintObjectAddr
	set	_function_207_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1515 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1514  sizeInBytes=4
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
	.word	_Label_1516
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1517
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1518
	.word	-12
	.word	4
	.word	_Label_1519
	.word	-16
	.word	4
	.word	_Label_1520
	.word	-20
	.word	4
	.word	_Label_1521
	.word	-24
	.word	4
	.word	_Label_1522
	.word	-28
	.word	4
	.word	_Label_1523
	.word	-32
	.word	4
	.word	_Label_1524
	.word	-36
	.word	4
	.word	_Label_1525
	.word	-40
	.word	4
	.word	_Label_1526
	.word	-44
	.word	4
	.word	_Label_1527
	.word	-48
	.word	4
	.word	_Label_1528
	.word	-52
	.word	4
	.word	_Label_1529
	.word	-56
	.word	4
	.word	0
_Label_1516:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1517:
	.ascii	"Pself\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1528:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1529:
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
_Label_3182:
	push	r0
	sub	r1,1,r1
	bne	_Label_3182
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
!   _temp_1530 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1530  sizeInBytes=4
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
!   _temp_1535 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1536 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1535  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1531:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1536 then goto _Label_1534		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1534
_Label_1532:
	mov	900,r13		! source line 900
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1537 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1537  sizeInBytes=4
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
!   _temp_1538 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1538 [i ] into _temp_1539
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
_Label_1533:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1531
! END FOR
_Label_1534:
! CALL STATEMENT...
!   _temp_1540 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1540  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_1541 = _function_207_PrintObjectAddr
	set	_function_207_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1542 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1541  sizeInBytes=4
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
	.word	_Label_1543
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1544
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1545
	.word	-12
	.word	4
	.word	_Label_1546
	.word	-16
	.word	4
	.word	_Label_1547
	.word	-20
	.word	4
	.word	_Label_1548
	.word	-24
	.word	4
	.word	_Label_1549
	.word	-28
	.word	4
	.word	_Label_1550
	.word	-32
	.word	4
	.word	_Label_1551
	.word	-36
	.word	4
	.word	_Label_1552
	.word	-40
	.word	4
	.word	_Label_1553
	.word	-44
	.word	4
	.word	_Label_1554
	.word	-48
	.word	4
	.word	_Label_1555
	.word	-52
	.word	4
	.word	0
_Label_1543:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1544:
	.ascii	"Pself\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1554:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1555:
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
_Label_3183:
	push	r0
	sub	r1,1,r1
	bne	_Label_3183
	mov	913,r13		! source line 913
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0SE",r10
!   _temp_1556 = &processManagerLock
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
!   if intIsZero (_temp_1557) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1558 = _temp_1557 + 1312
	load	[r14+-72],r1
	add	r1,1312,r1
	store	r1,[r14+-68]
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1561) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1562 = _temp_1561 + 1312
	load	[r14+-56],r1
	add	r1,1312,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1560 = *_temp_1562  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_1559 = _temp_1560 + 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Data Move: *_temp_1558 = _temp_1559  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r14+-68],r2
	store	r1,[r2]
! WHILE STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0WH",r10
_Label_1563:
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_1566 = &freeList
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
!   if result==true then goto _Label_1564 else goto _Label_1565
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1565
	jmp	_Label_1564
_Label_1564:
	mov	921,r13		! source line 921
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0SE",r10
!   _temp_1567 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-44]
!   _temp_1568 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1567  sizeInBytes=4
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
	jmp	_Label_1563
_Label_1565:
! ASSIGNMENT STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0AS",r10
	mov	924,r13		! source line 924
	mov	"\0\0SE",r10
!   _temp_1569 = &freeList
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
!   _temp_1570 = tmp + 20
	load	[r14+-80],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1570 = 1  (sizeInBytes=4)
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
!   _temp_1571 = tmp + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-28]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1573) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1574 = _temp_1573 + 1312
	load	[r14+-20],r1
	add	r1,1312,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1572 = *_temp_1574  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1571 = _temp_1572  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_1575 = &processManagerLock
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
	.word	_Label_1576
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_1577
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1578
	.word	-12
	.word	4
	.word	_Label_1579
	.word	-16
	.word	4
	.word	_Label_1580
	.word	-20
	.word	4
	.word	_Label_1581
	.word	-24
	.word	4
	.word	_Label_1582
	.word	-28
	.word	4
	.word	_Label_1583
	.word	-32
	.word	4
	.word	_Label_1584
	.word	-36
	.word	4
	.word	_Label_1585
	.word	-40
	.word	4
	.word	_Label_1586
	.word	-44
	.word	4
	.word	_Label_1587
	.word	-48
	.word	4
	.word	_Label_1588
	.word	-52
	.word	4
	.word	_Label_1589
	.word	-56
	.word	4
	.word	_Label_1590
	.word	-60
	.word	4
	.word	_Label_1591
	.word	-64
	.word	4
	.word	_Label_1592
	.word	-68
	.word	4
	.word	_Label_1593
	.word	-72
	.word	4
	.word	_Label_1594
	.word	-76
	.word	4
	.word	_Label_1595
	.word	-80
	.word	4
	.word	0
_Label_1576:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1577:
	.ascii	"Pself\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1575\0"
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
	.ascii	"_temp_1568\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1595:
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
_Label_3184:
	push	r0
	sub	r1,1,r1
	bne	_Label_3184
	mov	934,r13		! source line 934
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	939,r13		! source line 939
	mov	"\0\0SE",r10
!   _temp_1596 = &processManagerLock
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
!   _temp_1597 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1597 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	941,r13		! source line 941
	mov	"\0\0SE",r10
!   _temp_1598 = &freeList
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
!   _temp_1599 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-24]
!   _temp_1600 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1599  sizeInBytes=4
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
!   if intIsZero (_temp_1601) then goto _runtimeErrorNullPointer
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
!   _temp_1602 = &processManagerLock
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
	.word	_Label_1603
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1604
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1605
	.word	12
	.word	4
	.word	_Label_1606
	.word	-12
	.word	4
	.word	_Label_1607
	.word	-16
	.word	4
	.word	_Label_1608
	.word	-20
	.word	4
	.word	_Label_1609
	.word	-24
	.word	4
	.word	_Label_1610
	.word	-28
	.word	4
	.word	_Label_1611
	.word	-32
	.word	4
	.word	_Label_1612
	.word	-36
	.word	4
	.word	0
_Label_1603:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1604:
	.ascii	"Pself\0"
	.align
_Label_1605:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1613
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1613:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1614
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1614:
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
_Label_3185:
	push	r0
	sub	r1,1,r1
	bne	_Label_3185
	mov	977,r13		! source line 977
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1615 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1615  sizeInBytes=4
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
!   _temp_1617 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=512  sizeInBytes=4
	mov	512,r1
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
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
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
!   _temp_1619 = &frameManagerLock
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
!   _temp_1621 = &newFramesAvailable
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
!   _temp_1626 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1627 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1626  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1622:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1627 then goto _Label_1625		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1625
_Label_1623:
	mov	996,r13		! source line 996
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1630 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1630) then goto _Label_1629
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1629
!	jmp	_Label_1628
_Label_1628:
! THEN...
	mov	1000,r13		! source line 1000
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1631 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1631  sizeInBytes=4
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
_Label_1629:
!   Increment the FOR-LOOP index variable and jump back
_Label_1624:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1622
! END FOR
_Label_1625:
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
	.word	_Label_1632
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1633
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1634
	.word	-12
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
	.word	-32
	.word	4
	.word	_Label_1640
	.word	-36
	.word	4
	.word	_Label_1641
	.word	-40
	.word	4
	.word	_Label_1642
	.word	-44
	.word	4
	.word	_Label_1643
	.word	-48
	.word	4
	.word	_Label_1644
	.word	-52
	.word	4
	.word	_Label_1645
	.word	-56
	.word	4
	.word	0
_Label_1632:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1633:
	.ascii	"Pself\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1645:
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
_Label_3186:
	push	r0
	sub	r1,1,r1
	bne	_Label_3186
	mov	1007,r13		! source line 1007
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
!   _temp_1646 = &frameManagerLock
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
!   _temp_1647 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1647  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1012,r13		! source line 1012
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1648 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1648  sizeInBytes=4
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
!   _temp_1649 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1649  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1014,r13		! source line 1014
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0SE",r10
!   _temp_1650 = &framesInUse
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
!   _temp_1651 = &frameManagerLock
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
	.word	_Label_1652
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1653
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1654
	.word	-12
	.word	4
	.word	_Label_1655
	.word	-16
	.word	4
	.word	_Label_1656
	.word	-20
	.word	4
	.word	_Label_1657
	.word	-24
	.word	4
	.word	_Label_1658
	.word	-28
	.word	4
	.word	_Label_1659
	.word	-32
	.word	4
	.word	0
_Label_1652:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1653:
	.ascii	"Pself\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1646\0"
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
_Label_3187:
	push	r0
	sub	r1,1,r1
	bne	_Label_3187
	mov	1021,r13		! source line 1021
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0SE",r10
!   _temp_1660 = &frameManagerLock
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
_Label_1661:
!   if numberFreeFrames >= 1 then goto _Label_1663		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1663
!	jmp	_Label_1662
_Label_1662:
	mov	1032,r13		! source line 1032
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0SE",r10
!   _temp_1664 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1665 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1664  sizeInBytes=4
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
	jmp	_Label_1661
_Label_1663:
! ASSIGNMENT STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0AS",r10
	mov	1037,r13		! source line 1037
	mov	"\0\0SE",r10
!   _temp_1666 = &framesInUse
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
!   _temp_1667 = &frameManagerLock
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
!   _temp_1668 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1668		(int)
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
	.word	_Label_1669
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1670
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1671
	.word	-12
	.word	4
	.word	_Label_1672
	.word	-16
	.word	4
	.word	_Label_1673
	.word	-20
	.word	4
	.word	_Label_1674
	.word	-24
	.word	4
	.word	_Label_1675
	.word	-28
	.word	4
	.word	_Label_1676
	.word	-32
	.word	4
	.word	_Label_1677
	.word	-36
	.word	4
	.word	_Label_1678
	.word	-40
	.word	4
	.word	0
_Label_1669:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1670:
	.ascii	"Pself\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1677:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1678:
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
_Label_3188:
	push	r0
	sub	r1,1,r1
	bne	_Label_3188
	mov	1051,r13		! source line 1051
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1053,r13		! source line 1053
	mov	"\0\0SE",r10
!   _temp_1679 = &frameManagerLock
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
_Label_1680:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_1682		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1682
!	jmp	_Label_1681
_Label_1681:
	mov	1054,r13		! source line 1054
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0SE",r10
!   _temp_1683 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1684 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1683  sizeInBytes=4
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
	jmp	_Label_1680
_Label_1682:
! FOR STATEMENT...
	mov	1057,r13		! source line 1057
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1689 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1690 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1689  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1685:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1690 then goto _Label_1688		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1688
_Label_1686:
	mov	1057,r13		! source line 1057
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1058,r13		! source line 1058
	mov	"\0\0AS",r10
	mov	1058,r13		! source line 1058
	mov	"\0\0SE",r10
!   _temp_1691 = &framesInUse
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
!   _temp_1692 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1692		(int)
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
_Label_1687:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1685
! END FOR
_Label_1688:
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
!   _temp_1693 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1693 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_1694 = &frameManagerLock
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
	.word	_Label_1695
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1696
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1697
	.word	12
	.word	4
	.word	_Label_1698
	.word	16
	.word	4
	.word	_Label_1699
	.word	-12
	.word	4
	.word	_Label_1700
	.word	-16
	.word	4
	.word	_Label_1701
	.word	-20
	.word	4
	.word	_Label_1702
	.word	-24
	.word	4
	.word	_Label_1703
	.word	-28
	.word	4
	.word	_Label_1704
	.word	-32
	.word	4
	.word	_Label_1705
	.word	-36
	.word	4
	.word	_Label_1706
	.word	-40
	.word	4
	.word	_Label_1707
	.word	-44
	.word	4
	.word	_Label_1708
	.word	-48
	.word	4
	.word	_Label_1709
	.word	-52
	.word	4
	.word	_Label_1710
	.word	-56
	.word	4
	.word	0
_Label_1695:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1696:
	.ascii	"Pself\0"
	.align
_Label_1697:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1698:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1708:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1709:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1710:
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
_Label_3189:
	push	r0
	sub	r1,1,r1
	bne	_Label_3189
	mov	1069,r13		! source line 1069
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0SE",r10
!   _temp_1711 = &frameManagerLock
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
!   _temp_1716 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1719 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1718 = *_temp_1719  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1717 = _temp_1718 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1716  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_1712:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1717 then goto _Label_1715		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1715
_Label_1713:
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
!   _temp_1720 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1720 div 8192		(int)
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
!   _temp_1721 = &framesInUse
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
_Label_1714:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1712
! END FOR
_Label_1715:
! ASSIGNMENT STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1723 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1722 = *_temp_1723  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1722		(int)
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
!   _temp_1724 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1724 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0SE",r10
!   _temp_1725 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1726 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1725  sizeInBytes=4
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
!   _temp_1727 = &frameManagerLock
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
	.word	_Label_1728
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1729
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1730
	.word	12
	.word	4
	.word	_Label_1731
	.word	-12
	.word	4
	.word	_Label_1732
	.word	-16
	.word	4
	.word	_Label_1733
	.word	-20
	.word	4
	.word	_Label_1734
	.word	-24
	.word	4
	.word	_Label_1735
	.word	-28
	.word	4
	.word	_Label_1736
	.word	-32
	.word	4
	.word	_Label_1737
	.word	-36
	.word	4
	.word	_Label_1738
	.word	-40
	.word	4
	.word	_Label_1739
	.word	-44
	.word	4
	.word	_Label_1740
	.word	-48
	.word	4
	.word	_Label_1741
	.word	-52
	.word	4
	.word	_Label_1742
	.word	-56
	.word	4
	.word	_Label_1743
	.word	-60
	.word	4
	.word	_Label_1744
	.word	-64
	.word	4
	.word	_Label_1745
	.word	-68
	.word	4
	.word	_Label_1746
	.word	-72
	.word	4
	.word	0
_Label_1728:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1729:
	.ascii	"Pself\0"
	.align
_Label_1730:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1744:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1745:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1746:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1747
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
_Label_1747:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1748
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1748:
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
_Label_3190:
	push	r0
	sub	r1,1,r1
	bne	_Label_3190
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
!   _temp_1749 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1751 = &_temp_1750
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1751 = _temp_1751 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1753:
!   Data Move: *_temp_1751 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1751 = _temp_1751 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1752 = _temp_1752 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1752) then goto _Label_1753
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1753
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1754 = &_temp_1750
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3191
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3191:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1749 = *_temp_1754  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3192:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3192
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
	.word	_Label_1755
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1756
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1757
	.word	-12
	.word	4
	.word	_Label_1758
	.word	-16
	.word	4
	.word	_Label_1759
	.word	-20
	.word	4
	.word	_Label_1760
	.word	-104
	.word	84
	.word	_Label_1761
	.word	-108
	.word	4
	.word	0
_Label_1755:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1756:
	.ascii	"Pself\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1749\0"
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
_Label_3193:
	push	r0
	sub	r1,1,r1
	bne	_Label_3193
	mov	1101,r13		! source line 1101
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1762 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1762  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1106,r13		! source line 1106
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1763 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1763  sizeInBytes=4
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
!   _temp_1768 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1769 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1768  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1764:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1769 then goto _Label_1767		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1767
_Label_1765:
	mov	1108,r13		! source line 1108
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1770 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1770  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1109,r13		! source line 1109
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1772 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1772 [i ] into _temp_1773
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
!   _temp_1771 = _temp_1773		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1771  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1110,r13		! source line 1110
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1774 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1774  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1776 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1776 [i ] into _temp_1777
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
!   Data Move: _temp_1775 = *_temp_1777  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1775  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1112,r13		! source line 1112
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1778 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1778  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1113,r13		! source line 1113
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1779 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1779  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1114,r13		! source line 1114
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1780 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1780  sizeInBytes=4
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
!   if intIsZero (_temp_1782) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1781  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1781  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1116,r13		! source line 1116
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1783 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1783  sizeInBytes=4
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
!   if intIsZero (_temp_1787) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1786  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1786) then goto _Label_1785
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1785
!	jmp	_Label_1784
_Label_1784:
! THEN...
	mov	1119,r13		! source line 1119
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1119,r13		! source line 1119
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1789) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1788  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1788  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1119,r13		! source line 1119
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1790
_Label_1785:
! ELSE...
	mov	1121,r13		! source line 1121
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1791 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1791  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1121,r13		! source line 1121
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1790:
! CALL STATEMENT...
!   _temp_1792 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1792  sizeInBytes=4
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
!   if intIsZero (_temp_1795) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1793 else goto _Label_1794
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1794
	jmp	_Label_1793
_Label_1793:
! THEN...
	mov	1125,r13		! source line 1125
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1796 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1796  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1797
_Label_1794:
! ELSE...
	mov	1127,r13		! source line 1127
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1798 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1798  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1127,r13		! source line 1127
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1797:
! CALL STATEMENT...
!   _temp_1799 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1799  sizeInBytes=4
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
!   if intIsZero (_temp_1802) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1800 else goto _Label_1801
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1801
	jmp	_Label_1800
_Label_1800:
! THEN...
	mov	1131,r13		! source line 1131
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1803 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1803  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1131,r13		! source line 1131
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1804
_Label_1801:
! ELSE...
	mov	1133,r13		! source line 1133
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1805 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1805  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1133,r13		! source line 1133
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1804:
! CALL STATEMENT...
!   _temp_1806 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1806  sizeInBytes=4
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
!   if intIsZero (_temp_1809) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1807 else goto _Label_1808
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1808
	jmp	_Label_1807
_Label_1807:
! THEN...
	mov	1137,r13		! source line 1137
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1810 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1810  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1137,r13		! source line 1137
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1811
_Label_1808:
! ELSE...
	mov	1139,r13		! source line 1139
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1812 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1812  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1139,r13		! source line 1139
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1811:
! CALL STATEMENT...
!   _temp_1813 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1813  sizeInBytes=4
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
!   if intIsZero (_temp_1816) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1814 else goto _Label_1815
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1815
	jmp	_Label_1814
_Label_1814:
! THEN...
	mov	1143,r13		! source line 1143
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1817 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1817  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1143,r13		! source line 1143
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1818
_Label_1815:
! ELSE...
	mov	1145,r13		! source line 1145
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1819 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1819  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1145,r13		! source line 1145
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1818:
! CALL STATEMENT...
!   Call the function
	mov	1147,r13		! source line 1147
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1766:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1764
! END FOR
_Label_1767:
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
	.word	_Label_1820
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1821
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1822
	.word	-12
	.word	4
	.word	_Label_1823
	.word	-16
	.word	4
	.word	_Label_1824
	.word	-20
	.word	4
	.word	_Label_1825
	.word	-24
	.word	4
	.word	_Label_1826
	.word	-28
	.word	4
	.word	_Label_1827
	.word	-32
	.word	4
	.word	_Label_1828
	.word	-36
	.word	4
	.word	_Label_1829
	.word	-40
	.word	4
	.word	_Label_1830
	.word	-44
	.word	4
	.word	_Label_1831
	.word	-48
	.word	4
	.word	_Label_1832
	.word	-52
	.word	4
	.word	_Label_1833
	.word	-56
	.word	4
	.word	_Label_1834
	.word	-60
	.word	4
	.word	_Label_1835
	.word	-64
	.word	4
	.word	_Label_1836
	.word	-68
	.word	4
	.word	_Label_1837
	.word	-72
	.word	4
	.word	_Label_1838
	.word	-76
	.word	4
	.word	_Label_1839
	.word	-80
	.word	4
	.word	_Label_1840
	.word	-84
	.word	4
	.word	_Label_1841
	.word	-88
	.word	4
	.word	_Label_1842
	.word	-92
	.word	4
	.word	_Label_1843
	.word	-96
	.word	4
	.word	_Label_1844
	.word	-100
	.word	4
	.word	_Label_1845
	.word	-104
	.word	4
	.word	_Label_1846
	.word	-108
	.word	4
	.word	_Label_1847
	.word	-112
	.word	4
	.word	_Label_1848
	.word	-116
	.word	4
	.word	_Label_1849
	.word	-120
	.word	4
	.word	_Label_1850
	.word	-124
	.word	4
	.word	_Label_1851
	.word	-128
	.word	4
	.word	_Label_1852
	.word	-132
	.word	4
	.word	_Label_1853
	.word	-136
	.word	4
	.word	_Label_1854
	.word	-140
	.word	4
	.word	_Label_1855
	.word	-144
	.word	4
	.word	_Label_1856
	.word	-148
	.word	4
	.word	_Label_1857
	.word	-152
	.word	4
	.word	_Label_1858
	.word	-156
	.word	4
	.word	_Label_1859
	.word	-160
	.word	4
	.word	_Label_1860
	.word	-164
	.word	4
	.word	_Label_1861
	.word	-168
	.word	4
	.word	0
_Label_1820:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1821:
	.ascii	"Pself\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1861:
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
_Label_3194:
	push	r0
	sub	r1,1,r1
	bne	_Label_3194
	mov	1153,r13		! source line 1153
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0RE",r10
!   _temp_1864 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1864 [entry ] into _temp_1865
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
!   Data Move: _temp_1863 = *_temp_1865  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1862 = _temp_1863 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1862  (sizeInBytes=4)
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
	.word	_Label_1866
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1867
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1868
	.word	12
	.word	4
	.word	_Label_1869
	.word	-12
	.word	4
	.word	_Label_1870
	.word	-16
	.word	4
	.word	_Label_1871
	.word	-20
	.word	4
	.word	_Label_1872
	.word	-24
	.word	4
	.word	0
_Label_1866:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1867:
	.ascii	"Pself\0"
	.align
_Label_1868:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1862\0"
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
_Label_3195:
	push	r0
	sub	r1,1,r1
	bne	_Label_3195
	mov	1163,r13		! source line 1163
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0RE",r10
!   _temp_1875 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1875 [entry ] into _temp_1876
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
!   Data Move: _temp_1874 = *_temp_1876  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1873 = _temp_1874 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1873  (sizeInBytes=4)
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
	.word	_Label_1877
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1878
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1879
	.word	12
	.word	4
	.word	_Label_1880
	.word	-12
	.word	4
	.word	_Label_1881
	.word	-16
	.word	4
	.word	_Label_1882
	.word	-20
	.word	4
	.word	_Label_1883
	.word	-24
	.word	4
	.word	0
_Label_1877:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1878:
	.ascii	"Pself\0"
	.align
_Label_1879:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1873\0"
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
_Label_3196:
	push	r0
	sub	r1,1,r1
	bne	_Label_3196
	mov	1172,r13		! source line 1172
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0AS",r10
!   _temp_1884 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1884 [entry ] into _temp_1885
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
!   _temp_1889 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1889 [entry ] into _temp_1890
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
!   Data Move: _temp_1888 = *_temp_1890  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1887 = _temp_1888 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1886 = _temp_1887 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1885 = _temp_1886  (sizeInBytes=4)
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
	.word	_Label_1891
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1892
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1893
	.word	12
	.word	4
	.word	_Label_1894
	.word	16
	.word	4
	.word	_Label_1895
	.word	-12
	.word	4
	.word	_Label_1896
	.word	-16
	.word	4
	.word	_Label_1897
	.word	-20
	.word	4
	.word	_Label_1898
	.word	-24
	.word	4
	.word	_Label_1899
	.word	-28
	.word	4
	.word	_Label_1900
	.word	-32
	.word	4
	.word	_Label_1901
	.word	-36
	.word	4
	.word	0
_Label_1891:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1892:
	.ascii	"Pself\0"
	.align
_Label_1893:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1894:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1884\0"
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
_Label_3197:
	push	r0
	sub	r1,1,r1
	bne	_Label_3197
	mov	1182,r13		! source line 1182
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0RE",r10
!   _temp_1905 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1905 [entry ] into _temp_1906
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
!   Data Move: _temp_1904 = *_temp_1906  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1903 = _temp_1904 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1903) then goto _Label_1907
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1907
!   _temp_1902 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1908
_Label_1907:
!   _temp_1902 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1908:
!   ReturnResult: _temp_1902  (sizeInBytes=1)
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
	.word	_Label_1909
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1910
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1911
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_1909:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1910:
	.ascii	"Pself\0"
	.align
_Label_1911:
	.byte	'I'
	.ascii	"entry\0"
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
	.byte	'C'
	.ascii	"_temp_1902\0"
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
_Label_3198:
	push	r0
	sub	r1,1,r1
	bne	_Label_3198
	mov	1191,r13		! source line 1191
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0RE",r10
!   _temp_1920 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1920 [entry ] into _temp_1921
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
!   Data Move: _temp_1919 = *_temp_1921  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1918 = _temp_1919 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1918) then goto _Label_1922
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1922
!   _temp_1917 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1923
_Label_1922:
!   _temp_1917 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1923:
!   ReturnResult: _temp_1917  (sizeInBytes=1)
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
	.word	_Label_1924
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1925
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1926
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_1924:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1925:
	.ascii	"Pself\0"
	.align
_Label_1926:
	.byte	'I'
	.ascii	"entry\0"
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
	.byte	'C'
	.ascii	"_temp_1917\0"
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
_Label_3199:
	push	r0
	sub	r1,1,r1
	bne	_Label_3199
	mov	1200,r13		! source line 1200
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0RE",r10
!   _temp_1935 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1935 [entry ] into _temp_1936
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
!   Data Move: _temp_1934 = *_temp_1936  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1933 = _temp_1934 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1933) then goto _Label_1937
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1937
!   _temp_1932 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1938
_Label_1937:
!   _temp_1932 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1938:
!   ReturnResult: _temp_1932  (sizeInBytes=1)
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
	.word	_Label_1939
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1940
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1941
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_1939:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1940:
	.ascii	"Pself\0"
	.align
_Label_1941:
	.byte	'I'
	.ascii	"entry\0"
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
	.byte	'C'
	.ascii	"_temp_1932\0"
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
_Label_3200:
	push	r0
	sub	r1,1,r1
	bne	_Label_3200
	mov	1209,r13		! source line 1209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1213,r13		! source line 1213
	mov	"\0\0RE",r10
!   _temp_1950 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1950 [entry ] into _temp_1951
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
!   Data Move: _temp_1949 = *_temp_1951  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1948 = _temp_1949 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1948) then goto _Label_1952
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1952
!   _temp_1947 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1953
_Label_1952:
!   _temp_1947 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1953:
!   ReturnResult: _temp_1947  (sizeInBytes=1)
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
	.word	_Label_1954
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1955
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1956
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_1954:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1955:
	.ascii	"Pself\0"
	.align
_Label_1956:
	.byte	'I'
	.ascii	"entry\0"
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
	.byte	'C'
	.ascii	"_temp_1947\0"
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
_Label_3201:
	push	r0
	sub	r1,1,r1
	bne	_Label_3201
	mov	1218,r13		! source line 1218
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1222,r13		! source line 1222
	mov	"\0\0AS",r10
!   _temp_1962 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1962 [entry ] into _temp_1963
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
!   _temp_1966 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1966 [entry ] into _temp_1967
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
!   Data Move: _temp_1965 = *_temp_1967  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1964 = _temp_1965 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1963 = _temp_1964  (sizeInBytes=4)
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
	.word	_Label_1968
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1969
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1970
	.word	12
	.word	4
	.word	_Label_1971
	.word	-12
	.word	4
	.word	_Label_1972
	.word	-16
	.word	4
	.word	_Label_1973
	.word	-20
	.word	4
	.word	_Label_1974
	.word	-24
	.word	4
	.word	_Label_1975
	.word	-28
	.word	4
	.word	_Label_1976
	.word	-32
	.word	4
	.word	0
_Label_1968:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1969:
	.ascii	"Pself\0"
	.align
_Label_1970:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1962\0"
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
_Label_3202:
	push	r0
	sub	r1,1,r1
	bne	_Label_3202
	mov	1227,r13		! source line 1227
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0AS",r10
!   _temp_1977 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1977 [entry ] into _temp_1978
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
!   _temp_1981 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1981 [entry ] into _temp_1982
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
!   Data Move: _temp_1980 = *_temp_1982  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1979 = _temp_1980 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1978 = _temp_1979  (sizeInBytes=4)
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
	.word	_Label_1983
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1984
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1985
	.word	12
	.word	4
	.word	_Label_1986
	.word	-12
	.word	4
	.word	_Label_1987
	.word	-16
	.word	4
	.word	_Label_1988
	.word	-20
	.word	4
	.word	_Label_1989
	.word	-24
	.word	4
	.word	_Label_1990
	.word	-28
	.word	4
	.word	_Label_1991
	.word	-32
	.word	4
	.word	0
_Label_1983:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1984:
	.ascii	"Pself\0"
	.align
_Label_1985:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1977\0"
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
_Label_3203:
	push	r0
	sub	r1,1,r1
	bne	_Label_3203
	mov	1236,r13		! source line 1236
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1240,r13		! source line 1240
	mov	"\0\0AS",r10
!   _temp_1992 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1992 [entry ] into _temp_1993
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
!   _temp_1996 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1996 [entry ] into _temp_1997
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
!   Data Move: _temp_1995 = *_temp_1997  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1994 = _temp_1995 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1993 = _temp_1994  (sizeInBytes=4)
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
	.word	_Label_1998
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1999
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2000
	.word	12
	.word	4
	.word	_Label_2001
	.word	-12
	.word	4
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
	.word	-32
	.word	4
	.word	0
_Label_1998:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1999:
	.ascii	"Pself\0"
	.align
_Label_2000:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1992\0"
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
_Label_3204:
	push	r0
	sub	r1,1,r1
	bne	_Label_3204
	mov	1245,r13		! source line 1245
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0AS",r10
!   _temp_2007 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2007 [entry ] into _temp_2008
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
!   _temp_2011 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2011 [entry ] into _temp_2012
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
!   Data Move: _temp_2010 = *_temp_2012  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2009 = _temp_2010 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2008 = _temp_2009  (sizeInBytes=4)
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
	.word	_Label_2013
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2014
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2015
	.word	12
	.word	4
	.word	_Label_2016
	.word	-12
	.word	4
	.word	_Label_2017
	.word	-16
	.word	4
	.word	_Label_2018
	.word	-20
	.word	4
	.word	_Label_2019
	.word	-24
	.word	4
	.word	_Label_2020
	.word	-28
	.word	4
	.word	_Label_2021
	.word	-32
	.word	4
	.word	0
_Label_2013:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2014:
	.ascii	"Pself\0"
	.align
_Label_2015:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2007\0"
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
_Label_3205:
	push	r0
	sub	r1,1,r1
	bne	_Label_3205
	mov	1254,r13		! source line 1254
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0AS",r10
!   _temp_2022 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2022 [entry ] into _temp_2023
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
!   _temp_2026 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2026 [entry ] into _temp_2027
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
!   Data Move: _temp_2025 = *_temp_2027  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2024 = _temp_2025 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2023 = _temp_2024  (sizeInBytes=4)
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
	.word	_Label_2028
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2029
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2030
	.word	12
	.word	4
	.word	_Label_2031
	.word	-12
	.word	4
	.word	_Label_2032
	.word	-16
	.word	4
	.word	_Label_2033
	.word	-20
	.word	4
	.word	_Label_2034
	.word	-24
	.word	4
	.word	_Label_2035
	.word	-28
	.word	4
	.word	_Label_2036
	.word	-32
	.word	4
	.word	0
_Label_2028:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2029:
	.ascii	"Pself\0"
	.align
_Label_2030:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2022\0"
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
_Label_3206:
	push	r0
	sub	r1,1,r1
	bne	_Label_3206
	mov	1263,r13		! source line 1263
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1267,r13		! source line 1267
	mov	"\0\0AS",r10
!   _temp_2037 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2037 [entry ] into _temp_2038
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
!   _temp_2041 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2041 [entry ] into _temp_2042
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
!   Data Move: _temp_2040 = *_temp_2042  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2039 = _temp_2040 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2038 = _temp_2039  (sizeInBytes=4)
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
	.word	_Label_2043
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2044
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2045
	.word	12
	.word	4
	.word	_Label_2046
	.word	-12
	.word	4
	.word	_Label_2047
	.word	-16
	.word	4
	.word	_Label_2048
	.word	-20
	.word	4
	.word	_Label_2049
	.word	-24
	.word	4
	.word	_Label_2050
	.word	-28
	.word	4
	.word	_Label_2051
	.word	-32
	.word	4
	.word	0
_Label_2043:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2044:
	.ascii	"Pself\0"
	.align
_Label_2045:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_2037\0"
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
_Label_3207:
	push	r0
	sub	r1,1,r1
	bne	_Label_3207
	mov	1272,r13		! source line 1272
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0AS",r10
!   _temp_2052 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2052 [entry ] into _temp_2053
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
!   _temp_2056 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2056 [entry ] into _temp_2057
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
!   Data Move: _temp_2055 = *_temp_2057  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2054 = _temp_2055 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2053 = _temp_2054  (sizeInBytes=4)
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
	.word	_Label_2058
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2059
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2060
	.word	12
	.word	4
	.word	_Label_2061
	.word	-12
	.word	4
	.word	_Label_2062
	.word	-16
	.word	4
	.word	_Label_2063
	.word	-20
	.word	4
	.word	_Label_2064
	.word	-24
	.word	4
	.word	_Label_2065
	.word	-28
	.word	4
	.word	_Label_2066
	.word	-32
	.word	4
	.word	0
_Label_2058:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2059:
	.ascii	"Pself\0"
	.align
_Label_2060:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2052\0"
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
_Label_3208:
	push	r0
	sub	r1,1,r1
	bne	_Label_3208
	mov	1281,r13		! source line 1281
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0AS",r10
!   _temp_2067 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2067 [entry ] into _temp_2068
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
!   _temp_2071 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2071 [entry ] into _temp_2072
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
!   Data Move: _temp_2070 = *_temp_2072  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2069 = _temp_2070 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2068 = _temp_2069  (sizeInBytes=4)
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
	.word	_Label_2073
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2074
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2075
	.word	12
	.word	4
	.word	_Label_2076
	.word	-12
	.word	4
	.word	_Label_2077
	.word	-16
	.word	4
	.word	_Label_2078
	.word	-20
	.word	4
	.word	_Label_2079
	.word	-24
	.word	4
	.word	_Label_2080
	.word	-28
	.word	4
	.word	_Label_2081
	.word	-32
	.word	4
	.word	0
_Label_2073:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2074:
	.ascii	"Pself\0"
	.align
_Label_2075:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2067\0"
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
_Label_3209:
	push	r0
	sub	r1,1,r1
	bne	_Label_3209
	mov	1290,r13		! source line 1290
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2083 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2083 [0 ] into _temp_2084
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
!   _temp_2082 = _temp_2084		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2085 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2082  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2085  sizeInBytes=4
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
	.word	_Label_2086
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2087
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2088
	.word	-12
	.word	4
	.word	_Label_2089
	.word	-16
	.word	4
	.word	_Label_2090
	.word	-20
	.word	4
	.word	_Label_2091
	.word	-24
	.word	4
	.word	0
_Label_2086:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2087:
	.ascii	"Pself\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2082\0"
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
_Label_3210:
	push	r0
	sub	r1,1,r1
	bne	_Label_3210
	mov	1301,r13		! source line 1301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2092
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2092
	jmp	_Label_2093
_Label_2092:
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
	jmp	_Label_2094
_Label_2093:
! ELSE...
	mov	1318,r13		! source line 1318
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2096		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2096
!	jmp	_Label_2095
_Label_2095:
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
_Label_2096:
! END IF...
_Label_2094:
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
_Label_2097:
!	jmp	_Label_2098
_Label_2098:
	mov	1325,r13		! source line 1325
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1326,r13		! source line 1326
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2101		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2101
!	jmp	_Label_2100
_Label_2100:
! THEN...
	mov	1327,r13		! source line 1327
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2102 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2102  sizeInBytes=4
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
_Label_2101:
! IF STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0IF",r10
	mov	1330,r13		! source line 1330
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2106) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2105  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2105 then goto _Label_2104 else goto _Label_2103
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2103
	jmp	_Label_2104
_Label_2103:
! THEN...
	mov	1331,r13		! source line 1331
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2107 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2107  sizeInBytes=4
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
_Label_2104:
! ASSIGNMENT STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0AS",r10
	mov	1334,r13		! source line 1334
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2109) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2108  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2108 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0WH",r10
_Label_2110:
!   if offset >= 8192 then goto _Label_2112		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2112
!	jmp	_Label_2111
_Label_2111:
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
!   Data Move: _temp_2113 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2113  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2115		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2115
!	jmp	_Label_2114
_Label_2114:
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
_Label_2115:
! END WHILE...
	jmp	_Label_2110
_Label_2112:
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
	jmp	_Label_2097
_Label_2099:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2116
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2117
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2118
	.word	12
	.word	4
	.word	_Label_2119
	.word	16
	.word	4
	.word	_Label_2120
	.word	20
	.word	4
	.word	_Label_2121
	.word	-9
	.word	1
	.word	_Label_2122
	.word	-16
	.word	4
	.word	_Label_2123
	.word	-20
	.word	4
	.word	_Label_2124
	.word	-24
	.word	4
	.word	_Label_2125
	.word	-28
	.word	4
	.word	_Label_2126
	.word	-10
	.word	1
	.word	_Label_2127
	.word	-32
	.word	4
	.word	_Label_2128
	.word	-36
	.word	4
	.word	_Label_2129
	.word	-40
	.word	4
	.word	_Label_2130
	.word	-44
	.word	4
	.word	_Label_2131
	.word	-48
	.word	4
	.word	0
_Label_2116:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2117:
	.ascii	"Pself\0"
	.align
_Label_2118:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2119:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2120:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2121:
	.byte	'C'
	.ascii	"_temp_2113\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2126:
	.byte	'C'
	.ascii	"_temp_2105\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2128:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2129:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2130:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2131:
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
_Label_3211:
	push	r0
	sub	r1,1,r1
	bne	_Label_3211
	mov	1355,r13		! source line 1355
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2132
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2132
	jmp	_Label_2133
_Label_2132:
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
	jmp	_Label_2134
_Label_2133:
! ELSE...
	mov	1368,r13		! source line 1368
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1368,r13		! source line 1368
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2136		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2136
!	jmp	_Label_2135
_Label_2135:
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
_Label_2136:
! END IF...
_Label_2134:
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
_Label_2137:
!	jmp	_Label_2138
_Label_2138:
	mov	1373,r13		! source line 1373
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2143		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2143
	jmp	_Label_2140
_Label_2143:
	mov	1375,r13		! source line 1375
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2145) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2144  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2144 then goto _Label_2142 else goto _Label_2140
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2140
	jmp	_Label_2142
_Label_2142:
	mov	1376,r13		! source line 1376
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2147) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2146  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2146 then goto _Label_2141 else goto _Label_2140
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2140
	jmp	_Label_2141
_Label_2140:
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
_Label_2141:
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
	mov	1379,r13		! source line 1379
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2149) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2148  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2148 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1380,r13		! source line 1380
	mov	"\0\0WH",r10
_Label_2150:
!   if offset >= 8192 then goto _Label_2152		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2152
!	jmp	_Label_2151
_Label_2151:
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
!   Data Move: _temp_2153 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2153  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2155		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2155
!	jmp	_Label_2154
_Label_2154:
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
_Label_2155:
! END WHILE...
	jmp	_Label_2150
_Label_2152:
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
	jmp	_Label_2137
_Label_2139:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2156
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2157
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2158
	.word	12
	.word	4
	.word	_Label_2159
	.word	16
	.word	4
	.word	_Label_2160
	.word	20
	.word	4
	.word	_Label_2161
	.word	-9
	.word	1
	.word	_Label_2162
	.word	-16
	.word	4
	.word	_Label_2163
	.word	-20
	.word	4
	.word	_Label_2164
	.word	-24
	.word	4
	.word	_Label_2165
	.word	-10
	.word	1
	.word	_Label_2166
	.word	-28
	.word	4
	.word	_Label_2167
	.word	-11
	.word	1
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
	.word	0
_Label_2156:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2157:
	.ascii	"Pself\0"
	.align
_Label_2158:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2159:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2160:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2161:
	.byte	'C'
	.ascii	"_temp_2153\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2165:
	.byte	'C'
	.ascii	"_temp_2146\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2167:
	.byte	'C'
	.ascii	"_temp_2144\0"
	.align
_Label_2168:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2169:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2170:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2171:
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
_Label_3212:
	push	r0
	sub	r1,1,r1
	bne	_Label_3212
	mov	1397,r13		! source line 1397
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1421,r13		! source line 1421
	mov	"\0\0IF",r10
	mov	1421,r13		! source line 1421
	mov	"\0\0SE",r10
!   _temp_2175 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2176) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2175  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2174  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2174 >= 4 then goto _Label_2173		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2173
!	jmp	_Label_2172
_Label_2172:
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
_Label_2173:
! IF STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2178		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2178
!	jmp	_Label_2177
_Label_2177:
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
_Label_2178:
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
!   _temp_2181 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2180 = _temp_2181 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2182 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2183) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2180  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2182  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2179  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2179  (sizeInBytes=4)
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
	.word	_Label_2184
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2185
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2186
	.word	12
	.word	4
	.word	_Label_2187
	.word	16
	.word	4
	.word	_Label_2188
	.word	20
	.word	4
	.word	_Label_2189
	.word	-12
	.word	4
	.word	_Label_2190
	.word	-16
	.word	4
	.word	_Label_2191
	.word	-20
	.word	4
	.word	_Label_2192
	.word	-24
	.word	4
	.word	_Label_2193
	.word	-28
	.word	4
	.word	_Label_2194
	.word	-32
	.word	4
	.word	_Label_2195
	.word	-36
	.word	4
	.word	_Label_2196
	.word	-40
	.word	4
	.word	_Label_2197
	.word	-44
	.word	4
	.word	0
_Label_2184:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2185:
	.ascii	"Pself\0"
	.align
_Label_2186:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2187:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2188:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2197:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2198
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2198:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2199
	.word	_sourceFileName
	.word	308		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2199:
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
_Label_3213:
	push	r0
	sub	r1,1,r1
	bne	_Label_3213
	mov	1890,r13		! source line 1890
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2200 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2200  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1891,r13		! source line 1891
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1893,r13		! source line 1893
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	1894,r13		! source line 1894
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1895,r13		! source line 1895
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1896,r13		! source line 1896
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1898,r13		! source line 1898
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
	mov	1899,r13		! source line 1899
	mov	"\0\0SE",r10
!   _temp_2202 = &semUsedInSynchMethods
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
	mov	1900,r13		! source line 1900
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
	mov	1901,r13		! source line 1901
	mov	"\0\0SE",r10
!   _temp_2204 = &diskBusy
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
	mov	1901,r13		! source line 1901
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
	.word	_Label_2205
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2206
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2207
	.word	-12
	.word	4
	.word	_Label_2208
	.word	-16
	.word	4
	.word	_Label_2209
	.word	-20
	.word	4
	.word	_Label_2210
	.word	-24
	.word	4
	.word	_Label_2211
	.word	-28
	.word	4
	.word	0
_Label_2205:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2206:
	.ascii	"Pself\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2200\0"
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
_Label_3214:
	push	r0
	sub	r1,1,r1
	bne	_Label_3214
	mov	1906,r13		! source line 1906
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0SE",r10
!   _temp_2212 = &diskBusy
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
	mov	1920,r13		! source line 1920
	mov	"\0\0WH",r10
_Label_2213:
!	jmp	_Label_2214
_Label_2214:
	mov	1920,r13		! source line 1920
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0SE",r10
!   _temp_2216 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2217) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2216  sizeInBytes=4
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
	mov	1924,r13		! source line 1924
	mov	"\0\0SE",r10
!   _temp_2218 = &semUsedInSynchMethods
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
	mov	1927,r13		! source line 1927
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2227 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2221
	cmp	r1,2
	be	_Label_2222
	cmp	r1,3
	be	_Label_2223
	cmp	r1,4
	be	_Label_2224
	cmp	r1,5
	be	_Label_2225
	cmp	r1,6
	be	_Label_2226
	jmp	_Label_2219
! CASE 1...
_Label_2221:
! SEND STATEMENT...
	mov	1929,r13		! source line 1929
	mov	"\0\0SE",r10
!   _temp_2228 = &diskBusy
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
	mov	1930,r13		! source line 1930
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2222:
! CALL STATEMENT...
!   _temp_2229 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2229  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1932,r13		! source line 1932
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2223:
! CALL STATEMENT...
!   _temp_2230 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2230  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1934,r13		! source line 1934
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2224:
! CALL STATEMENT...
!   _temp_2231 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2231  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1936,r13		! source line 1936
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2225:
! BREAK STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0BR",r10
	jmp	_Label_2220
! CASE 6...
_Label_2226:
! CALL STATEMENT...
!   _temp_2232 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2232  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1942,r13		! source line 1942
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2219:
! CALL STATEMENT...
!   _temp_2233 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2233  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1944,r13		! source line 1944
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2220:
! END WHILE...
	jmp	_Label_2213
_Label_2215:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2234
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2235
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2236
	.word	12
	.word	4
	.word	_Label_2237
	.word	16
	.word	4
	.word	_Label_2238
	.word	20
	.word	4
	.word	_Label_2239
	.word	-12
	.word	4
	.word	_Label_2240
	.word	-16
	.word	4
	.word	_Label_2241
	.word	-20
	.word	4
	.word	_Label_2242
	.word	-24
	.word	4
	.word	_Label_2243
	.word	-28
	.word	4
	.word	_Label_2244
	.word	-32
	.word	4
	.word	_Label_2245
	.word	-36
	.word	4
	.word	_Label_2246
	.word	-40
	.word	4
	.word	_Label_2247
	.word	-44
	.word	4
	.word	_Label_2248
	.word	-48
	.word	4
	.word	_Label_2249
	.word	-52
	.word	4
	.word	0
_Label_2234:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2235:
	.ascii	"Pself\0"
	.align
_Label_2236:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2237:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2238:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2212\0"
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
	mov	1953,r13		! source line 1953
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1971,r13		! source line 1971
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
	mov	1972,r13		! source line 1972
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
	mov	1973,r13		! source line 1973
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
	mov	1974,r13		! source line 1974
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
	mov	1974,r13		! source line 1974
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
	.word	_Label_2250
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2251
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2252
	.word	12
	.word	4
	.word	_Label_2253
	.word	16
	.word	4
	.word	_Label_2254
	.word	20
	.word	4
	.word	_Label_2255
	.word	24
	.word	4
	.word	0
_Label_2250:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2251:
	.ascii	"Pself\0"
	.align
_Label_2252:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2253:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2254:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2255:
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
_Label_3215:
	push	r0
	sub	r1,1,r1
	bne	_Label_3215
	mov	1979,r13		! source line 1979
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0SE",r10
!   _temp_2256 = &diskBusy
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
	mov	1992,r13		! source line 1992
	mov	"\0\0WH",r10
_Label_2257:
!	jmp	_Label_2258
_Label_2258:
	mov	1992,r13		! source line 1992
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0SE",r10
!   _temp_2260 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2261) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2260  sizeInBytes=4
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
	mov	1995,r13		! source line 1995
	mov	"\0\0SE",r10
!   _temp_2262 = &semUsedInSynchMethods
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
	mov	1998,r13		! source line 1998
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2271 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2265
	cmp	r1,2
	be	_Label_2266
	cmp	r1,3
	be	_Label_2267
	cmp	r1,4
	be	_Label_2268
	cmp	r1,5
	be	_Label_2269
	cmp	r1,6
	be	_Label_2270
	jmp	_Label_2263
! CASE 1...
_Label_2265:
! SEND STATEMENT...
	mov	2000,r13		! source line 2000
	mov	"\0\0SE",r10
!   _temp_2272 = &diskBusy
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
	mov	2001,r13		! source line 2001
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2266:
! CALL STATEMENT...
!   _temp_2273 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2273  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2003,r13		! source line 2003
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2267:
! CALL STATEMENT...
!   _temp_2274 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2274  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2005,r13		! source line 2005
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2268:
! CALL STATEMENT...
!   _temp_2275 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2275  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2007,r13		! source line 2007
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2269:
! BREAK STATEMENT...
	mov	2011,r13		! source line 2011
	mov	"\0\0BR",r10
	jmp	_Label_2264
! CASE 6...
_Label_2270:
! CALL STATEMENT...
!   _temp_2276 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2276  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2013,r13		! source line 2013
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2263:
! CALL STATEMENT...
!   _temp_2277 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2277  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2015,r13		! source line 2015
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2264:
! END WHILE...
	jmp	_Label_2257
_Label_2259:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2278
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2279
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2280
	.word	12
	.word	4
	.word	_Label_2281
	.word	16
	.word	4
	.word	_Label_2282
	.word	20
	.word	4
	.word	_Label_2283
	.word	-12
	.word	4
	.word	_Label_2284
	.word	-16
	.word	4
	.word	_Label_2285
	.word	-20
	.word	4
	.word	_Label_2286
	.word	-24
	.word	4
	.word	_Label_2287
	.word	-28
	.word	4
	.word	_Label_2288
	.word	-32
	.word	4
	.word	_Label_2289
	.word	-36
	.word	4
	.word	_Label_2290
	.word	-40
	.word	4
	.word	_Label_2291
	.word	-44
	.word	4
	.word	_Label_2292
	.word	-48
	.word	4
	.word	_Label_2293
	.word	-52
	.word	4
	.word	0
_Label_2278:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2279:
	.ascii	"Pself\0"
	.align
_Label_2280:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2281:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2282:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2256\0"
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
	mov	2024,r13		! source line 2024
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2041,r13		! source line 2041
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
	mov	2042,r13		! source line 2042
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
	mov	2043,r13		! source line 2043
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
	mov	2044,r13		! source line 2044
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
	mov	2044,r13		! source line 2044
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
	.word	_Label_2294
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2295
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2296
	.word	12
	.word	4
	.word	_Label_2297
	.word	16
	.word	4
	.word	_Label_2298
	.word	20
	.word	4
	.word	_Label_2299
	.word	24
	.word	4
	.word	0
_Label_2294:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2295:
	.ascii	"Pself\0"
	.align
_Label_2296:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2297:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2298:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2299:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2300
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
_Label_2300:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2301
	.word	_sourceFileName
	.word	331		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2301:
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
_Label_3216:
	push	r0
	sub	r1,1,r1
	bne	_Label_3216
	mov	2055,r13		! source line 2055
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2302 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2302  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2062,r13		! source line 2062
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
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
	mov	2064,r13		! source line 2064
	mov	"\0\0SE",r10
!   _temp_2304 = &fileManagerLock
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
	mov	2067,r13		! source line 2067
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
	mov	2068,r13		! source line 2068
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
	mov	2069,r13		! source line 2069
	mov	"\0\0SE",r10
!   _temp_2307 = &anFCBBecameFree
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
	mov	2070,r13		! source line 2070
	mov	"\0\0AS",r10
!   _temp_2308 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2310 = &_temp_2309
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2310 = _temp_2310 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2312 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3217:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3217
!   _temp_2312 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2314:
!   Data Move: *_temp_2310 = _temp_2312  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3218:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3218
!   _temp_2310 = _temp_2310 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2311 = _temp_2311 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2311) then goto _Label_2314
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2314
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2315 = &_temp_2309
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3219
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3219:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2308 = *_temp_2315  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3220:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3220
! FOR STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2320 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2321 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2320  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2316:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2321 then goto _Label_2319		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2319
_Label_2317:
	mov	2072,r13		! source line 2072
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0AS",r10
!   _temp_2322 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2322 [i ] into _temp_2323
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
!   _temp_2324 = _temp_2323 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2324 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0SE",r10
!   _temp_2325 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2325 [i ] into _temp_2326
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
	mov	2075,r13		! source line 2075
	mov	"\0\0SE",r10
!   _temp_2328 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2328 [i ] into _temp_2329
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
!   _temp_2327 = _temp_2329		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2330 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2327  sizeInBytes=4
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
_Label_2318:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2316
! END FOR
_Label_2319:
! ASSIGNMENT STATEMENT...
	mov	2079,r13		! source line 2079
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
	mov	2080,r13		! source line 2080
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
	mov	2081,r13		! source line 2081
	mov	"\0\0SE",r10
!   _temp_2333 = &anOpenFileBecameFree
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
	mov	2082,r13		! source line 2082
	mov	"\0\0AS",r10
!   _temp_2334 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2336 = &_temp_2335
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2336 = _temp_2336 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2338 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3221:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3221
!   _temp_2338 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2340:
!   Data Move: *_temp_2336 = _temp_2338  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3222:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3222
!   _temp_2336 = _temp_2336 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2337 = _temp_2337 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2337) then goto _Label_2340
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2340
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2341 = &_temp_2335
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3223
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3223:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2334 = *_temp_2341  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3224:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3224
! FOR STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2346 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2347 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2346  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2342:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2347 then goto _Label_2345		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2345
_Label_2343:
	mov	2084,r13		! source line 2084
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0AS",r10
!   _temp_2348 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2348 [i ] into _temp_2349
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
!   _temp_2350 = _temp_2349 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2350 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0SE",r10
!   _temp_2352 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2352 [i ] into _temp_2353
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
!   _temp_2351 = _temp_2353		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2354 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2351  sizeInBytes=4
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
_Label_2344:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2342
! END FOR
_Label_2345:
! ASSIGNMENT STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3225:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3225
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0AS",r10
!   _temp_2356 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2357 = _temp_2356 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2357 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0AS",r10
	mov	2096,r13		! source line 2096
	mov	"\0\0SE",r10
!   _temp_2358 = &_P_Kernel_frameManager
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
	mov	2097,r13		! source line 2097
	mov	"\0\0SE",r10
!   _temp_2359 = &_P_Kernel_diskDriver
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
	mov	2097,r13		! source line 2097
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
	.word	_Label_2360
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2361
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2362
	.word	-12
	.word	4
	.word	_Label_2363
	.word	-16
	.word	4
	.word	_Label_2364
	.word	-20
	.word	4
	.word	_Label_2365
	.word	-24
	.word	4
	.word	_Label_2366
	.word	-28
	.word	4
	.word	_Label_2367
	.word	-32
	.word	4
	.word	_Label_2368
	.word	-36
	.word	4
	.word	_Label_2369
	.word	-40
	.word	4
	.word	_Label_2370
	.word	-44
	.word	4
	.word	_Label_2371
	.word	-48
	.word	4
	.word	_Label_2372
	.word	-52
	.word	4
	.word	_Label_2373
	.word	-56
	.word	4
	.word	_Label_2374
	.word	-60
	.word	4
	.word	_Label_2375
	.word	-64
	.word	4
	.word	_Label_2376
	.word	-68
	.word	4
	.word	_Label_2377
	.word	-72
	.word	4
	.word	_Label_2378
	.word	-100
	.word	28
	.word	_Label_2379
	.word	-104
	.word	4
	.word	_Label_2380
	.word	-108
	.word	4
	.word	_Label_2381
	.word	-392
	.word	284
	.word	_Label_2382
	.word	-396
	.word	4
	.word	_Label_2383
	.word	-400
	.word	4
	.word	_Label_2384
	.word	-404
	.word	4
	.word	_Label_2385
	.word	-408
	.word	4
	.word	_Label_2386
	.word	-412
	.word	4
	.word	_Label_2387
	.word	-416
	.word	4
	.word	_Label_2388
	.word	-420
	.word	4
	.word	_Label_2389
	.word	-424
	.word	4
	.word	_Label_2390
	.word	-428
	.word	4
	.word	_Label_2391
	.word	-432
	.word	4
	.word	_Label_2392
	.word	-436
	.word	4
	.word	_Label_2393
	.word	-440
	.word	4
	.word	_Label_2394
	.word	-444
	.word	4
	.word	_Label_2395
	.word	-448
	.word	4
	.word	_Label_2396
	.word	-452
	.word	4
	.word	_Label_2397
	.word	-456
	.word	4
	.word	_Label_2398
	.word	-460
	.word	4
	.word	_Label_2399
	.word	-500
	.word	40
	.word	_Label_2400
	.word	-504
	.word	4
	.word	_Label_2401
	.word	-508
	.word	4
	.word	_Label_2402
	.word	-912
	.word	404
	.word	_Label_2403
	.word	-916
	.word	4
	.word	_Label_2404
	.word	-920
	.word	4
	.word	_Label_2405
	.word	-924
	.word	4
	.word	_Label_2406
	.word	-928
	.word	4
	.word	_Label_2407
	.word	-932
	.word	4
	.word	_Label_2408
	.word	-936
	.word	4
	.word	_Label_2409
	.word	-940
	.word	4
	.word	_Label_2410
	.word	-944
	.word	4
	.word	0
_Label_2360:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2361:
	.ascii	"Pself\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2410:
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
_Label_3226:
	push	r0
	sub	r1,1,r1
	bne	_Label_3226
	mov	2104,r13		! source line 2104
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0SE",r10
!   _temp_2411 = &fileManagerLock
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
!   _temp_2412 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2412  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2107,r13		! source line 2107
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2108,r13		! source line 2108
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2417 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2418 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2417  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2413:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2418 then goto _Label_2416		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2416
_Label_2414:
	mov	2108,r13		! source line 2108
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2419 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2419  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2109,r13		! source line 2109
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2110,r13		! source line 2110
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2420 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2420  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2111,r13		! source line 2111
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0SE",r10
!   _temp_2421 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2421 [i ] into _temp_2422
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
_Label_2415:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2413
! END FOR
_Label_2416:
! CALL STATEMENT...
!   _temp_2423 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2423  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2114,r13		! source line 2114
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0SE",r10
!   _temp_2424 = _function_203_printFCB
	set	_function_203_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2425 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2424  sizeInBytes=4
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
	mov	2116,r13		! source line 2116
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2426 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2426  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2117,r13		! source line 2117
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2431 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2432 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2431  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2427:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2432 then goto _Label_2430		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2430
_Label_2428:
	mov	2118,r13		! source line 2118
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2433 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2433  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2119,r13		! source line 2119
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2120,r13		! source line 2120
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2434 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2434  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2121,r13		! source line 2121
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2436 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2436 [i ] into _temp_2437
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
!   _temp_2435 = _temp_2437		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2435  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2122,r13		! source line 2122
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2438 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2438  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2123,r13		! source line 2123
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0SE",r10
!   _temp_2439 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2439 [i ] into _temp_2440
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
_Label_2429:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2427
! END FOR
_Label_2430:
! CALL STATEMENT...
!   _temp_2441 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2441  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2126,r13		! source line 2126
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0SE",r10
!   _temp_2442 = _function_202_printOpen
	set	_function_202_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2443 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2442  sizeInBytes=4
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
	mov	2128,r13		! source line 2128
	mov	"\0\0SE",r10
!   _temp_2444 = &fileManagerLock
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
	mov	2128,r13		! source line 2128
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
	.word	_Label_2445
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2446
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2447
	.word	-12
	.word	4
	.word	_Label_2448
	.word	-16
	.word	4
	.word	_Label_2449
	.word	-20
	.word	4
	.word	_Label_2450
	.word	-24
	.word	4
	.word	_Label_2451
	.word	-28
	.word	4
	.word	_Label_2452
	.word	-32
	.word	4
	.word	_Label_2453
	.word	-36
	.word	4
	.word	_Label_2454
	.word	-40
	.word	4
	.word	_Label_2455
	.word	-44
	.word	4
	.word	_Label_2456
	.word	-48
	.word	4
	.word	_Label_2457
	.word	-52
	.word	4
	.word	_Label_2458
	.word	-56
	.word	4
	.word	_Label_2459
	.word	-60
	.word	4
	.word	_Label_2460
	.word	-64
	.word	4
	.word	_Label_2461
	.word	-68
	.word	4
	.word	_Label_2462
	.word	-72
	.word	4
	.word	_Label_2463
	.word	-76
	.word	4
	.word	_Label_2464
	.word	-80
	.word	4
	.word	_Label_2465
	.word	-84
	.word	4
	.word	_Label_2466
	.word	-88
	.word	4
	.word	_Label_2467
	.word	-92
	.word	4
	.word	_Label_2468
	.word	-96
	.word	4
	.word	_Label_2469
	.word	-100
	.word	4
	.word	_Label_2470
	.word	-104
	.word	4
	.word	_Label_2471
	.word	-108
	.word	4
	.word	_Label_2472
	.word	-112
	.word	4
	.word	_Label_2473
	.word	-116
	.word	4
	.word	0
_Label_2445:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2446:
	.ascii	"Pself\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2443\0"
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
	.ascii	"_temp_2426\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2473:
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
_Label_3227:
	push	r0
	sub	r1,1,r1
	bne	_Label_3227
	mov	2133,r13		! source line 2133
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0AS",r10
	mov	2149,r13		! source line 2149
	mov	"\0\0SE",r10
!   _temp_2474 = &_P_Kernel_fileManager
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
	mov	2150,r13		! source line 2150
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2475
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2475
	jmp	_Label_2476
_Label_2475:
! THEN...
	mov	2151,r13		! source line 2151
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2476:
! SEND STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0SE",r10
!   _temp_2477 = &fileManagerLock
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
	mov	2156,r13		! source line 2156
	mov	"\0\0WH",r10
_Label_2478:
	mov	2156,r13		! source line 2156
	mov	"\0\0SE",r10
!   _temp_2481 = &openFileFreeList
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
!   if result==true then goto _Label_2479 else goto _Label_2480
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2480
	jmp	_Label_2479
_Label_2479:
	mov	2156,r13		! source line 2156
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2157,r13		! source line 2157
	mov	"\0\0SE",r10
!   _temp_2482 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2483 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2482  sizeInBytes=4
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
	jmp	_Label_2478
_Label_2480:
! ASSIGNMENT STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0AS",r10
	mov	2159,r13		! source line 2159
	mov	"\0\0SE",r10
!   _temp_2484 = &openFileFreeList
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
	mov	2162,r13		! source line 2162
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2485 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2485 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2486 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2486 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2487 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2487 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0SE",r10
!   _temp_2488 = &fileManagerLock
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
	mov	2169,r13		! source line 2169
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
	.word	_Label_2489
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2490
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2491
	.word	12
	.word	4
	.word	_Label_2492
	.word	-12
	.word	4
	.word	_Label_2493
	.word	-16
	.word	4
	.word	_Label_2494
	.word	-20
	.word	4
	.word	_Label_2495
	.word	-24
	.word	4
	.word	_Label_2496
	.word	-28
	.word	4
	.word	_Label_2497
	.word	-32
	.word	4
	.word	_Label_2498
	.word	-36
	.word	4
	.word	_Label_2499
	.word	-40
	.word	4
	.word	_Label_2500
	.word	-44
	.word	4
	.word	_Label_2501
	.word	-48
	.word	4
	.word	_Label_2502
	.word	-52
	.word	4
	.word	_Label_2503
	.word	-56
	.word	4
	.word	0
_Label_2489:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2490:
	.ascii	"Pself\0"
	.align
_Label_2491:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2502:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2503:
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
_Label_3228:
	push	r0
	sub	r1,1,r1
	bne	_Label_3228
	mov	2174,r13		! source line 2174
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2202,r13		! source line 2202
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
	mov	2203,r13		! source line 2203
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2505		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2505
!	jmp	_Label_2504
_Label_2504:
! THEN...
	mov	2205,r13		! source line 2205
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2506 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2506  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2205,r13		! source line 2205
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2505:
! ASSIGNMENT STATEMENT...
	mov	2209,r13		! source line 2209
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
	mov	2210,r13		! source line 2210
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2211,r13		! source line 2211
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
	mov	2212,r13		! source line 2212
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0WH",r10
_Label_2507:
!   if numFiles <= 0 then goto _Label_2509		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2509
!	jmp	_Label_2508
_Label_2508:
	mov	2215,r13		! source line 2215
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2510 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2510  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2216,r13		! source line 2216
	mov	"\0\0CA",r10
	call	_function_204_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2511 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2511  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2218,r13		! source line 2218
	mov	"\0\0CA",r10
	call	_function_204_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2512 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2512  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2220,r13		! source line 2220
	mov	"\0\0CA",r10
	call	_function_204_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2516 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2516 then goto _Label_2514		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2514
!	jmp	_Label_2515
_Label_2515:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2518
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
!   _temp_2517 = _temp_2518		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2517  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2223,r13		! source line 2223
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2513 else goto _Label_2514
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2514
	jmp	_Label_2513
_Label_2513:
! THEN...
	mov	2224,r13		! source line 2224
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0BR",r10
	jmp	_Label_2509
! END IF...
_Label_2514:
! ASSIGNMENT STATEMENT...
	mov	2226,r13		! source line 2226
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2507
_Label_2509:
! IF STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2520		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2520
!	jmp	_Label_2519
_Label_2519:
! THEN...
	mov	2232,r13		! source line 2232
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2520:
! SEND STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0SE",r10
!   _temp_2521 = &fileManagerLock
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
	mov	2237,r13		! source line 2237
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2526 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2527 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2526  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2522:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2527 then goto _Label_2525		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2525
_Label_2523:
	mov	2237,r13		! source line 2237
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0AS",r10
!   _temp_2528 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2528 [i ] into _temp_2529
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
!   fcb = _temp_2529		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2533 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2532 = *_temp_2533  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2532 != start then goto _Label_2531		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2531
!	jmp	_Label_2530
_Label_2530:
! THEN...
	mov	2240,r13		! source line 2240
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2534 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2537 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2536 = *_temp_2537  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2535 = _temp_2536 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2534 = _temp_2535  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0SE",r10
!   _temp_2538 = &fileManagerLock
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
	mov	2242,r13		! source line 2242
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2531:
!   Increment the FOR-LOOP index variable and jump back
_Label_2524:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2522
! END FOR
_Label_2525:
! WHILE STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0WH",r10
_Label_2539:
	mov	2247,r13		! source line 2247
	mov	"\0\0SE",r10
!   _temp_2542 = &fcbFreeList
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
!   if result==true then goto _Label_2540 else goto _Label_2541
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2541
	jmp	_Label_2540
_Label_2540:
	mov	2247,r13		! source line 2247
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2248,r13		! source line 2248
	mov	"\0\0SE",r10
!   _temp_2543 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2544 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2543  sizeInBytes=4
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
	jmp	_Label_2539
_Label_2541:
! ASSIGNMENT STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0AS",r10
	mov	2250,r13		! source line 2250
	mov	"\0\0SE",r10
!   _temp_2545 = &fcbFreeList
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
	mov	2253,r13		! source line 2253
	mov	"\0\0SE",r10
!   _temp_2546 = &fileManagerLock
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
	mov	2256,r13		! source line 2256
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2547 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2547 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2548 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2548 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2549 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2549 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2554 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2553 = *_temp_2554  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2553 < 0 then goto _Label_2552		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2552
	jmp	_Label_2550
_Label_2552:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2555 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2555 ) then goto _Label_2551		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2551
!	jmp	_Label_2550
_Label_2550:
! THEN...
	mov	2260,r13		! source line 2260
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2556 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2556  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2260,r13		! source line 2260
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2551:
! RETURN STATEMENT...
	mov	2262,r13		! source line 2262
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
	.word	_Label_2557
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2558
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2559
	.word	12
	.word	4
	.word	_Label_2560
	.word	-12
	.word	4
	.word	_Label_2561
	.word	-16
	.word	4
	.word	_Label_2562
	.word	-20
	.word	4
	.word	_Label_2563
	.word	-24
	.word	4
	.word	_Label_2564
	.word	-28
	.word	4
	.word	_Label_2565
	.word	-32
	.word	4
	.word	_Label_2566
	.word	-36
	.word	4
	.word	_Label_2567
	.word	-40
	.word	4
	.word	_Label_2568
	.word	-44
	.word	4
	.word	_Label_2569
	.word	-48
	.word	4
	.word	_Label_2570
	.word	-52
	.word	4
	.word	_Label_2571
	.word	-56
	.word	4
	.word	_Label_2572
	.word	-60
	.word	4
	.word	_Label_2573
	.word	-64
	.word	4
	.word	_Label_2574
	.word	-68
	.word	4
	.word	_Label_2575
	.word	-72
	.word	4
	.word	_Label_2576
	.word	-76
	.word	4
	.word	_Label_2577
	.word	-80
	.word	4
	.word	_Label_2578
	.word	-84
	.word	4
	.word	_Label_2579
	.word	-88
	.word	4
	.word	_Label_2580
	.word	-92
	.word	4
	.word	_Label_2581
	.word	-96
	.word	4
	.word	_Label_2582
	.word	-100
	.word	4
	.word	_Label_2583
	.word	-104
	.word	4
	.word	_Label_2584
	.word	-108
	.word	4
	.word	_Label_2585
	.word	-112
	.word	4
	.word	_Label_2586
	.word	-116
	.word	4
	.word	_Label_2587
	.word	-120
	.word	4
	.word	_Label_2588
	.word	-124
	.word	4
	.word	_Label_2589
	.word	-128
	.word	4
	.word	_Label_2590
	.word	-132
	.word	4
	.word	_Label_2591
	.word	-136
	.word	4
	.word	_Label_2592
	.word	-140
	.word	4
	.word	_Label_2593
	.word	-144
	.word	4
	.word	_Label_2594
	.word	-148
	.word	4
	.word	_Label_2595
	.word	-152
	.word	4
	.word	_Label_2596
	.word	-156
	.word	4
	.word	_Label_2597
	.word	-160
	.word	4
	.word	0
_Label_2557:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2558:
	.ascii	"Pself\0"
	.align
_Label_2559:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2591:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2592:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2593:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2594:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2595:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2596:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2597:
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
_Label_3229:
	push	r0
	sub	r1,1,r1
	bne	_Label_3229
	mov	2275,r13		! source line 2275
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0IF",r10
!   _temp_2600 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2600 then goto _Label_2599		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2599
!	jmp	_Label_2598
_Label_2598:
! THEN...
	mov	2278,r13		! source line 2278
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2599:
! SEND STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0SE",r10
!   _temp_2601 = &fileManagerLock
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
	mov	2281,r13		! source line 2281
	mov	"\0\0SE",r10
!   _temp_2602 = &_P_Kernel_fileManager
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
	mov	2282,r13		! source line 2282
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2603 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2603  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2604 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2607 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2606 = *_temp_2607  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2605 = _temp_2606 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2604 = _temp_2605  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2611 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2610 = *_temp_2611  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2610 > 0 then goto _Label_2609		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2609
!	jmp	_Label_2608
_Label_2608:
! THEN...
	mov	2285,r13		! source line 2285
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0SE",r10
!   _temp_2612 = &openFileFreeList
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
	mov	2286,r13		! source line 2286
	mov	"\0\0SE",r10
!   _temp_2613 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2614 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2613  sizeInBytes=4
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
	mov	2287,r13		! source line 2287
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2615 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2618 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2617 = *_temp_2618  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2616 = _temp_2617 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2615 = _temp_2616  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2288,r13		! source line 2288
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2622 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2621 = *_temp_2622  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2621 > 0 then goto _Label_2620		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2620
!	jmp	_Label_2619
_Label_2619:
! THEN...
	mov	2289,r13		! source line 2289
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0SE",r10
!   _temp_2623 = &fcbFreeList
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
	mov	2290,r13		! source line 2290
	mov	"\0\0SE",r10
!   _temp_2624 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2625 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2624  sizeInBytes=4
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
_Label_2620:
! END IF...
_Label_2609:
! SEND STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0SE",r10
!   _temp_2626 = &fileManagerLock
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
	mov	2293,r13		! source line 2293
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
	.word	_Label_2627
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2628
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2629
	.word	12
	.word	4
	.word	_Label_2630
	.word	-12
	.word	4
	.word	_Label_2631
	.word	-16
	.word	4
	.word	_Label_2632
	.word	-20
	.word	4
	.word	_Label_2633
	.word	-24
	.word	4
	.word	_Label_2634
	.word	-28
	.word	4
	.word	_Label_2635
	.word	-32
	.word	4
	.word	_Label_2636
	.word	-36
	.word	4
	.word	_Label_2637
	.word	-40
	.word	4
	.word	_Label_2638
	.word	-44
	.word	4
	.word	_Label_2639
	.word	-48
	.word	4
	.word	_Label_2640
	.word	-52
	.word	4
	.word	_Label_2641
	.word	-56
	.word	4
	.word	_Label_2642
	.word	-60
	.word	4
	.word	_Label_2643
	.word	-64
	.word	4
	.word	_Label_2644
	.word	-68
	.word	4
	.word	_Label_2645
	.word	-72
	.word	4
	.word	_Label_2646
	.word	-76
	.word	4
	.word	_Label_2647
	.word	-80
	.word	4
	.word	_Label_2648
	.word	-84
	.word	4
	.word	_Label_2649
	.word	-88
	.word	4
	.word	_Label_2650
	.word	-92
	.word	4
	.word	_Label_2651
	.word	-96
	.word	4
	.word	_Label_2652
	.word	-100
	.word	4
	.word	_Label_2653
	.word	-104
	.word	4
	.word	0
_Label_2627:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2628:
	.ascii	"Pself\0"
	.align
_Label_2629:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2653:
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
_Label_3230:
	push	r0
	sub	r1,1,r1
	bne	_Label_3230
	mov	2298,r13		! source line 2298
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2657 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2656 = *_temp_2657  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2656) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2658 = _temp_2656 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2658 ) then goto _Label_2655		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2655
!	jmp	_Label_2654
_Label_2654:
! THEN...
	mov	2304,r13		! source line 2304
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2663 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2662 = *_temp_2663  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2662) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2664 = _temp_2662 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2661 = *_temp_2664  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2661 >= 0 then goto _Label_2660		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2660
!	jmp	_Label_2659
_Label_2659:
! THEN...
	mov	2305,r13		! source line 2305
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2665 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2665  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2305,r13		! source line 2305
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2660:
! ASSIGNMENT STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2667 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2666 = *_temp_2667  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2666) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2668 = _temp_2666 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2668 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2308,r13		! source line 2308
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2672 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2671 = *_temp_2672  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2671) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2673 = _temp_2671 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2670 = *_temp_2673  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2676 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2675 = *_temp_2676  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2675) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2677 = _temp_2675 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2674 = *_temp_2677  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2669 = _temp_2670 + _temp_2674		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2680 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2679 = *_temp_2680  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2679) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2681 = _temp_2679 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2678 = *_temp_2681  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2682 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2669  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2678  sizeInBytes=4
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
_Label_2655:
! RETURN STATEMENT...
	mov	2303,r13		! source line 2303
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
	.word	_Label_2683
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2684
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2685
	.word	12
	.word	4
	.word	_Label_2686
	.word	-12
	.word	4
	.word	_Label_2687
	.word	-16
	.word	4
	.word	_Label_2688
	.word	-20
	.word	4
	.word	_Label_2689
	.word	-24
	.word	4
	.word	_Label_2690
	.word	-28
	.word	4
	.word	_Label_2691
	.word	-32
	.word	4
	.word	_Label_2692
	.word	-36
	.word	4
	.word	_Label_2693
	.word	-40
	.word	4
	.word	_Label_2694
	.word	-44
	.word	4
	.word	_Label_2695
	.word	-48
	.word	4
	.word	_Label_2696
	.word	-52
	.word	4
	.word	_Label_2697
	.word	-56
	.word	4
	.word	_Label_2698
	.word	-60
	.word	4
	.word	_Label_2699
	.word	-64
	.word	4
	.word	_Label_2700
	.word	-68
	.word	4
	.word	_Label_2701
	.word	-72
	.word	4
	.word	_Label_2702
	.word	-76
	.word	4
	.word	_Label_2703
	.word	-80
	.word	4
	.word	_Label_2704
	.word	-84
	.word	4
	.word	_Label_2705
	.word	-88
	.word	4
	.word	_Label_2706
	.word	-92
	.word	4
	.word	_Label_2707
	.word	-96
	.word	4
	.word	_Label_2708
	.word	-100
	.word	4
	.word	_Label_2709
	.word	-104
	.word	4
	.word	_Label_2710
	.word	-108
	.word	4
	.word	0
_Label_2683:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2684:
	.ascii	"Pself\0"
	.align
_Label_2685:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2656\0"
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
_Label_3231:
	push	r0
	sub	r1,1,r1
	bne	_Label_3231
	mov	2317,r13		! source line 2317
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2332,r13		! source line 2332
	mov	"\0\0SE",r10
!   _temp_2711 = &fileManagerLock
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
	mov	2333,r13		! source line 2333
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2717		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2717
!   _temp_2716 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2718
_Label_2717:
!   _temp_2716 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2718:
!   if _temp_2716 then goto _Label_2715 else goto _Label_2712
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2712
	jmp	_Label_2715
_Label_2715:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2721 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2720 = *_temp_2721  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2720 == 0 then goto _Label_2722		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2722
!   _temp_2719 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2723
_Label_2722:
!   _temp_2719 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2723:
!   if _temp_2719 then goto _Label_2714 else goto _Label_2712
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2712
	jmp	_Label_2714
_Label_2714:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2726 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2725 = *_temp_2726  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2725) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2727 = _temp_2725 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2724 = *_temp_2727  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2724 >= 0 then goto _Label_2713		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2713
!	jmp	_Label_2712
_Label_2712:
! THEN...
	mov	2334,r13		! source line 2334
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2728 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2728  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2334,r13		! source line 2334
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2713:
! ASSIGNMENT STATEMENT...
	mov	2336,r13		! source line 2336
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2729 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2729  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0WH",r10
_Label_2730:
!   if numBytes <= 0 then goto _Label_2732		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2732
!	jmp	_Label_2731
_Label_2731:
	mov	2337,r13		! source line 2337
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2346,r13		! source line 2346
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
	mov	2347,r13		! source line 2347
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
	mov	2351,r13		! source line 2351
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2736 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2735 = *_temp_2736  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2735 == sector then goto _Label_2734		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2734
!	jmp	_Label_2733
_Label_2733:
! THEN...
	mov	2352,r13		! source line 2352
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2352,r13		! source line 2352
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2737) then goto _runtimeErrorNullPointer
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
	mov	2354,r13		! source line 2354
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2740 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2739 = *_temp_2740  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2738 = sector + _temp_2739		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2742 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2741 = *_temp_2742  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2743 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2738  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2741  sizeInBytes=4
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
	mov	2357,r13		! source line 2357
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2744 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2744 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2358,r13		! source line 2358
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2745 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2745 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2734:
! ASSIGNMENT STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2747 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2746 = *_temp_2747  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2746 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0AS",r10
!   _temp_2748 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2748  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2361,r13		! source line 2361
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
	mov	2365,r13		! source line 2365
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2730
_Label_2732:
! SEND STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0SE",r10
!   _temp_2749 = &fileManagerLock
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
	mov	2376,r13		! source line 2376
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
	.word	_Label_2750
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2751
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2752
	.word	12
	.word	4
	.word	_Label_2753
	.word	16
	.word	4
	.word	_Label_2754
	.word	20
	.word	4
	.word	_Label_2755
	.word	24
	.word	4
	.word	_Label_2756
	.word	-16
	.word	4
	.word	_Label_2757
	.word	-20
	.word	4
	.word	_Label_2758
	.word	-24
	.word	4
	.word	_Label_2759
	.word	-28
	.word	4
	.word	_Label_2760
	.word	-32
	.word	4
	.word	_Label_2761
	.word	-36
	.word	4
	.word	_Label_2762
	.word	-40
	.word	4
	.word	_Label_2763
	.word	-44
	.word	4
	.word	_Label_2764
	.word	-48
	.word	4
	.word	_Label_2765
	.word	-52
	.word	4
	.word	_Label_2766
	.word	-56
	.word	4
	.word	_Label_2767
	.word	-60
	.word	4
	.word	_Label_2768
	.word	-64
	.word	4
	.word	_Label_2769
	.word	-68
	.word	4
	.word	_Label_2770
	.word	-72
	.word	4
	.word	_Label_2771
	.word	-76
	.word	4
	.word	_Label_2772
	.word	-80
	.word	4
	.word	_Label_2773
	.word	-84
	.word	4
	.word	_Label_2774
	.word	-88
	.word	4
	.word	_Label_2775
	.word	-92
	.word	4
	.word	_Label_2776
	.word	-96
	.word	4
	.word	_Label_2777
	.word	-100
	.word	4
	.word	_Label_2778
	.word	-104
	.word	4
	.word	_Label_2779
	.word	-9
	.word	1
	.word	_Label_2780
	.word	-10
	.word	1
	.word	_Label_2781
	.word	-108
	.word	4
	.word	_Label_2782
	.word	-112
	.word	4
	.word	_Label_2783
	.word	-116
	.word	4
	.word	_Label_2784
	.word	-120
	.word	4
	.word	_Label_2785
	.word	-124
	.word	4
	.word	_Label_2786
	.word	-128
	.word	4
	.word	0
_Label_2750:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2751:
	.ascii	"Pself\0"
	.align
_Label_2752:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2753:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2754:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2755:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2779:
	.byte	'C'
	.ascii	"_temp_2719\0"
	.align
_Label_2780:
	.byte	'C'
	.ascii	"_temp_2716\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2782:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2783:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2784:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2785:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2786:
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
_Label_3232:
	push	r0
	sub	r1,1,r1
	bne	_Label_3232
	mov	2381,r13		! source line 2381
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0SE",r10
!   _temp_2787 = &fileManagerLock
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
	mov	2398,r13		! source line 2398
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2793		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2793
!   _temp_2792 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2794
_Label_2793:
!   _temp_2792 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2794:
!   if _temp_2792 then goto _Label_2791 else goto _Label_2788
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2788
	jmp	_Label_2791
_Label_2791:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2797 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2796 = *_temp_2797  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2796 == 0 then goto _Label_2798		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2798
!   _temp_2795 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2799
_Label_2798:
!   _temp_2795 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2799:
!   if _temp_2795 then goto _Label_2790 else goto _Label_2788
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2788
	jmp	_Label_2790
_Label_2790:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2802 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2801 = *_temp_2802  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2801) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2803 = _temp_2801 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2800 = *_temp_2803  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2800 >= 0 then goto _Label_2789		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2789
!	jmp	_Label_2788
_Label_2788:
! THEN...
	mov	2399,r13		! source line 2399
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2804 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2804  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2399,r13		! source line 2399
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2789:
! ASSIGNMENT STATEMENT...
	mov	2401,r13		! source line 2401
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2805 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2805  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2402,r13		! source line 2402
	mov	"\0\0WH",r10
_Label_2806:
!   if numBytes <= 0 then goto _Label_2808		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2808
!	jmp	_Label_2807
_Label_2807:
	mov	2402,r13		! source line 2402
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2411,r13		! source line 2411
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
	mov	2412,r13		! source line 2412
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
	mov	2416,r13		! source line 2416
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2812 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2811 = *_temp_2812  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2811 == sector then goto _Label_2810		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2810
!	jmp	_Label_2809
_Label_2809:
! THEN...
	mov	2418,r13		! source line 2418
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2418,r13		! source line 2418
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2813) then goto _runtimeErrorNullPointer
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
_Label_2810:
! ASSIGNMENT STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2815 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2814 = *_temp_2815  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2814 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0AS",r10
!   _temp_2816 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2816  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2421,r13		! source line 2421
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2820 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2819 = *_temp_2820  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2819 != sector then goto _Label_2818		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2818
!	jmp	_Label_2817
_Label_2817:
	jmp	_Label_2821
_Label_2818:
! ELSE...
	mov	2424,r13		! source line 2424
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2824
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2824
	jmp	_Label_2823
_Label_2824:
!   if bytesToMove != 8192 then goto _Label_2823		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2823
!	jmp	_Label_2822
_Label_2822:
	jmp	_Label_2825
_Label_2823:
! ELSE...
	mov	2428,r13		! source line 2428
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2828 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2827 = *_temp_2828  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2826 = sector + _temp_2827		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2830 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2829 = *_temp_2830  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2831 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2826  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2829  sizeInBytes=4
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
_Label_2825:
! END IF...
_Label_2821:
! ASSIGNMENT STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2832 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2832 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2833 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2833 = 1  (sizeInBytes=1)
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
	mov	2437,r13		! source line 2437
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2806
_Label_2808:
! SEND STATEMENT...
	mov	2447,r13		! source line 2447
	mov	"\0\0SE",r10
!   _temp_2834 = &fileManagerLock
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
	mov	2449,r13		! source line 2449
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
	.word	_Label_2835
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2836
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2837
	.word	12
	.word	4
	.word	_Label_2838
	.word	16
	.word	4
	.word	_Label_2839
	.word	20
	.word	4
	.word	_Label_2840
	.word	24
	.word	4
	.word	_Label_2841
	.word	-16
	.word	4
	.word	_Label_2842
	.word	-20
	.word	4
	.word	_Label_2843
	.word	-24
	.word	4
	.word	_Label_2844
	.word	-28
	.word	4
	.word	_Label_2845
	.word	-32
	.word	4
	.word	_Label_2846
	.word	-36
	.word	4
	.word	_Label_2847
	.word	-40
	.word	4
	.word	_Label_2848
	.word	-44
	.word	4
	.word	_Label_2849
	.word	-48
	.word	4
	.word	_Label_2850
	.word	-52
	.word	4
	.word	_Label_2851
	.word	-56
	.word	4
	.word	_Label_2852
	.word	-60
	.word	4
	.word	_Label_2853
	.word	-64
	.word	4
	.word	_Label_2854
	.word	-68
	.word	4
	.word	_Label_2855
	.word	-72
	.word	4
	.word	_Label_2856
	.word	-76
	.word	4
	.word	_Label_2857
	.word	-80
	.word	4
	.word	_Label_2858
	.word	-84
	.word	4
	.word	_Label_2859
	.word	-88
	.word	4
	.word	_Label_2860
	.word	-92
	.word	4
	.word	_Label_2861
	.word	-96
	.word	4
	.word	_Label_2862
	.word	-100
	.word	4
	.word	_Label_2863
	.word	-104
	.word	4
	.word	_Label_2864
	.word	-108
	.word	4
	.word	_Label_2865
	.word	-112
	.word	4
	.word	_Label_2866
	.word	-9
	.word	1
	.word	_Label_2867
	.word	-10
	.word	1
	.word	_Label_2868
	.word	-116
	.word	4
	.word	_Label_2869
	.word	-120
	.word	4
	.word	_Label_2870
	.word	-124
	.word	4
	.word	_Label_2871
	.word	-128
	.word	4
	.word	_Label_2872
	.word	-132
	.word	4
	.word	_Label_2873
	.word	-136
	.word	4
	.word	0
_Label_2835:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2836:
	.ascii	"Pself\0"
	.align
_Label_2837:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2838:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2839:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2840:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2866:
	.byte	'C'
	.ascii	"_temp_2795\0"
	.align
_Label_2867:
	.byte	'C'
	.ascii	"_temp_2792\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2869:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2870:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2871:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2872:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2873:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2874
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2874:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2875
	.word	_sourceFileName
	.word	356		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2875:
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
_Label_3233:
	push	r0
	sub	r1,1,r1
	bne	_Label_3233
	mov	2485,r13		! source line 2485
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2487,r13		! source line 2487
	mov	"\0\0AS",r10
	mov	2487,r13		! source line 2487
	mov	"\0\0SE",r10
!   _temp_2876 = &_P_Kernel_frameManager
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
	mov	2488,r13		! source line 2488
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2490,r13		! source line 2490
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2490,r13		! source line 2490
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
	.word	_Label_2877
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2878
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2879
	.word	-12
	.word	4
	.word	0
_Label_2877:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2878:
	.ascii	"Pself\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2876\0"
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
_Label_3234:
	push	r0
	sub	r1,1,r1
	bne	_Label_3234
	mov	2495,r13		! source line 2495
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2880 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2880  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2496,r13		! source line 2496
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2497,r13		! source line 2497
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2881 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2881  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2498,r13		! source line 2498
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2499,r13		! source line 2499
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2882 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2882  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2500,r13		! source line 2500
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2501,r13		! source line 2501
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2883 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2883  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2502,r13		! source line 2502
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2503,r13		! source line 2503
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2884 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2884  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2504,r13		! source line 2504
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2505,r13		! source line 2505
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2885 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2885  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2506,r13		! source line 2506
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2507,r13		! source line 2507
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2508,r13		! source line 2508
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2508,r13		! source line 2508
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
	.word	_Label_2886
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2887
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2888
	.word	-12
	.word	4
	.word	_Label_2889
	.word	-16
	.word	4
	.word	_Label_2890
	.word	-20
	.word	4
	.word	_Label_2891
	.word	-24
	.word	4
	.word	_Label_2892
	.word	-28
	.word	4
	.word	_Label_2893
	.word	-32
	.word	4
	.word	0
_Label_2886:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2887:
	.ascii	"Pself\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2894
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2894:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2895
	.word	_sourceFileName
	.word	373		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2895:
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
_Label_3235:
	push	r0
	sub	r1,1,r1
	bne	_Label_3235
	mov	2519,r13		! source line 2519
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2896 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2896  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2520,r13		! source line 2520
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2521,r13		! source line 2521
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2897 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2897  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2522,r13		! source line 2522
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2899		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2899
!	jmp	_Label_2898
_Label_2898:
! THEN...
	mov	2524,r13		! source line 2524
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2524,r13		! source line 2524
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
	jmp	_Label_2900
_Label_2899:
! ELSE...
	mov	2526,r13		! source line 2526
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2901 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2901  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2526,r13		! source line 2526
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2900:
! RETURN STATEMENT...
	mov	2523,r13		! source line 2523
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
	.word	_Label_2902
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2903
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2904
	.word	-12
	.word	4
	.word	_Label_2905
	.word	-16
	.word	4
	.word	_Label_2906
	.word	-20
	.word	4
	.word	0
_Label_2902:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2903:
	.ascii	"Pself\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2896\0"
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
_Label_3236:
	push	r0
	sub	r1,1,r1
	bne	_Label_3236
	mov	2532,r13		! source line 2532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2542,r13		! source line 2542
	mov	"\0\0SE",r10
!   _temp_2907 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2908 = _temp_2907 + 4
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
	mov	2543,r13		! source line 2543
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2544,r13		! source line 2544
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
	mov	2545,r13		! source line 2545
	mov	"\0\0SE",r10
!   _temp_2909 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2910 = _temp_2909 + 4
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
	mov	2546,r13		! source line 2546
	mov	"\0\0RE",r10
	mov	2546,r13		! source line 2546
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2913 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2912  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2911  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2911  (sizeInBytes=1)
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
	.word	_Label_2914
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2915
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2916
	.word	12
	.word	4
	.word	_Label_2917
	.word	16
	.word	4
	.word	_Label_2918
	.word	-16
	.word	4
	.word	_Label_2919
	.word	-20
	.word	4
	.word	_Label_2920
	.word	-9
	.word	1
	.word	_Label_2921
	.word	-24
	.word	4
	.word	_Label_2922
	.word	-28
	.word	4
	.word	_Label_2923
	.word	-32
	.word	4
	.word	_Label_2924
	.word	-36
	.word	4
	.word	_Label_2925
	.word	-40
	.word	4
	.word	0
_Label_2914:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2915:
	.ascii	"Pself\0"
	.align
_Label_2916:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2917:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2920:
	.byte	'C'
	.ascii	"_temp_2911\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2925:
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
_Label_3237:
	push	r0
	sub	r1,1,r1
	bne	_Label_3237
	mov	2551,r13		! source line 2551
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0IF",r10
	mov	2556,r13		! source line 2556
	mov	"\0\0SE",r10
!   _temp_2929 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2930) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2929  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2928  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2928 then goto _Label_2927 else goto _Label_2926
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2926
	jmp	_Label_2927
_Label_2926:
! THEN...
	mov	2557,r13		! source line 2557
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2931 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2931  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2557,r13		! source line 2557
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2927:
! RETURN STATEMENT...
	mov	2559,r13		! source line 2559
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
	.word	_Label_2932
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2933
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2934
	.word	-16
	.word	4
	.word	_Label_2935
	.word	-20
	.word	4
	.word	_Label_2936
	.word	-24
	.word	4
	.word	_Label_2937
	.word	-9
	.word	1
	.word	_Label_2938
	.word	-28
	.word	4
	.word	0
_Label_2932:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2933:
	.ascii	"Pself\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_2937:
	.byte	'C'
	.ascii	"_temp_2928\0"
	.align
_Label_2938:
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
_Label_3238:
	push	r0
	sub	r1,1,r1
	bne	_Label_3238
	mov	2564,r13		! source line 2564
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2942 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2941 = *_temp_2942  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2941) then goto _Label_2940
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2940
!	jmp	_Label_2939
_Label_2939:
! THEN...
	mov	2591,r13		! source line 2591
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2943 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2943  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2591,r13		! source line 2591
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2940:
! IF STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0IF",r10
	mov	2595,r13		! source line 2595
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2947) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2946  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2946 == 1112300152 then goto _Label_2945		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2945
!	jmp	_Label_2944
_Label_2944:
! THEN...
	mov	2596,r13		! source line 2596
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2948 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2948  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2596,r13		! source line 2596
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2945:
! ASSIGNMENT STATEMENT...
	mov	2601,r13		! source line 2601
	mov	"\0\0AS",r10
	mov	2601,r13		! source line 2601
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2949) then goto _runtimeErrorNullPointer
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
	mov	2602,r13		! source line 2602
	mov	"\0\0AS",r10
	mov	2602,r13		! source line 2602
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2950) then goto _runtimeErrorNullPointer
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
	mov	2603,r13		! source line 2603
	mov	"\0\0AS",r10
	mov	2603,r13		! source line 2603
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2951) then goto _runtimeErrorNullPointer
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
	mov	2604,r13		! source line 2604
	mov	"\0\0AS",r10
	mov	2604,r13		! source line 2604
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2952) then goto _runtimeErrorNullPointer
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
	mov	2605,r13		! source line 2605
	mov	"\0\0AS",r10
	mov	2605,r13		! source line 2605
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2953) then goto _runtimeErrorNullPointer
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
	mov	2606,r13		! source line 2606
	mov	"\0\0AS",r10
	mov	2606,r13		! source line 2606
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2954) then goto _runtimeErrorNullPointer
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
	mov	2609,r13		! source line 2609
	mov	"\0\0IF",r10
!   _temp_2957 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2957) then goto _Label_2956
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2956
!	jmp	_Label_2955
_Label_2955:
! THEN...
	mov	2610,r13		! source line 2610
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2958 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2958  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2610,r13		! source line 2610
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2956:
! ASSIGNMENT STATEMENT...
	mov	2613,r13		! source line 2613
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
	mov	2617,r13		! source line 2617
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2960
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2960
!	jmp	_Label_2959
_Label_2959:
! THEN...
	mov	2618,r13		! source line 2618
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2961 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2961  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2618,r13		! source line 2618
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2960:
! IF STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0IF",r10
!   _temp_2964 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2964) then goto _Label_2963
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2963
!	jmp	_Label_2962
_Label_2962:
! THEN...
	mov	2624,r13		! source line 2624
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2965 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2965  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2624,r13		! source line 2624
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2625,r13		! source line 2625
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2963:
! IF STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0IF",r10
!   _temp_2968 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2968 then goto _Label_2967		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2967
!	jmp	_Label_2966
_Label_2966:
! THEN...
	mov	2628,r13		! source line 2628
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2969 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2969  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2628,r13		! source line 2628
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2967:
! ASSIGNMENT STATEMENT...
	mov	2631,r13		! source line 2631
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
	mov	2634,r13		! source line 2634
	mov	"\0\0IF",r10
!   _temp_2972 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2972) then goto _Label_2971
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2971
!	jmp	_Label_2970
_Label_2970:
! THEN...
	mov	2635,r13		! source line 2635
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2973 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2973  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2635,r13		! source line 2635
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2971:
! IF STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0IF",r10
!   _temp_2976 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2976 then goto _Label_2975		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2975
!	jmp	_Label_2974
_Label_2974:
! THEN...
	mov	2639,r13		! source line 2639
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2977 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2977  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2639,r13		! source line 2639
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2640,r13		! source line 2640
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2975:
! ASSIGNMENT STATEMENT...
	mov	2642,r13		! source line 2642
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
	mov	2645,r13		! source line 2645
	mov	"\0\0AS",r10
!   _temp_2980 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2979 = _temp_2980 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2978 = _temp_2979 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2978 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2982		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2982
!	jmp	_Label_2981
_Label_2981:
! THEN...
	mov	2661,r13		! source line 2661
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2983 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2983  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2661,r13		! source line 2661
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2984 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2984  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2662,r13		! source line 2662
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2985 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2985  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2663,r13		! source line 2663
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
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
_Label_2982:
! SEND STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0SE",r10
!   _temp_2986 = &_P_Kernel_frameManager
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
	mov	2672,r13		! source line 2672
	mov	"\0\0IF",r10
	mov	2672,r13		! source line 2672
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2990) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2989  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2989 == 707406378 then goto _Label_2988		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2988
!	jmp	_Label_2987
_Label_2987:
! THEN...
	mov	2673,r13		! source line 2673
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2991 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2991  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2673,r13		! source line 2673
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2674,r13		! source line 2674
	mov	"\0\0SE",r10
!   _temp_2992 = &_P_Kernel_frameManager
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
	mov	2675,r13		! source line 2675
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2988:
! ASSIGNMENT STATEMENT...
	mov	2679,r13		! source line 2679
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
	mov	2680,r13		! source line 2680
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2997 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2998 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2997  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2993:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2998 then goto _Label_2996		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2996
_Label_2994:
	mov	2680,r13		! source line 2680
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0AS",r10
	mov	2681,r13		! source line 2681
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
	mov	2684,r13		! source line 2684
	mov	"\0\0IF",r10
	mov	2684,r13		! source line 2684
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3002) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3001  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3001 then goto _Label_3000 else goto _Label_2999
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2999
	jmp	_Label_3000
_Label_2999:
! THEN...
	mov	2685,r13		! source line 2685
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3003 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3003  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2685,r13		! source line 2685
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2686,r13		! source line 2686
	mov	"\0\0SE",r10
!   _temp_3004 = &_P_Kernel_frameManager
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
	mov	2687,r13		! source line 2687
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3000:
! SEND STATEMENT...
	mov	2689,r13		! source line 2689
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
	mov	2690,r13		! source line 2690
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2995:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2993
! END FOR
_Label_2996:
! IF STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0IF",r10
	mov	2694,r13		! source line 2694
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3008) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3007  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3007 == 707406378 then goto _Label_3006		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3006
!	jmp	_Label_3005
_Label_3005:
! THEN...
	mov	2695,r13		! source line 2695
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3009 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3009  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2695,r13		! source line 2695
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2696,r13		! source line 2696
	mov	"\0\0SE",r10
!   _temp_3010 = &_P_Kernel_frameManager
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
	mov	2697,r13		! source line 2697
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3006:
! FOR STATEMENT...
	mov	2701,r13		! source line 2701
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3015 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3016 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3015  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3011:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3016 then goto _Label_3014		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3014
_Label_3012:
	mov	2701,r13		! source line 2701
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2702,r13		! source line 2702
	mov	"\0\0AS",r10
	mov	2702,r13		! source line 2702
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
	mov	2705,r13		! source line 2705
	mov	"\0\0IF",r10
	mov	2705,r13		! source line 2705
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3020) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3019  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3019 then goto _Label_3018 else goto _Label_3017
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3017
	jmp	_Label_3018
_Label_3017:
! THEN...
	mov	2706,r13		! source line 2706
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3021 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3021  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2706,r13		! source line 2706
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2707,r13		! source line 2707
	mov	"\0\0SE",r10
!   _temp_3022 = &_P_Kernel_frameManager
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
	mov	2708,r13		! source line 2708
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3018:
! ASSIGNMENT STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3013:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3011
! END FOR
_Label_3014:
! IF STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0IF",r10
	mov	2714,r13		! source line 2714
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3026) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3025  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3025 == 707406378 then goto _Label_3024		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3024
!	jmp	_Label_3023
_Label_3023:
! THEN...
	mov	2715,r13		! source line 2715
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3027 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3027  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2715,r13		! source line 2715
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2716,r13		! source line 2716
	mov	"\0\0SE",r10
!   _temp_3028 = &_P_Kernel_frameManager
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
	mov	2717,r13		! source line 2717
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3024:
! ASSIGNMENT STATEMENT...
	mov	2721,r13		! source line 2721
	mov	"\0\0AS",r10
	mov	2721,r13		! source line 2721
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
	mov	2725,r13		! source line 2725
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2728,r13		! source line 2728
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
	.word	_Label_3029
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3030
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3031
	.word	12
	.word	4
	.word	_Label_3032
	.word	-16
	.word	4
	.word	_Label_3033
	.word	-20
	.word	4
	.word	_Label_3034
	.word	-24
	.word	4
	.word	_Label_3035
	.word	-28
	.word	4
	.word	_Label_3036
	.word	-32
	.word	4
	.word	_Label_3037
	.word	-36
	.word	4
	.word	_Label_3038
	.word	-40
	.word	4
	.word	_Label_3039
	.word	-9
	.word	1
	.word	_Label_3040
	.word	-44
	.word	4
	.word	_Label_3041
	.word	-48
	.word	4
	.word	_Label_3042
	.word	-52
	.word	4
	.word	_Label_3043
	.word	-56
	.word	4
	.word	_Label_3044
	.word	-60
	.word	4
	.word	_Label_3045
	.word	-64
	.word	4
	.word	_Label_3046
	.word	-68
	.word	4
	.word	_Label_3047
	.word	-72
	.word	4
	.word	_Label_3048
	.word	-76
	.word	4
	.word	_Label_3049
	.word	-10
	.word	1
	.word	_Label_3050
	.word	-80
	.word	4
	.word	_Label_3051
	.word	-84
	.word	4
	.word	_Label_3052
	.word	-88
	.word	4
	.word	_Label_3053
	.word	-92
	.word	4
	.word	_Label_3054
	.word	-96
	.word	4
	.word	_Label_3055
	.word	-100
	.word	4
	.word	_Label_3056
	.word	-104
	.word	4
	.word	_Label_3057
	.word	-108
	.word	4
	.word	_Label_3058
	.word	-112
	.word	4
	.word	_Label_3059
	.word	-116
	.word	4
	.word	_Label_3060
	.word	-120
	.word	4
	.word	_Label_3061
	.word	-124
	.word	4
	.word	_Label_3062
	.word	-128
	.word	4
	.word	_Label_3063
	.word	-132
	.word	4
	.word	_Label_3064
	.word	-136
	.word	4
	.word	_Label_3065
	.word	-140
	.word	4
	.word	_Label_3066
	.word	-144
	.word	4
	.word	_Label_3067
	.word	-148
	.word	4
	.word	_Label_3068
	.word	-152
	.word	4
	.word	_Label_3069
	.word	-156
	.word	4
	.word	_Label_3070
	.word	-160
	.word	4
	.word	_Label_3071
	.word	-164
	.word	4
	.word	_Label_3072
	.word	-168
	.word	4
	.word	_Label_3073
	.word	-172
	.word	4
	.word	_Label_3074
	.word	-176
	.word	4
	.word	_Label_3075
	.word	-180
	.word	4
	.word	_Label_3076
	.word	-184
	.word	4
	.word	_Label_3077
	.word	-188
	.word	4
	.word	_Label_3078
	.word	-192
	.word	4
	.word	_Label_3079
	.word	-196
	.word	4
	.word	_Label_3080
	.word	-200
	.word	4
	.word	_Label_3081
	.word	-204
	.word	4
	.word	_Label_3082
	.word	-208
	.word	4
	.word	_Label_3083
	.word	-212
	.word	4
	.word	_Label_3084
	.word	-216
	.word	4
	.word	_Label_3085
	.word	-220
	.word	4
	.word	_Label_3086
	.word	-224
	.word	4
	.word	_Label_3087
	.word	-228
	.word	4
	.word	_Label_3088
	.word	-232
	.word	4
	.word	_Label_3089
	.word	-236
	.word	4
	.word	_Label_3090
	.word	-240
	.word	4
	.word	_Label_3091
	.word	-244
	.word	4
	.word	_Label_3092
	.word	-248
	.word	4
	.word	_Label_3093
	.word	-252
	.word	4
	.word	_Label_3094
	.word	-256
	.word	4
	.word	_Label_3095
	.word	-260
	.word	4
	.word	_Label_3096
	.word	-264
	.word	4
	.word	_Label_3097
	.word	-268
	.word	4
	.word	0
_Label_3029:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3030:
	.ascii	"Pself\0"
	.align
_Label_3031:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_3025\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_3021\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3039:
	.byte	'C'
	.ascii	"_temp_3019\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3049:
	.byte	'C'
	.ascii	"_temp_3001\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_2997\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_2990\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_2986\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_2985\0"
	.align
_Label_3058:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_3059:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_3060:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_3062:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_2976\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_3069:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_3070:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_3071:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_3072:
	.byte	'?'
	.ascii	"_temp_2958\0"
	.align
_Label_3073:
	.byte	'?'
	.ascii	"_temp_2957\0"
	.align
_Label_3074:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_3075:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_3076:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_3077:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_3078:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_3079:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_3080:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_3081:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_3082:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_3083:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_3084:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_3085:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_3086:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3087:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3088:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3089:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3090:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3091:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3092:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3093:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3094:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3095:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3096:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3097:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
