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
	.export	_Method_P_Kernel_ProcessManager_6
	.export	_Method_P_Kernel_ProcessManager_7
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
	.skip	1756
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
_StringConst_202:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_201:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_200:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_199:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_198:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_197:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_196:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_195:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_194:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_193:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_192:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_191:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_190:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_189:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_188:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_187:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_186:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_185:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_184:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_183:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_182:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_181:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_180:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_179:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_178:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_177:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_176:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_175:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_174:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_173:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_172:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_171:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_170:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_169:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_168:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_167:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_166:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_165:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_164:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_163:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_162:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_161:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_160:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_159:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_158:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_157:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_156:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_155:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_154:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_153:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_152:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_151:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_150:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_149:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_148:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_147:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_146:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_145:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_143:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_142:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_141:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_140:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_139:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_138:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_137:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_136:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_135:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_134:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_133:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_132:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_131:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_130:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_129:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_128:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_127:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_126:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_125:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_124:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_123:
	.word	38			! length
	.ascii	"This function should never be invoked!"
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
	.ascii	"TestProgram4"
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
	.word	47			! length
	.ascii	"Invalid file descriptor [From Handle_Sys_CLose]"
	.align
_StringConst_56:
	.word	21			! length
	.ascii	"Invalid newCurrentPos"
	.align
_StringConst_55:
	.word	23			! length
	.ascii	"Invalid file descriptor"
	.align
_StringConst_54:
	.word	16			! length
	.ascii	"SynchRead failed"
	.align
_StringConst_53:
	.word	24			! length
	.ascii	"Error while reading file"
	.align
_StringConst_52:
	.word	24			! length
	.ascii	"Error while reading file"
	.align
_StringConst_51:
	.word	40			! length
	.ascii	"Invalid file descriptor as file not open"
	.align
_StringConst_50:
	.word	19			! length
	.ascii	"Invalid sizeInBytes"
	.align
_StringConst_49:
	.word	23			! length
	.ascii	"Invalid file descriptor"
	.align
_StringConst_48:
	.word	16			! length
	.ascii	"SynchRead failed"
	.align
_StringConst_47:
	.word	24			! length
	.ascii	"Error while reading file"
	.align
_StringConst_46:
	.word	24			! length
	.ascii	"Error while reading file"
	.align
_StringConst_45:
	.word	40			! length
	.ascii	"Invalid file descriptor as file not open"
	.align
_StringConst_44:
	.word	25			! length
	.ascii	"Invalid para: sizeInBytes"
	.align
_StringConst_43:
	.word	23			! length
	.ascii	"Invalid File Descriptor"
	.align
_StringConst_42:
	.word	14			! length
	.ascii	"no empty slots"
	.align
_StringConst_41:
	.word	48			! length
	.ascii	"The file name is too long or can\'t open the file"
	.align
_StringConst_40:
	.word	10			! length
	.ascii	"filename: "
	.align
_StringConst_39:
	.word	25			! length
	.ascii	"Invoke System call Create"
	.align
_StringConst_38:
	.word	21			! length
	.ascii	"Failed to open file: "
	.align
_StringConst_37:
	.word	39			! length
	.ascii	"Failed to get string from virtual space"
	.align
_StringConst_36:
	.word	26			! length
	.ascii	"Invoke System call Execute"
	.align
_StringConst_35:
	.word	27			! length
	.ascii	"Invoke System call Shutdown"
	.align
_StringConst_34:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_33:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_32:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_31:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_30:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_29:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_27:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_24:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_23:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
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
	set	0x46495313,r4		! myHashVal = 1179210515
	cmp	r3,r4
	be	_Label_212
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
_Label_212:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_213
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_213
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_213
_Label_213:
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
_Label_3924:
	push	r0
	sub	r1,1,r1
	bne	_Label_3924
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_214 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_214  sizeInBytes=4
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
_Label_3925:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3925
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_218 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_219 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_218  sizeInBytes=4
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
!   _temp_220 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_221 = _temp_220 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_221 = 3  (sizeInBytes=4)
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
_Label_3926:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3926
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_223 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_224 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_223  sizeInBytes=4
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
!   _temp_225 = _function_211_IdleFunction
	set	_function_211_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_226 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_225  sizeInBytes=4
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
	.word	_Label_227
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_228
	.word	-12
	.word	4
	.word	_Label_229
	.word	-16
	.word	4
	.word	_Label_230
	.word	-20
	.word	4
	.word	_Label_231
	.word	-24
	.word	4
	.word	_Label_232
	.word	-28
	.word	4
	.word	_Label_233
	.word	-32
	.word	4
	.word	_Label_234
	.word	-36
	.word	4
	.word	_Label_235
	.word	-40
	.word	4
	.word	_Label_236
	.word	-44
	.word	4
	.word	_Label_237
	.word	-48
	.word	4
	.word	_Label_238
	.word	-52
	.word	4
	.word	_Label_239
	.word	-56
	.word	4
	.word	_Label_240
	.word	-60
	.word	4
	.word	0
_Label_227:
	.ascii	"InitializeScheduler\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_211_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_211_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3927:
	push	r0
	sub	r1,1,r1
	bne	_Label_3927
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_241:
!	jmp	_Label_242
_Label_242:
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
!   _temp_246 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_244 else goto _Label_245
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_245
	jmp	_Label_244
_Label_244:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_247
_Label_245:
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
_Label_247:
! END WHILE...
	jmp	_Label_241
_Label_243:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_211_IdleFunction:
	.word	_sourceFileName
	.word	_Label_248
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_249
	.word	8
	.word	4
	.word	_Label_250
	.word	-12
	.word	4
	.word	_Label_251
	.word	-16
	.word	4
	.word	0
_Label_248:
	.ascii	"IdleFunction\0"
	.align
_Label_249:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_251:
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
_Label_3928:
	push	r0
	sub	r1,1,r1
	bne	_Label_3928
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
!   _temp_254 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_254 ) then goto _Label_253		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_253
!	jmp	_Label_252
_Label_252:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_256 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_256 [0 ] into _temp_257
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
!   _temp_255 = _temp_257		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_255  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_253:
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
!   _temp_258 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_258 = 3  (sizeInBytes=4)
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
_Label_259:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_263 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_262  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_262 then goto _Label_261 else goto _Label_260
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_260
	jmp	_Label_261
_Label_260:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_264 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_265 = &_P_Kernel_threadManager
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
	jmp	_Label_259
_Label_261:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_268 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_268 ) then goto _Label_267		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_267
!	jmp	_Label_266
_Label_266:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_270 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_270 [0 ] into _temp_271
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
!   _temp_269 = _temp_271		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_269  sizeInBytes=4
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
!   _temp_273 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_272 = *_temp_273  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_272) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_274 = _temp_272 + 32
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
_Label_267:
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
	.word	_Label_275
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_276
	.word	8
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
	.word	_Label_280
	.word	-28
	.word	4
	.word	_Label_281
	.word	-32
	.word	4
	.word	_Label_282
	.word	-36
	.word	4
	.word	_Label_283
	.word	-40
	.word	4
	.word	_Label_284
	.word	-44
	.word	4
	.word	_Label_285
	.word	-48
	.word	4
	.word	_Label_286
	.word	-52
	.word	4
	.word	_Label_287
	.word	-9
	.word	1
	.word	_Label_288
	.word	-56
	.word	4
	.word	_Label_289
	.word	-60
	.word	4
	.word	_Label_290
	.word	-64
	.word	4
	.word	_Label_291
	.word	-68
	.word	4
	.word	_Label_292
	.word	-72
	.word	4
	.word	_Label_293
	.word	-76
	.word	4
	.word	_Label_294
	.word	-80
	.word	4
	.word	0
_Label_275:
	.ascii	"Run\0"
	.align
_Label_276:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_287:
	.byte	'C'
	.ascii	"_temp_262\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_293:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_294:
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
_Label_3929:
	push	r0
	sub	r1,1,r1
	bne	_Label_3929
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
!   _temp_295 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_296 = _function_210_ThreadPrintShort
	set	_function_210_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_297 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_296  sizeInBytes=4
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
	.word	_Label_298
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_299
	.word	-12
	.word	4
	.word	_Label_300
	.word	-16
	.word	4
	.word	_Label_301
	.word	-20
	.word	4
	.word	_Label_302
	.word	-24
	.word	4
	.word	0
_Label_298:
	.ascii	"PrintReadyList\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_302:
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
_Label_3930:
	push	r0
	sub	r1,1,r1
	bne	_Label_3930
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
!   _temp_303 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_303  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_305 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_304 = *_temp_305  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_304  sizeInBytes=4
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
!   _temp_306 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_306  sizeInBytes=4
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
	.word	_Label_307
	.word	0		! total size of parameters
	.word	28		! frame size = 28
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
	.word	0
_Label_307:
	.ascii	"ThreadStartMain\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_312:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_313:
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
_Label_3931:
	push	r0
	sub	r1,1,r1
	bne	_Label_3931
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
!   _temp_314 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_315 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_315  sizeInBytes=4
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
	.word	_Label_316
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_317
	.word	-12
	.word	4
	.word	_Label_318
	.word	-16
	.word	4
	.word	_Label_319
	.word	-20
	.word	4
	.word	0
_Label_316:
	.ascii	"ThreadFinish\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_319:
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
_Label_3932:
	push	r0
	sub	r1,1,r1
	bne	_Label_3932
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
!   _temp_320 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_322		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_322
!	jmp	_Label_321
_Label_321:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_323 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
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
!   _temp_325 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_324 = *_temp_325  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_322:
! CALL STATEMENT...
!   _temp_326 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_326  sizeInBytes=4
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
!   _temp_327 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_328 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
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
	.word	_Label_329
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_330
	.word	8
	.word	4
	.word	_Label_331
	.word	-12
	.word	4
	.word	_Label_332
	.word	-16
	.word	4
	.word	_Label_333
	.word	-20
	.word	4
	.word	_Label_334
	.word	-24
	.word	4
	.word	_Label_335
	.word	-28
	.word	4
	.word	_Label_336
	.word	-32
	.word	4
	.word	_Label_337
	.word	-36
	.word	4
	.word	_Label_338
	.word	-40
	.word	4
	.word	0
_Label_329:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_330:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_338:
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
_Label_3933:
	push	r0
	sub	r1,1,r1
	bne	_Label_3933
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
!   if newStatus != 1 then goto _Label_340		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_340
!	jmp	_Label_339
_Label_339:
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
	jmp	_Label_341
_Label_340:
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
_Label_341:
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
	.word	_Label_342
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_343
	.word	8
	.word	4
	.word	_Label_344
	.word	-12
	.word	4
	.word	0
_Label_342:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_343:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_344:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_210_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_210_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3934:
	push	r0
	sub	r1,1,r1
	bne	_Label_3934
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
!   if t == 0 then goto _Label_348		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_348
!   _temp_347 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_349
_Label_348:
!   _temp_347 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_349:
!   if _temp_347 then goto _Label_346 else goto _Label_345
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_345
	jmp	_Label_346
_Label_345:
! THEN...
	mov	650,r13		! source line 650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_350 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
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
_Label_346:
! CALL STATEMENT...
!   _temp_351 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
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
!   _temp_353 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_352 = *_temp_353  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_354 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
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
!   _temp_363 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_362 = *_temp_363  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_357
	cmp	r1,2
	be	_Label_358
	cmp	r1,3
	be	_Label_359
	cmp	r1,4
	be	_Label_360
	cmp	r1,5
	be	_Label_361
	jmp	_Label_355
! CASE 1...
_Label_357:
! CALL STATEMENT...
!   _temp_364 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_356
! CASE 2...
_Label_358:
! CALL STATEMENT...
!   _temp_365 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_356
! CASE 3...
_Label_359:
! CALL STATEMENT...
!   _temp_366 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_356
! CASE 4...
_Label_360:
! CALL STATEMENT...
!   _temp_367 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_367  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0BR",r10
	jmp	_Label_356
! CASE 5...
_Label_361:
! CALL STATEMENT...
!   _temp_368 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0BR",r10
	jmp	_Label_356
! DEFAULT CASE...
_Label_355:
! CALL STATEMENT...
!   _temp_369 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
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
_Label_356:
! CALL STATEMENT...
!   _temp_370 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_370  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_371 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_372 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
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
_RoutineDescriptor__function_210_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_373
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_374
	.word	8
	.word	4
	.word	_Label_375
	.word	-16
	.word	4
	.word	_Label_376
	.word	-20
	.word	4
	.word	_Label_377
	.word	-24
	.word	4
	.word	_Label_378
	.word	-28
	.word	4
	.word	_Label_379
	.word	-32
	.word	4
	.word	_Label_380
	.word	-36
	.word	4
	.word	_Label_381
	.word	-40
	.word	4
	.word	_Label_382
	.word	-44
	.word	4
	.word	_Label_383
	.word	-48
	.word	4
	.word	_Label_384
	.word	-52
	.word	4
	.word	_Label_385
	.word	-56
	.word	4
	.word	_Label_386
	.word	-60
	.word	4
	.word	_Label_387
	.word	-64
	.word	4
	.word	_Label_388
	.word	-68
	.word	4
	.word	_Label_389
	.word	-72
	.word	4
	.word	_Label_390
	.word	-76
	.word	4
	.word	_Label_391
	.word	-9
	.word	1
	.word	_Label_392
	.word	-80
	.word	4
	.word	0
_Label_373:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_374:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_391:
	.byte	'C'
	.ascii	"_temp_347\0"
	.align
_Label_392:
	.byte	'I'
	.ascii	"oldStatus\0"
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
	mov	17,r1
_Label_3935:
	push	r0
	sub	r1,1,r1
	bne	_Label_3935
	mov	993,r13		! source line 993
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! pcb
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_393 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: pcb = *_temp_393  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_395 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_394 = *_temp_395  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_394) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_396 = _temp_394 + 28
	load	[r14+-56],r1
	add	r1,28,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_396 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-48],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	998,r13		! source line 998
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_398 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_397 = *_temp_398  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_397) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_399 = _temp_397 + 24
	load	[r14+-44],r1
	add	r1,24,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_399 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_400 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_400 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_401 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_401 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=junk  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1002,r13		! source line 1002
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_403 = pcb + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_402 = _temp_403		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_404 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_402  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0SE",r10
!   _temp_405 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1006,r13		! source line 1006
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_406
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_407
	.word	8
	.word	4
	.word	_Label_408
	.word	-12
	.word	4
	.word	_Label_409
	.word	-16
	.word	4
	.word	_Label_410
	.word	-20
	.word	4
	.word	_Label_411
	.word	-24
	.word	4
	.word	_Label_412
	.word	-28
	.word	4
	.word	_Label_413
	.word	-32
	.word	4
	.word	_Label_414
	.word	-36
	.word	4
	.word	_Label_415
	.word	-40
	.word	4
	.word	_Label_416
	.word	-44
	.word	4
	.word	_Label_417
	.word	-48
	.word	4
	.word	_Label_418
	.word	-52
	.word	4
	.word	_Label_419
	.word	-56
	.word	4
	.word	_Label_420
	.word	-60
	.word	4
	.word	_Label_421
	.word	-64
	.word	4
	.word	_Label_422
	.word	-68
	.word	4
	.word	0
_Label_406:
	.ascii	"ProcessFinish\0"
	.align
_Label_407:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_421:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_422:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_209_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_209_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3936:
	push	r0
	sub	r1,1,r1
	bne	_Label_3936
	mov	1012,r13		! source line 1012
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_423 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_423  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1016,r13		! source line 1016
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1017,r13		! source line 1017
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1017,r13		! source line 1017
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_209_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_424
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_425
	.word	8
	.word	4
	.word	_Label_426
	.word	-12
	.word	4
	.word	0
_Label_424:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_425:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_423\0"
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
_Label_3937:
	push	r0
	sub	r1,1,r1
	bne	_Label_3937
	mov	1492,r13		! source line 1492
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1504,r13		! source line 1504
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
	mov	1505,r13		! source line 1505
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1505,r13		! source line 1505
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
	.word	_Label_427
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_427:
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
_Label_3938:
	push	r0
	sub	r1,1,r1
	bne	_Label_3938
	mov	1510,r13		! source line 1510
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1520,r13		! source line 1520
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1522,r13		! source line 1522
	mov	"\0\0IF",r10
!   _temp_431 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_432 = _temp_431 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_430 = *_temp_432  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_430 == 0 then goto _Label_429		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_429
!	jmp	_Label_428
_Label_428:
! THEN...
	mov	1523,r13		! source line 1523
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0SE",r10
!   _temp_434 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_435 = _temp_434 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_433 = *_temp_435  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_433) then goto _runtimeErrorNullPointer
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
_Label_429:
! RETURN STATEMENT...
	mov	1522,r13		! source line 1522
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
	.word	_Label_436
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_437
	.word	-12
	.word	4
	.word	_Label_438
	.word	-16
	.word	4
	.word	_Label_439
	.word	-20
	.word	4
	.word	_Label_440
	.word	-24
	.word	4
	.word	_Label_441
	.word	-28
	.word	4
	.word	_Label_442
	.word	-32
	.word	4
	.word	0
_Label_436:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_430\0"
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
	mov	1529,r13		! source line 1529
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1538,r13		! source line 1538
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1538,r13		! source line 1538
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
	.word	_Label_443
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_443:
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
_Label_3939:
	push	r0
	sub	r1,1,r1
	bne	_Label_3939
	mov	1543,r13		! source line 1543
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1549,r13		! source line 1549
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_444 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1550,r13		! source line 1550
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1550,r13		! source line 1550
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
	.word	_Label_445
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_446
	.word	-12
	.word	4
	.word	0
_Label_445:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_444\0"
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
_Label_3940:
	push	r0
	sub	r1,1,r1
	bne	_Label_3940
	mov	1555,r13		! source line 1555
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_447 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_447  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1562,r13		! source line 1562
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1562,r13		! source line 1562
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
	.word	_Label_448
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_449
	.word	-12
	.word	4
	.word	0
_Label_448:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_447\0"
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
_Label_3941:
	push	r0
	sub	r1,1,r1
	bne	_Label_3941
	mov	1567,r13		! source line 1567
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1573,r13		! source line 1573
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_450 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_450  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1574,r13		! source line 1574
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1574,r13		! source line 1574
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
	.word	_Label_451
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_452
	.word	-12
	.word	4
	.word	0
_Label_451:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_450\0"
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
_Label_3942:
	push	r0
	sub	r1,1,r1
	bne	_Label_3942
	mov	1579,r13		! source line 1579
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_453 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_453  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1586,r13		! source line 1586
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1586,r13		! source line 1586
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
	.word	_Label_454
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_455
	.word	-12
	.word	4
	.word	0
_Label_454:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_453\0"
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
_Label_3943:
	push	r0
	sub	r1,1,r1
	bne	_Label_3943
	mov	1591,r13		! source line 1591
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1597,r13		! source line 1597
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_456 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_456  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1598,r13		! source line 1598
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1598,r13		! source line 1598
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
	.word	_Label_457
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_458
	.word	-12
	.word	4
	.word	0
_Label_457:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_456\0"
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
_Label_3944:
	push	r0
	sub	r1,1,r1
	bne	_Label_3944
	mov	1603,r13		! source line 1603
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_459 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_459  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1610,r13		! source line 1610
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1610,r13		! source line 1610
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
	.word	_Label_460
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_461
	.word	-12
	.word	4
	.word	0
_Label_460:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_459\0"
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
_Label_3945:
	push	r0
	sub	r1,1,r1
	bne	_Label_3945
	mov	1615,r13		! source line 1615
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_462 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_462  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1622,r13		! source line 1622
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1622,r13		! source line 1622
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
	.word	_Label_463
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_464
	.word	-12
	.word	4
	.word	0
_Label_463:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_208_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_208_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3946:
	push	r0
	sub	r1,1,r1
	bne	_Label_3946
	mov	1627,r13		! source line 1627
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_465 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_465  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1632,r13		! source line 1632
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1633,r13		! source line 1633
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_466 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_466  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1634,r13		! source line 1634
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1637,r13		! source line 1637
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_470 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_469 = *_temp_470  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_469 == 0 then goto _Label_468		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_468
!	jmp	_Label_467
_Label_467:
! THEN...
	mov	1638,r13		! source line 1638
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1638,r13		! source line 1638
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_472 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_471 = *_temp_472  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_471) then goto _runtimeErrorNullPointer
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
	jmp	_Label_473
_Label_468:
! ELSE...
	mov	1640,r13		! source line 1640
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_474 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_474  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1640,r13		! source line 1640
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_473:
! SEND STATEMENT...
	mov	1642,r13		! source line 1642
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
	mov	1648,r13		! source line 1648
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_208_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_475
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_476
	.word	8
	.word	4
	.word	_Label_477
	.word	-12
	.word	4
	.word	_Label_478
	.word	-16
	.word	4
	.word	_Label_479
	.word	-20
	.word	4
	.word	_Label_480
	.word	-24
	.word	4
	.word	_Label_481
	.word	-28
	.word	4
	.word	_Label_482
	.word	-32
	.word	4
	.word	_Label_483
	.word	-36
	.word	4
	.word	0
_Label_475:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_476:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_465\0"
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
_Label_3947:
	push	r0
	sub	r1,1,r1
	bne	_Label_3947
	mov	1653,r13		! source line 1653
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1660,r13		! source line 1660
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1674,r13		! source line 1674
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3948
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_484
_Label_3948:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_484
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_484
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_498,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_498:
	jmp	_Label_490	! 1:	
	jmp	_Label_497	! 2:	
	jmp	_Label_487	! 3:	
	jmp	_Label_486	! 4:	
	jmp	_Label_489	! 5:	
	jmp	_Label_488	! 6:	
	jmp	_Label_491	! 7:	
	jmp	_Label_492	! 8:	
	jmp	_Label_493	! 9:	
	jmp	_Label_494	! 10:	
	jmp	_Label_495	! 11:	
	jmp	_Label_496	! 12:	
! CASE 4...
_Label_486:
! RETURN STATEMENT...
	mov	1676,r13		! source line 1676
	mov	"\0\0RE",r10
!   Call the function
	mov	1676,r13		! source line 1676
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_499  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_499  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_487:
! CALL STATEMENT...
!   Call the function
	mov	1678,r13		! source line 1678
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1679,r13		! source line 1679
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_488:
! RETURN STATEMENT...
	mov	1681,r13		! source line 1681
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1681,r13		! source line 1681
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_500  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_500  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_489:
! RETURN STATEMENT...
	mov	1683,r13		! source line 1683
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1683,r13		! source line 1683
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_501  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_501  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_490:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1685,r13		! source line 1685
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1686,r13		! source line 1686
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_491:
! RETURN STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1688,r13		! source line 1688
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_502  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_502  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_492:
! RETURN STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1690,r13		! source line 1690
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_503  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_503  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_493:
! RETURN STATEMENT...
	mov	1692,r13		! source line 1692
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
	mov	1692,r13		! source line 1692
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_504  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_504  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_494:
! RETURN STATEMENT...
	mov	1694,r13		! source line 1694
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
	mov	1694,r13		! source line 1694
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_505  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_505  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_495:
! RETURN STATEMENT...
	mov	1696,r13		! source line 1696
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1696,r13		! source line 1696
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_506  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_506  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_496:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1698,r13		! source line 1698
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1699,r13		! source line 1699
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_497:
! CALL STATEMENT...
!   Call the function
	mov	1701,r13		! source line 1701
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1702,r13		! source line 1702
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_484:
! CALL STATEMENT...
!   _temp_507 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_507  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1704,r13		! source line 1704
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1705,r13		! source line 1705
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1706,r13		! source line 1706
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_508 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_508  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1707,r13		! source line 1707
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_485:
! RETURN STATEMENT...
	mov	1709,r13		! source line 1709
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
	.word	_Label_509
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_510
	.word	8
	.word	4
	.word	_Label_511
	.word	12
	.word	4
	.word	_Label_512
	.word	16
	.word	4
	.word	_Label_513
	.word	20
	.word	4
	.word	_Label_514
	.word	24
	.word	4
	.word	_Label_515
	.word	-12
	.word	4
	.word	_Label_516
	.word	-16
	.word	4
	.word	_Label_517
	.word	-20
	.word	4
	.word	_Label_518
	.word	-24
	.word	4
	.word	_Label_519
	.word	-28
	.word	4
	.word	_Label_520
	.word	-32
	.word	4
	.word	_Label_521
	.word	-36
	.word	4
	.word	_Label_522
	.word	-40
	.word	4
	.word	_Label_523
	.word	-44
	.word	4
	.word	_Label_524
	.word	-48
	.word	4
	.word	0
_Label_509:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_510:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_511:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_512:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_513:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_514:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_499\0"
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
	mov	1,r1
_Label_3949:
	push	r0
	sub	r1,1,r1
	bne	_Label_3949
	mov	1714,r13		! source line 1714
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1715,r13		! source line 1715
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1715,r13		! source line 1715
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_525
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_526
	.word	8
	.word	4
	.word	0
_Label_525:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_526:
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
	mov	2,r1
_Label_3950:
	push	r0
	sub	r1,1,r1
	bne	_Label_3950
	mov	1720,r13		! source line 1720
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_527 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_527  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1721,r13		! source line 1721
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1721,r13		! source line 1721
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
	.word	_Label_528
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_529
	.word	-12
	.word	4
	.word	0
_Label_528:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_527\0"
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
	mov	1,r1
_Label_3951:
	push	r0
	sub	r1,1,r1
	bne	_Label_3951
	mov	1726,r13		! source line 1726
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1727,r13		! source line 1727
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
! RETURN STATEMENT...
	mov	1727,r13		! source line 1727
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_530
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_530:
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
	mov	49,r1
_Label_3952:
	push	r0
	sub	r1,1,r1
	bne	_Label_3952
	mov	1732,r13		! source line 1732
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0AS",r10
	mov	1739,r13		! source line 1739
	mov	"\0\0SE",r10
!   _temp_531 = &_P_Kernel_processManager
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
	mov	1740,r13		! source line 1740
	mov	"\0\0AS",r10
	mov	1740,r13		! source line 1740
	mov	"\0\0SE",r10
!   _temp_532 = &_P_Kernel_threadManager
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
	mov	1741,r13		! source line 1741
	mov	"\0\0AS",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_533 = childPCB + 24
	load	[r14+-172],r1
	add	r1,24,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_533 = childThread  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r14+-160],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0AS",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_534 = childPCB + 16
	load	[r14+-172],r1
	add	r1,16,r1
	store	r1,[r14+-156]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_537 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-144]
!   Data Move: _temp_536 = *_temp_537  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_536) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_538 = _temp_536 + 12
	load	[r14+-148],r1
	add	r1,12,r1
	store	r1,[r14+-140]
!   Data Move: _temp_535 = *_temp_538  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   Data Move: *_temp_534 = _temp_535  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r14+-156],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1743,r13		! source line 1743
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_539 = childThread + 68
	load	[r14+-176],r1
	add	r1,68,r1
	store	r1,[r14+-136]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_541 = childThread + 88
	load	[r14+-176],r1
	add	r1,88,r1
	store	r1,[r14+-128]
!   Move address of _temp_541 [999 ] into _temp_542
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
!   _temp_540 = _temp_542		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-132]
!   Data Move: *_temp_539 = _temp_540  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r14+-136],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1744,r13		! source line 1744
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_543 = childThread + 4160
	load	[r14+-176],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: *_temp_543 = childPCB  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r14+-120],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1745,r13		! source line 1745
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_544 = childThread + 76
	load	[r14+-176],r1
	add	r1,76,r1
	store	r1,[r14+-116]
!   Data Move: *_temp_544 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-116],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_546 = childThread + 4096
	load	[r14+-176],r1
	add	r1,4096,r1
	store	r1,[r14+-108]
!   Move address of _temp_546 [0 ] into _temp_547
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
!   _temp_545 = _temp_547		(4 bytes)
	load	[r14+-104],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_545  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1746,r13		! source line 1746
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1747,r13		! source line 1747
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1747,r13		! source line 1747
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	1748,r13		! source line 1748
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_549 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_548 = *_temp_549  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_548) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_550 = _temp_548 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   _temp_551 = _temp_550 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Data Move: tmp = *_temp_551  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-180]
! IF STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0IF",r10
!   if tmp <= 0 then goto _Label_553		(int)
	load	[r14+-180],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_553
!	jmp	_Label_552
_Label_552:
! THEN...
	mov	1750,r13		! source line 1750
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1750,r13		! source line 1750
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_555 = childPCB + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_554 = _temp_555		(4 bytes)
	load	[r14+-80],r1
	store	r1,[r14+-84]
!   _temp_556 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_554  sizeInBytes=4
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
	mov	1751,r13		! source line 1751
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_561 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_562 = tmp - 1		(int)
	load	[r14+-180],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_561  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-184]
_Label_557:
!   Perform the FOR-LOOP termination test
!   if i > _temp_562 then goto _Label_560		
	load	[r14+-184],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_560
_Label_558:
	mov	1751,r13		! source line 1751
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_564 = childPCB + 32
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
!   Retrieve Result: targetName=_temp_563  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
	mov	1753,r13		! source line 1753
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_567 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_566 = *_temp_567  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_566) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_568 = _temp_566 + 32
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
!   Retrieve Result: targetName=_temp_565  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_563  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_565  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1752,r13		! source line 1752
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1754,r13		! source line 1754
	mov	"\0\0IF",r10
	mov	1754,r13		! source line 1754
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_572 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_571 = *_temp_572  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_571) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_573 = _temp_571 + 32
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
!   if result==true then goto _Label_569 else goto _Label_570
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_570
	jmp	_Label_569
_Label_569:
! THEN...
	mov	1755,r13		! source line 1755
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1755,r13		! source line 1755
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_574 = childPCB + 32
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
	jmp	_Label_575
_Label_570:
! ELSE...
	mov	1757,r13		! source line 1757
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1757,r13		! source line 1757
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_576 = childPCB + 32
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
_Label_575:
!   Increment the FOR-LOOP index variable and jump back
_Label_559:
!   i = i + 1
	load	[r14+-184],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
	jmp	_Label_557
! END FOR
_Label_560:
! END IF...
_Label_553:
! ASSIGNMENT STATEMENT...
	mov	1761,r13		! source line 1761
	mov	"\0\0AS",r10
!   Call the function
	mov	1761,r13		! source line 1761
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-188]
! SEND STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0SE",r10
!   _temp_577 = _function_207_ResumeChildAfterFork
	set	_function_207_ResumeChildAfterFork,r1
	store	r1,[r14+-20]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_577  sizeInBytes=4
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
	mov	1763,r13		! source line 1763
	mov	"\0\0RE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_579 = childPCB + 12
	load	[r14+-172],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_578 = *_temp_579  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_578  (sizeInBytes=4)
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
	.word	_Label_580
	.word	0		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_581
	.word	-12
	.word	4
	.word	_Label_582
	.word	-16
	.word	4
	.word	_Label_583
	.word	-20
	.word	4
	.word	_Label_584
	.word	-24
	.word	4
	.word	_Label_585
	.word	-28
	.word	4
	.word	_Label_586
	.word	-32
	.word	4
	.word	_Label_587
	.word	-36
	.word	4
	.word	_Label_588
	.word	-40
	.word	4
	.word	_Label_589
	.word	-44
	.word	4
	.word	_Label_590
	.word	-48
	.word	4
	.word	_Label_591
	.word	-52
	.word	4
	.word	_Label_592
	.word	-56
	.word	4
	.word	_Label_593
	.word	-60
	.word	4
	.word	_Label_594
	.word	-64
	.word	4
	.word	_Label_595
	.word	-68
	.word	4
	.word	_Label_596
	.word	-72
	.word	4
	.word	_Label_597
	.word	-76
	.word	4
	.word	_Label_598
	.word	-80
	.word	4
	.word	_Label_599
	.word	-84
	.word	4
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
	.word	-104
	.word	4
	.word	_Label_605
	.word	-108
	.word	4
	.word	_Label_606
	.word	-112
	.word	4
	.word	_Label_607
	.word	-116
	.word	4
	.word	_Label_608
	.word	-120
	.word	4
	.word	_Label_609
	.word	-124
	.word	4
	.word	_Label_610
	.word	-128
	.word	4
	.word	_Label_611
	.word	-132
	.word	4
	.word	_Label_612
	.word	-136
	.word	4
	.word	_Label_613
	.word	-140
	.word	4
	.word	_Label_614
	.word	-144
	.word	4
	.word	_Label_615
	.word	-148
	.word	4
	.word	_Label_616
	.word	-152
	.word	4
	.word	_Label_617
	.word	-156
	.word	4
	.word	_Label_618
	.word	-160
	.word	4
	.word	_Label_619
	.word	-164
	.word	4
	.word	_Label_620
	.word	-168
	.word	4
	.word	_Label_621
	.word	-172
	.word	4
	.word	_Label_622
	.word	-176
	.word	4
	.word	_Label_623
	.word	-180
	.word	4
	.word	_Label_624
	.word	-184
	.word	4
	.word	_Label_625
	.word	-188
	.word	4
	.word	_Label_626
	.word	-192
	.word	4
	.word	0
_Label_580:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_621:
	.byte	'P'
	.ascii	"childPCB\0"
	.align
_Label_622:
	.byte	'P'
	.ascii	"childThread\0"
	.align
_Label_623:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_624:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_625:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_626:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_207_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_207_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_3953:
	push	r0
	sub	r1,1,r1
	bne	_Label_3953
	mov	1766,r13		! source line 1766
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1771,r13		! source line 1771
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1771,r13		! source line 1771
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_628 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_627 = *_temp_628  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_627) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_629 = _temp_627 + 32
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
!   _temp_631 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_631 [0 ] into _temp_632
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
!   _temp_630 = _temp_632		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_630  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1773,r13		! source line 1773
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_633 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_633 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1776,r13		! source line 1776
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_634 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_634 [14 ] into _temp_635
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
!   Data Move: initUserStackTop = *_temp_635  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1777,r13		! source line 1777
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_636 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_636 [999 ] into _temp_637
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
!   initSystemStackTop = _temp_637		(4 bytes)
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
	mov	1778,r13		! source line 1778
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1778,r13		! source line 1778
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_207_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_638
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_639
	.word	8
	.word	4
	.word	_Label_640
	.word	-12
	.word	4
	.word	_Label_641
	.word	-16
	.word	4
	.word	_Label_642
	.word	-20
	.word	4
	.word	_Label_643
	.word	-24
	.word	4
	.word	_Label_644
	.word	-28
	.word	4
	.word	_Label_645
	.word	-32
	.word	4
	.word	_Label_646
	.word	-36
	.word	4
	.word	_Label_647
	.word	-40
	.word	4
	.word	_Label_648
	.word	-44
	.word	4
	.word	_Label_649
	.word	-48
	.word	4
	.word	_Label_650
	.word	-52
	.word	4
	.word	_Label_651
	.word	-56
	.word	4
	.word	_Label_652
	.word	-60
	.word	4
	.word	_Label_653
	.word	-64
	.word	4
	.word	0
_Label_638:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_639:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_651:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_652:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_653:
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
	mov	30,r1
_Label_3954:
	push	r0
	sub	r1,1,r1
	bne	_Label_3954
	mov	1783,r13		! source line 1783
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_658 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_659 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_658  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_654:
!   Perform the FOR-LOOP termination test
!   if i > _temp_659 then goto _Label_657		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_657
_Label_655:
	mov	1787,r13		! source line 1787
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0IF",r10
!   _temp_665 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_666 = _temp_665 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_666 [i ] into _temp_667
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   _temp_668 = _temp_667 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_664 = *_temp_668  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_664 != processID then goto _Label_661		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_661
!	jmp	_Label_663
_Label_663:
!   _temp_670 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_671 = _temp_670 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_671 [i ] into _temp_672
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_673 = _temp_672 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_669 = *_temp_673  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_676 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_675 = *_temp_676  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_675) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_677 = _temp_675 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_674 = *_temp_677  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_669 != _temp_674 then goto _Label_661		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_661
!	jmp	_Label_662
_Label_662:
!   _temp_679 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_680 = _temp_679 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_680 [i ] into _temp_681
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_682 = _temp_681 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_678 = *_temp_682  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_678 == 3 then goto _Label_661		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_661
!	jmp	_Label_660
_Label_660:
! THEN...
	mov	1789,r13		! source line 1789
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0AS",r10
	mov	1789,r13		! source line 1789
	mov	"\0\0SE",r10
!   _temp_684 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_685 = _temp_684 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_685 [i ] into _temp_686
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_683 = _temp_686		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_687 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_683  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message WaitForZombie
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=childExitStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! RETURN STATEMENT...
	mov	1790,r13		! source line 1790
	mov	"\0\0RE",r10
!   ReturnResult: childExitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_661:
!   Increment the FOR-LOOP index variable and jump back
_Label_656:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_654
! END FOR
_Label_657:
! RETURN STATEMENT...
	mov	1794,r13		! source line 1794
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_688
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_689
	.word	8
	.word	4
	.word	_Label_690
	.word	-12
	.word	4
	.word	_Label_691
	.word	-16
	.word	4
	.word	_Label_692
	.word	-20
	.word	4
	.word	_Label_693
	.word	-24
	.word	4
	.word	_Label_694
	.word	-28
	.word	4
	.word	_Label_695
	.word	-32
	.word	4
	.word	_Label_696
	.word	-36
	.word	4
	.word	_Label_697
	.word	-40
	.word	4
	.word	_Label_698
	.word	-44
	.word	4
	.word	_Label_699
	.word	-48
	.word	4
	.word	_Label_700
	.word	-52
	.word	4
	.word	_Label_701
	.word	-56
	.word	4
	.word	_Label_702
	.word	-60
	.word	4
	.word	_Label_703
	.word	-64
	.word	4
	.word	_Label_704
	.word	-68
	.word	4
	.word	_Label_705
	.word	-72
	.word	4
	.word	_Label_706
	.word	-76
	.word	4
	.word	_Label_707
	.word	-80
	.word	4
	.word	_Label_708
	.word	-84
	.word	4
	.word	_Label_709
	.word	-88
	.word	4
	.word	_Label_710
	.word	-92
	.word	4
	.word	_Label_711
	.word	-96
	.word	4
	.word	_Label_712
	.word	-100
	.word	4
	.word	_Label_713
	.word	-104
	.word	4
	.word	_Label_714
	.word	-108
	.word	4
	.word	_Label_715
	.word	-112
	.word	4
	.word	_Label_716
	.word	-116
	.word	4
	.word	_Label_717
	.word	-120
	.word	4
	.word	0
_Label_688:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_689:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_716:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_717:
	.byte	'I'
	.ascii	"childExitStatus\0"
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
_Label_3955:
	push	r0
	sub	r1,1,r1
	bne	_Label_3955
	mov	1799,r13		! source line 1799
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-264,r4
	mov	23,r3
_Label_3956:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3956
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1808,r13		! source line 1808
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-148]
! CALL STATEMENT...
!   _temp_719 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_719  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	1809,r13		! source line 1809
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0AS",r10
	mov	1810,r13		! source line 1810
	mov	"\0\0SE",r10
!   _temp_720 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-120]
!   _temp_721 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_723 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_722 = *_temp_723  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_722) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_724 = _temp_722 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_720  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_721  sizeInBytes=4
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
	mov	1811,r13		! source line 1811
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_726		(int)
	load	[r14+-268],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_726
!	jmp	_Label_725
_Label_725:
! THEN...
	mov	1812,r13		! source line 1812
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_727 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	1812,r13		! source line 1812
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_726:
! ASSIGNMENT STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0AS",r10
	mov	1815,r13		! source line 1815
	mov	"\0\0SE",r10
!   _temp_728 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-96]
!   _temp_729 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_728  sizeInBytes=4
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
	mov	1816,r13		! source line 1816
	mov	"\0\0IF",r10
!   if fp == 0 then goto _Label_731		(int)
	load	[r14+-132],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_731
!	jmp	_Label_730
_Label_730:
! THEN...
	mov	1817,r13		! source line 1817
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0SE",r10
!   _temp_732 = &newAddrSpace
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
	mov	1818,r13		! source line 1818
	mov	"\0\0AS",r10
	mov	1818,r13		! source line 1818
	mov	"\0\0SE",r10
!   _temp_733 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-84]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_733  sizeInBytes=4
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
	mov	1819,r13		! source line 1819
	mov	"\0\0SE",r10
!   _temp_734 = &_P_Kernel_fileManager
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
	mov	1820,r13		! source line 1820
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_737 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_736 = *_temp_737  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_736) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_738 = _temp_736 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   _temp_735 = _temp_738		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-76]
!   _temp_739 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_735  sizeInBytes=4
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
	mov	1821,r13		! source line 1821
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
	store	r1,[r14+-52]
!   Data Move: _temp_740 = *_temp_741  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_740) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_742 = _temp_740 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_742 = newAddrSpace  (sizeInBytes=92)
	add	r14,-264,r5
	load	[r14+-48],r4
	mov	23,r3
_Label_3957:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3957
! ASSIGNMENT STATEMENT...
	mov	1822,r13		! source line 1822
	mov	"\0\0AS",r10
!   _temp_744 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-40]
!   _temp_745 = _temp_744 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_743 = *_temp_745  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initUserStackTop = _temp_743 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! ASSIGNMENT STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_746 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_746 [999 ] into _temp_747
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
!   initSystemStackTop = _temp_747		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-144]
! SEND STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0SE",r10
!   _temp_748 = &newAddrSpace
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
	mov	1825,r13		! source line 1825
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_749 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_749 = 1  (sizeInBytes=1)
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
	mov	1826,r13		! source line 1826
	mov	"\0\0CE",r10
	call	BecomeUserThread
	jmp	_Label_750
_Label_731:
! ELSE...
	mov	1828,r13		! source line 1828
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_751 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_751  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_752 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_752  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1829,r13		! source line 1829
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1830,r13		! source line 1830
	mov	"\0\0CA",r10
	call	_P_System_nl
! END IF...
_Label_750:
! RETURN STATEMENT...
	mov	1833,r13		! source line 1833
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
	.word	_Label_753
	.word	4		! total size of parameters
	.word	276		! frame size = 276
	.word	_Label_754
	.word	8
	.word	4
	.word	_Label_755
	.word	-12
	.word	4
	.word	_Label_756
	.word	-16
	.word	4
	.word	_Label_757
	.word	-20
	.word	4
	.word	_Label_758
	.word	-24
	.word	4
	.word	_Label_759
	.word	-28
	.word	4
	.word	_Label_760
	.word	-32
	.word	4
	.word	_Label_761
	.word	-36
	.word	4
	.word	_Label_762
	.word	-40
	.word	4
	.word	_Label_763
	.word	-44
	.word	4
	.word	_Label_764
	.word	-48
	.word	4
	.word	_Label_765
	.word	-52
	.word	4
	.word	_Label_766
	.word	-56
	.word	4
	.word	_Label_767
	.word	-60
	.word	4
	.word	_Label_768
	.word	-64
	.word	4
	.word	_Label_769
	.word	-68
	.word	4
	.word	_Label_770
	.word	-72
	.word	4
	.word	_Label_771
	.word	-76
	.word	4
	.word	_Label_772
	.word	-80
	.word	4
	.word	_Label_773
	.word	-84
	.word	4
	.word	_Label_774
	.word	-88
	.word	4
	.word	_Label_775
	.word	-92
	.word	4
	.word	_Label_776
	.word	-96
	.word	4
	.word	_Label_777
	.word	-100
	.word	4
	.word	_Label_778
	.word	-104
	.word	4
	.word	_Label_779
	.word	-108
	.word	4
	.word	_Label_780
	.word	-112
	.word	4
	.word	_Label_781
	.word	-116
	.word	4
	.word	_Label_782
	.word	-120
	.word	4
	.word	_Label_783
	.word	-124
	.word	4
	.word	_Label_784
	.word	-128
	.word	4
	.word	_Label_785
	.word	-132
	.word	4
	.word	_Label_786
	.word	-136
	.word	4
	.word	_Label_787
	.word	-140
	.word	4
	.word	_Label_788
	.word	-144
	.word	4
	.word	_Label_789
	.word	-148
	.word	4
	.word	_Label_790
	.word	-172
	.word	24
	.word	_Label_791
	.word	-264
	.word	92
	.word	_Label_792
	.word	-268
	.word	4
	.word	0
_Label_753:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_754:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_785:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_786:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_787:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_788:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_789:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_790:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_791:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_792:
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
_Label_3958:
	push	r0
	sub	r1,1,r1
	bne	_Label_3958
	mov	1838,r13		! source line 1838
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0AS",r10
	mov	1841,r13		! source line 1841
	mov	"\0\0SE",r10
!   _temp_793 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_794 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_796 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_795 = *_temp_796  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_795) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_797 = _temp_795 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_793  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_794  sizeInBytes=4
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
!   _temp_798 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_798  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1842,r13		! source line 1842
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1843,r13		! source line 1843
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_799 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_799  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1844,r13		! source line 1844
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_800 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_800  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1845,r13		! source line 1845
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1846,r13		! source line 1846
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1847,r13		! source line 1847
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
	.word	_Label_801
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_802
	.word	8
	.word	4
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
	.word	_Label_809
	.word	-36
	.word	4
	.word	_Label_810
	.word	-40
	.word	4
	.word	_Label_811
	.word	-64
	.word	24
	.word	_Label_812
	.word	-68
	.word	4
	.word	0
_Label_801:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_802:
	.byte	'P'
	.ascii	"filename\0"
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
	.ascii	"_temp_797\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_796\0"
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
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_812:
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
	mov	33,r1
_Label_3959:
	push	r0
	sub	r1,1,r1
	bne	_Label_3959
	mov	1852,r13		! source line 1852
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0AS",r10
	mov	1859,r13		! source line 1859
	mov	"\0\0SE",r10
!   _temp_813 = &kernelFileName
	add	r14,-112,r1
	store	r1,[r14+-88]
!   _temp_814 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_816 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_815 = *_temp_816  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_815) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_817 = _temp_815 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_813  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_814  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_819		(int)
	load	[r14+-116],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_819
!	jmp	_Label_818
_Label_818:
! THEN...
	mov	1861,r13		! source line 1861
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_820 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_820  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1861,r13		! source line 1861
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1862,r13		! source line 1862
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1863,r13		! source line 1863
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_819:
! FOR STATEMENT...
	mov	1866,r13		! source line 1866
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_825 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_826 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_825  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-120]
_Label_821:
!   Perform the FOR-LOOP termination test
!   if i > _temp_826 then goto _Label_824		
	load	[r14+-120],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_824
_Label_822:
	mov	1866,r13		! source line 1866
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1867,r13		! source line 1867
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_831 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_830 = *_temp_831  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_830) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_832 = _temp_830 + 124
	load	[r14+-52],r1
	add	r1,124,r1
	store	r1,[r14+-44]
!   Move address of _temp_832 [i ] into _temp_833
!     make sure index expr is >= 0
	load	[r14+-120],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Data Move: _temp_829 = *_temp_833  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_829) then goto _Label_827
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_827
	jmp	_Label_828
_Label_827:
! THEN...
	mov	1868,r13		! source line 1868
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1868,r13		! source line 1868
	mov	"\0\0BR",r10
	jmp	_Label_824
	jmp	_Label_834
_Label_828:
! ELSE...
	mov	1869,r13		! source line 1869
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1869,r13		! source line 1869
	mov	"\0\0IF",r10
!   if i != 9 then goto _Label_836		(int)
	load	[r14+-120],r1
	mov	9,r2
	cmp	r1,r2
	bne	_Label_836
!	jmp	_Label_835
_Label_835:
! THEN...
	mov	1870,r13		! source line 1870
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_837 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_837  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1870,r13		! source line 1870
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1871,r13		! source line 1871
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_836:
! END IF...
_Label_834:
!   Increment the FOR-LOOP index variable and jump back
_Label_823:
!   i = i + 1
	load	[r14+-120],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
	jmp	_Label_821
! END FOR
_Label_824:
! ASSIGNMENT STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0AS",r10
	mov	1876,r13		! source line 1876
	mov	"\0\0SE",r10
!   _temp_838 = &kernelFileName
	add	r14,-112,r1
	store	r1,[r14+-32]
!   _temp_839 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_838  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=fp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0IF",r10
!   if intIsZero (fp) then goto _Label_840
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_840
	jmp	_Label_841
_Label_840:
! THEN...
	mov	1878,r13		! source line 1878
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_841:
! ASSIGNMENT STATEMENT...
	mov	1881,r13		! source line 1881
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_843 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_842 = *_temp_843  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_842) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_844 = _temp_842 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_844 [i ] into _temp_845
!     make sure index expr is >= 0
	load	[r14+-120],r2
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
!   Data Move: *_temp_845 = fp  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1883,r13		! source line 1883
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_846
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_847
	.word	8
	.word	4
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
	.word	_Label_856
	.word	-44
	.word	4
	.word	_Label_857
	.word	-48
	.word	4
	.word	_Label_858
	.word	-52
	.word	4
	.word	_Label_859
	.word	-56
	.word	4
	.word	_Label_860
	.word	-60
	.word	4
	.word	_Label_861
	.word	-64
	.word	4
	.word	_Label_862
	.word	-68
	.word	4
	.word	_Label_863
	.word	-72
	.word	4
	.word	_Label_864
	.word	-76
	.word	4
	.word	_Label_865
	.word	-80
	.word	4
	.word	_Label_866
	.word	-84
	.word	4
	.word	_Label_867
	.word	-88
	.word	4
	.word	_Label_868
	.word	-112
	.word	24
	.word	_Label_869
	.word	-116
	.word	4
	.word	_Label_870
	.word	-120
	.word	4
	.word	_Label_871
	.word	-124
	.word	4
	.word	0
_Label_846:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_847:
	.byte	'P'
	.ascii	"filename\0"
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
	.ascii	"_temp_839\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_868:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_869:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_870:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_871:
	.byte	'P'
	.ascii	"fp\0"
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
	mov	103,r1
_Label_3960:
	push	r0
	sub	r1,1,r1
	bne	_Label_3960
	mov	1888,r13		! source line 1888
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1901,r13		! source line 1901
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_875		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_875
	jmp	_Label_872
_Label_875:
!   if fileDesc <= 9 then goto _Label_874		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_874
	jmp	_Label_872
_Label_874:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_878 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-360]
!   Data Move: _temp_877 = *_temp_878  (sizeInBytes=4)
	load	[r14+-360],r1
	load	[r1],r1
	store	r1,[r14+-364]
!   if intIsZero (_temp_877) then goto _runtimeErrorNullPointer
	load	[r14+-364],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_879 = _temp_877 + 124
	load	[r14+-364],r1
	add	r1,124,r1
	store	r1,[r14+-356]
!   Move address of _temp_879 [fileDesc ] into _temp_880
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-356],r1
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
	store	r2,[r14+-352]
!   Data Move: _temp_876 = *_temp_880  (sizeInBytes=4)
	load	[r14+-352],r1
	load	[r1],r1
	store	r1,[r14+-368]
!   if intIsZero (_temp_876) then goto _Label_872
	load	[r14+-368],r1
	cmp	r1,r0
	be	_Label_872
	jmp	_Label_873
_Label_872:
! THEN...
	mov	1902,r13		! source line 1902
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_881 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-348]
!   Prepare Argument: offset=8  value=_temp_881  sizeInBytes=4
	load	[r14+-348],r1
	store	r1,[r15+0]
!   Call the function
	mov	1902,r13		! source line 1902
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1903,r13		! source line 1903
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,416,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_873:
! IF STATEMENT...
	mov	1906,r13		! source line 1906
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_883		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_883
!	jmp	_Label_882
_Label_882:
! THEN...
	mov	1907,r13		! source line 1907
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_884 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-344]
!   Prepare Argument: offset=8  value=_temp_884  sizeInBytes=4
	load	[r14+-344],r1
	store	r1,[r15+0]
!   Call the function
	mov	1907,r13		! source line 1907
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1908,r13		! source line 1908
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,416,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_883:
! IF STATEMENT...
	mov	1912,r13		! source line 1912
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_890 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-328]
!   Data Move: _temp_889 = *_temp_890  (sizeInBytes=4)
	load	[r14+-328],r1
	load	[r1],r1
	store	r1,[r14+-332]
!   if intIsZero (_temp_889) then goto _runtimeErrorNullPointer
	load	[r14+-332],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_891 = _temp_889 + 124
	load	[r14+-332],r1
	add	r1,124,r1
	store	r1,[r14+-324]
!   Move address of _temp_891 [fileDesc ] into _temp_892
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-324],r1
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
	store	r2,[r14+-320]
!   Data Move: _temp_888 = *_temp_892  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r1],r1
	store	r1,[r14+-336]
!   if intIsZero (_temp_888) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_893 = _temp_888 + 20
	load	[r14+-336],r1
	add	r1,20,r1
	store	r1,[r14+-316]
!   Data Move: _temp_887 = *_temp_893  (sizeInBytes=4)
	load	[r14+-316],r1
	load	[r1],r1
	store	r1,[r14+-340]
!   if intIsZero (_temp_887) then goto _Label_885
	load	[r14+-340],r1
	cmp	r1,r0
	be	_Label_885
	jmp	_Label_886
_Label_885:
! THEN...
	mov	1913,r13		! source line 1913
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_894 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-312]
!   Prepare Argument: offset=8  value=_temp_894  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Call the function
	mov	1913,r13		! source line 1913
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1914,r13		! source line 1914
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,416,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_886:
! ASSIGNMENT STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_898 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-296]
!   Data Move: _temp_897 = *_temp_898  (sizeInBytes=4)
	load	[r14+-296],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   if intIsZero (_temp_897) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_899 = _temp_897 + 124
	load	[r14+-300],r1
	add	r1,124,r1
	store	r1,[r14+-292]
!   Move address of _temp_899 [fileDesc ] into _temp_900
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-292],r1
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
	store	r2,[r14+-288]
!   Data Move: _temp_896 = *_temp_900  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   if intIsZero (_temp_896) then goto _runtimeErrorNullPointer
	load	[r14+-304],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_901 = _temp_896 + 20
	load	[r14+-304],r1
	add	r1,20,r1
	store	r1,[r14+-284]
!   Data Move: _temp_895 = *_temp_901  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r1],r1
	store	r1,[r14+-308]
!   if intIsZero (_temp_895) then goto _runtimeErrorNullPointer
	load	[r14+-308],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_902 = _temp_895 + 24
	load	[r14+-308],r1
	add	r1,24,r1
	store	r1,[r14+-280]
!   Data Move: sizeOfFile = *_temp_902  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r1],r1
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-372]
! ASSIGNMENT STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-372],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-372],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_905 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-268]
!   Data Move: _temp_904 = *_temp_905  (sizeInBytes=4)
	load	[r14+-268],r1
	load	[r1],r1
	store	r1,[r14+-272]
!   if intIsZero (_temp_904) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_906 = _temp_904 + 124
	load	[r14+-272],r1
	add	r1,124,r1
	store	r1,[r14+-264]
!   Move address of _temp_906 [fileDesc ] into _temp_907
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-264],r1
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
	store	r2,[r14+-260]
!   Data Move: _temp_903 = *_temp_907  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r1],r1
	store	r1,[r14+-276]
!   if intIsZero (_temp_903) then goto _runtimeErrorNullPointer
	load	[r14+-276],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_908 = _temp_903 + 16
	load	[r14+-276],r1
	add	r1,16,r1
	store	r1,[r14+-256]
!   Data Move: nextPosInFile = *_temp_908  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-388]
! WHILE STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0WH",r10
_Label_909:
!	jmp	_Label_910
_Label_910:
	mov	1925,r13		! source line 1925
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1927,r13		! source line 1927
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-380],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! IF STATEMENT...
	mov	1928,r13		! source line 1928
	mov	"\0\0IF",r10
!   _temp_914 = nextPosInFile + chunkSize		(int)
	load	[r14+-388],r1
	load	[r14+-384],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
!   if _temp_914 <= sizeOfFile then goto _Label_913		(int)
	load	[r14+-252],r1
	load	[r14+-400],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_913
!	jmp	_Label_912
_Label_912:
! THEN...
	mov	1929,r13		! source line 1929
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1929,r13		! source line 1929
	mov	"\0\0AS",r10
!   chunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-400],r1
	load	[r14+-388],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! END IF...
_Label_913:
! IF STATEMENT...
	mov	1931,r13		! source line 1931
	mov	"\0\0IF",r10
!   _temp_917 = copiedSoFar + chunkSize		(int)
	load	[r14+-392],r1
	load	[r14+-384],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
!   if _temp_917 <= sizeInBytes then goto _Label_916		(int)
	load	[r14+-248],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_916
!	jmp	_Label_915
_Label_915:
! THEN...
	mov	1932,r13		! source line 1932
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1932,r13		! source line 1932
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-392],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! END IF...
_Label_916:
! IF STATEMENT...
	mov	1934,r13		! source line 1934
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_919		(int)
	load	[r14+-384],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_919
!	jmp	_Label_918
_Label_918:
! THEN...
	mov	1935,r13		! source line 1935
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1935,r13		! source line 1935
	mov	"\0\0BR",r10
	jmp	_Label_911
! END IF...
_Label_919:
! IF STATEMENT...
	mov	1939,r13		! source line 1939
	mov	"\0\0IF",r10
!   if virtAddr >= 0 then goto _Label_924		(int)
	load	[r14+-372],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_924
	jmp	_Label_920
_Label_924:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_928 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-232]
!   Data Move: _temp_927 = *_temp_928  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_927) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_929 = _temp_927 + 32
	load	[r14+-236],r1
	add	r1,32,r1
	store	r1,[r14+-228]
!   _temp_930 = _temp_929 + 4
	load	[r14+-228],r1
	add	r1,4,r1
	store	r1,[r14+-224]
!   Data Move: _temp_926 = *_temp_930  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   _temp_925 = _temp_926 - 1		(int)
	load	[r14+-240],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
!   if virtPage <= _temp_925 then goto _Label_923		(int)
	load	[r14+-376],r1
	load	[r14+-244],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_923
	jmp	_Label_920
_Label_923:
	mov	1939,r13		! source line 1939
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_933 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-216]
!   Data Move: _temp_932 = *_temp_933  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_932) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_934 = _temp_932 + 32
	load	[r14+-220],r1
	add	r1,32,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-212],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_931  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_931 then goto _Label_922 else goto _Label_920
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_920
	jmp	_Label_922
_Label_922:
	mov	1939,r13		! source line 1939
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_937 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-204]
!   Data Move: _temp_936 = *_temp_937  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if intIsZero (_temp_936) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_938 = _temp_936 + 32
	load	[r14+-208],r1
	add	r1,32,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-200],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_935  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_935 then goto _Label_921 else goto _Label_920
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_920
	jmp	_Label_921
_Label_920:
! THEN...
	mov	1940,r13		! source line 1940
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_939 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=8  value=_temp_939  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	1940,r13		! source line 1940
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1941,r13		! source line 1941
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,416,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_921:
! ASSIGNMENT STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-388],r1
	load	[r14+-384],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	1945,r13		! source line 1945
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-392],r1
	load	[r14+-384],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-376],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-380]
! IF STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_941		(int)
	load	[r14+-392],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_941
!	jmp	_Label_940
_Label_940:
! THEN...
	mov	1950,r13		! source line 1950
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1950,r13		! source line 1950
	mov	"\0\0BR",r10
	jmp	_Label_911
! END IF...
_Label_941:
! END WHILE...
	jmp	_Label_909
_Label_911:
! ASSIGNMENT STATEMENT...
	mov	1954,r13		! source line 1954
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-372]
! ASSIGNMENT STATEMENT...
	mov	1955,r13		! source line 1955
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-372],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-372],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	1957,r13		! source line 1957
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_944 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_943 = *_temp_944  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_943) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_945 = _temp_943 + 124
	load	[r14+-188],r1
	add	r1,124,r1
	store	r1,[r14+-180]
!   Move address of _temp_945 [fileDesc ] into _temp_946
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-180],r1
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
	store	r2,[r14+-176]
!   Data Move: _temp_942 = *_temp_946  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_942) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_947 = _temp_942 + 16
	load	[r14+-192],r1
	add	r1,16,r1
	store	r1,[r14+-172]
!   Data Move: nextPosInFile = *_temp_947  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-388]
! WHILE STATEMENT...
	mov	1959,r13		! source line 1959
	mov	"\0\0WH",r10
_Label_948:
!	jmp	_Label_949
_Label_949:
	mov	1959,r13		! source line 1959
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-380],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! IF STATEMENT...
	mov	1962,r13		! source line 1962
	mov	"\0\0IF",r10
!   _temp_953 = nextPosInFile + chunkSize		(int)
	load	[r14+-388],r1
	load	[r14+-384],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
!   if _temp_953 <= sizeOfFile then goto _Label_952		(int)
	load	[r14+-168],r1
	load	[r14+-400],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_952
!	jmp	_Label_951
_Label_951:
! THEN...
	mov	1963,r13		! source line 1963
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0AS",r10
!   chunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-400],r1
	load	[r14+-388],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! END IF...
_Label_952:
! IF STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0IF",r10
!   _temp_956 = copiedSoFar + chunkSize		(int)
	load	[r14+-392],r1
	load	[r14+-384],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
!   if _temp_956 <= sizeInBytes then goto _Label_955		(int)
	load	[r14+-164],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_955
!	jmp	_Label_954
_Label_954:
! THEN...
	mov	1966,r13		! source line 1966
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-392],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! END IF...
_Label_955:
! IF STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_958		(int)
	load	[r14+-384],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_958
!	jmp	_Label_957
_Label_957:
! THEN...
	mov	1969,r13		! source line 1969
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1969,r13		! source line 1969
	mov	"\0\0BR",r10
	jmp	_Label_950
! END IF...
_Label_958:
! IF STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0IF",r10
!   if virtAddr >= 0 then goto _Label_963		(int)
	load	[r14+-372],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_963
	jmp	_Label_959
_Label_963:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_967 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_966 = *_temp_967  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_966) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_968 = _temp_966 + 32
	load	[r14+-152],r1
	add	r1,32,r1
	store	r1,[r14+-144]
!   _temp_969 = _temp_968 + 4
	load	[r14+-144],r1
	add	r1,4,r1
	store	r1,[r14+-140]
!   Data Move: _temp_965 = *_temp_969  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   _temp_964 = _temp_965 - 1		(int)
	load	[r14+-156],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if virtPage <= _temp_964 then goto _Label_962		(int)
	load	[r14+-376],r1
	load	[r14+-160],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_962
	jmp	_Label_959
_Label_962:
	mov	1973,r13		! source line 1973
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_972 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-132]
!   Data Move: _temp_971 = *_temp_972  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_971) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_973 = _temp_971 + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_970  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_970 then goto _Label_961 else goto _Label_959
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_959
	jmp	_Label_961
_Label_961:
	mov	1973,r13		! source line 1973
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_976 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: _temp_975 = *_temp_976  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_975) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_977 = _temp_975 + 32
	load	[r14+-124],r1
	add	r1,32,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_974  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_974 then goto _Label_960 else goto _Label_959
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_959
	jmp	_Label_960
_Label_959:
! THEN...
	mov	1974,r13		! source line 1974
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_978 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_978  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1974,r13		! source line 1974
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,416,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_960:
! SEND STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_980 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_979 = *_temp_980  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_979) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_981 = _temp_979 + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	1980,r13		! source line 1980
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_983 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_982 = *_temp_983  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_982) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_984 = _temp_982 + 32
	load	[r14+-96],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1981,r13		! source line 1981
	mov	"\0\0AS",r10
	mov	1981,r13		! source line 1981
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_987 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_986 = *_temp_987  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_986) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_988 = _temp_986 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_985  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   destAddr = _temp_985 + offset		(int)
	load	[r14+-84],r1
	load	[r14+-380],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0AS",r10
	mov	1982,r13		! source line 1982
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_991 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_990 = *_temp_991  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_990) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_992 = _temp_990 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_992 [fileDesc ] into _temp_993
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Data Move: _temp_989 = *_temp_993  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_994 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_989  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=chunkSize  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=readStat  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
! IF STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0IF",r10
!   if readStat then goto _Label_996 else goto _Label_995
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_995
	jmp	_Label_996
_Label_995:
! THEN...
	mov	1984,r13		! source line 1984
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_997 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_997  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1984,r13		! source line 1984
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,416,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_996:
! ASSIGNMENT STATEMENT...
	mov	1989,r13		! source line 1989
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-388],r1
	load	[r14+-384],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-392],r1
	load	[r14+-384],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-376],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-380]
! IF STATEMENT...
	mov	1994,r13		! source line 1994
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_999		(int)
	load	[r14+-392],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_999
!	jmp	_Label_998
_Label_998:
! THEN...
	mov	1995,r13		! source line 1995
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0BR",r10
	jmp	_Label_950
! END IF...
_Label_999:
! END WHILE...
	jmp	_Label_948
_Label_950:
! ASSIGNMENT STATEMENT...
	mov	1999,r13		! source line 1999
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1002 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1001 = *_temp_1002  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1001) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1003 = _temp_1001 + 124
	load	[r14+-36],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Move address of _temp_1003 [fileDesc ] into _temp_1004
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1000 = *_temp_1004  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1000) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1005 = _temp_1000 + 16
	load	[r14+-40],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1005 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-388],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2001,r13		! source line 2001
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-392],r1
	store	r1,[r14+8]
	add	r15,416,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1006
	.word	12		! total size of parameters
	.word	412		! frame size = 412
	.word	_Label_1007
	.word	8
	.word	4
	.word	_Label_1008
	.word	12
	.word	4
	.word	_Label_1009
	.word	16
	.word	4
	.word	_Label_1010
	.word	-20
	.word	4
	.word	_Label_1011
	.word	-24
	.word	4
	.word	_Label_1012
	.word	-28
	.word	4
	.word	_Label_1013
	.word	-32
	.word	4
	.word	_Label_1014
	.word	-36
	.word	4
	.word	_Label_1015
	.word	-40
	.word	4
	.word	_Label_1016
	.word	-44
	.word	4
	.word	_Label_1017
	.word	-48
	.word	4
	.word	_Label_1018
	.word	-52
	.word	4
	.word	_Label_1019
	.word	-56
	.word	4
	.word	_Label_1020
	.word	-60
	.word	4
	.word	_Label_1021
	.word	-64
	.word	4
	.word	_Label_1022
	.word	-68
	.word	4
	.word	_Label_1023
	.word	-72
	.word	4
	.word	_Label_1024
	.word	-76
	.word	4
	.word	_Label_1025
	.word	-80
	.word	4
	.word	_Label_1026
	.word	-84
	.word	4
	.word	_Label_1027
	.word	-88
	.word	4
	.word	_Label_1028
	.word	-92
	.word	4
	.word	_Label_1029
	.word	-96
	.word	4
	.word	_Label_1030
	.word	-100
	.word	4
	.word	_Label_1031
	.word	-104
	.word	4
	.word	_Label_1032
	.word	-108
	.word	4
	.word	_Label_1033
	.word	-112
	.word	4
	.word	_Label_1034
	.word	-116
	.word	4
	.word	_Label_1035
	.word	-120
	.word	4
	.word	_Label_1036
	.word	-124
	.word	4
	.word	_Label_1037
	.word	-9
	.word	1
	.word	_Label_1038
	.word	-128
	.word	4
	.word	_Label_1039
	.word	-132
	.word	4
	.word	_Label_1040
	.word	-136
	.word	4
	.word	_Label_1041
	.word	-10
	.word	1
	.word	_Label_1042
	.word	-140
	.word	4
	.word	_Label_1043
	.word	-144
	.word	4
	.word	_Label_1044
	.word	-148
	.word	4
	.word	_Label_1045
	.word	-152
	.word	4
	.word	_Label_1046
	.word	-156
	.word	4
	.word	_Label_1047
	.word	-160
	.word	4
	.word	_Label_1048
	.word	-164
	.word	4
	.word	_Label_1049
	.word	-168
	.word	4
	.word	_Label_1050
	.word	-172
	.word	4
	.word	_Label_1051
	.word	-176
	.word	4
	.word	_Label_1052
	.word	-180
	.word	4
	.word	_Label_1053
	.word	-184
	.word	4
	.word	_Label_1054
	.word	-188
	.word	4
	.word	_Label_1055
	.word	-192
	.word	4
	.word	_Label_1056
	.word	-196
	.word	4
	.word	_Label_1057
	.word	-200
	.word	4
	.word	_Label_1058
	.word	-204
	.word	4
	.word	_Label_1059
	.word	-208
	.word	4
	.word	_Label_1060
	.word	-11
	.word	1
	.word	_Label_1061
	.word	-212
	.word	4
	.word	_Label_1062
	.word	-216
	.word	4
	.word	_Label_1063
	.word	-220
	.word	4
	.word	_Label_1064
	.word	-12
	.word	1
	.word	_Label_1065
	.word	-224
	.word	4
	.word	_Label_1066
	.word	-228
	.word	4
	.word	_Label_1067
	.word	-232
	.word	4
	.word	_Label_1068
	.word	-236
	.word	4
	.word	_Label_1069
	.word	-240
	.word	4
	.word	_Label_1070
	.word	-244
	.word	4
	.word	_Label_1071
	.word	-248
	.word	4
	.word	_Label_1072
	.word	-252
	.word	4
	.word	_Label_1073
	.word	-256
	.word	4
	.word	_Label_1074
	.word	-260
	.word	4
	.word	_Label_1075
	.word	-264
	.word	4
	.word	_Label_1076
	.word	-268
	.word	4
	.word	_Label_1077
	.word	-272
	.word	4
	.word	_Label_1078
	.word	-276
	.word	4
	.word	_Label_1079
	.word	-280
	.word	4
	.word	_Label_1080
	.word	-284
	.word	4
	.word	_Label_1081
	.word	-288
	.word	4
	.word	_Label_1082
	.word	-292
	.word	4
	.word	_Label_1083
	.word	-296
	.word	4
	.word	_Label_1084
	.word	-300
	.word	4
	.word	_Label_1085
	.word	-304
	.word	4
	.word	_Label_1086
	.word	-308
	.word	4
	.word	_Label_1087
	.word	-312
	.word	4
	.word	_Label_1088
	.word	-316
	.word	4
	.word	_Label_1089
	.word	-320
	.word	4
	.word	_Label_1090
	.word	-324
	.word	4
	.word	_Label_1091
	.word	-328
	.word	4
	.word	_Label_1092
	.word	-332
	.word	4
	.word	_Label_1093
	.word	-336
	.word	4
	.word	_Label_1094
	.word	-340
	.word	4
	.word	_Label_1095
	.word	-344
	.word	4
	.word	_Label_1096
	.word	-348
	.word	4
	.word	_Label_1097
	.word	-352
	.word	4
	.word	_Label_1098
	.word	-356
	.word	4
	.word	_Label_1099
	.word	-360
	.word	4
	.word	_Label_1100
	.word	-364
	.word	4
	.word	_Label_1101
	.word	-368
	.word	4
	.word	_Label_1102
	.word	-372
	.word	4
	.word	_Label_1103
	.word	-376
	.word	4
	.word	_Label_1104
	.word	-380
	.word	4
	.word	_Label_1105
	.word	-384
	.word	4
	.word	_Label_1106
	.word	-388
	.word	4
	.word	_Label_1107
	.word	-392
	.word	4
	.word	_Label_1108
	.word	-396
	.word	4
	.word	_Label_1109
	.word	-13
	.word	1
	.word	_Label_1110
	.word	-400
	.word	4
	.word	0
_Label_1006:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1007:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1008:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1009:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1037:
	.byte	'C'
	.ascii	"_temp_974\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_1041:
	.byte	'C'
	.ascii	"_temp_970\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_1060:
	.byte	'C'
	.ascii	"_temp_935\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_1064:
	.byte	'C'
	.ascii	"_temp_931\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_1102:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1103:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1104:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1105:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1106:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1107:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1108:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1109:
	.byte	'B'
	.ascii	"readStat\0"
	.align
_Label_1110:
	.byte	'I'
	.ascii	"sizeOfFile\0"
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
	mov	100,r1
_Label_3961:
	push	r0
	sub	r1,1,r1
	bne	_Label_3961
	mov	2006,r13		! source line 2006
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1114		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1114
	jmp	_Label_1111
_Label_1114:
!   if fileDesc <= 9 then goto _Label_1113		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1113
	jmp	_Label_1111
_Label_1113:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1117 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-348]
!   Data Move: _temp_1116 = *_temp_1117  (sizeInBytes=4)
	load	[r14+-348],r1
	load	[r1],r1
	store	r1,[r14+-352]
!   if intIsZero (_temp_1116) then goto _runtimeErrorNullPointer
	load	[r14+-352],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1118 = _temp_1116 + 124
	load	[r14+-352],r1
	add	r1,124,r1
	store	r1,[r14+-344]
!   Move address of _temp_1118 [fileDesc ] into _temp_1119
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-344],r1
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
	store	r2,[r14+-340]
!   Data Move: _temp_1115 = *_temp_1119  (sizeInBytes=4)
	load	[r14+-340],r1
	load	[r1],r1
	store	r1,[r14+-356]
!   if intIsZero (_temp_1115) then goto _Label_1111
	load	[r14+-356],r1
	cmp	r1,r0
	be	_Label_1111
	jmp	_Label_1112
_Label_1111:
! THEN...
	mov	2021,r13		! source line 2021
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1120 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-336]
!   Prepare Argument: offset=8  value=_temp_1120  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+0]
!   Call the function
	mov	2021,r13		! source line 2021
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2022,r13		! source line 2022
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,404,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1112:
! IF STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1122		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1122
!	jmp	_Label_1121
_Label_1121:
! THEN...
	mov	2026,r13		! source line 2026
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1123 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-332]
!   Prepare Argument: offset=8  value=_temp_1123  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Call the function
	mov	2026,r13		! source line 2026
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2027,r13		! source line 2027
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,404,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1122:
! IF STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1129 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-316]
!   Data Move: _temp_1128 = *_temp_1129  (sizeInBytes=4)
	load	[r14+-316],r1
	load	[r1],r1
	store	r1,[r14+-320]
!   if intIsZero (_temp_1128) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1130 = _temp_1128 + 124
	load	[r14+-320],r1
	add	r1,124,r1
	store	r1,[r14+-312]
!   Move address of _temp_1130 [fileDesc ] into _temp_1131
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-312],r1
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
	store	r2,[r14+-308]
!   Data Move: _temp_1127 = *_temp_1131  (sizeInBytes=4)
	load	[r14+-308],r1
	load	[r1],r1
	store	r1,[r14+-324]
!   if intIsZero (_temp_1127) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1132 = _temp_1127 + 20
	load	[r14+-324],r1
	add	r1,20,r1
	store	r1,[r14+-304]
!   Data Move: _temp_1126 = *_temp_1132  (sizeInBytes=4)
	load	[r14+-304],r1
	load	[r1],r1
	store	r1,[r14+-328]
!   if intIsZero (_temp_1126) then goto _Label_1124
	load	[r14+-328],r1
	cmp	r1,r0
	be	_Label_1124
	jmp	_Label_1125
_Label_1124:
! THEN...
	mov	2031,r13		! source line 2031
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1133 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-300]
!   Prepare Argument: offset=8  value=_temp_1133  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Call the function
	mov	2031,r13		! source line 2031
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2032,r13		! source line 2032
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,404,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1125:
! ASSIGNMENT STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1137 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-284]
!   Data Move: _temp_1136 = *_temp_1137  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_1136) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1138 = _temp_1136 + 124
	load	[r14+-288],r1
	add	r1,124,r1
	store	r1,[r14+-280]
!   Move address of _temp_1138 [fileDesc ] into _temp_1139
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-280],r1
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
	store	r2,[r14+-276]
!   Data Move: _temp_1135 = *_temp_1139  (sizeInBytes=4)
	load	[r14+-276],r1
	load	[r1],r1
	store	r1,[r14+-292]
!   if intIsZero (_temp_1135) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1140 = _temp_1135 + 20
	load	[r14+-292],r1
	add	r1,20,r1
	store	r1,[r14+-272]
!   Data Move: _temp_1134 = *_temp_1140  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_1134) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1141 = _temp_1134 + 24
	load	[r14+-296],r1
	add	r1,24,r1
	store	r1,[r14+-268]
!   Data Move: sizeOfFile = *_temp_1141  (sizeInBytes=4)
	load	[r14+-268],r1
	load	[r1],r1
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-360]
! ASSIGNMENT STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-360],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-364]
! ASSIGNMENT STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-360],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-368]
! ASSIGNMENT STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1144 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: _temp_1143 = *_temp_1144  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_1143) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1145 = _temp_1143 + 124
	load	[r14+-260],r1
	add	r1,124,r1
	store	r1,[r14+-252]
!   Move address of _temp_1145 [fileDesc ] into _temp_1146
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-252],r1
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
	store	r2,[r14+-248]
!   Data Move: _temp_1142 = *_temp_1146  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-264]
!   if intIsZero (_temp_1142) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1147 = _temp_1142 + 16
	load	[r14+-264],r1
	add	r1,16,r1
	store	r1,[r14+-244]
!   Data Move: nextPosInFile = *_temp_1147  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-376]
! WHILE STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0WH",r10
_Label_1148:
!	jmp	_Label_1149
_Label_1149:
	mov	2042,r13		! source line 2042
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-368],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
! IF STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0IF",r10
!   _temp_1153 = nextPosInFile + chunkSize		(int)
	load	[r14+-376],r1
	load	[r14+-372],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
!   if _temp_1153 <= sizeOfFile then goto _Label_1152		(int)
	load	[r14+-240],r1
	load	[r14+-388],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1152
!	jmp	_Label_1151
_Label_1151:
! THEN...
	mov	2046,r13		! source line 2046
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0AS",r10
!   chunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-388],r1
	load	[r14+-376],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
! END IF...
_Label_1152:
! IF STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0IF",r10
!   _temp_1156 = copiedSoFar + chunkSize		(int)
	load	[r14+-380],r1
	load	[r14+-372],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
!   if _temp_1156 <= sizeInBytes then goto _Label_1155		(int)
	load	[r14+-236],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1155
!	jmp	_Label_1154
_Label_1154:
! THEN...
	mov	2049,r13		! source line 2049
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-380],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
! END IF...
_Label_1155:
! IF STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1158		(int)
	load	[r14+-372],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1158
!	jmp	_Label_1157
_Label_1157:
! THEN...
	mov	2052,r13		! source line 2052
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0BR",r10
	jmp	_Label_1150
! END IF...
_Label_1158:
! IF STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0IF",r10
!   if virtAddr >= 0 then goto _Label_1163		(int)
	load	[r14+-360],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1163
	jmp	_Label_1159
_Label_1163:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1167 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-220]
!   Data Move: _temp_1166 = *_temp_1167  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_1166) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1168 = _temp_1166 + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-216]
!   _temp_1169 = _temp_1168 + 4
	load	[r14+-216],r1
	add	r1,4,r1
	store	r1,[r14+-212]
!   Data Move: _temp_1165 = *_temp_1169  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   _temp_1164 = _temp_1165 - 1		(int)
	load	[r14+-228],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
!   if virtPage <= _temp_1164 then goto _Label_1162		(int)
	load	[r14+-364],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1162
	jmp	_Label_1159
_Label_1162:
	mov	2056,r13		! source line 2056
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1172 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-204]
!   Data Move: _temp_1171 = *_temp_1172  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if intIsZero (_temp_1171) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1173 = _temp_1171 + 32
	load	[r14+-208],r1
	add	r1,32,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-200],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1170  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_1170 then goto _Label_1161 else goto _Label_1159
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1159
	jmp	_Label_1161
_Label_1161:
	mov	2056,r13		! source line 2056
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1176 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-192]
!   Data Move: _temp_1175 = *_temp_1176  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_1175) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1177 = _temp_1175 + 32
	load	[r14+-196],r1
	add	r1,32,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1174  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1174 then goto _Label_1160 else goto _Label_1159
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1159
	jmp	_Label_1160
_Label_1159:
! THEN...
	mov	2057,r13		! source line 2057
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1178 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1178  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	2057,r13		! source line 2057
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,404,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1160:
! ASSIGNMENT STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-376],r1
	load	[r14+-372],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-380],r1
	load	[r14+-372],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-364],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-364]
! ASSIGNMENT STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-368]
! IF STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1180		(int)
	load	[r14+-380],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1180
!	jmp	_Label_1179
_Label_1179:
! THEN...
	mov	2067,r13		! source line 2067
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0BR",r10
	jmp	_Label_1150
! END IF...
_Label_1180:
! END WHILE...
	jmp	_Label_1148
_Label_1150:
! ASSIGNMENT STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-360]
! ASSIGNMENT STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-360],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-364]
! ASSIGNMENT STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-360],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-368]
! ASSIGNMENT STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1183 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1182 = *_temp_1183  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1182) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1184 = _temp_1182 + 124
	load	[r14+-176],r1
	add	r1,124,r1
	store	r1,[r14+-168]
!   Move address of _temp_1184 [fileDesc ] into _temp_1185
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1181 = *_temp_1185  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_1181) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1186 = _temp_1181 + 16
	load	[r14+-180],r1
	add	r1,16,r1
	store	r1,[r14+-160]
!   Data Move: nextPosInFile = *_temp_1186  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-376]
! WHILE STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0WH",r10
_Label_1187:
!	jmp	_Label_1188
_Label_1188:
	mov	2076,r13		! source line 2076
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-368],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
! IF STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0IF",r10
!   _temp_1192 = nextPosInFile + chunkSize		(int)
	load	[r14+-376],r1
	load	[r14+-372],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   if _temp_1192 <= sizeOfFile then goto _Label_1191		(int)
	load	[r14+-156],r1
	load	[r14+-388],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1191
!	jmp	_Label_1190
_Label_1190:
! THEN...
	mov	2080,r13		! source line 2080
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0AS",r10
!   chunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-388],r1
	load	[r14+-376],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
! END IF...
_Label_1191:
! IF STATEMENT...
	mov	2082,r13		! source line 2082
	mov	"\0\0IF",r10
!   _temp_1195 = copiedSoFar + chunkSize		(int)
	load	[r14+-380],r1
	load	[r14+-372],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if _temp_1195 <= sizeInBytes then goto _Label_1194		(int)
	load	[r14+-152],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1194
!	jmp	_Label_1193
_Label_1193:
! THEN...
	mov	2083,r13		! source line 2083
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-380],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
! END IF...
_Label_1194:
! IF STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1197		(int)
	load	[r14+-372],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1197
!	jmp	_Label_1196
_Label_1196:
! THEN...
	mov	2086,r13		! source line 2086
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0BR",r10
	jmp	_Label_1189
! END IF...
_Label_1197:
! IF STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0IF",r10
!   if virtAddr >= 0 then goto _Label_1202		(int)
	load	[r14+-360],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1202
	jmp	_Label_1198
_Label_1202:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1206 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1205 = *_temp_1206  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1205) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1207 = _temp_1205 + 32
	load	[r14+-140],r1
	add	r1,32,r1
	store	r1,[r14+-132]
!   _temp_1208 = _temp_1207 + 4
	load	[r14+-132],r1
	add	r1,4,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1204 = *_temp_1208  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   _temp_1203 = _temp_1204 - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
!   if virtPage <= _temp_1203 then goto _Label_1201		(int)
	load	[r14+-364],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1201
	jmp	_Label_1198
_Label_1201:
	mov	2090,r13		! source line 2090
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1211 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: _temp_1210 = *_temp_1211  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_1210) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1212 = _temp_1210 + 32
	load	[r14+-124],r1
	add	r1,32,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1209  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1209 then goto _Label_1200 else goto _Label_1198
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1198
	jmp	_Label_1200
_Label_1200:
	mov	2090,r13		! source line 2090
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1215 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1214 = *_temp_1215  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1214) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1216 = _temp_1214 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1213  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1213 then goto _Label_1199 else goto _Label_1198
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1198
	jmp	_Label_1199
_Label_1198:
! THEN...
	mov	2091,r13		! source line 2091
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1217 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_1217  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	2091,r13		! source line 2091
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,404,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1199:
! SEND STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1219 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1218 = *_temp_1219  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1218) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1220 = _temp_1218 + 32
	load	[r14+-96],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0AS",r10
	mov	2097,r13		! source line 2097
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1223 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1222 = *_temp_1223  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1222) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1224 = _temp_1222 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1221  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   destAddr = _temp_1221 + offset		(int)
	load	[r14+-84],r1
	load	[r14+-368],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! ASSIGNMENT STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0AS",r10
	mov	2098,r13		! source line 2098
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1227 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1226 = *_temp_1227  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1226) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1228 = _temp_1226 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1228 [fileDesc ] into _temp_1229
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Data Move: _temp_1225 = *_temp_1229  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_1230 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1225  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=chunkSize  sizeInBytes=4
	load	[r14+-372],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=writeStat  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
! IF STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0IF",r10
!   if writeStat then goto _Label_1232 else goto _Label_1231
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1231
	jmp	_Label_1232
_Label_1231:
! THEN...
	mov	2100,r13		! source line 2100
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1233 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1233  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	2100,r13		! source line 2100
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,404,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1232:
! ASSIGNMENT STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-376],r1
	load	[r14+-372],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-380],r1
	load	[r14+-372],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-364],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-364]
! ASSIGNMENT STATEMENT...
	mov	2108,r13		! source line 2108
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-368]
! IF STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1235		(int)
	load	[r14+-380],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1235
!	jmp	_Label_1234
_Label_1234:
! THEN...
	mov	2111,r13		! source line 2111
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0BR",r10
	jmp	_Label_1189
! END IF...
_Label_1235:
! END WHILE...
	jmp	_Label_1187
_Label_1189:
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1238 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1237 = *_temp_1238  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1237) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1239 = _temp_1237 + 124
	load	[r14+-36],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Move address of _temp_1239 [fileDesc ] into _temp_1240
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1236 = *_temp_1240  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1236) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1241 = _temp_1236 + 16
	load	[r14+-40],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1241 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-376],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-380],r1
	store	r1,[r14+8]
	add	r15,404,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1242
	.word	12		! total size of parameters
	.word	400		! frame size = 400
	.word	_Label_1243
	.word	8
	.word	4
	.word	_Label_1244
	.word	12
	.word	4
	.word	_Label_1245
	.word	16
	.word	4
	.word	_Label_1246
	.word	-20
	.word	4
	.word	_Label_1247
	.word	-24
	.word	4
	.word	_Label_1248
	.word	-28
	.word	4
	.word	_Label_1249
	.word	-32
	.word	4
	.word	_Label_1250
	.word	-36
	.word	4
	.word	_Label_1251
	.word	-40
	.word	4
	.word	_Label_1252
	.word	-44
	.word	4
	.word	_Label_1253
	.word	-48
	.word	4
	.word	_Label_1254
	.word	-52
	.word	4
	.word	_Label_1255
	.word	-56
	.word	4
	.word	_Label_1256
	.word	-60
	.word	4
	.word	_Label_1257
	.word	-64
	.word	4
	.word	_Label_1258
	.word	-68
	.word	4
	.word	_Label_1259
	.word	-72
	.word	4
	.word	_Label_1260
	.word	-76
	.word	4
	.word	_Label_1261
	.word	-80
	.word	4
	.word	_Label_1262
	.word	-84
	.word	4
	.word	_Label_1263
	.word	-88
	.word	4
	.word	_Label_1264
	.word	-92
	.word	4
	.word	_Label_1265
	.word	-96
	.word	4
	.word	_Label_1266
	.word	-100
	.word	4
	.word	_Label_1267
	.word	-104
	.word	4
	.word	_Label_1268
	.word	-108
	.word	4
	.word	_Label_1269
	.word	-112
	.word	4
	.word	_Label_1270
	.word	-9
	.word	1
	.word	_Label_1271
	.word	-116
	.word	4
	.word	_Label_1272
	.word	-120
	.word	4
	.word	_Label_1273
	.word	-124
	.word	4
	.word	_Label_1274
	.word	-10
	.word	1
	.word	_Label_1275
	.word	-128
	.word	4
	.word	_Label_1276
	.word	-132
	.word	4
	.word	_Label_1277
	.word	-136
	.word	4
	.word	_Label_1278
	.word	-140
	.word	4
	.word	_Label_1279
	.word	-144
	.word	4
	.word	_Label_1280
	.word	-148
	.word	4
	.word	_Label_1281
	.word	-152
	.word	4
	.word	_Label_1282
	.word	-156
	.word	4
	.word	_Label_1283
	.word	-160
	.word	4
	.word	_Label_1284
	.word	-164
	.word	4
	.word	_Label_1285
	.word	-168
	.word	4
	.word	_Label_1286
	.word	-172
	.word	4
	.word	_Label_1287
	.word	-176
	.word	4
	.word	_Label_1288
	.word	-180
	.word	4
	.word	_Label_1289
	.word	-184
	.word	4
	.word	_Label_1290
	.word	-188
	.word	4
	.word	_Label_1291
	.word	-192
	.word	4
	.word	_Label_1292
	.word	-196
	.word	4
	.word	_Label_1293
	.word	-11
	.word	1
	.word	_Label_1294
	.word	-200
	.word	4
	.word	_Label_1295
	.word	-204
	.word	4
	.word	_Label_1296
	.word	-208
	.word	4
	.word	_Label_1297
	.word	-12
	.word	1
	.word	_Label_1298
	.word	-212
	.word	4
	.word	_Label_1299
	.word	-216
	.word	4
	.word	_Label_1300
	.word	-220
	.word	4
	.word	_Label_1301
	.word	-224
	.word	4
	.word	_Label_1302
	.word	-228
	.word	4
	.word	_Label_1303
	.word	-232
	.word	4
	.word	_Label_1304
	.word	-236
	.word	4
	.word	_Label_1305
	.word	-240
	.word	4
	.word	_Label_1306
	.word	-244
	.word	4
	.word	_Label_1307
	.word	-248
	.word	4
	.word	_Label_1308
	.word	-252
	.word	4
	.word	_Label_1309
	.word	-256
	.word	4
	.word	_Label_1310
	.word	-260
	.word	4
	.word	_Label_1311
	.word	-264
	.word	4
	.word	_Label_1312
	.word	-268
	.word	4
	.word	_Label_1313
	.word	-272
	.word	4
	.word	_Label_1314
	.word	-276
	.word	4
	.word	_Label_1315
	.word	-280
	.word	4
	.word	_Label_1316
	.word	-284
	.word	4
	.word	_Label_1317
	.word	-288
	.word	4
	.word	_Label_1318
	.word	-292
	.word	4
	.word	_Label_1319
	.word	-296
	.word	4
	.word	_Label_1320
	.word	-300
	.word	4
	.word	_Label_1321
	.word	-304
	.word	4
	.word	_Label_1322
	.word	-308
	.word	4
	.word	_Label_1323
	.word	-312
	.word	4
	.word	_Label_1324
	.word	-316
	.word	4
	.word	_Label_1325
	.word	-320
	.word	4
	.word	_Label_1326
	.word	-324
	.word	4
	.word	_Label_1327
	.word	-328
	.word	4
	.word	_Label_1328
	.word	-332
	.word	4
	.word	_Label_1329
	.word	-336
	.word	4
	.word	_Label_1330
	.word	-340
	.word	4
	.word	_Label_1331
	.word	-344
	.word	4
	.word	_Label_1332
	.word	-348
	.word	4
	.word	_Label_1333
	.word	-352
	.word	4
	.word	_Label_1334
	.word	-356
	.word	4
	.word	_Label_1335
	.word	-360
	.word	4
	.word	_Label_1336
	.word	-364
	.word	4
	.word	_Label_1337
	.word	-368
	.word	4
	.word	_Label_1338
	.word	-372
	.word	4
	.word	_Label_1339
	.word	-376
	.word	4
	.word	_Label_1340
	.word	-380
	.word	4
	.word	_Label_1341
	.word	-384
	.word	4
	.word	_Label_1342
	.word	-13
	.word	1
	.word	_Label_1343
	.word	-388
	.word	4
	.word	0
_Label_1242:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1243:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1244:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1245:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1270:
	.byte	'C'
	.ascii	"_temp_1213\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1274:
	.byte	'C'
	.ascii	"_temp_1209\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1293:
	.byte	'C'
	.ascii	"_temp_1174\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1297:
	.byte	'C'
	.ascii	"_temp_1170\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1335:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1336:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1337:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1338:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1339:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1340:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1341:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1342:
	.byte	'B'
	.ascii	"writeStat\0"
	.align
_Label_1343:
	.byte	'I'
	.ascii	"sizeOfFile\0"
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
	mov	36,r1
_Label_3962:
	push	r0
	sub	r1,1,r1
	bne	_Label_3962
	mov	2122,r13		! source line 2122
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0SE",r10
!   _temp_1344 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-140]
!   _temp_1345 = _temp_1344 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Send message Lock
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1350		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1350
	jmp	_Label_1346
_Label_1350:
!   if fileDesc <= 9 then goto _Label_1349		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1349
	jmp	_Label_1346
_Label_1349:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1353 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-124]
!   Data Move: _temp_1352 = *_temp_1353  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_1352) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1354 = _temp_1352 + 124
	load	[r14+-128],r1
	add	r1,124,r1
	store	r1,[r14+-120]
!   Move address of _temp_1354 [fileDesc ] into _temp_1355
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-120],r1
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
	store	r2,[r14+-116]
!   Data Move: _temp_1351 = *_temp_1355  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1351) then goto _Label_1346
	load	[r14+-132],r1
	cmp	r1,r0
	be	_Label_1346
!	jmp	_Label_1348
_Label_1348:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1359 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1358 = *_temp_1359  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1358) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1360 = _temp_1358 + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-96]
!   Move address of _temp_1360 [fileDesc ] into _temp_1361
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
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
	store	r2,[r14+-92]
!   Data Move: _temp_1357 = *_temp_1361  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1357) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1362 = _temp_1357 + 20
	load	[r14+-108],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1356 = *_temp_1362  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1356) then goto _Label_1346
	load	[r14+-112],r1
	cmp	r1,r0
	be	_Label_1346
	jmp	_Label_1347
_Label_1346:
! THEN...
	mov	2130,r13		! source line 2130
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1363 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1363  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	2130,r13		! source line 2130
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2131,r13		! source line 2131
	mov	"\0\0CA",r10
	call	_P_System_nl
! SEND STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0SE",r10
!   _temp_1364 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   _temp_1365 = _temp_1364 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Send message Unlock
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1347:
! ASSIGNMENT STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1367 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1366 = *_temp_1367  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1366) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1368 = _temp_1366 + 124
	load	[r14+-72],r1
	add	r1,124,r1
	store	r1,[r14+-64]
!   Move address of _temp_1368 [fileDesc ] into _temp_1369
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: fp = *_temp_1369  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0AS",r10
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1371 = fp + 20
	load	[r14+-144],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1370 = *_temp_1371  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1370) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1372 = _temp_1370 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: N = *_temp_1372  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-148]
! IF STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1374		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1374
!	jmp	_Label_1373
_Label_1373:
! THEN...
	mov	2139,r13		! source line 2139
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0AS",r10
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1375 = fp + 16
	load	[r14+-144],r1
	add	r1,16,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1375 = N  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0SE",r10
!   _temp_1376 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   _temp_1377 = _temp_1376 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Send message Unlock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0RE",r10
!   ReturnResult: N  (sizeInBytes=4)
	load	[r14+-148],r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1378
_Label_1374:
! ELSE...
	mov	2142,r13		! source line 2142
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0IF",r10
!   if newCurrentPos >= -1 then goto _Label_1381		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1381
	jmp	_Label_1379
_Label_1381:
!   if newCurrentPos <= N then goto _Label_1380		(int)
	load	[r14+12],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1380
!	jmp	_Label_1379
_Label_1379:
! THEN...
	mov	2143,r13		! source line 2143
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1382 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1382  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2143,r13		! source line 2143
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2144,r13		! source line 2144
	mov	"\0\0CA",r10
	call	_P_System_nl
! SEND STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0SE",r10
!   _temp_1383 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_1384 = _temp_1383 + 4
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
	mov	2146,r13		! source line 2146
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1385
_Label_1380:
! ELSE...
	mov	2148,r13		! source line 2148
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2148,r13		! source line 2148
	mov	"\0\0AS",r10
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1386 = fp + 16
	load	[r14+-144],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1386 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0SE",r10
!   _temp_1387 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1388 = _temp_1387 + 4
	load	[r14+-16],r1
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
	mov	2150,r13		! source line 2150
	mov	"\0\0RE",r10
!   ReturnResult: newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1385:
! END IF...
_Label_1378:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_1389
	.word	8		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_1390
	.word	8
	.word	4
	.word	_Label_1391
	.word	12
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
	.word	_Label_1404
	.word	-60
	.word	4
	.word	_Label_1405
	.word	-64
	.word	4
	.word	_Label_1406
	.word	-68
	.word	4
	.word	_Label_1407
	.word	-72
	.word	4
	.word	_Label_1408
	.word	-76
	.word	4
	.word	_Label_1409
	.word	-80
	.word	4
	.word	_Label_1410
	.word	-84
	.word	4
	.word	_Label_1411
	.word	-88
	.word	4
	.word	_Label_1412
	.word	-92
	.word	4
	.word	_Label_1413
	.word	-96
	.word	4
	.word	_Label_1414
	.word	-100
	.word	4
	.word	_Label_1415
	.word	-104
	.word	4
	.word	_Label_1416
	.word	-108
	.word	4
	.word	_Label_1417
	.word	-112
	.word	4
	.word	_Label_1418
	.word	-116
	.word	4
	.word	_Label_1419
	.word	-120
	.word	4
	.word	_Label_1420
	.word	-124
	.word	4
	.word	_Label_1421
	.word	-128
	.word	4
	.word	_Label_1422
	.word	-132
	.word	4
	.word	_Label_1423
	.word	-136
	.word	4
	.word	_Label_1424
	.word	-140
	.word	4
	.word	_Label_1425
	.word	-144
	.word	4
	.word	_Label_1426
	.word	-148
	.word	4
	.word	0
_Label_1389:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1390:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1391:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1386\0"
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
	.ascii	"_temp_1375\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1425:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_1426:
	.byte	'I'
	.ascii	"N\0"
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
	mov	29,r1
_Label_3963:
	push	r0
	sub	r1,1,r1
	bne	_Label_3963
	mov	2156,r13		! source line 2156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1431		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1431
	jmp	_Label_1427
_Label_1431:
!   if fileDesc <= 9 then goto _Label_1430		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1430
	jmp	_Label_1427
_Label_1430:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1434 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1433 = *_temp_1434  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1433) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1435 = _temp_1433 + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-96]
!   Move address of _temp_1435 [fileDesc ] into _temp_1436
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
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
	store	r2,[r14+-92]
!   Data Move: _temp_1432 = *_temp_1436  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1432) then goto _Label_1427
	load	[r14+-108],r1
	cmp	r1,r0
	be	_Label_1427
!	jmp	_Label_1429
_Label_1429:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1440 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1439 = *_temp_1440  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1439) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1441 = _temp_1439 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_1441 [fileDesc ] into _temp_1442
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
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
	store	r2,[r14+-68]
!   Data Move: _temp_1438 = *_temp_1442  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1438) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1443 = _temp_1438 + 20
	load	[r14+-84],r1
	add	r1,20,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1437 = *_temp_1443  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1437) then goto _Label_1427
	load	[r14+-88],r1
	cmp	r1,r0
	be	_Label_1427
	jmp	_Label_1428
_Label_1427:
! THEN...
	mov	2161,r13		! source line 2161
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1444 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1444  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	2161,r13		! source line 2161
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2162,r13		! source line 2162
	mov	"\0\0CA",r10
	call	_P_System_nl
	jmp	_Label_1445
_Label_1428:
! ELSE...
	mov	2164,r13		! source line 2164
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1447 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1446 = *_temp_1447  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1446) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1448 = _temp_1446 + 124
	load	[r14+-56],r1
	add	r1,124,r1
	store	r1,[r14+-48]
!   Move address of _temp_1448 [fileDesc ] into _temp_1449
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
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
	store	r2,[r14+-44]
!   Data Move: fp = *_temp_1449  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0AS",r10
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1451 = fp + 20
	load	[r14+-112],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1450 = *_temp_1451  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1450) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1452 = _temp_1450 + 24
	load	[r14+-40],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: N = *_temp_1452  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-116]
! SEND STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0SE",r10
!   _temp_1453 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=fp  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1455 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1454 = *_temp_1455  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1454) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1456 = _temp_1454 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1456 [fileDesc ] into _temp_1457
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: *_temp_1457 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1445:
! RETURN STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_1458
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_1459
	.word	8
	.word	4
	.word	_Label_1460
	.word	-12
	.word	4
	.word	_Label_1461
	.word	-16
	.word	4
	.word	_Label_1462
	.word	-20
	.word	4
	.word	_Label_1463
	.word	-24
	.word	4
	.word	_Label_1464
	.word	-28
	.word	4
	.word	_Label_1465
	.word	-32
	.word	4
	.word	_Label_1466
	.word	-36
	.word	4
	.word	_Label_1467
	.word	-40
	.word	4
	.word	_Label_1468
	.word	-44
	.word	4
	.word	_Label_1469
	.word	-48
	.word	4
	.word	_Label_1470
	.word	-52
	.word	4
	.word	_Label_1471
	.word	-56
	.word	4
	.word	_Label_1472
	.word	-60
	.word	4
	.word	_Label_1473
	.word	-64
	.word	4
	.word	_Label_1474
	.word	-68
	.word	4
	.word	_Label_1475
	.word	-72
	.word	4
	.word	_Label_1476
	.word	-76
	.word	4
	.word	_Label_1477
	.word	-80
	.word	4
	.word	_Label_1478
	.word	-84
	.word	4
	.word	_Label_1479
	.word	-88
	.word	4
	.word	_Label_1480
	.word	-92
	.word	4
	.word	_Label_1481
	.word	-96
	.word	4
	.word	_Label_1482
	.word	-100
	.word	4
	.word	_Label_1483
	.word	-104
	.word	4
	.word	_Label_1484
	.word	-108
	.word	4
	.word	_Label_1485
	.word	-112
	.word	4
	.word	_Label_1486
	.word	-116
	.word	4
	.word	0
_Label_1458:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1459:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1485:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_1486:
	.byte	'I'
	.ascii	"N\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_206_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_206_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3964:
	push	r0
	sub	r1,1,r1
	bne	_Label_3964
	mov	2760,r13		! source line 2760
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2763,r13		! source line 2763
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2764,r13		! source line 2764
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1487 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1487  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0AS",r10
!   _temp_1488 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1488) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1490 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1490) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1489 = *_temp_1490  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1488 = _temp_1489  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0AS",r10
!   _temp_1491 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1491) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1493 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1493) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1492 = *_temp_1493  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1491 = _temp_1492  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0AS",r10
!   _temp_1494 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1494) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1496 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1496) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1495 = *_temp_1496  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1494 = _temp_1495  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_206_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1497
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1498
	.word	8
	.word	4
	.word	_Label_1499
	.word	12
	.word	4
	.word	_Label_1500
	.word	-16
	.word	4
	.word	_Label_1501
	.word	-9
	.word	1
	.word	_Label_1502
	.word	-20
	.word	4
	.word	_Label_1503
	.word	-24
	.word	4
	.word	_Label_1504
	.word	-10
	.word	1
	.word	_Label_1505
	.word	-28
	.word	4
	.word	_Label_1506
	.word	-32
	.word	4
	.word	_Label_1507
	.word	-11
	.word	1
	.word	_Label_1508
	.word	-36
	.word	4
	.word	_Label_1509
	.word	-12
	.word	1
	.word	_Label_1510
	.word	-40
	.word	4
	.word	_Label_1511
	.word	-44
	.word	4
	.word	0
_Label_1497:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1498:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1499:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1501:
	.byte	'C'
	.ascii	"_temp_1495\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1504:
	.byte	'C'
	.ascii	"_temp_1492\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1507:
	.byte	'C'
	.ascii	"_temp_1489\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1509:
	.byte	'C'
	.ascii	"_temp_1487\0"
	.align
_Label_1510:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1511:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_205_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_205_printFCB,r1
	push	r1
	mov	3,r1
_Label_3965:
	push	r0
	sub	r1,1,r1
	bne	_Label_3965
	mov	2770,r13		! source line 2770
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1513 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1512 = *_temp_1513  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1512  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2771,r13		! source line 2771
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2772,r13		! source line 2772
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_205_printFCB:
	.word	_sourceFileName
	.word	_Label_1514
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1515
	.word	8
	.word	4
	.word	_Label_1516
	.word	-12
	.word	4
	.word	_Label_1517
	.word	-16
	.word	4
	.word	0
_Label_1514:
	.ascii	"printFCB\0"
	.align
_Label_1515:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_204_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_204_printOpen,r1
	push	r1
	mov	4,r1
_Label_3966:
	push	r0
	sub	r1,1,r1
	bne	_Label_3966
	mov	2775,r13		! source line 2775
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1518 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1518  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2776,r13		! source line 2776
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1519 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1519  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2777,r13		! source line 2777
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1520 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1520  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2778,r13		! source line 2778
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2779,r13		! source line 2779
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
	mov	2779,r13		! source line 2779
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_204_printOpen:
	.word	_sourceFileName
	.word	_Label_1521
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1522
	.word	8
	.word	4
	.word	_Label_1523
	.word	-12
	.word	4
	.word	_Label_1524
	.word	-16
	.word	4
	.word	_Label_1525
	.word	-20
	.word	4
	.word	0
_Label_1521:
	.ascii	"printOpen\0"
	.align
_Label_1522:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1518\0"
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
_Label_3967:
	push	r0
	sub	r1,1,r1
	bne	_Label_3967
	mov	3039,r13		! source line 3039
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3041,r13		! source line 3041
	mov	"\0\0AS",r10
	mov	3041,r13		! source line 3041
	mov	"\0\0SE",r10
!   _temp_1526 = &_P_Kernel_threadManager
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
	mov	3042,r13		! source line 3042
	mov	"\0\0AS",r10
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1527 = myProgram + 72
	load	[r14+-28],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   _temp_1528 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1527 = _temp_1528  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3043,r13		! source line 3043
	mov	"\0\0SE",r10
!   _temp_1529 = _function_203_StartUserProcess
	set	_function_203_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1529  sizeInBytes=4
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
	mov	3043,r13		! source line 3043
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
	.word	_Label_1530
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1531
	.word	-12
	.word	4
	.word	_Label_1532
	.word	-16
	.word	4
	.word	_Label_1533
	.word	-20
	.word	4
	.word	_Label_1534
	.word	-24
	.word	4
	.word	_Label_1535
	.word	-28
	.word	4
	.word	0
_Label_1530:
	.ascii	"InitFirstProcess\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1535:
	.byte	'P'
	.ascii	"myProgram\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_203_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_203_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_3968:
	push	r0
	sub	r1,1,r1
	bne	_Label_3968
	mov	3046,r13		! source line 3046
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3053,r13		! source line 3053
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	3053,r13		! source line 3053
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	3054,r13		! source line 3054
	mov	"\0\0AS",r10
	mov	3054,r13		! source line 3054
	mov	"\0\0SE",r10
!   _temp_1536 = &_P_Kernel_processManager
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
	mov	3055,r13		! source line 3055
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1537 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_1537 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3056,r13		! source line 3056
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1538 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_1538 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3057,r13		! source line 3057
	mov	"\0\0AS",r10
	mov	3057,r13		! source line 3057
	mov	"\0\0SE",r10
!   _temp_1539 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-60]
!   _temp_1540 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1539  sizeInBytes=4
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
	mov	3058,r13		! source line 3058
	mov	"\0\0IF",r10
!   if fp == 0 then goto _Label_1542		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1542
!	jmp	_Label_1541
_Label_1541:
! THEN...
	mov	3059,r13		! source line 3059
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3059,r13		! source line 3059
	mov	"\0\0AS",r10
	mov	3059,r13		! source line 3059
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1544 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_1543 = _temp_1544		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1543  sizeInBytes=4
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
	mov	3060,r13		! source line 3060
	mov	"\0\0SE",r10
!   _temp_1545 = &_P_Kernel_fileManager
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
	mov	3061,r13		! source line 3061
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1547 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_1548 = _temp_1547 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1546 = *_temp_1548  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_1546 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	3062,r13		! source line 3062
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1549 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_1549 [999 ] into _temp_1550
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
!   initSystemStackTop = _temp_1550		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	3063,r13		! source line 3063
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1551 = pcb + 32
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
	mov	3064,r13		! source line 3064
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1552 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1552 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3065,r13		! source line 3065
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	3065,r13		! source line 3065
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
	mov	3066,r13		! source line 3066
	mov	"\0\0CE",r10
	call	BecomeUserThread
	jmp	_Label_1553
_Label_1542:
! ELSE...
	mov	3068,r13		! source line 3068
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1554 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1554  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3068,r13		! source line 3068
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	3069,r13		! source line 3069
	mov	"\0\0CA",r10
	call	_P_System_nl
! END IF...
_Label_1553:
! RETURN STATEMENT...
	mov	3058,r13		! source line 3058
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_203_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_1555
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1556
	.word	8
	.word	4
	.word	_Label_1557
	.word	-12
	.word	4
	.word	_Label_1558
	.word	-16
	.word	4
	.word	_Label_1559
	.word	-20
	.word	4
	.word	_Label_1560
	.word	-24
	.word	4
	.word	_Label_1561
	.word	-28
	.word	4
	.word	_Label_1562
	.word	-32
	.word	4
	.word	_Label_1563
	.word	-36
	.word	4
	.word	_Label_1564
	.word	-40
	.word	4
	.word	_Label_1565
	.word	-44
	.word	4
	.word	_Label_1566
	.word	-48
	.word	4
	.word	_Label_1567
	.word	-52
	.word	4
	.word	_Label_1568
	.word	-56
	.word	4
	.word	_Label_1569
	.word	-60
	.word	4
	.word	_Label_1570
	.word	-64
	.word	4
	.word	_Label_1571
	.word	-68
	.word	4
	.word	_Label_1572
	.word	-72
	.word	4
	.word	_Label_1573
	.word	-76
	.word	4
	.word	_Label_1574
	.word	-80
	.word	4
	.word	_Label_1575
	.word	-84
	.word	4
	.word	_Label_1576
	.word	-88
	.word	4
	.word	_Label_1577
	.word	-92
	.word	4
	.word	_Label_1578
	.word	-96
	.word	4
	.word	0
_Label_1555:
	.ascii	"StartUserProcess\0"
	.align
_Label_1556:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1573:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_1574:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_1575:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_1576:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_1577:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_1578:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1579
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1579:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1580
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1580:
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
_Label_3969:
	push	r0
	sub	r1,1,r1
	bne	_Label_3969
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1582		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1582
!	jmp	_Label_1581
_Label_1581:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1583 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1583  sizeInBytes=4
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
_Label_1582:
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
	.word	_Label_1585
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1586
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1587
	.word	12
	.word	4
	.word	_Label_1588
	.word	-12
	.word	4
	.word	_Label_1589
	.word	-16
	.word	4
	.word	0
_Label_1585:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1586:
	.ascii	"Pself\0"
	.align
_Label_1587:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1583\0"
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
_Label_3970:
	push	r0
	sub	r1,1,r1
	bne	_Label_3970
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
!   if count != 2147483647 then goto _Label_1591		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1591
!	jmp	_Label_1590
_Label_1590:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1592 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1592  sizeInBytes=4
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
_Label_1591:
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
!   if count > 0 then goto _Label_1594		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1594
!	jmp	_Label_1593
_Label_1593:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_1595 = &waitingThreads
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
!   _temp_1596 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1596 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_1597 = &_P_Kernel_readyList
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
_Label_1594:
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
	.word	_Label_1598
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1599
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1600
	.word	-12
	.word	4
	.word	_Label_1601
	.word	-16
	.word	4
	.word	_Label_1602
	.word	-20
	.word	4
	.word	_Label_1603
	.word	-24
	.word	4
	.word	_Label_1604
	.word	-28
	.word	4
	.word	_Label_1605
	.word	-32
	.word	4
	.word	0
_Label_1598:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1599:
	.ascii	"Pself\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1604:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1605:
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
_Label_3971:
	push	r0
	sub	r1,1,r1
	bne	_Label_3971
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
!   if count != -2147483648 then goto _Label_1607		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1607
!	jmp	_Label_1606
_Label_1606:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1608 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1608  sizeInBytes=4
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
_Label_1607:
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
!   if count >= 0 then goto _Label_1610		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1610
!	jmp	_Label_1609
_Label_1609:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_1611 = &waitingThreads
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
_Label_1610:
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
	.word	_Label_1612
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1613
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1614
	.word	-12
	.word	4
	.word	_Label_1615
	.word	-16
	.word	4
	.word	_Label_1616
	.word	-20
	.word	4
	.word	0
_Label_1612:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1613:
	.ascii	"Pself\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1616:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1617
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1617:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1618
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1618:
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
_Label_3972:
	push	r0
	sub	r1,1,r1
	bne	_Label_3972
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
	.word	_Label_1620
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1621
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1622
	.word	-12
	.word	4
	.word	0
_Label_1620:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1621:
	.ascii	"Pself\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1619\0"
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
_Label_3973:
	push	r0
	sub	r1,1,r1
	bne	_Label_3973
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1624		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1624
!	jmp	_Label_1623
_Label_1623:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1625 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1625  sizeInBytes=4
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
_Label_1624:
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
!   if heldBy == 0 then goto _Label_1629		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1629
!   _temp_1628 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1630
_Label_1629:
!   _temp_1628 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1630:
!   if _temp_1628 then goto _Label_1627 else goto _Label_1626
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1626
	jmp	_Label_1627
_Label_1626:
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
	jmp	_Label_1631
_Label_1627:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_1632 = &waitingThreads
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
_Label_1631:
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
	.word	_Label_1633
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1634
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1635
	.word	-16
	.word	4
	.word	_Label_1636
	.word	-9
	.word	1
	.word	_Label_1637
	.word	-20
	.word	4
	.word	_Label_1638
	.word	-24
	.word	4
	.word	0
_Label_1633:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1634:
	.ascii	"Pself\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1636:
	.byte	'C'
	.ascii	"_temp_1628\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1638:
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
_Label_3974:
	push	r0
	sub	r1,1,r1
	bne	_Label_3974
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1640		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1640
!	jmp	_Label_1639
_Label_1639:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1641 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1641  sizeInBytes=4
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
_Label_1640:
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
!   _temp_1642 = &waitingThreads
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
!   if t == 0 then goto _Label_1644		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1644
!	jmp	_Label_1643
_Label_1643:
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
!   _temp_1645 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1645 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_1646 = &_P_Kernel_readyList
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
	jmp	_Label_1647
_Label_1644:
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
_Label_1647:
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
	.word	_Label_1648
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1649
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1650
	.word	-12
	.word	4
	.word	_Label_1651
	.word	-16
	.word	4
	.word	_Label_1652
	.word	-20
	.word	4
	.word	_Label_1653
	.word	-24
	.word	4
	.word	_Label_1654
	.word	-28
	.word	4
	.word	_Label_1655
	.word	-32
	.word	4
	.word	0
_Label_1648:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1649:
	.ascii	"Pself\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1645\0"
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
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1655:
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
_Label_3975:
	push	r0
	sub	r1,1,r1
	bne	_Label_3975
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1658		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1658
!	jmp	_Label_1657
_Label_1657:
!   _temp_1656 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1659
_Label_1658:
!   _temp_1656 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1659:
!   ReturnResult: _temp_1656  (sizeInBytes=1)
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
	.word	_Label_1660
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1661
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1662
	.word	-9
	.word	1
	.word	0
_Label_1660:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1661:
	.ascii	"Pself\0"
	.align
_Label_1662:
	.byte	'C'
	.ascii	"_temp_1656\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1663
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1663:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1664
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1664:
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
_Label_3976:
	push	r0
	sub	r1,1,r1
	bne	_Label_3976
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
	.word	_Label_1666
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1667
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1668
	.word	-12
	.word	4
	.word	0
_Label_1666:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1667:
	.ascii	"Pself\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1665\0"
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
_Label_3977:
	push	r0
	sub	r1,1,r1
	bne	_Label_3977
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
!   Retrieve Result: targetName=_temp_1671  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1671 then goto _Label_1670 else goto _Label_1669
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1669
	jmp	_Label_1670
_Label_1669:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1672 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1672  sizeInBytes=4
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
_Label_1670:
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
!   _temp_1673 = &waitingThreads
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
	.word	_Label_1674
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1675
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1676
	.word	12
	.word	4
	.word	_Label_1677
	.word	-16
	.word	4
	.word	_Label_1678
	.word	-20
	.word	4
	.word	_Label_1679
	.word	-9
	.word	1
	.word	_Label_1680
	.word	-24
	.word	4
	.word	0
_Label_1674:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1675:
	.ascii	"Pself\0"
	.align
_Label_1676:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1679:
	.byte	'C'
	.ascii	"_temp_1671\0"
	.align
_Label_1680:
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
_Label_3978:
	push	r0
	sub	r1,1,r1
	bne	_Label_3978
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
!   Retrieve Result: targetName=_temp_1683  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1683 then goto _Label_1682 else goto _Label_1681
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1681
	jmp	_Label_1682
_Label_1681:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1684 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1684  sizeInBytes=4
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
_Label_1682:
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
!   _temp_1685 = &waitingThreads
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
!   if t == 0 then goto _Label_1687		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1687
!	jmp	_Label_1686
_Label_1686:
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
!   _temp_1688 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1688 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_1689 = &_P_Kernel_readyList
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
_Label_1687:
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
	.word	_Label_1690
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1691
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1692
	.word	12
	.word	4
	.word	_Label_1693
	.word	-16
	.word	4
	.word	_Label_1694
	.word	-20
	.word	4
	.word	_Label_1695
	.word	-24
	.word	4
	.word	_Label_1696
	.word	-28
	.word	4
	.word	_Label_1697
	.word	-9
	.word	1
	.word	_Label_1698
	.word	-32
	.word	4
	.word	_Label_1699
	.word	-36
	.word	4
	.word	0
_Label_1690:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1691:
	.ascii	"Pself\0"
	.align
_Label_1692:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1697:
	.byte	'C'
	.ascii	"_temp_1683\0"
	.align
_Label_1698:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1699:
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
_Label_3979:
	push	r0
	sub	r1,1,r1
	bne	_Label_3979
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
!   Retrieve Result: targetName=_temp_1702  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1702 then goto _Label_1701 else goto _Label_1700
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1700
	jmp	_Label_1701
_Label_1700:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1703 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1703  sizeInBytes=4
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
_Label_1701:
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
_Label_1704:
!	jmp	_Label_1705
_Label_1705:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_1707 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1708
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1708
	jmp	_Label_1709
_Label_1708:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_1706
! END IF...
_Label_1709:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1710 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1710 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_1711 = &_P_Kernel_readyList
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
	jmp	_Label_1704
_Label_1706:
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
	.word	_Label_1712
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1713
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1714
	.word	12
	.word	4
	.word	_Label_1715
	.word	-16
	.word	4
	.word	_Label_1716
	.word	-20
	.word	4
	.word	_Label_1717
	.word	-24
	.word	4
	.word	_Label_1718
	.word	-28
	.word	4
	.word	_Label_1719
	.word	-9
	.word	1
	.word	_Label_1720
	.word	-32
	.word	4
	.word	_Label_1721
	.word	-36
	.word	4
	.word	0
_Label_1712:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1713:
	.ascii	"Pself\0"
	.align
_Label_1714:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1719:
	.byte	'C'
	.ascii	"_temp_1702\0"
	.align
_Label_1720:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1721:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1722
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
_Label_1722:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1723
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1723:
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
_Label_3980:
	push	r0
	sub	r1,1,r1
	bne	_Label_3980
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
!   _temp_1724 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1724) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1724 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_1725 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1725 [0 ] into _temp_1726
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
!   Data Move: *_temp_1726 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1727 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1727 [999 ] into _temp_1728
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
!   Data Move: *_temp_1728 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1729 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1729 [999 ] into _temp_1730
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
!   stackTop = _temp_1730		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1731 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1733 = &_temp_1732
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1733 = _temp_1733 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1735:
!   Data Move: *_temp_1733 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1733 = _temp_1733 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1734 = _temp_1734 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1734) then goto _Label_1735
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1735
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1736 = &_temp_1732
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3981
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3981:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1731 = *_temp_1736  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3982:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3982
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
!   _temp_1737 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1739 = &_temp_1738
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1739 = _temp_1739 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1741:
!   Data Move: *_temp_1739 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1739 = _temp_1739 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1740 = _temp_1740 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1740) then goto _Label_1741
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1741
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1742 = &_temp_1738
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3983
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3983:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1737 = *_temp_1742  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3984:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3984
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
	.word	_Label_1743
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1744
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1745
	.word	12
	.word	4
	.word	_Label_1746
	.word	-12
	.word	4
	.word	_Label_1747
	.word	-16
	.word	4
	.word	_Label_1748
	.word	-20
	.word	4
	.word	_Label_1749
	.word	-84
	.word	64
	.word	_Label_1750
	.word	-88
	.word	4
	.word	_Label_1751
	.word	-92
	.word	4
	.word	_Label_1752
	.word	-96
	.word	4
	.word	_Label_1753
	.word	-100
	.word	4
	.word	_Label_1754
	.word	-156
	.word	56
	.word	_Label_1755
	.word	-160
	.word	4
	.word	_Label_1756
	.word	-164
	.word	4
	.word	_Label_1757
	.word	-168
	.word	4
	.word	_Label_1758
	.word	-172
	.word	4
	.word	_Label_1759
	.word	-176
	.word	4
	.word	_Label_1760
	.word	-180
	.word	4
	.word	_Label_1761
	.word	-184
	.word	4
	.word	_Label_1762
	.word	-188
	.word	4
	.word	0
_Label_1743:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1744:
	.ascii	"Pself\0"
	.align
_Label_1745:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1724\0"
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
_Label_3985:
	push	r0
	sub	r1,1,r1
	bne	_Label_3985
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
!   _temp_1763 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1763  (sizeInBytes=4)
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
!   _temp_1765 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1764  sizeInBytes=4
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
	.word	_Label_1766
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1767
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1768
	.word	12
	.word	4
	.word	_Label_1769
	.word	16
	.word	4
	.word	_Label_1770
	.word	-12
	.word	4
	.word	_Label_1771
	.word	-16
	.word	4
	.word	_Label_1772
	.word	-20
	.word	4
	.word	_Label_1773
	.word	-24
	.word	4
	.word	_Label_1774
	.word	-28
	.word	4
	.word	0
_Label_1766:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1767:
	.ascii	"Pself\0"
	.align
_Label_1768:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1769:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1773:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1774:
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
_Label_3986:
	push	r0
	sub	r1,1,r1
	bne	_Label_3986
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1777 == _P_Kernel_currentThread then goto _Label_1776		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1776
!	jmp	_Label_1775
_Label_1775:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1778 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1778  sizeInBytes=4
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
_Label_1776:
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
!   _temp_1779 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1781		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1781
!	jmp	_Label_1780
_Label_1780:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1783		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1783
!	jmp	_Label_1782
_Label_1782:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1784 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1784  sizeInBytes=4
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
_Label_1783:
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
!   _temp_1786 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1785  sizeInBytes=4
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
_Label_1781:
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
	.word	_Label_1787
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1788
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1789
	.word	-12
	.word	4
	.word	_Label_1790
	.word	-16
	.word	4
	.word	_Label_1791
	.word	-20
	.word	4
	.word	_Label_1792
	.word	-24
	.word	4
	.word	_Label_1793
	.word	-28
	.word	4
	.word	_Label_1794
	.word	-32
	.word	4
	.word	_Label_1795
	.word	-36
	.word	4
	.word	_Label_1796
	.word	-40
	.word	4
	.word	_Label_1797
	.word	-44
	.word	4
	.word	0
_Label_1787:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1788:
	.ascii	"Pself\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1795:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1796:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1797:
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
_Label_3987:
	push	r0
	sub	r1,1,r1
	bne	_Label_3987
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1799		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1799
!	jmp	_Label_1798
_Label_1798:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1800 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1800  sizeInBytes=4
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
_Label_1799:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1803 == _P_Kernel_currentThread then goto _Label_1802		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1802
!	jmp	_Label_1801
_Label_1801:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1804 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1804  sizeInBytes=4
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
_Label_1802:
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
!   _temp_1805 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1806
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1806
	jmp	_Label_1807
_Label_1806:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1808 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1808  sizeInBytes=4
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
_Label_1807:
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
	.word	_Label_1809
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1810
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1811
	.word	-12
	.word	4
	.word	_Label_1812
	.word	-16
	.word	4
	.word	_Label_1813
	.word	-20
	.word	4
	.word	_Label_1814
	.word	-24
	.word	4
	.word	_Label_1815
	.word	-28
	.word	4
	.word	_Label_1816
	.word	-32
	.word	4
	.word	0
_Label_1809:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1810:
	.ascii	"Pself\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1816:
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
_Label_3988:
	push	r0
	sub	r1,1,r1
	bne	_Label_3988
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_1820 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1820 [0 ] into _temp_1821
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
!   Data Move: _temp_1819 = *_temp_1821  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1819 == 606348324 then goto _Label_1818		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1818
!	jmp	_Label_1817
_Label_1817:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1822 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1822  sizeInBytes=4
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
	jmp	_Label_1823
_Label_1818:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_1827 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1827 [999 ] into _temp_1828
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
!   Data Move: _temp_1826 = *_temp_1828  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1826 == 606348324 then goto _Label_1825		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1825
!	jmp	_Label_1824
_Label_1824:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1829 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1829  sizeInBytes=4
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
_Label_1825:
! END IF...
_Label_1823:
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
	.word	_Label_1830
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1831
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1832
	.word	-12
	.word	4
	.word	_Label_1833
	.word	-16
	.word	4
	.word	_Label_1834
	.word	-20
	.word	4
	.word	_Label_1835
	.word	-24
	.word	4
	.word	_Label_1836
	.word	-28
	.word	4
	.word	_Label_1837
	.word	-32
	.word	4
	.word	_Label_1838
	.word	-36
	.word	4
	.word	_Label_1839
	.word	-40
	.word	4
	.word	0
_Label_1830:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1831:
	.ascii	"Pself\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1819\0"
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
_Label_3989:
	push	r0
	sub	r1,1,r1
	bne	_Label_3989
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
!   _temp_1840 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1840  sizeInBytes=4
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
!   _temp_1841 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1841  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1842  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1843 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1843  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1844 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1844  sizeInBytes=4
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
!   _temp_1849 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1850 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1849  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1845:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1850 then goto _Label_1848		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1848
_Label_1846:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1851 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1851  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1852 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1852  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1853 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1853  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1855 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1855 [i ] into _temp_1856
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
!   Data Move: _temp_1854 = *_temp_1856  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1854  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1857 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1857  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1859 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1859 [i ] into _temp_1860
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
!   Data Move: _temp_1858 = *_temp_1860  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1858  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1861 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1861  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1847:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1845
! END FOR
_Label_1848:
! CALL STATEMENT...
!   _temp_1862 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-116]
!   _temp_1863 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1862  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1863  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1864 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-108]
!   _temp_1866 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1866 [0 ] into _temp_1867
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
!   _temp_1865 = _temp_1867		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1864  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1865  sizeInBytes=4
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
	be	_Label_1870
	cmp	r1,2
	be	_Label_1871
	cmp	r1,3
	be	_Label_1872
	cmp	r1,4
	be	_Label_1873
	cmp	r1,5
	be	_Label_1874
	jmp	_Label_1868
! CASE 1...
_Label_1870:
! CALL STATEMENT...
!   _temp_1875 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1875  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_1869
! CASE 2...
_Label_1871:
! CALL STATEMENT...
!   _temp_1876 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1876  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_1869
! CASE 3...
_Label_1872:
! CALL STATEMENT...
!   _temp_1877 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1877  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_1869
! CASE 4...
_Label_1873:
! CALL STATEMENT...
!   _temp_1878 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1878  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_1869
! CASE 5...
_Label_1874:
! CALL STATEMENT...
!   _temp_1879 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1879  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_1869
! DEFAULT CASE...
_Label_1868:
! CALL STATEMENT...
!   _temp_1880 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1880  sizeInBytes=4
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
_Label_1869:
! CALL STATEMENT...
!   _temp_1881 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1881  sizeInBytes=4
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
!   _temp_1882 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1882  sizeInBytes=4
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
!   _temp_1887 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1888 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1887  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1883:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1888 then goto _Label_1886		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1886
_Label_1884:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1889 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1889  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1890 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1890  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1891 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1891  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1893 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1893 [i ] into _temp_1894
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
!   Data Move: _temp_1892 = *_temp_1894  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1892  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1895 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1895  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1897 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1897 [i ] into _temp_1898
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
!   Data Move: _temp_1896 = *_temp_1898  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1896  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1899 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1899  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1885:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1883
! END FOR
_Label_1886:
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
	.word	_Label_1900
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1901
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1902
	.word	-12
	.word	4
	.word	_Label_1903
	.word	-16
	.word	4
	.word	_Label_1904
	.word	-20
	.word	4
	.word	_Label_1905
	.word	-24
	.word	4
	.word	_Label_1906
	.word	-28
	.word	4
	.word	_Label_1907
	.word	-32
	.word	4
	.word	_Label_1908
	.word	-36
	.word	4
	.word	_Label_1909
	.word	-40
	.word	4
	.word	_Label_1910
	.word	-44
	.word	4
	.word	_Label_1911
	.word	-48
	.word	4
	.word	_Label_1912
	.word	-52
	.word	4
	.word	_Label_1913
	.word	-56
	.word	4
	.word	_Label_1914
	.word	-60
	.word	4
	.word	_Label_1915
	.word	-64
	.word	4
	.word	_Label_1916
	.word	-68
	.word	4
	.word	_Label_1917
	.word	-72
	.word	4
	.word	_Label_1918
	.word	-76
	.word	4
	.word	_Label_1919
	.word	-80
	.word	4
	.word	_Label_1920
	.word	-84
	.word	4
	.word	_Label_1921
	.word	-88
	.word	4
	.word	_Label_1922
	.word	-92
	.word	4
	.word	_Label_1923
	.word	-96
	.word	4
	.word	_Label_1924
	.word	-100
	.word	4
	.word	_Label_1925
	.word	-104
	.word	4
	.word	_Label_1926
	.word	-108
	.word	4
	.word	_Label_1927
	.word	-112
	.word	4
	.word	_Label_1928
	.word	-116
	.word	4
	.word	_Label_1929
	.word	-120
	.word	4
	.word	_Label_1930
	.word	-124
	.word	4
	.word	_Label_1931
	.word	-128
	.word	4
	.word	_Label_1932
	.word	-132
	.word	4
	.word	_Label_1933
	.word	-136
	.word	4
	.word	_Label_1934
	.word	-140
	.word	4
	.word	_Label_1935
	.word	-144
	.word	4
	.word	_Label_1936
	.word	-148
	.word	4
	.word	_Label_1937
	.word	-152
	.word	4
	.word	_Label_1938
	.word	-156
	.word	4
	.word	_Label_1939
	.word	-160
	.word	4
	.word	_Label_1940
	.word	-164
	.word	4
	.word	_Label_1941
	.word	-168
	.word	4
	.word	_Label_1942
	.word	-172
	.word	4
	.word	_Label_1943
	.word	-176
	.word	4
	.word	_Label_1944
	.word	-180
	.word	4
	.word	_Label_1945
	.word	-184
	.word	4
	.word	_Label_1946
	.word	-188
	.word	4
	.word	_Label_1947
	.word	-192
	.word	4
	.word	_Label_1948
	.word	-196
	.word	4
	.word	0
_Label_1900:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1901:
	.ascii	"Pself\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1947:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1948:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1949
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1949:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1950
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1950:
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
_Label_3990:
	push	r0
	sub	r1,1,r1
	bne	_Label_3990
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1951 = _StringConst_100
	set	_StringConst_100,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1951  sizeInBytes=4
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
!   _temp_1952 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1954 = &_temp_1953
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1954 = _temp_1954 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1956 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3991:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3991
!   _temp_1956 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1958:
!   Data Move: *_temp_1954 = _temp_1956  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3992:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3992
!   _temp_1954 = _temp_1954 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1955 = _temp_1955 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1955) then goto _Label_1958
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1958
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1959 = &_temp_1953
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3993
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3993:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1952 = *_temp_1959  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3994:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3994
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
!   _temp_1963 = &threadManagerLock
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
!   _temp_1964 = &aThreadBecomeFree
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
!   _temp_1969 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1970 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1969  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1965:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1970 then goto _Label_1968		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1968
_Label_1966:
	mov	702,r13		! source line 702
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0SE",r10
!   _temp_1971 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-48]
!   _temp_1972 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1972 [i ] into _temp_1973
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
!   Prepare Argument: offset=12  value=_temp_1971  sizeInBytes=4
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
!   _temp_1975 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1975 [i ] into _temp_1976
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
!   _temp_1974 = _temp_1976		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1977 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1974  sizeInBytes=4
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
!   _temp_1978 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1978 [i ] into _temp_1979
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
!   _temp_1980 = _temp_1979 + 76
	load	[r14+-16],r1
	add	r1,76,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1980 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-12],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1967:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1965
! END FOR
_Label_1968:
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
	.word	_Label_1981
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1982
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1983
	.word	-12
	.word	4
	.word	_Label_1984
	.word	-16
	.word	4
	.word	_Label_1985
	.word	-20
	.word	4
	.word	_Label_1986
	.word	-24
	.word	4
	.word	_Label_1987
	.word	-28
	.word	4
	.word	_Label_1988
	.word	-32
	.word	4
	.word	_Label_1989
	.word	-36
	.word	4
	.word	_Label_1990
	.word	-40
	.word	4
	.word	_Label_1991
	.word	-44
	.word	4
	.word	_Label_1992
	.word	-48
	.word	4
	.word	_Label_1993
	.word	-52
	.word	4
	.word	_Label_1994
	.word	-56
	.word	4
	.word	_Label_1995
	.word	-60
	.word	4
	.word	_Label_1996
	.word	-64
	.word	4
	.word	_Label_1997
	.word	-68
	.word	4
	.word	_Label_1998
	.word	-72
	.word	4
	.word	_Label_1999
	.word	-76
	.word	4
	.word	_Label_2000
	.word	-80
	.word	4
	.word	_Label_2001
	.word	-84
	.word	4
	.word	_Label_2002
	.word	-4248
	.word	4164
	.word	_Label_2003
	.word	-4252
	.word	4
	.word	_Label_2004
	.word	-4256
	.word	4
	.word	_Label_2005
	.word	-45900
	.word	41644
	.word	_Label_2006
	.word	-45904
	.word	4
	.word	_Label_2007
	.word	-45908
	.word	4
	.word	_Label_2008
	.word	-45912
	.word	4
	.word	0
_Label_1981:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1982:
	.ascii	"Pself\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_2008:
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
_Label_3995:
	push	r0
	sub	r1,1,r1
	bne	_Label_3995
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
!   _temp_2009 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2009  sizeInBytes=4
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
!   _temp_2014 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2015 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2014  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_2010:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2015 then goto _Label_2013		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2013
_Label_2011:
	mov	720,r13		! source line 720
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2016 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2016  sizeInBytes=4
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
!   _temp_2017 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2017  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2019 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2019 [i ] into _temp_2020
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
!   _temp_2018 = _temp_2020		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2018  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CA",r10
	call	_function_210_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_2012:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2010
! END FOR
_Label_2013:
! CALL STATEMENT...
!   _temp_2021 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2021  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0SE",r10
!   _temp_2022 = _function_209_PrintObjectAddr
	set	_function_209_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2023 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2022  sizeInBytes=4
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
	.word	_Label_2024
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2025
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2026
	.word	-12
	.word	4
	.word	_Label_2027
	.word	-16
	.word	4
	.word	_Label_2028
	.word	-20
	.word	4
	.word	_Label_2029
	.word	-24
	.word	4
	.word	_Label_2030
	.word	-28
	.word	4
	.word	_Label_2031
	.word	-32
	.word	4
	.word	_Label_2032
	.word	-36
	.word	4
	.word	_Label_2033
	.word	-40
	.word	4
	.word	_Label_2034
	.word	-44
	.word	4
	.word	_Label_2035
	.word	-48
	.word	4
	.word	_Label_2036
	.word	-52
	.word	4
	.word	_Label_2037
	.word	-56
	.word	4
	.word	_Label_2038
	.word	-60
	.word	4
	.word	0
_Label_2024:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2025:
	.ascii	"Pself\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2037:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2038:
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
_Label_3996:
	push	r0
	sub	r1,1,r1
	bne	_Label_3996
	mov	734,r13		! source line 734
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0SE",r10
!   _temp_2039 = &threadManagerLock
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
	mov	741,r13		! source line 741
	mov	"\0\0WH",r10
_Label_2040:
	mov	741,r13		! source line 741
	mov	"\0\0SE",r10
!   _temp_2043 = &freeList
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
!   if result==true then goto _Label_2041 else goto _Label_2042
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2042
	jmp	_Label_2041
_Label_2041:
	mov	741,r13		! source line 741
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0SE",r10
!   _temp_2044 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2045 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2044  sizeInBytes=4
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
	jmp	_Label_2040
_Label_2042:
! ASSIGNMENT STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0AS",r10
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_2046 = &freeList
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
	mov	745,r13		! source line 745
	mov	"\0\0AS",r10
!   if intIsZero (tmp) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2047 = tmp + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2047 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0SE",r10
!   _temp_2048 = &threadManagerLock
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
	.word	_Label_2049
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2050
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2051
	.word	-12
	.word	4
	.word	_Label_2052
	.word	-16
	.word	4
	.word	_Label_2053
	.word	-20
	.word	4
	.word	_Label_2054
	.word	-24
	.word	4
	.word	_Label_2055
	.word	-28
	.word	4
	.word	_Label_2056
	.word	-32
	.word	4
	.word	_Label_2057
	.word	-36
	.word	4
	.word	_Label_2058
	.word	-40
	.word	4
	.word	0
_Label_2049:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2050:
	.ascii	"Pself\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2058:
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
_Label_3997:
	push	r0
	sub	r1,1,r1
	bne	_Label_3997
	mov	753,r13		! source line 753
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0SE",r10
!   _temp_2059 = &threadManagerLock
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
	mov	759,r13		! source line 759
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2060 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2060 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0SE",r10
!   _temp_2061 = &freeList
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
	mov	762,r13		! source line 762
	mov	"\0\0SE",r10
!   _temp_2062 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2063 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2062  sizeInBytes=4
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
!   _temp_2064 = &threadManagerLock
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
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_2065
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2066
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2067
	.word	12
	.word	4
	.word	_Label_2068
	.word	-12
	.word	4
	.word	_Label_2069
	.word	-16
	.word	4
	.word	_Label_2070
	.word	-20
	.word	4
	.word	_Label_2071
	.word	-24
	.word	4
	.word	_Label_2072
	.word	-28
	.word	4
	.word	_Label_2073
	.word	-32
	.word	4
	.word	0
_Label_2065:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2066:
	.ascii	"Pself\0"
	.align
_Label_2067:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2064\0"
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
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2074
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2074:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2075
	.word	_sourceFileName
	.word	213		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2075:
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
	mov	18,r1
_Label_3998:
	push	r0
	sub	r1,1,r1
	bne	_Label_3998
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
_Label_3999:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3999
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_2077 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0AS",r10
!   _temp_2078 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2080 = &_temp_2079
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2080 = _temp_2080 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2082:
!   Data Move: *_temp_2080 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2080 = _temp_2080 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2081 = _temp_2081 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2081) then goto _Label_2082
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2082
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2083 = &_temp_2079
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4000
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4000:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2078 = *_temp_2083  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4001:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4001
! RETURN STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2084
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2085
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2086
	.word	-12
	.word	4
	.word	_Label_2087
	.word	-16
	.word	4
	.word	_Label_2088
	.word	-20
	.word	4
	.word	_Label_2089
	.word	-64
	.word	44
	.word	_Label_2090
	.word	-68
	.word	4
	.word	_Label_2091
	.word	-72
	.word	4
	.word	_Label_2092
	.word	-76
	.word	4
	.word	0
_Label_2084:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2085:
	.ascii	"Pself\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2076\0"
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
_Label_4002:
	push	r0
	sub	r1,1,r1
	bne	_Label_4002
	mov	790,r13		! source line 790
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2093) then goto _runtimeErrorNullPointer
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
!   _temp_2094 = &addrSpace
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
!   _temp_2095 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2095  sizeInBytes=4
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
	call	_function_210_ThreadPrintShort
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
	.word	_Label_2096
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2097
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2098
	.word	-12
	.word	4
	.word	_Label_2099
	.word	-16
	.word	4
	.word	_Label_2100
	.word	-20
	.word	4
	.word	0
_Label_2096:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2097:
	.ascii	"Pself\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2093\0"
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
_Label_4003:
	push	r0
	sub	r1,1,r1
	bne	_Label_4003
	mov	813,r13		! source line 813
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2101 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2101  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2102  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2103 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2103  sizeInBytes=4
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
!   _temp_2104 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2104  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2106		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2106
!	jmp	_Label_2105
_Label_2105:
! THEN...
	mov	823,r13		! source line 823
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2107 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2107  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2108
_Label_2106:
! ELSE...
	mov	824,r13		! source line 824
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2110		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2110
!	jmp	_Label_2109
_Label_2109:
! THEN...
	mov	825,r13		! source line 825
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2111 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2111  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2112
_Label_2110:
! ELSE...
	mov	826,r13		! source line 826
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2114		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2114
!	jmp	_Label_2113
_Label_2113:
! THEN...
	mov	827,r13		! source line 827
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2115 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2115  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2116
_Label_2114:
! ELSE...
	mov	829,r13		! source line 829
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2117 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2117  sizeInBytes=4
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
_Label_2116:
! END IF...
_Label_2112:
! END IF...
_Label_2108:
! CALL STATEMENT...
!   _temp_2118 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2118  sizeInBytes=4
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
!   _temp_2119 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2119  sizeInBytes=4
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
	.word	_Label_2120
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2121
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2122
	.word	-12
	.word	4
	.word	_Label_2123
	.word	-16
	.word	4
	.word	_Label_2124
	.word	-20
	.word	4
	.word	_Label_2125
	.word	-24
	.word	4
	.word	_Label_2126
	.word	-28
	.word	4
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
_Label_2120:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2121:
	.ascii	"Pself\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2132
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	jmp	_Method_P_Kernel_ProcessManager_6	! 24:	TurnIntoZombie
	jmp	_Method_P_Kernel_ProcessManager_7	! 28:	WaitForZombie
	.word	0
! 
! Class descriptor:
! 
_Label_2132:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2133
	.word	_sourceFileName
	.word	233		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2133:
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
	mov	486,r1
_Label_4004:
	push	r0
	sub	r1,1,r1
	bne	_Label_4004
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0AS",r10
!   _temp_2134 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1940]
!   NEW ARRAY Constructor...
!   _temp_2136 = &_temp_2135
	add	r14,-1936,r1
	store	r1,[r14+-252]
!   _temp_2136 = _temp_2136 + 4
	load	[r14+-252],r1
	add	r1,4,r1
	store	r1,[r14+-252]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2138 = zeros  (sizeInBytes=168)
	add	r14,-244,r4
	mov	42,r3
_Label_4005:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4005
!   _temp_2138 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-244]
	mov	10,r1
	store	r1,[r14+-248]
_Label_2140:
!   Data Move: *_temp_2136 = _temp_2138  (sizeInBytes=168)
	add	r14,-244,r5
	load	[r14+-252],r4
	mov	42,r3
_Label_4006:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4006
!   _temp_2136 = _temp_2136 + 168
	load	[r14+-252],r1
	add	r1,168,r1
	store	r1,[r14+-252]
!   _temp_2137 = _temp_2137 + -1
	load	[r14+-248],r1
	add	r1,-1,r1
	store	r1,[r14+-248]
!   if intNotZero (_temp_2137) then goto _Label_2140
	load	[r14+-248],r1
	cmp	r1,r0
	bne	_Label_2140
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1936]
!   _temp_2141 = &_temp_2135
	add	r14,-1936,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	load	[r14+-1940],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4007
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4007:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2134 = *_temp_2141  (sizeInBytes=1684)
	load	[r14+-72],r5
	load	[r14+-1940],r4
	mov	421,r3
_Label_4008:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4008
! ASSIGNMENT STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1688,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1688]
! ASSIGNMENT STATEMENT...
	mov	854,r13		! source line 854
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1708,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1708]
! SEND STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0SE",r10
!   _temp_2144 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
!   _temp_2145 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
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
	add	r4,1724,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1724]
! ASSIGNMENT STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1736,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1736]
! SEND STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0SE",r10
!   _temp_2148 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
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
!   _temp_2153 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2154 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2153  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-1944]
_Label_2149:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2154 then goto _Label_2152		
	load	[r14+-1944],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2152
_Label_2150:
	mov	860,r13		! source line 860
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0SE",r10
!   _temp_2155 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_2155 [i ] into _temp_2156
!     make sure index expr is >= 0
	load	[r14+-1944],r2
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
	set	168,r3
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
!   _temp_2158 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2158 [i ] into _temp_2159
!     make sure index expr is >= 0
	load	[r14+-1944],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2157 = _temp_2159		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2160 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2157  sizeInBytes=4
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
_Label_2151:
!   i = i + 1
	load	[r14+-1944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1944]
	jmp	_Label_2149
! END FOR
_Label_2152:
! RETURN STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0RE",r10
	add	r15,1948,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_2161
	.word	4		! total size of parameters
	.word	1944		! frame size = 1944
	.word	_Label_2162
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_2174
	.word	-56
	.word	4
	.word	_Label_2175
	.word	-60
	.word	4
	.word	_Label_2176
	.word	-64
	.word	4
	.word	_Label_2177
	.word	-68
	.word	4
	.word	_Label_2178
	.word	-72
	.word	4
	.word	_Label_2179
	.word	-76
	.word	4
	.word	_Label_2180
	.word	-244
	.word	168
	.word	_Label_2181
	.word	-248
	.word	4
	.word	_Label_2182
	.word	-252
	.word	4
	.word	_Label_2183
	.word	-1936
	.word	1684
	.word	_Label_2184
	.word	-1940
	.word	4
	.word	_Label_2185
	.word	-1944
	.word	4
	.word	0
_Label_2161:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2162:
	.ascii	"Pself\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2185:
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
_Label_4009:
	push	r0
	sub	r1,1,r1
	bne	_Label_4009
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
!   _temp_2186 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2186  sizeInBytes=4
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
!   _temp_2191 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2192 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2191  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2187:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2192 then goto _Label_2190		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2190
_Label_2188:
	mov	877,r13		! source line 877
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2193 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2193  sizeInBytes=4
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
!   _temp_2194 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2194  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0SE",r10
!   _temp_2195 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2195 [i ] into _temp_2196
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
	set	168,r3
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
_Label_2189:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2187
! END FOR
_Label_2190:
! CALL STATEMENT...
!   _temp_2197 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2197  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0SE",r10
!   _temp_2198 = _function_209_PrintObjectAddr
	set	_function_209_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2199 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2198  sizeInBytes=4
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
	.word	_Label_2200
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2201
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2202
	.word	-12
	.word	4
	.word	_Label_2203
	.word	-16
	.word	4
	.word	_Label_2204
	.word	-20
	.word	4
	.word	_Label_2205
	.word	-24
	.word	4
	.word	_Label_2206
	.word	-28
	.word	4
	.word	_Label_2207
	.word	-32
	.word	4
	.word	_Label_2208
	.word	-36
	.word	4
	.word	_Label_2209
	.word	-40
	.word	4
	.word	_Label_2210
	.word	-44
	.word	4
	.word	_Label_2211
	.word	-48
	.word	4
	.word	_Label_2212
	.word	-52
	.word	4
	.word	_Label_2213
	.word	-56
	.word	4
	.word	0
_Label_2200:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2201:
	.ascii	"Pself\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2212:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2213:
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
_Label_4010:
	push	r0
	sub	r1,1,r1
	bne	_Label_4010
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
!   _temp_2214 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2214  sizeInBytes=4
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
!   _temp_2219 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2220 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2219  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2215:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2220 then goto _Label_2218		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2218
_Label_2216:
	mov	900,r13		! source line 900
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2221 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2221  sizeInBytes=4
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
!   _temp_2222 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2222 [i ] into _temp_2223
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
	set	168,r3
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
_Label_2217:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2215
! END FOR
_Label_2218:
! CALL STATEMENT...
!   _temp_2224 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2224  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_2225 = _function_209_PrintObjectAddr
	set	_function_209_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2226 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2225  sizeInBytes=4
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
	.word	_Label_2227
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2228
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2229
	.word	-12
	.word	4
	.word	_Label_2230
	.word	-16
	.word	4
	.word	_Label_2231
	.word	-20
	.word	4
	.word	_Label_2232
	.word	-24
	.word	4
	.word	_Label_2233
	.word	-28
	.word	4
	.word	_Label_2234
	.word	-32
	.word	4
	.word	_Label_2235
	.word	-36
	.word	4
	.word	_Label_2236
	.word	-40
	.word	4
	.word	_Label_2237
	.word	-44
	.word	4
	.word	_Label_2238
	.word	-48
	.word	4
	.word	_Label_2239
	.word	-52
	.word	4
	.word	0
_Label_2227:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2228:
	.ascii	"Pself\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2238:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2239:
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
_Label_4011:
	push	r0
	sub	r1,1,r1
	bne	_Label_4011
	mov	913,r13		! source line 913
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0SE",r10
!   _temp_2240 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
!   if intIsZero (_temp_2241) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2242 = _temp_2241 + 1752
	load	[r14+-72],r1
	add	r1,1752,r1
	store	r1,[r14+-68]
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2245) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2246 = _temp_2245 + 1752
	load	[r14+-56],r1
	add	r1,1752,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2244 = *_temp_2246  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_2243 = _temp_2244 + 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Data Move: *_temp_2242 = _temp_2243  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r14+-68],r2
	store	r1,[r2]
! WHILE STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0WH",r10
_Label_2247:
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_2250 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-48]
!   Send message IsEmpty
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2248 else goto _Label_2249
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2249
	jmp	_Label_2248
_Label_2248:
	mov	921,r13		! source line 921
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0SE",r10
!   _temp_2251 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-44]
!   _temp_2252 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2251  sizeInBytes=4
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
	jmp	_Label_2247
_Label_2249:
! ASSIGNMENT STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0AS",r10
	mov	924,r13		! source line 924
	mov	"\0\0SE",r10
!   _temp_2253 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
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
!   _temp_2254 = tmp + 20
	load	[r14+-80],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2254 = 1  (sizeInBytes=4)
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
!   _temp_2255 = tmp + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-28]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2257) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2258 = _temp_2257 + 1752
	load	[r14+-20],r1
	add	r1,1752,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2256 = *_temp_2258  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2255 = _temp_2256  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_2259 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	.word	_Label_2260
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_2261
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2262
	.word	-12
	.word	4
	.word	_Label_2263
	.word	-16
	.word	4
	.word	_Label_2264
	.word	-20
	.word	4
	.word	_Label_2265
	.word	-24
	.word	4
	.word	_Label_2266
	.word	-28
	.word	4
	.word	_Label_2267
	.word	-32
	.word	4
	.word	_Label_2268
	.word	-36
	.word	4
	.word	_Label_2269
	.word	-40
	.word	4
	.word	_Label_2270
	.word	-44
	.word	4
	.word	_Label_2271
	.word	-48
	.word	4
	.word	_Label_2272
	.word	-52
	.word	4
	.word	_Label_2273
	.word	-56
	.word	4
	.word	_Label_2274
	.word	-60
	.word	4
	.word	_Label_2275
	.word	-64
	.word	4
	.word	_Label_2276
	.word	-68
	.word	4
	.word	_Label_2277
	.word	-72
	.word	4
	.word	_Label_2278
	.word	-76
	.word	4
	.word	_Label_2279
	.word	-80
	.word	4
	.word	0
_Label_2260:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2261:
	.ascii	"Pself\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2279:
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
	mov	10,r1
_Label_4012:
	push	r0
	sub	r1,1,r1
	bne	_Label_4012
	mov	934,r13		! source line 934
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2280 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2280  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	939,r13		! source line 939
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! SEND STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0SE",r10
!   _temp_2281 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	941,r13		! source line 941
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2282 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2282 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0SE",r10
!   _temp_2283 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
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
	mov	943,r13		! source line 943
	mov	"\0\0SE",r10
!   _temp_2284 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-24]
!   _temp_2285 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2284  sizeInBytes=4
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
	mov	944,r13		! source line 944
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2286) then goto _runtimeErrorNullPointer
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
	mov	945,r13		! source line 945
	mov	"\0\0SE",r10
!   _temp_2287 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	945,r13		! source line 945
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_2288
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2289
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2290
	.word	12
	.word	4
	.word	_Label_2291
	.word	-12
	.word	4
	.word	_Label_2292
	.word	-16
	.word	4
	.word	_Label_2293
	.word	-20
	.word	4
	.word	_Label_2294
	.word	-24
	.word	4
	.word	_Label_2295
	.word	-28
	.word	4
	.word	_Label_2296
	.word	-32
	.word	4
	.word	_Label_2297
	.word	-36
	.word	4
	.word	_Label_2298
	.word	-40
	.word	4
	.word	0
_Label_2288:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2289:
	.ascii	"Pself\0"
	.align
_Label_2290:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
! 
! ===============  METHOD TurnIntoZombie  ===============
! 
_Method_P_Kernel_ProcessManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_6,r1
	push	r1
	mov	50,r1
_Label_4013:
	push	r0
	sub	r1,1,r1
	bne	_Label_4013
	mov	949,r13		! source line 949
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! isZombie
!   isZombie = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_2299 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-196]
!   Send message Lock
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2304 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-192]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2305 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-188]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2304  (sizeInBytes=4)
	load	[r14+-192],r1
	store	r1,[r14+-200]
_Label_2300:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2305 then goto _Label_2303		
	load	[r14+-200],r1
	load	[r14+-188],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2303
_Label_2301:
	mov	954,r13		! source line 954
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2310 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-180]
!   Data Move: _temp_2309 = *_temp_2310  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   _temp_2312 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-172]
!   _temp_2313 = _temp_2312 + 4
	load	[r14+-172],r1
	add	r1,4,r1
	store	r1,[r14+-168]
!   Move address of _temp_2313 [i ] into _temp_2314
!     make sure index expr is >= 0
	load	[r14+-200],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   _temp_2315 = _temp_2314 + 16
	load	[r14+-164],r1
	add	r1,16,r1
	store	r1,[r14+-160]
!   Data Move: _temp_2311 = *_temp_2315  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if _temp_2309 != _temp_2311 then goto _Label_2307		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	cmp	r1,r2
	bne	_Label_2307
!	jmp	_Label_2308
_Label_2308:
!   _temp_2317 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-152]
!   _temp_2318 = _temp_2317 + 4
	load	[r14+-152],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_2318 [i ] into _temp_2319
!     make sure index expr is >= 0
	load	[r14+-200],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   _temp_2320 = _temp_2319 + 20
	load	[r14+-144],r1
	add	r1,20,r1
	store	r1,[r14+-140]
!   Data Move: _temp_2316 = *_temp_2320  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if _temp_2316 != 2 then goto _Label_2307		(int)
	load	[r14+-156],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2307
!	jmp	_Label_2306
_Label_2306:
! THEN...
	mov	956,r13		! source line 956
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
!   _temp_2321 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-136]
!   _temp_2322 = _temp_2321 + 4
	load	[r14+-136],r1
	add	r1,4,r1
	store	r1,[r14+-132]
!   Move address of _temp_2322 [i ] into _temp_2323
!     make sure index expr is >= 0
	load	[r14+-200],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-132],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-128]
!   _temp_2324 = _temp_2323 + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-124]
!   Data Move: *_temp_2324 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-124],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_2326 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-116]
!   _temp_2327 = _temp_2326 + 4
	load	[r14+-116],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_2327 [i ] into _temp_2328
!     make sure index expr is >= 0
	load	[r14+-200],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2325 = _temp_2328		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-120]
!   _temp_2329 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2325  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_2330 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-100]
!   _temp_2331 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_2330  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_2332
_Label_2307:
! ELSE...
	mov	959,r13		! source line 959
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0IF",r10
!   if isZombie then goto _Label_2334 else goto _Label_2336
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2336
	jmp	_Label_2334
_Label_2336:
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2338 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2337 = *_temp_2338  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   _temp_2340 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_2341 = _temp_2340 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_2341 [i ] into _temp_2342
!     make sure index expr is >= 0
	load	[r14+-200],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_2343 = _temp_2342 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2339 = *_temp_2343  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2337 != _temp_2339 then goto _Label_2334		(int)
	load	[r14+-92],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bne	_Label_2334
!	jmp	_Label_2335
_Label_2335:
!   _temp_2345 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_2346 = _temp_2345 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_2346 [i ] into _temp_2347
!     make sure index expr is >= 0
	load	[r14+-200],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2348 = _temp_2347 + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2344 = *_temp_2348  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_2344 != 1 then goto _Label_2334		(int)
	load	[r14+-64],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2334
!	jmp	_Label_2333
_Label_2333:
! THEN...
	mov	960,r13		! source line 960
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0AS",r10
!   isZombie = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2349 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_2349 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	962,r13		! source line 962
	mov	"\0\0SE",r10
!   _temp_2350 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_2351 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2350  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2334:
! END IF...
_Label_2332:
!   Increment the FOR-LOOP index variable and jump back
_Label_2302:
!   i = i + 1
	load	[r14+-200],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
	jmp	_Label_2300
! END FOR
_Label_2303:
! IF STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0IF",r10
!   if isZombie then goto _Label_2353 else goto _Label_2352
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2352
	jmp	_Label_2353
_Label_2352:
! THEN...
	mov	966,r13		! source line 966
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2354 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2354 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0SE",r10
!   _temp_2355 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
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
	mov	968,r13		! source line 968
	mov	"\0\0SE",r10
!   _temp_2356 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-24]
!   _temp_2357 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2356  sizeInBytes=4
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
! END IF...
_Label_2353:
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_2358 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	970,r13		! source line 970
	mov	"\0\0RE",r10
	add	r15,204,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_6:
	.word	_sourceFileName
	.word	_Label_2359
	.word	8		! total size of parameters
	.word	200		! frame size = 200
	.word	_Label_2360
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2361
	.word	12
	.word	4
	.word	_Label_2362
	.word	-16
	.word	4
	.word	_Label_2363
	.word	-20
	.word	4
	.word	_Label_2364
	.word	-24
	.word	4
	.word	_Label_2365
	.word	-28
	.word	4
	.word	_Label_2366
	.word	-32
	.word	4
	.word	_Label_2367
	.word	-36
	.word	4
	.word	_Label_2368
	.word	-40
	.word	4
	.word	_Label_2369
	.word	-44
	.word	4
	.word	_Label_2370
	.word	-48
	.word	4
	.word	_Label_2371
	.word	-52
	.word	4
	.word	_Label_2372
	.word	-56
	.word	4
	.word	_Label_2373
	.word	-60
	.word	4
	.word	_Label_2374
	.word	-64
	.word	4
	.word	_Label_2375
	.word	-68
	.word	4
	.word	_Label_2376
	.word	-72
	.word	4
	.word	_Label_2377
	.word	-76
	.word	4
	.word	_Label_2378
	.word	-80
	.word	4
	.word	_Label_2379
	.word	-84
	.word	4
	.word	_Label_2380
	.word	-88
	.word	4
	.word	_Label_2381
	.word	-92
	.word	4
	.word	_Label_2382
	.word	-96
	.word	4
	.word	_Label_2383
	.word	-100
	.word	4
	.word	_Label_2384
	.word	-104
	.word	4
	.word	_Label_2385
	.word	-108
	.word	4
	.word	_Label_2386
	.word	-112
	.word	4
	.word	_Label_2387
	.word	-116
	.word	4
	.word	_Label_2388
	.word	-120
	.word	4
	.word	_Label_2389
	.word	-124
	.word	4
	.word	_Label_2390
	.word	-128
	.word	4
	.word	_Label_2391
	.word	-132
	.word	4
	.word	_Label_2392
	.word	-136
	.word	4
	.word	_Label_2393
	.word	-140
	.word	4
	.word	_Label_2394
	.word	-144
	.word	4
	.word	_Label_2395
	.word	-148
	.word	4
	.word	_Label_2396
	.word	-152
	.word	4
	.word	_Label_2397
	.word	-156
	.word	4
	.word	_Label_2398
	.word	-160
	.word	4
	.word	_Label_2399
	.word	-164
	.word	4
	.word	_Label_2400
	.word	-168
	.word	4
	.word	_Label_2401
	.word	-172
	.word	4
	.word	_Label_2402
	.word	-176
	.word	4
	.word	_Label_2403
	.word	-180
	.word	4
	.word	_Label_2404
	.word	-184
	.word	4
	.word	_Label_2405
	.word	-188
	.word	4
	.word	_Label_2406
	.word	-192
	.word	4
	.word	_Label_2407
	.word	-196
	.word	4
	.word	_Label_2408
	.word	-200
	.word	4
	.word	_Label_2409
	.word	-9
	.word	1
	.word	0
_Label_2359:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2360:
	.ascii	"Pself\0"
	.align
_Label_2361:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2408:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2409:
	.byte	'B'
	.ascii	"isZombie\0"
	.align
! 
! ===============  METHOD WaitForZombie  ===============
! 
_Method_P_Kernel_ProcessManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_7,r1
	push	r1
	mov	14,r1
_Label_4014:
	push	r0
	sub	r1,1,r1
	bne	_Label_4014
	mov	975,r13		! source line 975
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0SE",r10
!   _temp_2410 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	979,r13		! source line 979
	mov	"\0\0WH",r10
_Label_2411:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2415 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2414 = *_temp_2415  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_2414 == 2 then goto _Label_2413		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2413
!	jmp	_Label_2412
_Label_2412:
	mov	979,r13		! source line 979
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0SE",r10
!   _temp_2416 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_2417 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2416  sizeInBytes=4
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
	jmp	_Label_2411
_Label_2413:
! ASSIGNMENT STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2418 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exitStatus = *_temp_2418  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2419 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2419 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0SE",r10
!   _temp_2420 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=proc  sizeInBytes=4
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
	mov	985,r13		! source line 985
	mov	"\0\0SE",r10
!   _temp_2421 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2422 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2421  sizeInBytes=4
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
	mov	986,r13		! source line 986
	mov	"\0\0SE",r10
!   _temp_2423 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	987,r13		! source line 987
	mov	"\0\0RE",r10
!   ReturnResult: exitStatus  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_7:
	.word	_sourceFileName
	.word	_Label_2424
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2425
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2426
	.word	12
	.word	4
	.word	_Label_2427
	.word	-12
	.word	4
	.word	_Label_2428
	.word	-16
	.word	4
	.word	_Label_2429
	.word	-20
	.word	4
	.word	_Label_2430
	.word	-24
	.word	4
	.word	_Label_2431
	.word	-28
	.word	4
	.word	_Label_2432
	.word	-32
	.word	4
	.word	_Label_2433
	.word	-36
	.word	4
	.word	_Label_2434
	.word	-40
	.word	4
	.word	_Label_2435
	.word	-44
	.word	4
	.word	_Label_2436
	.word	-48
	.word	4
	.word	_Label_2437
	.word	-52
	.word	4
	.word	_Label_2438
	.word	-56
	.word	4
	.word	0
_Label_2424:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2425:
	.ascii	"Pself\0"
	.align
_Label_2426:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2438:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2439
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2439:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2440
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2440:
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
_Label_4015:
	push	r0
	sub	r1,1,r1
	bne	_Label_4015
	mov	1026,r13		! source line 1026
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2441 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2441  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1032,r13		! source line 1032
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1033,r13		! source line 1033
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
	mov	1034,r13		! source line 1034
	mov	"\0\0SE",r10
!   _temp_2443 = &framesInUse
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
	mov	1035,r13		! source line 1035
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1036,r13		! source line 1036
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
	mov	1037,r13		! source line 1037
	mov	"\0\0SE",r10
!   _temp_2445 = &frameManagerLock
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
	mov	1038,r13		! source line 1038
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
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_2447 = &newFramesAvailable
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
	mov	1045,r13		! source line 1045
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2452 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2453 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2452  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2448:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2453 then goto _Label_2451		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2451
_Label_2449:
	mov	1045,r13		! source line 1045
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2456 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2456) then goto _Label_2455
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2455
!	jmp	_Label_2454
_Label_2454:
! THEN...
	mov	1049,r13		! source line 1049
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2457 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2457  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1049,r13		! source line 1049
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2455:
!   Increment the FOR-LOOP index variable and jump back
_Label_2450:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2448
! END FOR
_Label_2451:
! RETURN STATEMENT...
	mov	1045,r13		! source line 1045
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
	.word	_Label_2458
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2459
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2460
	.word	-12
	.word	4
	.word	_Label_2461
	.word	-16
	.word	4
	.word	_Label_2462
	.word	-20
	.word	4
	.word	_Label_2463
	.word	-24
	.word	4
	.word	_Label_2464
	.word	-28
	.word	4
	.word	_Label_2465
	.word	-32
	.word	4
	.word	_Label_2466
	.word	-36
	.word	4
	.word	_Label_2467
	.word	-40
	.word	4
	.word	_Label_2468
	.word	-44
	.word	4
	.word	_Label_2469
	.word	-48
	.word	4
	.word	_Label_2470
	.word	-52
	.word	4
	.word	_Label_2471
	.word	-56
	.word	4
	.word	0
_Label_2458:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2459:
	.ascii	"Pself\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2471:
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
_Label_4016:
	push	r0
	sub	r1,1,r1
	bne	_Label_4016
	mov	1056,r13		! source line 1056
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0SE",r10
!   _temp_2472 = &frameManagerLock
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
!   _temp_2473 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2473  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1061,r13		! source line 1061
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2474 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2474  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1062,r13		! source line 1062
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2475 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2475  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1063,r13		! source line 1063
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_2476 = &framesInUse
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
	mov	1065,r13		! source line 1065
	mov	"\0\0SE",r10
!   _temp_2477 = &frameManagerLock
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
	mov	1065,r13		! source line 1065
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
	.word	_Label_2478
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2479
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2480
	.word	-12
	.word	4
	.word	_Label_2481
	.word	-16
	.word	4
	.word	_Label_2482
	.word	-20
	.word	4
	.word	_Label_2483
	.word	-24
	.word	4
	.word	_Label_2484
	.word	-28
	.word	4
	.word	_Label_2485
	.word	-32
	.word	4
	.word	0
_Label_2478:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2479:
	.ascii	"Pself\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2472\0"
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
_Label_4017:
	push	r0
	sub	r1,1,r1
	bne	_Label_4017
	mov	1070,r13		! source line 1070
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0SE",r10
!   _temp_2486 = &frameManagerLock
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
	mov	1081,r13		! source line 1081
	mov	"\0\0WH",r10
_Label_2487:
!   if numberFreeFrames >= 1 then goto _Label_2489		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2489
!	jmp	_Label_2488
_Label_2488:
	mov	1081,r13		! source line 1081
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0SE",r10
!   _temp_2490 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2491 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2490  sizeInBytes=4
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
	jmp	_Label_2487
_Label_2489:
! ASSIGNMENT STATEMENT...
	mov	1086,r13		! source line 1086
	mov	"\0\0AS",r10
	mov	1086,r13		! source line 1086
	mov	"\0\0SE",r10
!   _temp_2492 = &framesInUse
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
	mov	1087,r13		! source line 1087
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
	mov	1090,r13		! source line 1090
	mov	"\0\0SE",r10
!   _temp_2493 = &frameManagerLock
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
	mov	1093,r13		! source line 1093
	mov	"\0\0AS",r10
!   _temp_2494 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2494		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1095,r13		! source line 1095
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
	.word	_Label_2495
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2496
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2497
	.word	-12
	.word	4
	.word	_Label_2498
	.word	-16
	.word	4
	.word	_Label_2499
	.word	-20
	.word	4
	.word	_Label_2500
	.word	-24
	.word	4
	.word	_Label_2501
	.word	-28
	.word	4
	.word	_Label_2502
	.word	-32
	.word	4
	.word	_Label_2503
	.word	-36
	.word	4
	.word	_Label_2504
	.word	-40
	.word	4
	.word	0
_Label_2495:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2496:
	.ascii	"Pself\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2503:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2504:
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
_Label_4018:
	push	r0
	sub	r1,1,r1
	bne	_Label_4018
	mov	1100,r13		! source line 1100
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0SE",r10
!   _temp_2505 = &frameManagerLock
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
	mov	1103,r13		! source line 1103
	mov	"\0\0WH",r10
_Label_2506:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_2508		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2508
!	jmp	_Label_2507
_Label_2507:
	mov	1103,r13		! source line 1103
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0SE",r10
!   _temp_2509 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2510 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2509  sizeInBytes=4
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
	jmp	_Label_2506
_Label_2508:
! FOR STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2515 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2516 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2515  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_2511:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2516 then goto _Label_2514		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2514
_Label_2512:
	mov	1106,r13		! source line 1106
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0AS",r10
	mov	1107,r13		! source line 1107
	mov	"\0\0SE",r10
!   _temp_2517 = &framesInUse
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
	mov	1108,r13		! source line 1108
	mov	"\0\0AS",r10
!   _temp_2518 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2518		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1109,r13		! source line 1109
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
_Label_2513:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2511
! END FOR
_Label_2514:
! ASSIGNMENT STATEMENT...
	mov	1111,r13		! source line 1111
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
	mov	1112,r13		! source line 1112
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2519 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2519 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1113,r13		! source line 1113
	mov	"\0\0SE",r10
!   _temp_2520 = &frameManagerLock
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
	mov	1113,r13		! source line 1113
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
	.word	_Label_2521
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2522
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2523
	.word	12
	.word	4
	.word	_Label_2524
	.word	16
	.word	4
	.word	_Label_2525
	.word	-12
	.word	4
	.word	_Label_2526
	.word	-16
	.word	4
	.word	_Label_2527
	.word	-20
	.word	4
	.word	_Label_2528
	.word	-24
	.word	4
	.word	_Label_2529
	.word	-28
	.word	4
	.word	_Label_2530
	.word	-32
	.word	4
	.word	_Label_2531
	.word	-36
	.word	4
	.word	_Label_2532
	.word	-40
	.word	4
	.word	_Label_2533
	.word	-44
	.word	4
	.word	_Label_2534
	.word	-48
	.word	4
	.word	_Label_2535
	.word	-52
	.word	4
	.word	_Label_2536
	.word	-56
	.word	4
	.word	0
_Label_2521:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2522:
	.ascii	"Pself\0"
	.align
_Label_2523:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2524:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2534:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2535:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2536:
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
_Label_4019:
	push	r0
	sub	r1,1,r1
	bne	_Label_4019
	mov	1118,r13		! source line 1118
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0SE",r10
!   _temp_2537 = &frameManagerLock
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
	mov	1121,r13		! source line 1121
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2542 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2545 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2544 = *_temp_2545  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2543 = _temp_2544 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2542  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_2538:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2543 then goto _Label_2541		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2541
_Label_2539:
	mov	1121,r13		! source line 1121
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0AS",r10
	mov	1122,r13		! source line 1122
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
	mov	1123,r13		! source line 1123
	mov	"\0\0AS",r10
!   _temp_2546 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_2546 div 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_2547 = &framesInUse
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
_Label_2540:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_2538
! END FOR
_Label_2541:
! ASSIGNMENT STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2549 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2548 = *_temp_2549  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_2548		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2550 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2550 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_2551 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2552 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2551  sizeInBytes=4
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
	mov	1129,r13		! source line 1129
	mov	"\0\0SE",r10
!   _temp_2553 = &frameManagerLock
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
	mov	1129,r13		! source line 1129
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
	.word	_Label_2554
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2555
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2556
	.word	12
	.word	4
	.word	_Label_2557
	.word	-12
	.word	4
	.word	_Label_2558
	.word	-16
	.word	4
	.word	_Label_2559
	.word	-20
	.word	4
	.word	_Label_2560
	.word	-24
	.word	4
	.word	_Label_2561
	.word	-28
	.word	4
	.word	_Label_2562
	.word	-32
	.word	4
	.word	_Label_2563
	.word	-36
	.word	4
	.word	_Label_2564
	.word	-40
	.word	4
	.word	_Label_2565
	.word	-44
	.word	4
	.word	_Label_2566
	.word	-48
	.word	4
	.word	_Label_2567
	.word	-52
	.word	4
	.word	_Label_2568
	.word	-56
	.word	4
	.word	_Label_2569
	.word	-60
	.word	4
	.word	_Label_2570
	.word	-64
	.word	4
	.word	_Label_2571
	.word	-68
	.word	4
	.word	_Label_2572
	.word	-72
	.word	4
	.word	0
_Label_2554:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2555:
	.ascii	"Pself\0"
	.align
_Label_2556:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2570:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2571:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2572:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2573
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
_Label_2573:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2574
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2574:
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
_Label_4020:
	push	r0
	sub	r1,1,r1
	bne	_Label_4020
	mov	1140,r13		! source line 1140
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0AS",r10
!   _temp_2575 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2577 = &_temp_2576
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2577 = _temp_2577 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2579:
!   Data Move: *_temp_2577 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2577 = _temp_2577 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2578 = _temp_2578 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2578) then goto _Label_2579
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2579
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2580 = &_temp_2576
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4021
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4021:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2575 = *_temp_2580  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4022:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4022
! RETURN STATEMENT...
	mov	1145,r13		! source line 1145
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
	.word	_Label_2581
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2582
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2583
	.word	-12
	.word	4
	.word	_Label_2584
	.word	-16
	.word	4
	.word	_Label_2585
	.word	-20
	.word	4
	.word	_Label_2586
	.word	-104
	.word	84
	.word	_Label_2587
	.word	-108
	.word	4
	.word	0
_Label_2581:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2582:
	.ascii	"Pself\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2575\0"
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
_Label_4023:
	push	r0
	sub	r1,1,r1
	bne	_Label_4023
	mov	1150,r13		! source line 1150
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2588 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2588  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1155,r13		! source line 1155
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2589 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2589  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1156,r13		! source line 1156
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1157,r13		! source line 1157
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2594 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2595 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2594  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2590:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2595 then goto _Label_2593		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2593
_Label_2591:
	mov	1157,r13		! source line 1157
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2596 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2596  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1158,r13		! source line 1158
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2598 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2598 [i ] into _temp_2599
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
!   _temp_2597 = _temp_2599		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2597  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1159,r13		! source line 1159
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2600 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2600  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1160,r13		! source line 1160
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2602 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2602 [i ] into _temp_2603
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
!   Data Move: _temp_2601 = *_temp_2603  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2601  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1161,r13		! source line 1161
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2604 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2604  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1162,r13		! source line 1162
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2605 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2605  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1163,r13		! source line 1163
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2606 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2606  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1164,r13		! source line 1164
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2608) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2607  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2607  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1165,r13		! source line 1165
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2609 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2609  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1166,r13		! source line 1166
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0IF",r10
	mov	1167,r13		! source line 1167
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2613) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2612  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2612) then goto _Label_2611
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2611
!	jmp	_Label_2610
_Label_2610:
! THEN...
	mov	1168,r13		! source line 1168
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2615) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2614  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2614  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1168,r13		! source line 1168
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2616
_Label_2611:
! ELSE...
	mov	1170,r13		! source line 1170
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2617 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2617  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1170,r13		! source line 1170
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2616:
! CALL STATEMENT...
!   _temp_2618 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2618  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1172,r13		! source line 1172
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0IF",r10
	mov	1173,r13		! source line 1173
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2621) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2619 else goto _Label_2620
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2620
	jmp	_Label_2619
_Label_2619:
! THEN...
	mov	1174,r13		! source line 1174
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2622 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2622  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1174,r13		! source line 1174
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2623
_Label_2620:
! ELSE...
	mov	1176,r13		! source line 1176
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2624 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2624  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1176,r13		! source line 1176
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2623:
! CALL STATEMENT...
!   _temp_2625 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2625  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1178,r13		! source line 1178
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0IF",r10
	mov	1179,r13		! source line 1179
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2628) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2626 else goto _Label_2627
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2627
	jmp	_Label_2626
_Label_2626:
! THEN...
	mov	1180,r13		! source line 1180
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2629 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2629  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1180,r13		! source line 1180
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2630
_Label_2627:
! ELSE...
	mov	1182,r13		! source line 1182
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2631 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2631  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1182,r13		! source line 1182
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2630:
! CALL STATEMENT...
!   _temp_2632 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2632  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1184,r13		! source line 1184
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1185,r13		! source line 1185
	mov	"\0\0IF",r10
	mov	1185,r13		! source line 1185
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2635) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2633 else goto _Label_2634
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2634
	jmp	_Label_2633
_Label_2633:
! THEN...
	mov	1186,r13		! source line 1186
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2636 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2636  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1186,r13		! source line 1186
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2637
_Label_2634:
! ELSE...
	mov	1188,r13		! source line 1188
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2638 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2638  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1188,r13		! source line 1188
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2637:
! CALL STATEMENT...
!   _temp_2639 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2639  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1190,r13		! source line 1190
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0IF",r10
	mov	1191,r13		! source line 1191
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2642) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2640 else goto _Label_2641
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2641
	jmp	_Label_2640
_Label_2640:
! THEN...
	mov	1192,r13		! source line 1192
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2643 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2643  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1192,r13		! source line 1192
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2644
_Label_2641:
! ELSE...
	mov	1194,r13		! source line 1194
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2645 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2645  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1194,r13		! source line 1194
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2644:
! CALL STATEMENT...
!   Call the function
	mov	1196,r13		! source line 1196
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2592:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2590
! END FOR
_Label_2593:
! RETURN STATEMENT...
	mov	1157,r13		! source line 1157
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
	.word	_Label_2646
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2647
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2648
	.word	-12
	.word	4
	.word	_Label_2649
	.word	-16
	.word	4
	.word	_Label_2650
	.word	-20
	.word	4
	.word	_Label_2651
	.word	-24
	.word	4
	.word	_Label_2652
	.word	-28
	.word	4
	.word	_Label_2653
	.word	-32
	.word	4
	.word	_Label_2654
	.word	-36
	.word	4
	.word	_Label_2655
	.word	-40
	.word	4
	.word	_Label_2656
	.word	-44
	.word	4
	.word	_Label_2657
	.word	-48
	.word	4
	.word	_Label_2658
	.word	-52
	.word	4
	.word	_Label_2659
	.word	-56
	.word	4
	.word	_Label_2660
	.word	-60
	.word	4
	.word	_Label_2661
	.word	-64
	.word	4
	.word	_Label_2662
	.word	-68
	.word	4
	.word	_Label_2663
	.word	-72
	.word	4
	.word	_Label_2664
	.word	-76
	.word	4
	.word	_Label_2665
	.word	-80
	.word	4
	.word	_Label_2666
	.word	-84
	.word	4
	.word	_Label_2667
	.word	-88
	.word	4
	.word	_Label_2668
	.word	-92
	.word	4
	.word	_Label_2669
	.word	-96
	.word	4
	.word	_Label_2670
	.word	-100
	.word	4
	.word	_Label_2671
	.word	-104
	.word	4
	.word	_Label_2672
	.word	-108
	.word	4
	.word	_Label_2673
	.word	-112
	.word	4
	.word	_Label_2674
	.word	-116
	.word	4
	.word	_Label_2675
	.word	-120
	.word	4
	.word	_Label_2676
	.word	-124
	.word	4
	.word	_Label_2677
	.word	-128
	.word	4
	.word	_Label_2678
	.word	-132
	.word	4
	.word	_Label_2679
	.word	-136
	.word	4
	.word	_Label_2680
	.word	-140
	.word	4
	.word	_Label_2681
	.word	-144
	.word	4
	.word	_Label_2682
	.word	-148
	.word	4
	.word	_Label_2683
	.word	-152
	.word	4
	.word	_Label_2684
	.word	-156
	.word	4
	.word	_Label_2685
	.word	-160
	.word	4
	.word	_Label_2686
	.word	-164
	.word	4
	.word	_Label_2687
	.word	-168
	.word	4
	.word	0
_Label_2646:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2647:
	.ascii	"Pself\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2687:
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
_Label_4024:
	push	r0
	sub	r1,1,r1
	bne	_Label_4024
	mov	1202,r13		! source line 1202
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0RE",r10
!   _temp_2690 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2690 [entry ] into _temp_2691
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
!   Data Move: _temp_2689 = *_temp_2691  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2688 = _temp_2689 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2688  (sizeInBytes=4)
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
	.word	_Label_2692
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2693
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2694
	.word	12
	.word	4
	.word	_Label_2695
	.word	-12
	.word	4
	.word	_Label_2696
	.word	-16
	.word	4
	.word	_Label_2697
	.word	-20
	.word	4
	.word	_Label_2698
	.word	-24
	.word	4
	.word	0
_Label_2692:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2693:
	.ascii	"Pself\0"
	.align
_Label_2694:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2688\0"
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
_Label_4025:
	push	r0
	sub	r1,1,r1
	bne	_Label_4025
	mov	1212,r13		! source line 1212
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0RE",r10
!   _temp_2701 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2701 [entry ] into _temp_2702
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
!   Data Move: _temp_2700 = *_temp_2702  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2699 = _temp_2700 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2699  (sizeInBytes=4)
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
	.word	_Label_2703
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2704
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2705
	.word	12
	.word	4
	.word	_Label_2706
	.word	-12
	.word	4
	.word	_Label_2707
	.word	-16
	.word	4
	.word	_Label_2708
	.word	-20
	.word	4
	.word	_Label_2709
	.word	-24
	.word	4
	.word	0
_Label_2703:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2704:
	.ascii	"Pself\0"
	.align
_Label_2705:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2699\0"
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
_Label_4026:
	push	r0
	sub	r1,1,r1
	bne	_Label_4026
	mov	1221,r13		! source line 1221
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1226,r13		! source line 1226
	mov	"\0\0AS",r10
!   _temp_2710 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2710 [entry ] into _temp_2711
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
!   _temp_2715 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2715 [entry ] into _temp_2716
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
!   Data Move: _temp_2714 = *_temp_2716  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2713 = _temp_2714 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2712 = _temp_2713 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2711 = _temp_2712  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1226,r13		! source line 1226
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
	.word	_Label_2717
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2718
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2719
	.word	12
	.word	4
	.word	_Label_2720
	.word	16
	.word	4
	.word	_Label_2721
	.word	-12
	.word	4
	.word	_Label_2722
	.word	-16
	.word	4
	.word	_Label_2723
	.word	-20
	.word	4
	.word	_Label_2724
	.word	-24
	.word	4
	.word	_Label_2725
	.word	-28
	.word	4
	.word	_Label_2726
	.word	-32
	.word	4
	.word	_Label_2727
	.word	-36
	.word	4
	.word	0
_Label_2717:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2718:
	.ascii	"Pself\0"
	.align
_Label_2719:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2720:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2710\0"
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
_Label_4027:
	push	r0
	sub	r1,1,r1
	bne	_Label_4027
	mov	1231,r13		! source line 1231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0RE",r10
!   _temp_2731 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2731 [entry ] into _temp_2732
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
!   Data Move: _temp_2730 = *_temp_2732  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2729 = _temp_2730 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2729) then goto _Label_2733
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2733
!   _temp_2728 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2734
_Label_2733:
!   _temp_2728 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2734:
!   ReturnResult: _temp_2728  (sizeInBytes=1)
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
	.word	_Label_2735
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2736
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2737
	.word	12
	.word	4
	.word	_Label_2738
	.word	-16
	.word	4
	.word	_Label_2739
	.word	-20
	.word	4
	.word	_Label_2740
	.word	-24
	.word	4
	.word	_Label_2741
	.word	-28
	.word	4
	.word	_Label_2742
	.word	-9
	.word	1
	.word	0
_Label_2735:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2736:
	.ascii	"Pself\0"
	.align
_Label_2737:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2742:
	.byte	'C'
	.ascii	"_temp_2728\0"
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
_Label_4028:
	push	r0
	sub	r1,1,r1
	bne	_Label_4028
	mov	1240,r13		! source line 1240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0RE",r10
!   _temp_2746 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2746 [entry ] into _temp_2747
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
!   Data Move: _temp_2745 = *_temp_2747  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2744 = _temp_2745 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2744) then goto _Label_2748
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2748
!   _temp_2743 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2749
_Label_2748:
!   _temp_2743 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2749:
!   ReturnResult: _temp_2743  (sizeInBytes=1)
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
	.word	_Label_2750
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2751
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2752
	.word	12
	.word	4
	.word	_Label_2753
	.word	-16
	.word	4
	.word	_Label_2754
	.word	-20
	.word	4
	.word	_Label_2755
	.word	-24
	.word	4
	.word	_Label_2756
	.word	-28
	.word	4
	.word	_Label_2757
	.word	-9
	.word	1
	.word	0
_Label_2750:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2751:
	.ascii	"Pself\0"
	.align
_Label_2752:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2757:
	.byte	'C'
	.ascii	"_temp_2743\0"
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
_Label_4029:
	push	r0
	sub	r1,1,r1
	bne	_Label_4029
	mov	1249,r13		! source line 1249
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1253,r13		! source line 1253
	mov	"\0\0RE",r10
!   _temp_2761 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2761 [entry ] into _temp_2762
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
!   Data Move: _temp_2760 = *_temp_2762  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2759 = _temp_2760 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2759) then goto _Label_2763
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2763
!   _temp_2758 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2764
_Label_2763:
!   _temp_2758 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2764:
!   ReturnResult: _temp_2758  (sizeInBytes=1)
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
	.word	_Label_2765
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2766
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2767
	.word	12
	.word	4
	.word	_Label_2768
	.word	-16
	.word	4
	.word	_Label_2769
	.word	-20
	.word	4
	.word	_Label_2770
	.word	-24
	.word	4
	.word	_Label_2771
	.word	-28
	.word	4
	.word	_Label_2772
	.word	-9
	.word	1
	.word	0
_Label_2765:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2766:
	.ascii	"Pself\0"
	.align
_Label_2767:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2772:
	.byte	'C'
	.ascii	"_temp_2758\0"
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
_Label_4030:
	push	r0
	sub	r1,1,r1
	bne	_Label_4030
	mov	1258,r13		! source line 1258
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0RE",r10
!   _temp_2776 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2776 [entry ] into _temp_2777
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
!   Data Move: _temp_2775 = *_temp_2777  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2774 = _temp_2775 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2774) then goto _Label_2778
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2778
!   _temp_2773 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2779
_Label_2778:
!   _temp_2773 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2779:
!   ReturnResult: _temp_2773  (sizeInBytes=1)
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
	.word	_Label_2780
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2781
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2782
	.word	12
	.word	4
	.word	_Label_2783
	.word	-16
	.word	4
	.word	_Label_2784
	.word	-20
	.word	4
	.word	_Label_2785
	.word	-24
	.word	4
	.word	_Label_2786
	.word	-28
	.word	4
	.word	_Label_2787
	.word	-9
	.word	1
	.word	0
_Label_2780:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2781:
	.ascii	"Pself\0"
	.align
_Label_2782:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2787:
	.byte	'C'
	.ascii	"_temp_2773\0"
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
_Label_4031:
	push	r0
	sub	r1,1,r1
	bne	_Label_4031
	mov	1267,r13		! source line 1267
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1271,r13		! source line 1271
	mov	"\0\0AS",r10
!   _temp_2788 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2788 [entry ] into _temp_2789
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
!   _temp_2792 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2792 [entry ] into _temp_2793
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
!   Data Move: _temp_2791 = *_temp_2793  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2790 = _temp_2791 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2789 = _temp_2790  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1271,r13		! source line 1271
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
	.word	_Label_2794
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2795
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2796
	.word	12
	.word	4
	.word	_Label_2797
	.word	-12
	.word	4
	.word	_Label_2798
	.word	-16
	.word	4
	.word	_Label_2799
	.word	-20
	.word	4
	.word	_Label_2800
	.word	-24
	.word	4
	.word	_Label_2801
	.word	-28
	.word	4
	.word	_Label_2802
	.word	-32
	.word	4
	.word	0
_Label_2794:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2795:
	.ascii	"Pself\0"
	.align
_Label_2796:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2788\0"
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
_Label_4032:
	push	r0
	sub	r1,1,r1
	bne	_Label_4032
	mov	1276,r13		! source line 1276
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0AS",r10
!   _temp_2803 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2803 [entry ] into _temp_2804
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
!   _temp_2807 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2807 [entry ] into _temp_2808
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
!   Data Move: _temp_2806 = *_temp_2808  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2805 = _temp_2806 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2804 = _temp_2805  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1280,r13		! source line 1280
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
	.word	_Label_2809
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2810
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2811
	.word	12
	.word	4
	.word	_Label_2812
	.word	-12
	.word	4
	.word	_Label_2813
	.word	-16
	.word	4
	.word	_Label_2814
	.word	-20
	.word	4
	.word	_Label_2815
	.word	-24
	.word	4
	.word	_Label_2816
	.word	-28
	.word	4
	.word	_Label_2817
	.word	-32
	.word	4
	.word	0
_Label_2809:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2810:
	.ascii	"Pself\0"
	.align
_Label_2811:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2803\0"
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
_Label_4033:
	push	r0
	sub	r1,1,r1
	bne	_Label_4033
	mov	1285,r13		! source line 1285
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1289,r13		! source line 1289
	mov	"\0\0AS",r10
!   _temp_2818 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2818 [entry ] into _temp_2819
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
!   _temp_2822 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2822 [entry ] into _temp_2823
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
!   Data Move: _temp_2821 = *_temp_2823  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2820 = _temp_2821 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2819 = _temp_2820  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1289,r13		! source line 1289
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
	.word	_Label_2824
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2825
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2826
	.word	12
	.word	4
	.word	_Label_2827
	.word	-12
	.word	4
	.word	_Label_2828
	.word	-16
	.word	4
	.word	_Label_2829
	.word	-20
	.word	4
	.word	_Label_2830
	.word	-24
	.word	4
	.word	_Label_2831
	.word	-28
	.word	4
	.word	_Label_2832
	.word	-32
	.word	4
	.word	0
_Label_2824:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2825:
	.ascii	"Pself\0"
	.align
_Label_2826:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2818\0"
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
_Label_4034:
	push	r0
	sub	r1,1,r1
	bne	_Label_4034
	mov	1294,r13		! source line 1294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0AS",r10
!   _temp_2833 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2833 [entry ] into _temp_2834
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
!   _temp_2837 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2837 [entry ] into _temp_2838
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
!   Data Move: _temp_2836 = *_temp_2838  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2835 = _temp_2836 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2834 = _temp_2835  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1298,r13		! source line 1298
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
	.word	_Label_2839
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2840
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2841
	.word	12
	.word	4
	.word	_Label_2842
	.word	-12
	.word	4
	.word	_Label_2843
	.word	-16
	.word	4
	.word	_Label_2844
	.word	-20
	.word	4
	.word	_Label_2845
	.word	-24
	.word	4
	.word	_Label_2846
	.word	-28
	.word	4
	.word	_Label_2847
	.word	-32
	.word	4
	.word	0
_Label_2839:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2840:
	.ascii	"Pself\0"
	.align
_Label_2841:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2833\0"
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
_Label_4035:
	push	r0
	sub	r1,1,r1
	bne	_Label_4035
	mov	1303,r13		! source line 1303
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0AS",r10
!   _temp_2848 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2848 [entry ] into _temp_2849
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
!   _temp_2852 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2852 [entry ] into _temp_2853
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
!   Data Move: _temp_2851 = *_temp_2853  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2850 = _temp_2851 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2849 = _temp_2850  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1307,r13		! source line 1307
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
	.word	_Label_2854
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2855
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2856
	.word	12
	.word	4
	.word	_Label_2857
	.word	-12
	.word	4
	.word	_Label_2858
	.word	-16
	.word	4
	.word	_Label_2859
	.word	-20
	.word	4
	.word	_Label_2860
	.word	-24
	.word	4
	.word	_Label_2861
	.word	-28
	.word	4
	.word	_Label_2862
	.word	-32
	.word	4
	.word	0
_Label_2854:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2855:
	.ascii	"Pself\0"
	.align
_Label_2856:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2848\0"
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
_Label_4036:
	push	r0
	sub	r1,1,r1
	bne	_Label_4036
	mov	1312,r13		! source line 1312
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0AS",r10
!   _temp_2863 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2863 [entry ] into _temp_2864
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
!   _temp_2867 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2867 [entry ] into _temp_2868
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
!   Data Move: _temp_2866 = *_temp_2868  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2865 = _temp_2866 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2864 = _temp_2865  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1316,r13		! source line 1316
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
	.word	_Label_2869
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2870
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2871
	.word	12
	.word	4
	.word	_Label_2872
	.word	-12
	.word	4
	.word	_Label_2873
	.word	-16
	.word	4
	.word	_Label_2874
	.word	-20
	.word	4
	.word	_Label_2875
	.word	-24
	.word	4
	.word	_Label_2876
	.word	-28
	.word	4
	.word	_Label_2877
	.word	-32
	.word	4
	.word	0
_Label_2869:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2870:
	.ascii	"Pself\0"
	.align
_Label_2871:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2863\0"
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
_Label_4037:
	push	r0
	sub	r1,1,r1
	bne	_Label_4037
	mov	1321,r13		! source line 1321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1325,r13		! source line 1325
	mov	"\0\0AS",r10
!   _temp_2878 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2878 [entry ] into _temp_2879
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
!   _temp_2882 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2882 [entry ] into _temp_2883
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
!   Data Move: _temp_2881 = *_temp_2883  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2880 = _temp_2881 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2879 = _temp_2880  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1325,r13		! source line 1325
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
	.word	_Label_2884
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2885
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2886
	.word	12
	.word	4
	.word	_Label_2887
	.word	-12
	.word	4
	.word	_Label_2888
	.word	-16
	.word	4
	.word	_Label_2889
	.word	-20
	.word	4
	.word	_Label_2890
	.word	-24
	.word	4
	.word	_Label_2891
	.word	-28
	.word	4
	.word	_Label_2892
	.word	-32
	.word	4
	.word	0
_Label_2884:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2885:
	.ascii	"Pself\0"
	.align
_Label_2886:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2878\0"
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
_Label_4038:
	push	r0
	sub	r1,1,r1
	bne	_Label_4038
	mov	1330,r13		! source line 1330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0AS",r10
!   _temp_2893 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2893 [entry ] into _temp_2894
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
!   _temp_2897 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2897 [entry ] into _temp_2898
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
!   Data Move: _temp_2896 = *_temp_2898  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2895 = _temp_2896 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2894 = _temp_2895  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1334,r13		! source line 1334
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
	.word	_Label_2899
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2900
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2901
	.word	12
	.word	4
	.word	_Label_2902
	.word	-12
	.word	4
	.word	_Label_2903
	.word	-16
	.word	4
	.word	_Label_2904
	.word	-20
	.word	4
	.word	_Label_2905
	.word	-24
	.word	4
	.word	_Label_2906
	.word	-28
	.word	4
	.word	_Label_2907
	.word	-32
	.word	4
	.word	0
_Label_2899:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2900:
	.ascii	"Pself\0"
	.align
_Label_2901:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2893\0"
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
_Label_4039:
	push	r0
	sub	r1,1,r1
	bne	_Label_4039
	mov	1339,r13		! source line 1339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2909 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2909 [0 ] into _temp_2910
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
!   _temp_2908 = _temp_2910		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2911 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2908  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2911  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1345,r13		! source line 1345
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1345,r13		! source line 1345
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
	.word	_Label_2912
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2913
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2914
	.word	-12
	.word	4
	.word	_Label_2915
	.word	-16
	.word	4
	.word	_Label_2916
	.word	-20
	.word	4
	.word	_Label_2917
	.word	-24
	.word	4
	.word	0
_Label_2912:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2913:
	.ascii	"Pself\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2908\0"
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
_Label_4040:
	push	r0
	sub	r1,1,r1
	bne	_Label_4040
	mov	1350,r13		! source line 1350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2918
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2918
	jmp	_Label_2919
_Label_2918:
! THEN...
	mov	1366,r13		! source line 1366
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2920
_Label_2919:
! ELSE...
	mov	1367,r13		! source line 1367
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2922		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2922
!	jmp	_Label_2921
_Label_2921:
! THEN...
	mov	1368,r13		! source line 1368
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1368,r13		! source line 1368
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2922:
! END IF...
_Label_2920:
! ASSIGNMENT STATEMENT...
	mov	1370,r13		! source line 1370
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
	mov	1371,r13		! source line 1371
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
	mov	1374,r13		! source line 1374
	mov	"\0\0WH",r10
_Label_2923:
!	jmp	_Label_2924
_Label_2924:
	mov	1374,r13		! source line 1374
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2927		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2927
!	jmp	_Label_2926
_Label_2926:
! THEN...
	mov	1376,r13		! source line 1376
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2928 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2928  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1376,r13		! source line 1376
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1377,r13		! source line 1377
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2927:
! IF STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0IF",r10
	mov	1379,r13		! source line 1379
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2932) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2931  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2931 then goto _Label_2930 else goto _Label_2929
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2929
	jmp	_Label_2930
_Label_2929:
! THEN...
	mov	1380,r13		! source line 1380
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2933 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2933  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1380,r13		! source line 1380
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2930:
! ASSIGNMENT STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0AS",r10
	mov	1383,r13		! source line 1383
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2935) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2934  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2934 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0WH",r10
_Label_2936:
!   if offset >= 8192 then goto _Label_2938		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2938
!	jmp	_Label_2937
_Label_2937:
	mov	1385,r13		! source line 1385
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2939 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2939  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1389,r13		! source line 1389
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1391,r13		! source line 1391
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2941		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2941
!	jmp	_Label_2940
_Label_2940:
! THEN...
	mov	1394,r13		! source line 1394
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2941:
! END WHILE...
	jmp	_Label_2936
_Label_2938:
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1398,r13		! source line 1398
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2923
_Label_2925:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2942
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2943
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2944
	.word	12
	.word	4
	.word	_Label_2945
	.word	16
	.word	4
	.word	_Label_2946
	.word	20
	.word	4
	.word	_Label_2947
	.word	-9
	.word	1
	.word	_Label_2948
	.word	-16
	.word	4
	.word	_Label_2949
	.word	-20
	.word	4
	.word	_Label_2950
	.word	-24
	.word	4
	.word	_Label_2951
	.word	-28
	.word	4
	.word	_Label_2952
	.word	-10
	.word	1
	.word	_Label_2953
	.word	-32
	.word	4
	.word	_Label_2954
	.word	-36
	.word	4
	.word	_Label_2955
	.word	-40
	.word	4
	.word	_Label_2956
	.word	-44
	.word	4
	.word	_Label_2957
	.word	-48
	.word	4
	.word	0
_Label_2942:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2943:
	.ascii	"Pself\0"
	.align
_Label_2944:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2945:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2946:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2947:
	.byte	'C'
	.ascii	"_temp_2939\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2952:
	.byte	'C'
	.ascii	"_temp_2931\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2954:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2955:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2956:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2957:
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
_Label_4041:
	push	r0
	sub	r1,1,r1
	bne	_Label_4041
	mov	1404,r13		! source line 1404
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2958
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2958
	jmp	_Label_2959
_Label_2958:
! THEN...
	mov	1416,r13		! source line 1416
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2960
_Label_2959:
! ELSE...
	mov	1417,r13		! source line 1417
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2962		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2962
!	jmp	_Label_2961
_Label_2961:
! THEN...
	mov	1418,r13		! source line 1418
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1418,r13		! source line 1418
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2962:
! END IF...
_Label_2960:
! ASSIGNMENT STATEMENT...
	mov	1420,r13		! source line 1420
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
	mov	1421,r13		! source line 1421
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
	mov	1422,r13		! source line 1422
	mov	"\0\0WH",r10
_Label_2963:
!	jmp	_Label_2964
_Label_2964:
	mov	1422,r13		! source line 1422
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2969		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2969
	jmp	_Label_2966
_Label_2969:
	mov	1424,r13		! source line 1424
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2971) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2970  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2970 then goto _Label_2968 else goto _Label_2966
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2966
	jmp	_Label_2968
_Label_2968:
	mov	1425,r13		! source line 1425
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2973) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2972  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2972 then goto _Label_2967 else goto _Label_2966
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2966
	jmp	_Label_2967
_Label_2966:
! THEN...
	mov	1426,r13		! source line 1426
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2967:
! ASSIGNMENT STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0AS",r10
	mov	1428,r13		! source line 1428
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2975) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2974  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2974 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0WH",r10
_Label_2976:
!   if offset >= 8192 then goto _Label_2978		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2978
!	jmp	_Label_2977
_Label_2977:
	mov	1429,r13		! source line 1429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2979 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2979  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2981		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2981
!	jmp	_Label_2980
_Label_2980:
! THEN...
	mov	1436,r13		! source line 1436
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2981:
! END WHILE...
	jmp	_Label_2976
_Label_2978:
! ASSIGNMENT STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2963
_Label_2965:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2982
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2983
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2984
	.word	12
	.word	4
	.word	_Label_2985
	.word	16
	.word	4
	.word	_Label_2986
	.word	20
	.word	4
	.word	_Label_2987
	.word	-9
	.word	1
	.word	_Label_2988
	.word	-16
	.word	4
	.word	_Label_2989
	.word	-20
	.word	4
	.word	_Label_2990
	.word	-24
	.word	4
	.word	_Label_2991
	.word	-10
	.word	1
	.word	_Label_2992
	.word	-28
	.word	4
	.word	_Label_2993
	.word	-11
	.word	1
	.word	_Label_2994
	.word	-32
	.word	4
	.word	_Label_2995
	.word	-36
	.word	4
	.word	_Label_2996
	.word	-40
	.word	4
	.word	_Label_2997
	.word	-44
	.word	4
	.word	0
_Label_2982:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2983:
	.ascii	"Pself\0"
	.align
_Label_2984:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2985:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2986:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2987:
	.byte	'C'
	.ascii	"_temp_2979\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_2991:
	.byte	'C'
	.ascii	"_temp_2972\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2971\0"
	.align
_Label_2993:
	.byte	'C'
	.ascii	"_temp_2970\0"
	.align
_Label_2994:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2995:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2996:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2997:
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
_Label_4042:
	push	r0
	sub	r1,1,r1
	bne	_Label_4042
	mov	1446,r13		! source line 1446
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1470,r13		! source line 1470
	mov	"\0\0IF",r10
	mov	1470,r13		! source line 1470
	mov	"\0\0SE",r10
!   _temp_3001 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3002) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3001  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3000  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_3000 >= 4 then goto _Label_2999		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2999
!	jmp	_Label_2998
_Label_2998:
! THEN...
	mov	1473,r13		! source line 1473
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2999:
! IF STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_3004		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3004
!	jmp	_Label_3003
_Label_3003:
! THEN...
	mov	1478,r13		! source line 1478
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3004:
! ASSIGNMENT STATEMENT...
	mov	1481,r13		! source line 1481
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
	mov	1483,r13		! source line 1483
	mov	"\0\0RE",r10
	mov	1483,r13		! source line 1483
	mov	"\0\0SE",r10
!   _temp_3007 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_3006 = _temp_3007 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_3008 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_3009) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3006  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_3008  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3005  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_3005  (sizeInBytes=4)
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
	.word	_Label_3010
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3011
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3012
	.word	12
	.word	4
	.word	_Label_3013
	.word	16
	.word	4
	.word	_Label_3014
	.word	20
	.word	4
	.word	_Label_3015
	.word	-12
	.word	4
	.word	_Label_3016
	.word	-16
	.word	4
	.word	_Label_3017
	.word	-20
	.word	4
	.word	_Label_3018
	.word	-24
	.word	4
	.word	_Label_3019
	.word	-28
	.word	4
	.word	_Label_3020
	.word	-32
	.word	4
	.word	_Label_3021
	.word	-36
	.word	4
	.word	_Label_3022
	.word	-40
	.word	4
	.word	_Label_3023
	.word	-44
	.word	4
	.word	0
_Label_3010:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_3011:
	.ascii	"Pself\0"
	.align
_Label_3012:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_3013:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3014:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3023:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3024
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3024:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3025
	.word	_sourceFileName
	.word	308		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3025:
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
_Label_4043:
	push	r0
	sub	r1,1,r1
	bne	_Label_4043
	mov	2196,r13		! source line 2196
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3026 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3026  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2197,r13		! source line 2197
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2204,r13		! source line 2204
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
	mov	2205,r13		! source line 2205
	mov	"\0\0SE",r10
!   _temp_3028 = &semUsedInSynchMethods
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
	mov	2206,r13		! source line 2206
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
	mov	2207,r13		! source line 2207
	mov	"\0\0SE",r10
!   _temp_3030 = &diskBusy
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
	mov	2207,r13		! source line 2207
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
	.word	_Label_3031
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3032
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3033
	.word	-12
	.word	4
	.word	_Label_3034
	.word	-16
	.word	4
	.word	_Label_3035
	.word	-20
	.word	4
	.word	_Label_3036
	.word	-24
	.word	4
	.word	_Label_3037
	.word	-28
	.word	4
	.word	0
_Label_3031:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3032:
	.ascii	"Pself\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_3026\0"
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
_Label_4044:
	push	r0
	sub	r1,1,r1
	bne	_Label_4044
	mov	2212,r13		! source line 2212
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0SE",r10
!   _temp_3038 = &diskBusy
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
	mov	2226,r13		! source line 2226
	mov	"\0\0WH",r10
_Label_3039:
!	jmp	_Label_3040
_Label_3040:
	mov	2226,r13		! source line 2226
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0SE",r10
!   _temp_3042 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3043) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3042  sizeInBytes=4
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
	mov	2230,r13		! source line 2230
	mov	"\0\0SE",r10
!   _temp_3044 = &semUsedInSynchMethods
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
	mov	2233,r13		! source line 2233
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3053 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3047
	cmp	r1,2
	be	_Label_3048
	cmp	r1,3
	be	_Label_3049
	cmp	r1,4
	be	_Label_3050
	cmp	r1,5
	be	_Label_3051
	cmp	r1,6
	be	_Label_3052
	jmp	_Label_3045
! CASE 1...
_Label_3047:
! SEND STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0SE",r10
!   _temp_3054 = &diskBusy
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
	mov	2236,r13		! source line 2236
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3048:
! CALL STATEMENT...
!   _temp_3055 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3055  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2238,r13		! source line 2238
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3049:
! CALL STATEMENT...
!   _temp_3056 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3056  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2240,r13		! source line 2240
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3050:
! CALL STATEMENT...
!   _temp_3057 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3057  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2242,r13		! source line 2242
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3051:
! BREAK STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0BR",r10
	jmp	_Label_3046
! CASE 6...
_Label_3052:
! CALL STATEMENT...
!   _temp_3058 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3058  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2248,r13		! source line 2248
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3045:
! CALL STATEMENT...
!   _temp_3059 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3059  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2250,r13		! source line 2250
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3046:
! END WHILE...
	jmp	_Label_3039
_Label_3041:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3060
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3061
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3062
	.word	12
	.word	4
	.word	_Label_3063
	.word	16
	.word	4
	.word	_Label_3064
	.word	20
	.word	4
	.word	_Label_3065
	.word	-12
	.word	4
	.word	_Label_3066
	.word	-16
	.word	4
	.word	_Label_3067
	.word	-20
	.word	4
	.word	_Label_3068
	.word	-24
	.word	4
	.word	_Label_3069
	.word	-28
	.word	4
	.word	_Label_3070
	.word	-32
	.word	4
	.word	_Label_3071
	.word	-36
	.word	4
	.word	_Label_3072
	.word	-40
	.word	4
	.word	_Label_3073
	.word	-44
	.word	4
	.word	_Label_3074
	.word	-48
	.word	4
	.word	_Label_3075
	.word	-52
	.word	4
	.word	0
_Label_3060:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3061:
	.ascii	"Pself\0"
	.align
_Label_3062:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3063:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3064:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3069:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
_Label_3070:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3071:
	.byte	'?'
	.ascii	"_temp_3053\0"
	.align
_Label_3072:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3073:
	.byte	'?'
	.ascii	"_temp_3043\0"
	.align
_Label_3074:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3075:
	.byte	'?'
	.ascii	"_temp_3038\0"
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
	mov	2259,r13		! source line 2259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2277,r13		! source line 2277
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
	mov	2278,r13		! source line 2278
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
	mov	2279,r13		! source line 2279
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
	mov	2280,r13		! source line 2280
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
	mov	2280,r13		! source line 2280
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
	.word	_Label_3076
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3077
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3078
	.word	12
	.word	4
	.word	_Label_3079
	.word	16
	.word	4
	.word	_Label_3080
	.word	20
	.word	4
	.word	_Label_3081
	.word	24
	.word	4
	.word	0
_Label_3076:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3077:
	.ascii	"Pself\0"
	.align
_Label_3078:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3079:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3080:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3081:
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
_Label_4045:
	push	r0
	sub	r1,1,r1
	bne	_Label_4045
	mov	2285,r13		! source line 2285
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0SE",r10
!   _temp_3082 = &diskBusy
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
	mov	2298,r13		! source line 2298
	mov	"\0\0WH",r10
_Label_3083:
!	jmp	_Label_3084
_Label_3084:
	mov	2298,r13		! source line 2298
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0SE",r10
!   _temp_3086 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3087) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3086  sizeInBytes=4
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
	mov	2301,r13		! source line 2301
	mov	"\0\0SE",r10
!   _temp_3088 = &semUsedInSynchMethods
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
	mov	2304,r13		! source line 2304
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3097 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3091
	cmp	r1,2
	be	_Label_3092
	cmp	r1,3
	be	_Label_3093
	cmp	r1,4
	be	_Label_3094
	cmp	r1,5
	be	_Label_3095
	cmp	r1,6
	be	_Label_3096
	jmp	_Label_3089
! CASE 1...
_Label_3091:
! SEND STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0SE",r10
!   _temp_3098 = &diskBusy
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
	mov	2307,r13		! source line 2307
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3092:
! CALL STATEMENT...
!   _temp_3099 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3099  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2309,r13		! source line 2309
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3093:
! CALL STATEMENT...
!   _temp_3100 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3100  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2311,r13		! source line 2311
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3094:
! CALL STATEMENT...
!   _temp_3101 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3101  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2313,r13		! source line 2313
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3095:
! BREAK STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0BR",r10
	jmp	_Label_3090
! CASE 6...
_Label_3096:
! CALL STATEMENT...
!   _temp_3102 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3102  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2319,r13		! source line 2319
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3089:
! CALL STATEMENT...
!   _temp_3103 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3103  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2321,r13		! source line 2321
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3090:
! END WHILE...
	jmp	_Label_3083
_Label_3085:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3104
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3105
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3106
	.word	12
	.word	4
	.word	_Label_3107
	.word	16
	.word	4
	.word	_Label_3108
	.word	20
	.word	4
	.word	_Label_3109
	.word	-12
	.word	4
	.word	_Label_3110
	.word	-16
	.word	4
	.word	_Label_3111
	.word	-20
	.word	4
	.word	_Label_3112
	.word	-24
	.word	4
	.word	_Label_3113
	.word	-28
	.word	4
	.word	_Label_3114
	.word	-32
	.word	4
	.word	_Label_3115
	.word	-36
	.word	4
	.word	_Label_3116
	.word	-40
	.word	4
	.word	_Label_3117
	.word	-44
	.word	4
	.word	_Label_3118
	.word	-48
	.word	4
	.word	_Label_3119
	.word	-52
	.word	4
	.word	0
_Label_3104:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3105:
	.ascii	"Pself\0"
	.align
_Label_3106:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3107:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3108:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3103\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3111:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3112:
	.byte	'?'
	.ascii	"_temp_3100\0"
	.align
_Label_3113:
	.byte	'?'
	.ascii	"_temp_3099\0"
	.align
_Label_3114:
	.byte	'?'
	.ascii	"_temp_3098\0"
	.align
_Label_3115:
	.byte	'?'
	.ascii	"_temp_3097\0"
	.align
_Label_3116:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3117:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3118:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3082\0"
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
	mov	2330,r13		! source line 2330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2347,r13		! source line 2347
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
	mov	2348,r13		! source line 2348
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
	mov	2349,r13		! source line 2349
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
	mov	2350,r13		! source line 2350
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
	mov	2350,r13		! source line 2350
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
	.word	_Label_3120
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3121
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3122
	.word	12
	.word	4
	.word	_Label_3123
	.word	16
	.word	4
	.word	_Label_3124
	.word	20
	.word	4
	.word	_Label_3125
	.word	24
	.word	4
	.word	0
_Label_3120:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3121:
	.ascii	"Pself\0"
	.align
_Label_3122:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3123:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3124:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3125:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3126
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
_Label_3126:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3127
	.word	_sourceFileName
	.word	331		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3127:
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
_Label_4046:
	push	r0
	sub	r1,1,r1
	bne	_Label_4046
	mov	2361,r13		! source line 2361
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3128 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3128  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2368,r13		! source line 2368
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2369,r13		! source line 2369
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
	mov	2370,r13		! source line 2370
	mov	"\0\0SE",r10
!   _temp_3130 = &fileManagerLock
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
	mov	2373,r13		! source line 2373
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
	mov	2374,r13		! source line 2374
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
	mov	2375,r13		! source line 2375
	mov	"\0\0SE",r10
!   _temp_3133 = &anFCBBecameFree
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
	mov	2376,r13		! source line 2376
	mov	"\0\0AS",r10
!   _temp_3134 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3136 = &_temp_3135
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3136 = _temp_3136 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3138 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4047:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4047
!   _temp_3138 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3140:
!   Data Move: *_temp_3136 = _temp_3138  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4048:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4048
!   _temp_3136 = _temp_3136 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3137 = _temp_3137 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3137) then goto _Label_3140
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3140
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3141 = &_temp_3135
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4049
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4049:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3134 = *_temp_3141  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4050:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4050
! FOR STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3146 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3147 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3146  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3142:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3147 then goto _Label_3145		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3145
_Label_3143:
	mov	2378,r13		! source line 2378
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2379,r13		! source line 2379
	mov	"\0\0AS",r10
!   _temp_3148 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3148 [i ] into _temp_3149
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
!   _temp_3150 = _temp_3149 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3150 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2380,r13		! source line 2380
	mov	"\0\0SE",r10
!   _temp_3151 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3151 [i ] into _temp_3152
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
	mov	2381,r13		! source line 2381
	mov	"\0\0SE",r10
!   _temp_3154 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3154 [i ] into _temp_3155
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
!   _temp_3153 = _temp_3155		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3156 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3153  sizeInBytes=4
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
_Label_3144:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3142
! END FOR
_Label_3145:
! ASSIGNMENT STATEMENT...
	mov	2385,r13		! source line 2385
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
	mov	2386,r13		! source line 2386
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
	mov	2387,r13		! source line 2387
	mov	"\0\0SE",r10
!   _temp_3159 = &anOpenFileBecameFree
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
	mov	2388,r13		! source line 2388
	mov	"\0\0AS",r10
!   _temp_3160 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3162 = &_temp_3161
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3162 = _temp_3162 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3164 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4051:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4051
!   _temp_3164 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3166:
!   Data Move: *_temp_3162 = _temp_3164  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4052:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4052
!   _temp_3162 = _temp_3162 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3163 = _temp_3163 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3163) then goto _Label_3166
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3166
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3167 = &_temp_3161
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4053
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4053:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3160 = *_temp_3167  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4054:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4054
! FOR STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3172 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3173 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3172  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3168:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3173 then goto _Label_3171		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3171
_Label_3169:
	mov	2390,r13		! source line 2390
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0AS",r10
!   _temp_3174 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3174 [i ] into _temp_3175
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
!   _temp_3176 = _temp_3175 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3176 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2392,r13		! source line 2392
	mov	"\0\0SE",r10
!   _temp_3178 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3178 [i ] into _temp_3179
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
!   _temp_3177 = _temp_3179		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3180 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3177  sizeInBytes=4
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
_Label_3170:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3168
! END FOR
_Label_3171:
! ASSIGNMENT STATEMENT...
	mov	2396,r13		! source line 2396
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4055:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4055
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0AS",r10
!   _temp_3182 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3183 = _temp_3182 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3183 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2402,r13		! source line 2402
	mov	"\0\0AS",r10
	mov	2402,r13		! source line 2402
	mov	"\0\0SE",r10
!   _temp_3184 = &_P_Kernel_frameManager
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
	mov	2403,r13		! source line 2403
	mov	"\0\0SE",r10
!   _temp_3185 = &_P_Kernel_diskDriver
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
	mov	2403,r13		! source line 2403
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
	.word	_Label_3186
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3187
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3188
	.word	-12
	.word	4
	.word	_Label_3189
	.word	-16
	.word	4
	.word	_Label_3190
	.word	-20
	.word	4
	.word	_Label_3191
	.word	-24
	.word	4
	.word	_Label_3192
	.word	-28
	.word	4
	.word	_Label_3193
	.word	-32
	.word	4
	.word	_Label_3194
	.word	-36
	.word	4
	.word	_Label_3195
	.word	-40
	.word	4
	.word	_Label_3196
	.word	-44
	.word	4
	.word	_Label_3197
	.word	-48
	.word	4
	.word	_Label_3198
	.word	-52
	.word	4
	.word	_Label_3199
	.word	-56
	.word	4
	.word	_Label_3200
	.word	-60
	.word	4
	.word	_Label_3201
	.word	-64
	.word	4
	.word	_Label_3202
	.word	-68
	.word	4
	.word	_Label_3203
	.word	-72
	.word	4
	.word	_Label_3204
	.word	-100
	.word	28
	.word	_Label_3205
	.word	-104
	.word	4
	.word	_Label_3206
	.word	-108
	.word	4
	.word	_Label_3207
	.word	-392
	.word	284
	.word	_Label_3208
	.word	-396
	.word	4
	.word	_Label_3209
	.word	-400
	.word	4
	.word	_Label_3210
	.word	-404
	.word	4
	.word	_Label_3211
	.word	-408
	.word	4
	.word	_Label_3212
	.word	-412
	.word	4
	.word	_Label_3213
	.word	-416
	.word	4
	.word	_Label_3214
	.word	-420
	.word	4
	.word	_Label_3215
	.word	-424
	.word	4
	.word	_Label_3216
	.word	-428
	.word	4
	.word	_Label_3217
	.word	-432
	.word	4
	.word	_Label_3218
	.word	-436
	.word	4
	.word	_Label_3219
	.word	-440
	.word	4
	.word	_Label_3220
	.word	-444
	.word	4
	.word	_Label_3221
	.word	-448
	.word	4
	.word	_Label_3222
	.word	-452
	.word	4
	.word	_Label_3223
	.word	-456
	.word	4
	.word	_Label_3224
	.word	-460
	.word	4
	.word	_Label_3225
	.word	-500
	.word	40
	.word	_Label_3226
	.word	-504
	.word	4
	.word	_Label_3227
	.word	-508
	.word	4
	.word	_Label_3228
	.word	-912
	.word	404
	.word	_Label_3229
	.word	-916
	.word	4
	.word	_Label_3230
	.word	-920
	.word	4
	.word	_Label_3231
	.word	-924
	.word	4
	.word	_Label_3232
	.word	-928
	.word	4
	.word	_Label_3233
	.word	-932
	.word	4
	.word	_Label_3234
	.word	-936
	.word	4
	.word	_Label_3235
	.word	-940
	.word	4
	.word	_Label_3236
	.word	-944
	.word	4
	.word	0
_Label_3186:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3187:
	.ascii	"Pself\0"
	.align
_Label_3188:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3189:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3190:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3191:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3192:
	.byte	'?'
	.ascii	"_temp_3181\0"
	.align
_Label_3193:
	.byte	'?'
	.ascii	"_temp_3180\0"
	.align
_Label_3194:
	.byte	'?'
	.ascii	"_temp_3179\0"
	.align
_Label_3195:
	.byte	'?'
	.ascii	"_temp_3178\0"
	.align
_Label_3196:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3197:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3200:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3201:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3202:
	.byte	'?'
	.ascii	"_temp_3167\0"
	.align
_Label_3203:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3204:
	.byte	'?'
	.ascii	"_temp_3164\0"
	.align
_Label_3205:
	.byte	'?'
	.ascii	"_temp_3163\0"
	.align
_Label_3206:
	.byte	'?'
	.ascii	"_temp_3162\0"
	.align
_Label_3207:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3208:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3209:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3210:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3211:
	.byte	'?'
	.ascii	"_temp_3157\0"
	.align
_Label_3212:
	.byte	'?'
	.ascii	"_temp_3156\0"
	.align
_Label_3213:
	.byte	'?'
	.ascii	"_temp_3155\0"
	.align
_Label_3214:
	.byte	'?'
	.ascii	"_temp_3154\0"
	.align
_Label_3215:
	.byte	'?'
	.ascii	"_temp_3153\0"
	.align
_Label_3216:
	.byte	'?'
	.ascii	"_temp_3152\0"
	.align
_Label_3217:
	.byte	'?'
	.ascii	"_temp_3151\0"
	.align
_Label_3218:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3219:
	.byte	'?'
	.ascii	"_temp_3149\0"
	.align
_Label_3220:
	.byte	'?'
	.ascii	"_temp_3148\0"
	.align
_Label_3221:
	.byte	'?'
	.ascii	"_temp_3147\0"
	.align
_Label_3222:
	.byte	'?'
	.ascii	"_temp_3146\0"
	.align
_Label_3223:
	.byte	'?'
	.ascii	"_temp_3141\0"
	.align
_Label_3224:
	.byte	'?'
	.ascii	"_temp_3139\0"
	.align
_Label_3225:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3226:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3227:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3228:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3229:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3230:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3231:
	.byte	'?'
	.ascii	"_temp_3132\0"
	.align
_Label_3232:
	.byte	'?'
	.ascii	"_temp_3131\0"
	.align
_Label_3233:
	.byte	'?'
	.ascii	"_temp_3130\0"
	.align
_Label_3234:
	.byte	'?'
	.ascii	"_temp_3129\0"
	.align
_Label_3235:
	.byte	'?'
	.ascii	"_temp_3128\0"
	.align
_Label_3236:
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
_Label_4056:
	push	r0
	sub	r1,1,r1
	bne	_Label_4056
	mov	2410,r13		! source line 2410
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0SE",r10
!   _temp_3237 = &fileManagerLock
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
!   _temp_3238 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3238  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2413,r13		! source line 2413
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3243 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3244 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3243  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3239:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3244 then goto _Label_3242		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3242
_Label_3240:
	mov	2414,r13		! source line 2414
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3245 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3245  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2415,r13		! source line 2415
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2416,r13		! source line 2416
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3246 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3246  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2417,r13		! source line 2417
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2418,r13		! source line 2418
	mov	"\0\0SE",r10
!   _temp_3247 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3247 [i ] into _temp_3248
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
_Label_3241:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3239
! END FOR
_Label_3242:
! CALL STATEMENT...
!   _temp_3249 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3249  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2420,r13		! source line 2420
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0SE",r10
!   _temp_3250 = _function_205_printFCB
	set	_function_205_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3251 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3250  sizeInBytes=4
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
	mov	2422,r13		! source line 2422
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3252 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3252  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2423,r13		! source line 2423
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3257 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3258 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3257  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3253:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3258 then goto _Label_3256		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3256
_Label_3254:
	mov	2424,r13		! source line 2424
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3259 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3259  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2425,r13		! source line 2425
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2426,r13		! source line 2426
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3260 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3260  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2427,r13		! source line 2427
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3262 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3262 [i ] into _temp_3263
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
!   _temp_3261 = _temp_3263		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3261  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2428,r13		! source line 2428
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3264 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3264  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2429,r13		! source line 2429
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0SE",r10
!   _temp_3265 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3265 [i ] into _temp_3266
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
_Label_3255:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3253
! END FOR
_Label_3256:
! CALL STATEMENT...
!   _temp_3267 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3267  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2432,r13		! source line 2432
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0SE",r10
!   _temp_3268 = _function_204_printOpen
	set	_function_204_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3269 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3268  sizeInBytes=4
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
	mov	2434,r13		! source line 2434
	mov	"\0\0SE",r10
!   _temp_3270 = &fileManagerLock
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
	mov	2434,r13		! source line 2434
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
	.word	_Label_3271
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3272
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3273
	.word	-12
	.word	4
	.word	_Label_3274
	.word	-16
	.word	4
	.word	_Label_3275
	.word	-20
	.word	4
	.word	_Label_3276
	.word	-24
	.word	4
	.word	_Label_3277
	.word	-28
	.word	4
	.word	_Label_3278
	.word	-32
	.word	4
	.word	_Label_3279
	.word	-36
	.word	4
	.word	_Label_3280
	.word	-40
	.word	4
	.word	_Label_3281
	.word	-44
	.word	4
	.word	_Label_3282
	.word	-48
	.word	4
	.word	_Label_3283
	.word	-52
	.word	4
	.word	_Label_3284
	.word	-56
	.word	4
	.word	_Label_3285
	.word	-60
	.word	4
	.word	_Label_3286
	.word	-64
	.word	4
	.word	_Label_3287
	.word	-68
	.word	4
	.word	_Label_3288
	.word	-72
	.word	4
	.word	_Label_3289
	.word	-76
	.word	4
	.word	_Label_3290
	.word	-80
	.word	4
	.word	_Label_3291
	.word	-84
	.word	4
	.word	_Label_3292
	.word	-88
	.word	4
	.word	_Label_3293
	.word	-92
	.word	4
	.word	_Label_3294
	.word	-96
	.word	4
	.word	_Label_3295
	.word	-100
	.word	4
	.word	_Label_3296
	.word	-104
	.word	4
	.word	_Label_3297
	.word	-108
	.word	4
	.word	_Label_3298
	.word	-112
	.word	4
	.word	_Label_3299
	.word	-116
	.word	4
	.word	0
_Label_3271:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3272:
	.ascii	"Pself\0"
	.align
_Label_3273:
	.byte	'?'
	.ascii	"_temp_3270\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3269\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3268\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3267\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3265\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3264\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3263\0"
	.align
_Label_3281:
	.byte	'?'
	.ascii	"_temp_3262\0"
	.align
_Label_3282:
	.byte	'?'
	.ascii	"_temp_3261\0"
	.align
_Label_3283:
	.byte	'?'
	.ascii	"_temp_3260\0"
	.align
_Label_3284:
	.byte	'?'
	.ascii	"_temp_3259\0"
	.align
_Label_3285:
	.byte	'?'
	.ascii	"_temp_3258\0"
	.align
_Label_3286:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3287:
	.byte	'?'
	.ascii	"_temp_3252\0"
	.align
_Label_3288:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3289:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3290:
	.byte	'?'
	.ascii	"_temp_3249\0"
	.align
_Label_3291:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3292:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3293:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3294:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3295:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3296:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
_Label_3297:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3298:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3299:
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
_Label_4057:
	push	r0
	sub	r1,1,r1
	bne	_Label_4057
	mov	2439,r13		! source line 2439
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0AS",r10
	mov	2455,r13		! source line 2455
	mov	"\0\0SE",r10
!   _temp_3300 = &_P_Kernel_fileManager
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
	mov	2456,r13		! source line 2456
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3301
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3301
	jmp	_Label_3302
_Label_3301:
! THEN...
	mov	2457,r13		! source line 2457
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3302:
! SEND STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0SE",r10
!   _temp_3303 = &fileManagerLock
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
	mov	2462,r13		! source line 2462
	mov	"\0\0WH",r10
_Label_3304:
	mov	2462,r13		! source line 2462
	mov	"\0\0SE",r10
!   _temp_3307 = &openFileFreeList
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
!   if result==true then goto _Label_3305 else goto _Label_3306
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3306
	jmp	_Label_3305
_Label_3305:
	mov	2462,r13		! source line 2462
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2463,r13		! source line 2463
	mov	"\0\0SE",r10
!   _temp_3308 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3309 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3308  sizeInBytes=4
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
	jmp	_Label_3304
_Label_3306:
! ASSIGNMENT STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0AS",r10
	mov	2465,r13		! source line 2465
	mov	"\0\0SE",r10
!   _temp_3310 = &openFileFreeList
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
	mov	2468,r13		! source line 2468
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3311 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3311 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2469,r13		! source line 2469
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3312 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3312 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3313 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3313 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0SE",r10
!   _temp_3314 = &fileManagerLock
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
	mov	2475,r13		! source line 2475
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
	.word	_Label_3315
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3316
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3317
	.word	12
	.word	4
	.word	_Label_3318
	.word	-12
	.word	4
	.word	_Label_3319
	.word	-16
	.word	4
	.word	_Label_3320
	.word	-20
	.word	4
	.word	_Label_3321
	.word	-24
	.word	4
	.word	_Label_3322
	.word	-28
	.word	4
	.word	_Label_3323
	.word	-32
	.word	4
	.word	_Label_3324
	.word	-36
	.word	4
	.word	_Label_3325
	.word	-40
	.word	4
	.word	_Label_3326
	.word	-44
	.word	4
	.word	_Label_3327
	.word	-48
	.word	4
	.word	_Label_3328
	.word	-52
	.word	4
	.word	_Label_3329
	.word	-56
	.word	4
	.word	0
_Label_3315:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3316:
	.ascii	"Pself\0"
	.align
_Label_3317:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3314\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3313\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3312\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3311\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3310\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3309\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3308\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3307\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3328:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3329:
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
_Label_4058:
	push	r0
	sub	r1,1,r1
	bne	_Label_4058
	mov	2480,r13		! source line 2480
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
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
	mov	2509,r13		! source line 2509
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3331		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3331
!	jmp	_Label_3330
_Label_3330:
! THEN...
	mov	2511,r13		! source line 2511
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3332 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3332  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2511,r13		! source line 2511
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3331:
! ASSIGNMENT STATEMENT...
	mov	2515,r13		! source line 2515
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
	mov	2516,r13		! source line 2516
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2517,r13		! source line 2517
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
	mov	2518,r13		! source line 2518
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2521,r13		! source line 2521
	mov	"\0\0WH",r10
_Label_3333:
!   if numFiles <= 0 then goto _Label_3335		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3335
!	jmp	_Label_3334
_Label_3334:
	mov	2521,r13		! source line 2521
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3336 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3336  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2522,r13		! source line 2522
	mov	"\0\0CA",r10
	call	_function_206_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3337 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3337  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2524,r13		! source line 2524
	mov	"\0\0CA",r10
	call	_function_206_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3338 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3338  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2526,r13		! source line 2526
	mov	"\0\0CA",r10
	call	_function_206_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3342 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3342 then goto _Label_3340		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3340
!	jmp	_Label_3341
_Label_3341:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3344
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
!   _temp_3343 = _temp_3344		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3343  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2529,r13		! source line 2529
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3339 else goto _Label_3340
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3340
	jmp	_Label_3339
_Label_3339:
! THEN...
	mov	2530,r13		! source line 2530
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0BR",r10
	jmp	_Label_3335
! END IF...
_Label_3340:
! ASSIGNMENT STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3333
_Label_3335:
! IF STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3346		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3346
!	jmp	_Label_3345
_Label_3345:
! THEN...
	mov	2538,r13		! source line 2538
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3346:
! SEND STATEMENT...
	mov	2541,r13		! source line 2541
	mov	"\0\0SE",r10
!   _temp_3347 = &fileManagerLock
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
	mov	2543,r13		! source line 2543
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3352 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3353 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3352  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3348:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3353 then goto _Label_3351		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3351
_Label_3349:
	mov	2543,r13		! source line 2543
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0AS",r10
!   _temp_3354 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3354 [i ] into _temp_3355
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
!   fcb = _temp_3355		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3359 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3358 = *_temp_3359  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3358 != start then goto _Label_3357		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3357
!	jmp	_Label_3356
_Label_3356:
! THEN...
	mov	2546,r13		! source line 2546
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3360 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3363 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3362 = *_temp_3363  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3361 = _temp_3362 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3360 = _temp_3361  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0SE",r10
!   _temp_3364 = &fileManagerLock
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
	mov	2548,r13		! source line 2548
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3357:
!   Increment the FOR-LOOP index variable and jump back
_Label_3350:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3348
! END FOR
_Label_3351:
! WHILE STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0WH",r10
_Label_3365:
	mov	2553,r13		! source line 2553
	mov	"\0\0SE",r10
!   _temp_3368 = &fcbFreeList
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
!   if result==true then goto _Label_3366 else goto _Label_3367
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3367
	jmp	_Label_3366
_Label_3366:
	mov	2553,r13		! source line 2553
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2554,r13		! source line 2554
	mov	"\0\0SE",r10
!   _temp_3369 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3370 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3369  sizeInBytes=4
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
	jmp	_Label_3365
_Label_3367:
! ASSIGNMENT STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0AS",r10
	mov	2556,r13		! source line 2556
	mov	"\0\0SE",r10
!   _temp_3371 = &fcbFreeList
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
	mov	2559,r13		! source line 2559
	mov	"\0\0SE",r10
!   _temp_3372 = &fileManagerLock
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
	mov	2562,r13		! source line 2562
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3373 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3373 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3374 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3374 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3375 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3375 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3380 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3379 = *_temp_3380  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3379 < 0 then goto _Label_3378		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3378
	jmp	_Label_3376
_Label_3378:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3381 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3381 ) then goto _Label_3377		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3377
!	jmp	_Label_3376
_Label_3376:
! THEN...
	mov	2566,r13		! source line 2566
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3382 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3382  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2566,r13		! source line 2566
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3377:
! RETURN STATEMENT...
	mov	2568,r13		! source line 2568
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
	.word	_Label_3383
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3384
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3385
	.word	12
	.word	4
	.word	_Label_3386
	.word	-12
	.word	4
	.word	_Label_3387
	.word	-16
	.word	4
	.word	_Label_3388
	.word	-20
	.word	4
	.word	_Label_3389
	.word	-24
	.word	4
	.word	_Label_3390
	.word	-28
	.word	4
	.word	_Label_3391
	.word	-32
	.word	4
	.word	_Label_3392
	.word	-36
	.word	4
	.word	_Label_3393
	.word	-40
	.word	4
	.word	_Label_3394
	.word	-44
	.word	4
	.word	_Label_3395
	.word	-48
	.word	4
	.word	_Label_3396
	.word	-52
	.word	4
	.word	_Label_3397
	.word	-56
	.word	4
	.word	_Label_3398
	.word	-60
	.word	4
	.word	_Label_3399
	.word	-64
	.word	4
	.word	_Label_3400
	.word	-68
	.word	4
	.word	_Label_3401
	.word	-72
	.word	4
	.word	_Label_3402
	.word	-76
	.word	4
	.word	_Label_3403
	.word	-80
	.word	4
	.word	_Label_3404
	.word	-84
	.word	4
	.word	_Label_3405
	.word	-88
	.word	4
	.word	_Label_3406
	.word	-92
	.word	4
	.word	_Label_3407
	.word	-96
	.word	4
	.word	_Label_3408
	.word	-100
	.word	4
	.word	_Label_3409
	.word	-104
	.word	4
	.word	_Label_3410
	.word	-108
	.word	4
	.word	_Label_3411
	.word	-112
	.word	4
	.word	_Label_3412
	.word	-116
	.word	4
	.word	_Label_3413
	.word	-120
	.word	4
	.word	_Label_3414
	.word	-124
	.word	4
	.word	_Label_3415
	.word	-128
	.word	4
	.word	_Label_3416
	.word	-132
	.word	4
	.word	_Label_3417
	.word	-136
	.word	4
	.word	_Label_3418
	.word	-140
	.word	4
	.word	_Label_3419
	.word	-144
	.word	4
	.word	_Label_3420
	.word	-148
	.word	4
	.word	_Label_3421
	.word	-152
	.word	4
	.word	_Label_3422
	.word	-156
	.word	4
	.word	_Label_3423
	.word	-160
	.word	4
	.word	0
_Label_3383:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3384:
	.ascii	"Pself\0"
	.align
_Label_3385:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3386:
	.byte	'?'
	.ascii	"_temp_3382\0"
	.align
_Label_3387:
	.byte	'?'
	.ascii	"_temp_3381\0"
	.align
_Label_3388:
	.byte	'?'
	.ascii	"_temp_3380\0"
	.align
_Label_3389:
	.byte	'?'
	.ascii	"_temp_3379\0"
	.align
_Label_3390:
	.byte	'?'
	.ascii	"_temp_3375\0"
	.align
_Label_3391:
	.byte	'?'
	.ascii	"_temp_3374\0"
	.align
_Label_3392:
	.byte	'?'
	.ascii	"_temp_3373\0"
	.align
_Label_3393:
	.byte	'?'
	.ascii	"_temp_3372\0"
	.align
_Label_3394:
	.byte	'?'
	.ascii	"_temp_3371\0"
	.align
_Label_3395:
	.byte	'?'
	.ascii	"_temp_3370\0"
	.align
_Label_3396:
	.byte	'?'
	.ascii	"_temp_3369\0"
	.align
_Label_3397:
	.byte	'?'
	.ascii	"_temp_3368\0"
	.align
_Label_3398:
	.byte	'?'
	.ascii	"_temp_3364\0"
	.align
_Label_3399:
	.byte	'?'
	.ascii	"_temp_3363\0"
	.align
_Label_3400:
	.byte	'?'
	.ascii	"_temp_3362\0"
	.align
_Label_3401:
	.byte	'?'
	.ascii	"_temp_3361\0"
	.align
_Label_3402:
	.byte	'?'
	.ascii	"_temp_3360\0"
	.align
_Label_3403:
	.byte	'?'
	.ascii	"_temp_3359\0"
	.align
_Label_3404:
	.byte	'?'
	.ascii	"_temp_3358\0"
	.align
_Label_3405:
	.byte	'?'
	.ascii	"_temp_3355\0"
	.align
_Label_3406:
	.byte	'?'
	.ascii	"_temp_3354\0"
	.align
_Label_3407:
	.byte	'?'
	.ascii	"_temp_3353\0"
	.align
_Label_3408:
	.byte	'?'
	.ascii	"_temp_3352\0"
	.align
_Label_3409:
	.byte	'?'
	.ascii	"_temp_3347\0"
	.align
_Label_3410:
	.byte	'?'
	.ascii	"_temp_3344\0"
	.align
_Label_3411:
	.byte	'?'
	.ascii	"_temp_3343\0"
	.align
_Label_3412:
	.byte	'?'
	.ascii	"_temp_3342\0"
	.align
_Label_3413:
	.byte	'?'
	.ascii	"_temp_3338\0"
	.align
_Label_3414:
	.byte	'?'
	.ascii	"_temp_3337\0"
	.align
_Label_3415:
	.byte	'?'
	.ascii	"_temp_3336\0"
	.align
_Label_3416:
	.byte	'?'
	.ascii	"_temp_3332\0"
	.align
_Label_3417:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3418:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3419:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3420:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3421:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3422:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3423:
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
_Label_4059:
	push	r0
	sub	r1,1,r1
	bne	_Label_4059
	mov	2581,r13		! source line 2581
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0IF",r10
!   _temp_3426 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3426 then goto _Label_3425		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3425
!	jmp	_Label_3424
_Label_3424:
! THEN...
	mov	2584,r13		! source line 2584
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3425:
! SEND STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0SE",r10
!   _temp_3427 = &fileManagerLock
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
	mov	2587,r13		! source line 2587
	mov	"\0\0SE",r10
!   _temp_3428 = &_P_Kernel_fileManager
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
	mov	2588,r13		! source line 2588
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3429 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3429  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3430 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3433 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3432 = *_temp_3433  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3431 = _temp_3432 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3430 = _temp_3431  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3437 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3436 = *_temp_3437  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3436 > 0 then goto _Label_3435		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3435
!	jmp	_Label_3434
_Label_3434:
! THEN...
	mov	2591,r13		! source line 2591
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0SE",r10
!   _temp_3438 = &openFileFreeList
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
	mov	2592,r13		! source line 2592
	mov	"\0\0SE",r10
!   _temp_3439 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3440 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3439  sizeInBytes=4
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
	mov	2593,r13		! source line 2593
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3441 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3444 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3443 = *_temp_3444  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3442 = _temp_3443 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3441 = _temp_3442  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3448 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3447 = *_temp_3448  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3447 > 0 then goto _Label_3446		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3446
!	jmp	_Label_3445
_Label_3445:
! THEN...
	mov	2595,r13		! source line 2595
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0SE",r10
!   _temp_3449 = &fcbFreeList
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
	mov	2596,r13		! source line 2596
	mov	"\0\0SE",r10
!   _temp_3450 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3451 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3450  sizeInBytes=4
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
_Label_3446:
! END IF...
_Label_3435:
! SEND STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0SE",r10
!   _temp_3452 = &fileManagerLock
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
	mov	2599,r13		! source line 2599
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
	.word	_Label_3453
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3454
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3455
	.word	12
	.word	4
	.word	_Label_3456
	.word	-12
	.word	4
	.word	_Label_3457
	.word	-16
	.word	4
	.word	_Label_3458
	.word	-20
	.word	4
	.word	_Label_3459
	.word	-24
	.word	4
	.word	_Label_3460
	.word	-28
	.word	4
	.word	_Label_3461
	.word	-32
	.word	4
	.word	_Label_3462
	.word	-36
	.word	4
	.word	_Label_3463
	.word	-40
	.word	4
	.word	_Label_3464
	.word	-44
	.word	4
	.word	_Label_3465
	.word	-48
	.word	4
	.word	_Label_3466
	.word	-52
	.word	4
	.word	_Label_3467
	.word	-56
	.word	4
	.word	_Label_3468
	.word	-60
	.word	4
	.word	_Label_3469
	.word	-64
	.word	4
	.word	_Label_3470
	.word	-68
	.word	4
	.word	_Label_3471
	.word	-72
	.word	4
	.word	_Label_3472
	.word	-76
	.word	4
	.word	_Label_3473
	.word	-80
	.word	4
	.word	_Label_3474
	.word	-84
	.word	4
	.word	_Label_3475
	.word	-88
	.word	4
	.word	_Label_3476
	.word	-92
	.word	4
	.word	_Label_3477
	.word	-96
	.word	4
	.word	_Label_3478
	.word	-100
	.word	4
	.word	_Label_3479
	.word	-104
	.word	4
	.word	0
_Label_3453:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3454:
	.ascii	"Pself\0"
	.align
_Label_3455:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3456:
	.byte	'?'
	.ascii	"_temp_3452\0"
	.align
_Label_3457:
	.byte	'?'
	.ascii	"_temp_3451\0"
	.align
_Label_3458:
	.byte	'?'
	.ascii	"_temp_3450\0"
	.align
_Label_3459:
	.byte	'?'
	.ascii	"_temp_3449\0"
	.align
_Label_3460:
	.byte	'?'
	.ascii	"_temp_3448\0"
	.align
_Label_3461:
	.byte	'?'
	.ascii	"_temp_3447\0"
	.align
_Label_3462:
	.byte	'?'
	.ascii	"_temp_3444\0"
	.align
_Label_3463:
	.byte	'?'
	.ascii	"_temp_3443\0"
	.align
_Label_3464:
	.byte	'?'
	.ascii	"_temp_3442\0"
	.align
_Label_3465:
	.byte	'?'
	.ascii	"_temp_3441\0"
	.align
_Label_3466:
	.byte	'?'
	.ascii	"_temp_3440\0"
	.align
_Label_3467:
	.byte	'?'
	.ascii	"_temp_3439\0"
	.align
_Label_3468:
	.byte	'?'
	.ascii	"_temp_3438\0"
	.align
_Label_3469:
	.byte	'?'
	.ascii	"_temp_3437\0"
	.align
_Label_3470:
	.byte	'?'
	.ascii	"_temp_3436\0"
	.align
_Label_3471:
	.byte	'?'
	.ascii	"_temp_3433\0"
	.align
_Label_3472:
	.byte	'?'
	.ascii	"_temp_3432\0"
	.align
_Label_3473:
	.byte	'?'
	.ascii	"_temp_3431\0"
	.align
_Label_3474:
	.byte	'?'
	.ascii	"_temp_3430\0"
	.align
_Label_3475:
	.byte	'?'
	.ascii	"_temp_3429\0"
	.align
_Label_3476:
	.byte	'?'
	.ascii	"_temp_3428\0"
	.align
_Label_3477:
	.byte	'?'
	.ascii	"_temp_3427\0"
	.align
_Label_3478:
	.byte	'?'
	.ascii	"_temp_3426\0"
	.align
_Label_3479:
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
_Label_4060:
	push	r0
	sub	r1,1,r1
	bne	_Label_4060
	mov	2604,r13		! source line 2604
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3483 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3482 = *_temp_3483  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3482) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3484 = _temp_3482 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3484 ) then goto _Label_3481		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3481
!	jmp	_Label_3480
_Label_3480:
! THEN...
	mov	2610,r13		! source line 2610
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3489 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3488 = *_temp_3489  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3488) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3490 = _temp_3488 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3487 = *_temp_3490  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3487 >= 0 then goto _Label_3486		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3486
!	jmp	_Label_3485
_Label_3485:
! THEN...
	mov	2611,r13		! source line 2611
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3491 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3491  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2611,r13		! source line 2611
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3486:
! ASSIGNMENT STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3493 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3492 = *_temp_3493  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3492) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3494 = _temp_3492 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3494 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3498 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3497 = *_temp_3498  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3497) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3499 = _temp_3497 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3496 = *_temp_3499  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3502 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3501 = *_temp_3502  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3501) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3503 = _temp_3501 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3500 = *_temp_3503  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3495 = _temp_3496 + _temp_3500		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3506 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3505 = *_temp_3506  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3505) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3507 = _temp_3505 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3504 = *_temp_3507  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3508 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3495  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3504  sizeInBytes=4
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
_Label_3481:
! RETURN STATEMENT...
	mov	2609,r13		! source line 2609
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
	.word	_Label_3509
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3510
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3511
	.word	12
	.word	4
	.word	_Label_3512
	.word	-12
	.word	4
	.word	_Label_3513
	.word	-16
	.word	4
	.word	_Label_3514
	.word	-20
	.word	4
	.word	_Label_3515
	.word	-24
	.word	4
	.word	_Label_3516
	.word	-28
	.word	4
	.word	_Label_3517
	.word	-32
	.word	4
	.word	_Label_3518
	.word	-36
	.word	4
	.word	_Label_3519
	.word	-40
	.word	4
	.word	_Label_3520
	.word	-44
	.word	4
	.word	_Label_3521
	.word	-48
	.word	4
	.word	_Label_3522
	.word	-52
	.word	4
	.word	_Label_3523
	.word	-56
	.word	4
	.word	_Label_3524
	.word	-60
	.word	4
	.word	_Label_3525
	.word	-64
	.word	4
	.word	_Label_3526
	.word	-68
	.word	4
	.word	_Label_3527
	.word	-72
	.word	4
	.word	_Label_3528
	.word	-76
	.word	4
	.word	_Label_3529
	.word	-80
	.word	4
	.word	_Label_3530
	.word	-84
	.word	4
	.word	_Label_3531
	.word	-88
	.word	4
	.word	_Label_3532
	.word	-92
	.word	4
	.word	_Label_3533
	.word	-96
	.word	4
	.word	_Label_3534
	.word	-100
	.word	4
	.word	_Label_3535
	.word	-104
	.word	4
	.word	_Label_3536
	.word	-108
	.word	4
	.word	0
_Label_3509:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3510:
	.ascii	"Pself\0"
	.align
_Label_3511:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3512:
	.byte	'?'
	.ascii	"_temp_3508\0"
	.align
_Label_3513:
	.byte	'?'
	.ascii	"_temp_3507\0"
	.align
_Label_3514:
	.byte	'?'
	.ascii	"_temp_3506\0"
	.align
_Label_3515:
	.byte	'?'
	.ascii	"_temp_3505\0"
	.align
_Label_3516:
	.byte	'?'
	.ascii	"_temp_3504\0"
	.align
_Label_3517:
	.byte	'?'
	.ascii	"_temp_3503\0"
	.align
_Label_3518:
	.byte	'?'
	.ascii	"_temp_3502\0"
	.align
_Label_3519:
	.byte	'?'
	.ascii	"_temp_3501\0"
	.align
_Label_3520:
	.byte	'?'
	.ascii	"_temp_3500\0"
	.align
_Label_3521:
	.byte	'?'
	.ascii	"_temp_3499\0"
	.align
_Label_3522:
	.byte	'?'
	.ascii	"_temp_3498\0"
	.align
_Label_3523:
	.byte	'?'
	.ascii	"_temp_3497\0"
	.align
_Label_3524:
	.byte	'?'
	.ascii	"_temp_3496\0"
	.align
_Label_3525:
	.byte	'?'
	.ascii	"_temp_3495\0"
	.align
_Label_3526:
	.byte	'?'
	.ascii	"_temp_3494\0"
	.align
_Label_3527:
	.byte	'?'
	.ascii	"_temp_3493\0"
	.align
_Label_3528:
	.byte	'?'
	.ascii	"_temp_3492\0"
	.align
_Label_3529:
	.byte	'?'
	.ascii	"_temp_3491\0"
	.align
_Label_3530:
	.byte	'?'
	.ascii	"_temp_3490\0"
	.align
_Label_3531:
	.byte	'?'
	.ascii	"_temp_3489\0"
	.align
_Label_3532:
	.byte	'?'
	.ascii	"_temp_3488\0"
	.align
_Label_3533:
	.byte	'?'
	.ascii	"_temp_3487\0"
	.align
_Label_3534:
	.byte	'?'
	.ascii	"_temp_3484\0"
	.align
_Label_3535:
	.byte	'?'
	.ascii	"_temp_3483\0"
	.align
_Label_3536:
	.byte	'?'
	.ascii	"_temp_3482\0"
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
_Label_4061:
	push	r0
	sub	r1,1,r1
	bne	_Label_4061
	mov	2623,r13		! source line 2623
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0SE",r10
!   _temp_3537 = &fileManagerLock
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
	mov	2639,r13		! source line 2639
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3543		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3543
!   _temp_3542 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3544
_Label_3543:
!   _temp_3542 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3544:
!   if _temp_3542 then goto _Label_3541 else goto _Label_3538
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3538
	jmp	_Label_3541
_Label_3541:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3547 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3546 = *_temp_3547  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3546 == 0 then goto _Label_3548		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3548
!   _temp_3545 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3549
_Label_3548:
!   _temp_3545 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3549:
!   if _temp_3545 then goto _Label_3540 else goto _Label_3538
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3538
	jmp	_Label_3540
_Label_3540:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3552 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3551 = *_temp_3552  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3551) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3553 = _temp_3551 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3550 = *_temp_3553  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3550 >= 0 then goto _Label_3539		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3539
!	jmp	_Label_3538
_Label_3538:
! THEN...
	mov	2640,r13		! source line 2640
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3554 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3554  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2640,r13		! source line 2640
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3539:
! ASSIGNMENT STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3555 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3555  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0WH",r10
_Label_3556:
!   if numBytes <= 0 then goto _Label_3558		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3558
!	jmp	_Label_3557
_Label_3557:
	mov	2643,r13		! source line 2643
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2652,r13		! source line 2652
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
	mov	2653,r13		! source line 2653
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
	mov	2657,r13		! source line 2657
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3562 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3561 = *_temp_3562  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3561 == sector then goto _Label_3560		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3560
!	jmp	_Label_3559
_Label_3559:
! THEN...
	mov	2658,r13		! source line 2658
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3563) then goto _runtimeErrorNullPointer
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
	mov	2660,r13		! source line 2660
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3566 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3565 = *_temp_3566  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3564 = sector + _temp_3565		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3568 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3567 = *_temp_3568  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3569 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3564  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3567  sizeInBytes=4
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
	mov	2663,r13		! source line 2663
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3570 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3570 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2664,r13		! source line 2664
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3571 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3571 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3560:
! ASSIGNMENT STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3573 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3572 = *_temp_3573  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3572 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0AS",r10
!   _temp_3574 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3574  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2667,r13		! source line 2667
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
	mov	2671,r13		! source line 2671
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2674,r13		! source line 2674
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3556
_Label_3558:
! SEND STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0SE",r10
!   _temp_3575 = &fileManagerLock
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
	mov	2682,r13		! source line 2682
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
	.word	_Label_3576
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3577
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3578
	.word	12
	.word	4
	.word	_Label_3579
	.word	16
	.word	4
	.word	_Label_3580
	.word	20
	.word	4
	.word	_Label_3581
	.word	24
	.word	4
	.word	_Label_3582
	.word	-16
	.word	4
	.word	_Label_3583
	.word	-20
	.word	4
	.word	_Label_3584
	.word	-24
	.word	4
	.word	_Label_3585
	.word	-28
	.word	4
	.word	_Label_3586
	.word	-32
	.word	4
	.word	_Label_3587
	.word	-36
	.word	4
	.word	_Label_3588
	.word	-40
	.word	4
	.word	_Label_3589
	.word	-44
	.word	4
	.word	_Label_3590
	.word	-48
	.word	4
	.word	_Label_3591
	.word	-52
	.word	4
	.word	_Label_3592
	.word	-56
	.word	4
	.word	_Label_3593
	.word	-60
	.word	4
	.word	_Label_3594
	.word	-64
	.word	4
	.word	_Label_3595
	.word	-68
	.word	4
	.word	_Label_3596
	.word	-72
	.word	4
	.word	_Label_3597
	.word	-76
	.word	4
	.word	_Label_3598
	.word	-80
	.word	4
	.word	_Label_3599
	.word	-84
	.word	4
	.word	_Label_3600
	.word	-88
	.word	4
	.word	_Label_3601
	.word	-92
	.word	4
	.word	_Label_3602
	.word	-96
	.word	4
	.word	_Label_3603
	.word	-100
	.word	4
	.word	_Label_3604
	.word	-104
	.word	4
	.word	_Label_3605
	.word	-9
	.word	1
	.word	_Label_3606
	.word	-10
	.word	1
	.word	_Label_3607
	.word	-108
	.word	4
	.word	_Label_3608
	.word	-112
	.word	4
	.word	_Label_3609
	.word	-116
	.word	4
	.word	_Label_3610
	.word	-120
	.word	4
	.word	_Label_3611
	.word	-124
	.word	4
	.word	_Label_3612
	.word	-128
	.word	4
	.word	0
_Label_3576:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3577:
	.ascii	"Pself\0"
	.align
_Label_3578:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3579:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3580:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3581:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3582:
	.byte	'?'
	.ascii	"_temp_3575\0"
	.align
_Label_3583:
	.byte	'?'
	.ascii	"_temp_3574\0"
	.align
_Label_3584:
	.byte	'?'
	.ascii	"_temp_3573\0"
	.align
_Label_3585:
	.byte	'?'
	.ascii	"_temp_3572\0"
	.align
_Label_3586:
	.byte	'?'
	.ascii	"_temp_3571\0"
	.align
_Label_3587:
	.byte	'?'
	.ascii	"_temp_3570\0"
	.align
_Label_3588:
	.byte	'?'
	.ascii	"_temp_3569\0"
	.align
_Label_3589:
	.byte	'?'
	.ascii	"_temp_3568\0"
	.align
_Label_3590:
	.byte	'?'
	.ascii	"_temp_3567\0"
	.align
_Label_3591:
	.byte	'?'
	.ascii	"_temp_3566\0"
	.align
_Label_3592:
	.byte	'?'
	.ascii	"_temp_3565\0"
	.align
_Label_3593:
	.byte	'?'
	.ascii	"_temp_3564\0"
	.align
_Label_3594:
	.byte	'?'
	.ascii	"_temp_3563\0"
	.align
_Label_3595:
	.byte	'?'
	.ascii	"_temp_3562\0"
	.align
_Label_3596:
	.byte	'?'
	.ascii	"_temp_3561\0"
	.align
_Label_3597:
	.byte	'?'
	.ascii	"_temp_3555\0"
	.align
_Label_3598:
	.byte	'?'
	.ascii	"_temp_3554\0"
	.align
_Label_3599:
	.byte	'?'
	.ascii	"_temp_3553\0"
	.align
_Label_3600:
	.byte	'?'
	.ascii	"_temp_3552\0"
	.align
_Label_3601:
	.byte	'?'
	.ascii	"_temp_3551\0"
	.align
_Label_3602:
	.byte	'?'
	.ascii	"_temp_3550\0"
	.align
_Label_3603:
	.byte	'?'
	.ascii	"_temp_3547\0"
	.align
_Label_3604:
	.byte	'?'
	.ascii	"_temp_3546\0"
	.align
_Label_3605:
	.byte	'C'
	.ascii	"_temp_3545\0"
	.align
_Label_3606:
	.byte	'C'
	.ascii	"_temp_3542\0"
	.align
_Label_3607:
	.byte	'?'
	.ascii	"_temp_3537\0"
	.align
_Label_3608:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3609:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3610:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3611:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3612:
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
_Label_4062:
	push	r0
	sub	r1,1,r1
	bne	_Label_4062
	mov	2687,r13		! source line 2687
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0SE",r10
!   _temp_3613 = &fileManagerLock
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
	mov	2704,r13		! source line 2704
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3619		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3619
!   _temp_3618 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3620
_Label_3619:
!   _temp_3618 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3620:
!   if _temp_3618 then goto _Label_3617 else goto _Label_3614
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3614
	jmp	_Label_3617
_Label_3617:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3623 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3622 = *_temp_3623  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3622 == 0 then goto _Label_3624		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3624
!   _temp_3621 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3625
_Label_3624:
!   _temp_3621 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3625:
!   if _temp_3621 then goto _Label_3616 else goto _Label_3614
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3614
	jmp	_Label_3616
_Label_3616:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3628 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3627 = *_temp_3628  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3627) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3629 = _temp_3627 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3626 = *_temp_3629  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3626 >= 0 then goto _Label_3615		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3615
!	jmp	_Label_3614
_Label_3614:
! THEN...
	mov	2705,r13		! source line 2705
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3630 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3630  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2705,r13		! source line 2705
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3615:
! ASSIGNMENT STATEMENT...
	mov	2707,r13		! source line 2707
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3631 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3631  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0WH",r10
_Label_3632:
!   if numBytes <= 0 then goto _Label_3634		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3634
!	jmp	_Label_3633
_Label_3633:
	mov	2708,r13		! source line 2708
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2717,r13		! source line 2717
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
	mov	2718,r13		! source line 2718
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
	mov	2722,r13		! source line 2722
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3638 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3637 = *_temp_3638  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3637 == sector then goto _Label_3636		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3636
!	jmp	_Label_3635
_Label_3635:
! THEN...
	mov	2724,r13		! source line 2724
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2724,r13		! source line 2724
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3639) then goto _runtimeErrorNullPointer
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
_Label_3636:
! ASSIGNMENT STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3641 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3640 = *_temp_3641  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3640 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0AS",r10
!   _temp_3642 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3642  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2727,r13		! source line 2727
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3646 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3645 = *_temp_3646  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3645 != sector then goto _Label_3644		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3644
!	jmp	_Label_3643
_Label_3643:
	jmp	_Label_3647
_Label_3644:
! ELSE...
	mov	2730,r13		! source line 2730
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3650
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3650
	jmp	_Label_3649
_Label_3650:
!   if bytesToMove != 8192 then goto _Label_3649		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3649
!	jmp	_Label_3648
_Label_3648:
	jmp	_Label_3651
_Label_3649:
! ELSE...
	mov	2734,r13		! source line 2734
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2734,r13		! source line 2734
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3654 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3653 = *_temp_3654  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3652 = sector + _temp_3653		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3656 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3655 = *_temp_3656  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3657 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3652  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3655  sizeInBytes=4
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
_Label_3651:
! END IF...
_Label_3647:
! ASSIGNMENT STATEMENT...
	mov	2738,r13		! source line 2738
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3658 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3658 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2739,r13		! source line 2739
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3659 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3659 = 1  (sizeInBytes=1)
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
	mov	2743,r13		! source line 2743
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2745,r13		! source line 2745
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2746,r13		! source line 2746
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3632
_Label_3634:
! SEND STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0SE",r10
!   _temp_3660 = &fileManagerLock
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
	mov	2755,r13		! source line 2755
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
	.word	_Label_3661
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3662
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3663
	.word	12
	.word	4
	.word	_Label_3664
	.word	16
	.word	4
	.word	_Label_3665
	.word	20
	.word	4
	.word	_Label_3666
	.word	24
	.word	4
	.word	_Label_3667
	.word	-16
	.word	4
	.word	_Label_3668
	.word	-20
	.word	4
	.word	_Label_3669
	.word	-24
	.word	4
	.word	_Label_3670
	.word	-28
	.word	4
	.word	_Label_3671
	.word	-32
	.word	4
	.word	_Label_3672
	.word	-36
	.word	4
	.word	_Label_3673
	.word	-40
	.word	4
	.word	_Label_3674
	.word	-44
	.word	4
	.word	_Label_3675
	.word	-48
	.word	4
	.word	_Label_3676
	.word	-52
	.word	4
	.word	_Label_3677
	.word	-56
	.word	4
	.word	_Label_3678
	.word	-60
	.word	4
	.word	_Label_3679
	.word	-64
	.word	4
	.word	_Label_3680
	.word	-68
	.word	4
	.word	_Label_3681
	.word	-72
	.word	4
	.word	_Label_3682
	.word	-76
	.word	4
	.word	_Label_3683
	.word	-80
	.word	4
	.word	_Label_3684
	.word	-84
	.word	4
	.word	_Label_3685
	.word	-88
	.word	4
	.word	_Label_3686
	.word	-92
	.word	4
	.word	_Label_3687
	.word	-96
	.word	4
	.word	_Label_3688
	.word	-100
	.word	4
	.word	_Label_3689
	.word	-104
	.word	4
	.word	_Label_3690
	.word	-108
	.word	4
	.word	_Label_3691
	.word	-112
	.word	4
	.word	_Label_3692
	.word	-9
	.word	1
	.word	_Label_3693
	.word	-10
	.word	1
	.word	_Label_3694
	.word	-116
	.word	4
	.word	_Label_3695
	.word	-120
	.word	4
	.word	_Label_3696
	.word	-124
	.word	4
	.word	_Label_3697
	.word	-128
	.word	4
	.word	_Label_3698
	.word	-132
	.word	4
	.word	_Label_3699
	.word	-136
	.word	4
	.word	0
_Label_3661:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3662:
	.ascii	"Pself\0"
	.align
_Label_3663:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3664:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3665:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3666:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3667:
	.byte	'?'
	.ascii	"_temp_3660\0"
	.align
_Label_3668:
	.byte	'?'
	.ascii	"_temp_3659\0"
	.align
_Label_3669:
	.byte	'?'
	.ascii	"_temp_3658\0"
	.align
_Label_3670:
	.byte	'?'
	.ascii	"_temp_3657\0"
	.align
_Label_3671:
	.byte	'?'
	.ascii	"_temp_3656\0"
	.align
_Label_3672:
	.byte	'?'
	.ascii	"_temp_3655\0"
	.align
_Label_3673:
	.byte	'?'
	.ascii	"_temp_3654\0"
	.align
_Label_3674:
	.byte	'?'
	.ascii	"_temp_3653\0"
	.align
_Label_3675:
	.byte	'?'
	.ascii	"_temp_3652\0"
	.align
_Label_3676:
	.byte	'?'
	.ascii	"_temp_3646\0"
	.align
_Label_3677:
	.byte	'?'
	.ascii	"_temp_3645\0"
	.align
_Label_3678:
	.byte	'?'
	.ascii	"_temp_3642\0"
	.align
_Label_3679:
	.byte	'?'
	.ascii	"_temp_3641\0"
	.align
_Label_3680:
	.byte	'?'
	.ascii	"_temp_3640\0"
	.align
_Label_3681:
	.byte	'?'
	.ascii	"_temp_3639\0"
	.align
_Label_3682:
	.byte	'?'
	.ascii	"_temp_3638\0"
	.align
_Label_3683:
	.byte	'?'
	.ascii	"_temp_3637\0"
	.align
_Label_3684:
	.byte	'?'
	.ascii	"_temp_3631\0"
	.align
_Label_3685:
	.byte	'?'
	.ascii	"_temp_3630\0"
	.align
_Label_3686:
	.byte	'?'
	.ascii	"_temp_3629\0"
	.align
_Label_3687:
	.byte	'?'
	.ascii	"_temp_3628\0"
	.align
_Label_3688:
	.byte	'?'
	.ascii	"_temp_3627\0"
	.align
_Label_3689:
	.byte	'?'
	.ascii	"_temp_3626\0"
	.align
_Label_3690:
	.byte	'?'
	.ascii	"_temp_3623\0"
	.align
_Label_3691:
	.byte	'?'
	.ascii	"_temp_3622\0"
	.align
_Label_3692:
	.byte	'C'
	.ascii	"_temp_3621\0"
	.align
_Label_3693:
	.byte	'C'
	.ascii	"_temp_3618\0"
	.align
_Label_3694:
	.byte	'?'
	.ascii	"_temp_3613\0"
	.align
_Label_3695:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3696:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3697:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3698:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3699:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3700
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3700:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3701
	.word	_sourceFileName
	.word	356		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3701:
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
_Label_4063:
	push	r0
	sub	r1,1,r1
	bne	_Label_4063
	mov	2791,r13		! source line 2791
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0AS",r10
	mov	2793,r13		! source line 2793
	mov	"\0\0SE",r10
!   _temp_3702 = &_P_Kernel_frameManager
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
	mov	2794,r13		! source line 2794
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2795,r13		! source line 2795
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2796,r13		! source line 2796
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
	.word	_Label_3703
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3704
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3705
	.word	-12
	.word	4
	.word	0
_Label_3703:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3704:
	.ascii	"Pself\0"
	.align
_Label_3705:
	.byte	'?'
	.ascii	"_temp_3702\0"
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
_Label_4064:
	push	r0
	sub	r1,1,r1
	bne	_Label_4064
	mov	2801,r13		! source line 2801
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3706 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3706  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2802,r13		! source line 2802
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2803,r13		! source line 2803
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3707 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3707  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2804,r13		! source line 2804
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2805,r13		! source line 2805
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3708 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3708  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2806,r13		! source line 2806
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2807,r13		! source line 2807
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3709 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3709  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2808,r13		! source line 2808
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2809,r13		! source line 2809
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3710 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3710  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2810,r13		! source line 2810
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2811,r13		! source line 2811
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3711 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3711  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2812,r13		! source line 2812
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2813,r13		! source line 2813
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2814,r13		! source line 2814
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2814,r13		! source line 2814
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
	.word	_Label_3712
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3713
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3714
	.word	-12
	.word	4
	.word	_Label_3715
	.word	-16
	.word	4
	.word	_Label_3716
	.word	-20
	.word	4
	.word	_Label_3717
	.word	-24
	.word	4
	.word	_Label_3718
	.word	-28
	.word	4
	.word	_Label_3719
	.word	-32
	.word	4
	.word	0
_Label_3712:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3713:
	.ascii	"Pself\0"
	.align
_Label_3714:
	.byte	'?'
	.ascii	"_temp_3711\0"
	.align
_Label_3715:
	.byte	'?'
	.ascii	"_temp_3710\0"
	.align
_Label_3716:
	.byte	'?'
	.ascii	"_temp_3709\0"
	.align
_Label_3717:
	.byte	'?'
	.ascii	"_temp_3708\0"
	.align
_Label_3718:
	.byte	'?'
	.ascii	"_temp_3707\0"
	.align
_Label_3719:
	.byte	'?'
	.ascii	"_temp_3706\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3720
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3720:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3721
	.word	_sourceFileName
	.word	373		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3721:
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
_Label_4065:
	push	r0
	sub	r1,1,r1
	bne	_Label_4065
	mov	2825,r13		! source line 2825
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3722 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3722  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2826,r13		! source line 2826
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2827,r13		! source line 2827
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3723 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3723  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2828,r13		! source line 2828
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3725		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3725
!	jmp	_Label_3724
_Label_3724:
! THEN...
	mov	2830,r13		! source line 2830
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2830,r13		! source line 2830
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
	jmp	_Label_3726
_Label_3725:
! ELSE...
	mov	2832,r13		! source line 2832
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3727 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3727  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2832,r13		! source line 2832
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3726:
! RETURN STATEMENT...
	mov	2829,r13		! source line 2829
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
	.word	_Label_3728
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3729
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3730
	.word	-12
	.word	4
	.word	_Label_3731
	.word	-16
	.word	4
	.word	_Label_3732
	.word	-20
	.word	4
	.word	0
_Label_3728:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3729:
	.ascii	"Pself\0"
	.align
_Label_3730:
	.byte	'?'
	.ascii	"_temp_3727\0"
	.align
_Label_3731:
	.byte	'?'
	.ascii	"_temp_3723\0"
	.align
_Label_3732:
	.byte	'?'
	.ascii	"_temp_3722\0"
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
_Label_4066:
	push	r0
	sub	r1,1,r1
	bne	_Label_4066
	mov	2838,r13		! source line 2838
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2848,r13		! source line 2848
	mov	"\0\0SE",r10
!   _temp_3733 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3734 = _temp_3733 + 4
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
	mov	2849,r13		! source line 2849
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2850,r13		! source line 2850
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
	mov	2851,r13		! source line 2851
	mov	"\0\0SE",r10
!   _temp_3735 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3736 = _temp_3735 + 4
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
	mov	2852,r13		! source line 2852
	mov	"\0\0RE",r10
	mov	2852,r13		! source line 2852
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3739 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3738  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3737  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3737  (sizeInBytes=1)
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
	.word	_Label_3740
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3741
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3742
	.word	12
	.word	4
	.word	_Label_3743
	.word	16
	.word	4
	.word	_Label_3744
	.word	-16
	.word	4
	.word	_Label_3745
	.word	-20
	.word	4
	.word	_Label_3746
	.word	-9
	.word	1
	.word	_Label_3747
	.word	-24
	.word	4
	.word	_Label_3748
	.word	-28
	.word	4
	.word	_Label_3749
	.word	-32
	.word	4
	.word	_Label_3750
	.word	-36
	.word	4
	.word	_Label_3751
	.word	-40
	.word	4
	.word	0
_Label_3740:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3741:
	.ascii	"Pself\0"
	.align
_Label_3742:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3743:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3744:
	.byte	'?'
	.ascii	"_temp_3739\0"
	.align
_Label_3745:
	.byte	'?'
	.ascii	"_temp_3738\0"
	.align
_Label_3746:
	.byte	'C'
	.ascii	"_temp_3737\0"
	.align
_Label_3747:
	.byte	'?'
	.ascii	"_temp_3736\0"
	.align
_Label_3748:
	.byte	'?'
	.ascii	"_temp_3735\0"
	.align
_Label_3749:
	.byte	'?'
	.ascii	"_temp_3734\0"
	.align
_Label_3750:
	.byte	'?'
	.ascii	"_temp_3733\0"
	.align
_Label_3751:
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
_Label_4067:
	push	r0
	sub	r1,1,r1
	bne	_Label_4067
	mov	2857,r13		! source line 2857
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0IF",r10
	mov	2862,r13		! source line 2862
	mov	"\0\0SE",r10
!   _temp_3755 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3756) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3755  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3754  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3754 then goto _Label_3753 else goto _Label_3752
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3752
	jmp	_Label_3753
_Label_3752:
! THEN...
	mov	2863,r13		! source line 2863
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3757 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3757  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2863,r13		! source line 2863
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3753:
! RETURN STATEMENT...
	mov	2865,r13		! source line 2865
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
	.word	_Label_3758
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3759
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3760
	.word	-16
	.word	4
	.word	_Label_3761
	.word	-20
	.word	4
	.word	_Label_3762
	.word	-24
	.word	4
	.word	_Label_3763
	.word	-9
	.word	1
	.word	_Label_3764
	.word	-28
	.word	4
	.word	0
_Label_3758:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3759:
	.ascii	"Pself\0"
	.align
_Label_3760:
	.byte	'?'
	.ascii	"_temp_3757\0"
	.align
_Label_3761:
	.byte	'?'
	.ascii	"_temp_3756\0"
	.align
_Label_3762:
	.byte	'?'
	.ascii	"_temp_3755\0"
	.align
_Label_3763:
	.byte	'C'
	.ascii	"_temp_3754\0"
	.align
_Label_3764:
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
_Label_4068:
	push	r0
	sub	r1,1,r1
	bne	_Label_4068
	mov	2870,r13		! source line 2870
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2896,r13		! source line 2896
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3768 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3767 = *_temp_3768  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3767) then goto _Label_3766
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3766
!	jmp	_Label_3765
_Label_3765:
! THEN...
	mov	2897,r13		! source line 2897
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3769 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3769  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2897,r13		! source line 2897
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3766:
! IF STATEMENT...
	mov	2901,r13		! source line 2901
	mov	"\0\0IF",r10
	mov	2901,r13		! source line 2901
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3773) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3772  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3772 == 1112300152 then goto _Label_3771		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3771
!	jmp	_Label_3770
_Label_3770:
! THEN...
	mov	2902,r13		! source line 2902
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3774 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3774  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2902,r13		! source line 2902
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2903,r13		! source line 2903
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3771:
! ASSIGNMENT STATEMENT...
	mov	2907,r13		! source line 2907
	mov	"\0\0AS",r10
	mov	2907,r13		! source line 2907
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3775) then goto _runtimeErrorNullPointer
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
	mov	2908,r13		! source line 2908
	mov	"\0\0AS",r10
	mov	2908,r13		! source line 2908
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3776) then goto _runtimeErrorNullPointer
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
	mov	2909,r13		! source line 2909
	mov	"\0\0AS",r10
	mov	2909,r13		! source line 2909
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3777) then goto _runtimeErrorNullPointer
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
	mov	2910,r13		! source line 2910
	mov	"\0\0AS",r10
	mov	2910,r13		! source line 2910
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3778) then goto _runtimeErrorNullPointer
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
	mov	2911,r13		! source line 2911
	mov	"\0\0AS",r10
	mov	2911,r13		! source line 2911
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3779) then goto _runtimeErrorNullPointer
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
	mov	2912,r13		! source line 2912
	mov	"\0\0AS",r10
	mov	2912,r13		! source line 2912
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3780) then goto _runtimeErrorNullPointer
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
	mov	2915,r13		! source line 2915
	mov	"\0\0IF",r10
!   _temp_3783 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3783) then goto _Label_3782
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3782
!	jmp	_Label_3781
_Label_3781:
! THEN...
	mov	2916,r13		! source line 2916
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3784 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3784  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2916,r13		! source line 2916
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2917,r13		! source line 2917
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3782:
! ASSIGNMENT STATEMENT...
	mov	2919,r13		! source line 2919
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
	mov	2923,r13		! source line 2923
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3786
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3786
!	jmp	_Label_3785
_Label_3785:
! THEN...
	mov	2924,r13		! source line 2924
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3787 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3787  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2924,r13		! source line 2924
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2925,r13		! source line 2925
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3786:
! IF STATEMENT...
	mov	2929,r13		! source line 2929
	mov	"\0\0IF",r10
!   _temp_3790 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3790) then goto _Label_3789
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3789
!	jmp	_Label_3788
_Label_3788:
! THEN...
	mov	2930,r13		! source line 2930
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3791 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3791  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2930,r13		! source line 2930
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2931,r13		! source line 2931
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3789:
! IF STATEMENT...
	mov	2933,r13		! source line 2933
	mov	"\0\0IF",r10
!   _temp_3794 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3794 then goto _Label_3793		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3793
!	jmp	_Label_3792
_Label_3792:
! THEN...
	mov	2934,r13		! source line 2934
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3795 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3795  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2934,r13		! source line 2934
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2935,r13		! source line 2935
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3793:
! ASSIGNMENT STATEMENT...
	mov	2937,r13		! source line 2937
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
	mov	2940,r13		! source line 2940
	mov	"\0\0IF",r10
!   _temp_3798 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3798) then goto _Label_3797
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3797
!	jmp	_Label_3796
_Label_3796:
! THEN...
	mov	2941,r13		! source line 2941
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3799 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3799  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2941,r13		! source line 2941
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2942,r13		! source line 2942
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3797:
! IF STATEMENT...
	mov	2944,r13		! source line 2944
	mov	"\0\0IF",r10
!   _temp_3802 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3802 then goto _Label_3801		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3801
!	jmp	_Label_3800
_Label_3800:
! THEN...
	mov	2945,r13		! source line 2945
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3803 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3803  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2945,r13		! source line 2945
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3801:
! ASSIGNMENT STATEMENT...
	mov	2948,r13		! source line 2948
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
	mov	2951,r13		! source line 2951
	mov	"\0\0AS",r10
!   _temp_3806 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3805 = _temp_3806 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3804 = _temp_3805 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3804 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3808		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3808
!	jmp	_Label_3807
_Label_3807:
! THEN...
	mov	2967,r13		! source line 2967
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3809 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3809  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2967,r13		! source line 2967
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3810 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3810  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2968,r13		! source line 2968
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3811 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3811  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2969,r13		! source line 2969
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2970,r13		! source line 2970
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3808:
! SEND STATEMENT...
	mov	2972,r13		! source line 2972
	mov	"\0\0SE",r10
!   _temp_3812 = &_P_Kernel_frameManager
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
	mov	2978,r13		! source line 2978
	mov	"\0\0IF",r10
	mov	2978,r13		! source line 2978
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3816) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3815  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3815 == 707406378 then goto _Label_3814		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3814
!	jmp	_Label_3813
_Label_3813:
! THEN...
	mov	2979,r13		! source line 2979
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3817 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3817  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2979,r13		! source line 2979
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2980,r13		! source line 2980
	mov	"\0\0SE",r10
!   _temp_3818 = &_P_Kernel_frameManager
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
	mov	2981,r13		! source line 2981
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3814:
! ASSIGNMENT STATEMENT...
	mov	2985,r13		! source line 2985
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
	mov	2986,r13		! source line 2986
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3823 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3824 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3823  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3819:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3824 then goto _Label_3822		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3822
_Label_3820:
	mov	2986,r13		! source line 2986
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2987,r13		! source line 2987
	mov	"\0\0AS",r10
	mov	2987,r13		! source line 2987
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
	mov	2990,r13		! source line 2990
	mov	"\0\0IF",r10
	mov	2990,r13		! source line 2990
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3828) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3827  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3827 then goto _Label_3826 else goto _Label_3825
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3825
	jmp	_Label_3826
_Label_3825:
! THEN...
	mov	2991,r13		! source line 2991
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3829 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3829  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2991,r13		! source line 2991
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2992,r13		! source line 2992
	mov	"\0\0SE",r10
!   _temp_3830 = &_P_Kernel_frameManager
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
	mov	2993,r13		! source line 2993
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3826:
! SEND STATEMENT...
	mov	2995,r13		! source line 2995
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
	mov	2996,r13		! source line 2996
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3821:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3819
! END FOR
_Label_3822:
! IF STATEMENT...
	mov	3000,r13		! source line 3000
	mov	"\0\0IF",r10
	mov	3000,r13		! source line 3000
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3834) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3833  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3833 == 707406378 then goto _Label_3832		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3832
!	jmp	_Label_3831
_Label_3831:
! THEN...
	mov	3001,r13		! source line 3001
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3835 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3835  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3001,r13		! source line 3001
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3002,r13		! source line 3002
	mov	"\0\0SE",r10
!   _temp_3836 = &_P_Kernel_frameManager
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
	mov	3003,r13		! source line 3003
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3832:
! FOR STATEMENT...
	mov	3007,r13		! source line 3007
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3841 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3842 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3841  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3837:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3842 then goto _Label_3840		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3840
_Label_3838:
	mov	3007,r13		! source line 3007
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3008,r13		! source line 3008
	mov	"\0\0AS",r10
	mov	3008,r13		! source line 3008
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
	mov	3011,r13		! source line 3011
	mov	"\0\0IF",r10
	mov	3011,r13		! source line 3011
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3846) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3845  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3845 then goto _Label_3844 else goto _Label_3843
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3843
	jmp	_Label_3844
_Label_3843:
! THEN...
	mov	3012,r13		! source line 3012
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3847 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3847  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3012,r13		! source line 3012
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3013,r13		! source line 3013
	mov	"\0\0SE",r10
!   _temp_3848 = &_P_Kernel_frameManager
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
	mov	3014,r13		! source line 3014
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3844:
! ASSIGNMENT STATEMENT...
	mov	3016,r13		! source line 3016
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3839:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3837
! END FOR
_Label_3840:
! IF STATEMENT...
	mov	3020,r13		! source line 3020
	mov	"\0\0IF",r10
	mov	3020,r13		! source line 3020
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3852) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3851  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3851 == 707406378 then goto _Label_3850		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3850
!	jmp	_Label_3849
_Label_3849:
! THEN...
	mov	3021,r13		! source line 3021
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3853 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3853  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3021,r13		! source line 3021
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3022,r13		! source line 3022
	mov	"\0\0SE",r10
!   _temp_3854 = &_P_Kernel_frameManager
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
	mov	3023,r13		! source line 3023
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3850:
! ASSIGNMENT STATEMENT...
	mov	3027,r13		! source line 3027
	mov	"\0\0AS",r10
	mov	3027,r13		! source line 3027
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
	mov	3031,r13		! source line 3031
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3034,r13		! source line 3034
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
	.word	_Label_3855
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3856
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3857
	.word	12
	.word	4
	.word	_Label_3858
	.word	-16
	.word	4
	.word	_Label_3859
	.word	-20
	.word	4
	.word	_Label_3860
	.word	-24
	.word	4
	.word	_Label_3861
	.word	-28
	.word	4
	.word	_Label_3862
	.word	-32
	.word	4
	.word	_Label_3863
	.word	-36
	.word	4
	.word	_Label_3864
	.word	-40
	.word	4
	.word	_Label_3865
	.word	-9
	.word	1
	.word	_Label_3866
	.word	-44
	.word	4
	.word	_Label_3867
	.word	-48
	.word	4
	.word	_Label_3868
	.word	-52
	.word	4
	.word	_Label_3869
	.word	-56
	.word	4
	.word	_Label_3870
	.word	-60
	.word	4
	.word	_Label_3871
	.word	-64
	.word	4
	.word	_Label_3872
	.word	-68
	.word	4
	.word	_Label_3873
	.word	-72
	.word	4
	.word	_Label_3874
	.word	-76
	.word	4
	.word	_Label_3875
	.word	-10
	.word	1
	.word	_Label_3876
	.word	-80
	.word	4
	.word	_Label_3877
	.word	-84
	.word	4
	.word	_Label_3878
	.word	-88
	.word	4
	.word	_Label_3879
	.word	-92
	.word	4
	.word	_Label_3880
	.word	-96
	.word	4
	.word	_Label_3881
	.word	-100
	.word	4
	.word	_Label_3882
	.word	-104
	.word	4
	.word	_Label_3883
	.word	-108
	.word	4
	.word	_Label_3884
	.word	-112
	.word	4
	.word	_Label_3885
	.word	-116
	.word	4
	.word	_Label_3886
	.word	-120
	.word	4
	.word	_Label_3887
	.word	-124
	.word	4
	.word	_Label_3888
	.word	-128
	.word	4
	.word	_Label_3889
	.word	-132
	.word	4
	.word	_Label_3890
	.word	-136
	.word	4
	.word	_Label_3891
	.word	-140
	.word	4
	.word	_Label_3892
	.word	-144
	.word	4
	.word	_Label_3893
	.word	-148
	.word	4
	.word	_Label_3894
	.word	-152
	.word	4
	.word	_Label_3895
	.word	-156
	.word	4
	.word	_Label_3896
	.word	-160
	.word	4
	.word	_Label_3897
	.word	-164
	.word	4
	.word	_Label_3898
	.word	-168
	.word	4
	.word	_Label_3899
	.word	-172
	.word	4
	.word	_Label_3900
	.word	-176
	.word	4
	.word	_Label_3901
	.word	-180
	.word	4
	.word	_Label_3902
	.word	-184
	.word	4
	.word	_Label_3903
	.word	-188
	.word	4
	.word	_Label_3904
	.word	-192
	.word	4
	.word	_Label_3905
	.word	-196
	.word	4
	.word	_Label_3906
	.word	-200
	.word	4
	.word	_Label_3907
	.word	-204
	.word	4
	.word	_Label_3908
	.word	-208
	.word	4
	.word	_Label_3909
	.word	-212
	.word	4
	.word	_Label_3910
	.word	-216
	.word	4
	.word	_Label_3911
	.word	-220
	.word	4
	.word	_Label_3912
	.word	-224
	.word	4
	.word	_Label_3913
	.word	-228
	.word	4
	.word	_Label_3914
	.word	-232
	.word	4
	.word	_Label_3915
	.word	-236
	.word	4
	.word	_Label_3916
	.word	-240
	.word	4
	.word	_Label_3917
	.word	-244
	.word	4
	.word	_Label_3918
	.word	-248
	.word	4
	.word	_Label_3919
	.word	-252
	.word	4
	.word	_Label_3920
	.word	-256
	.word	4
	.word	_Label_3921
	.word	-260
	.word	4
	.word	_Label_3922
	.word	-264
	.word	4
	.word	_Label_3923
	.word	-268
	.word	4
	.word	0
_Label_3855:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3856:
	.ascii	"Pself\0"
	.align
_Label_3857:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3858:
	.byte	'?'
	.ascii	"_temp_3854\0"
	.align
_Label_3859:
	.byte	'?'
	.ascii	"_temp_3853\0"
	.align
_Label_3860:
	.byte	'?'
	.ascii	"_temp_3852\0"
	.align
_Label_3861:
	.byte	'?'
	.ascii	"_temp_3851\0"
	.align
_Label_3862:
	.byte	'?'
	.ascii	"_temp_3848\0"
	.align
_Label_3863:
	.byte	'?'
	.ascii	"_temp_3847\0"
	.align
_Label_3864:
	.byte	'?'
	.ascii	"_temp_3846\0"
	.align
_Label_3865:
	.byte	'C'
	.ascii	"_temp_3845\0"
	.align
_Label_3866:
	.byte	'?'
	.ascii	"_temp_3842\0"
	.align
_Label_3867:
	.byte	'?'
	.ascii	"_temp_3841\0"
	.align
_Label_3868:
	.byte	'?'
	.ascii	"_temp_3836\0"
	.align
_Label_3869:
	.byte	'?'
	.ascii	"_temp_3835\0"
	.align
_Label_3870:
	.byte	'?'
	.ascii	"_temp_3834\0"
	.align
_Label_3871:
	.byte	'?'
	.ascii	"_temp_3833\0"
	.align
_Label_3872:
	.byte	'?'
	.ascii	"_temp_3830\0"
	.align
_Label_3873:
	.byte	'?'
	.ascii	"_temp_3829\0"
	.align
_Label_3874:
	.byte	'?'
	.ascii	"_temp_3828\0"
	.align
_Label_3875:
	.byte	'C'
	.ascii	"_temp_3827\0"
	.align
_Label_3876:
	.byte	'?'
	.ascii	"_temp_3824\0"
	.align
_Label_3877:
	.byte	'?'
	.ascii	"_temp_3823\0"
	.align
_Label_3878:
	.byte	'?'
	.ascii	"_temp_3818\0"
	.align
_Label_3879:
	.byte	'?'
	.ascii	"_temp_3817\0"
	.align
_Label_3880:
	.byte	'?'
	.ascii	"_temp_3816\0"
	.align
_Label_3881:
	.byte	'?'
	.ascii	"_temp_3815\0"
	.align
_Label_3882:
	.byte	'?'
	.ascii	"_temp_3812\0"
	.align
_Label_3883:
	.byte	'?'
	.ascii	"_temp_3811\0"
	.align
_Label_3884:
	.byte	'?'
	.ascii	"_temp_3810\0"
	.align
_Label_3885:
	.byte	'?'
	.ascii	"_temp_3809\0"
	.align
_Label_3886:
	.byte	'?'
	.ascii	"_temp_3806\0"
	.align
_Label_3887:
	.byte	'?'
	.ascii	"_temp_3805\0"
	.align
_Label_3888:
	.byte	'?'
	.ascii	"_temp_3804\0"
	.align
_Label_3889:
	.byte	'?'
	.ascii	"_temp_3803\0"
	.align
_Label_3890:
	.byte	'?'
	.ascii	"_temp_3802\0"
	.align
_Label_3891:
	.byte	'?'
	.ascii	"_temp_3799\0"
	.align
_Label_3892:
	.byte	'?'
	.ascii	"_temp_3798\0"
	.align
_Label_3893:
	.byte	'?'
	.ascii	"_temp_3795\0"
	.align
_Label_3894:
	.byte	'?'
	.ascii	"_temp_3794\0"
	.align
_Label_3895:
	.byte	'?'
	.ascii	"_temp_3791\0"
	.align
_Label_3896:
	.byte	'?'
	.ascii	"_temp_3790\0"
	.align
_Label_3897:
	.byte	'?'
	.ascii	"_temp_3787\0"
	.align
_Label_3898:
	.byte	'?'
	.ascii	"_temp_3784\0"
	.align
_Label_3899:
	.byte	'?'
	.ascii	"_temp_3783\0"
	.align
_Label_3900:
	.byte	'?'
	.ascii	"_temp_3780\0"
	.align
_Label_3901:
	.byte	'?'
	.ascii	"_temp_3779\0"
	.align
_Label_3902:
	.byte	'?'
	.ascii	"_temp_3778\0"
	.align
_Label_3903:
	.byte	'?'
	.ascii	"_temp_3777\0"
	.align
_Label_3904:
	.byte	'?'
	.ascii	"_temp_3776\0"
	.align
_Label_3905:
	.byte	'?'
	.ascii	"_temp_3775\0"
	.align
_Label_3906:
	.byte	'?'
	.ascii	"_temp_3774\0"
	.align
_Label_3907:
	.byte	'?'
	.ascii	"_temp_3773\0"
	.align
_Label_3908:
	.byte	'?'
	.ascii	"_temp_3772\0"
	.align
_Label_3909:
	.byte	'?'
	.ascii	"_temp_3769\0"
	.align
_Label_3910:
	.byte	'?'
	.ascii	"_temp_3768\0"
	.align
_Label_3911:
	.byte	'?'
	.ascii	"_temp_3767\0"
	.align
_Label_3912:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3913:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3914:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3915:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3916:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3917:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3918:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3919:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3920:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3921:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3922:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3923:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
