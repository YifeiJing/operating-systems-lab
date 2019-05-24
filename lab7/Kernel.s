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
	.word	23			! length
	.ascii	"Not an executable file!"
	.align
_StringConst_36:
	.word	39			! length
	.ascii	"Failed to get string from virtual space"
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
_Label_4009:
	push	r0
	sub	r1,1,r1
	bne	_Label_4009
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
_Label_4010:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4010
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
_Label_4011:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4011
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
_Label_4012:
	push	r0
	sub	r1,1,r1
	bne	_Label_4012
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
_Label_4013:
	push	r0
	sub	r1,1,r1
	bne	_Label_4013
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
_Label_4014:
	push	r0
	sub	r1,1,r1
	bne	_Label_4014
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
_Label_4015:
	push	r0
	sub	r1,1,r1
	bne	_Label_4015
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
_Label_4016:
	push	r0
	sub	r1,1,r1
	bne	_Label_4016
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
_Label_4017:
	push	r0
	sub	r1,1,r1
	bne	_Label_4017
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
_Label_4018:
	push	r0
	sub	r1,1,r1
	bne	_Label_4018
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
_Label_4019:
	push	r0
	sub	r1,1,r1
	bne	_Label_4019
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
	mov	29,r1
_Label_4020:
	push	r0
	sub	r1,1,r1
	bne	_Label_4020
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
	store	r1,[r14+-104]
!   Data Move: pcb = *_temp_393  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-116]
! ASSIGNMENT STATEMENT...
	mov	998,r13		! source line 998
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
	store	r1,[r14+-96]
!   Data Move: _temp_394 = *_temp_395  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_394) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_396 = _temp_394 + 28
	load	[r14+-100],r1
	add	r1,28,r1
	store	r1,[r14+-92]
!   Data Move: *_temp_396 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-92],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	999,r13		! source line 999
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! ASSIGNMENT STATEMENT...
	mov	1000,r13		! source line 1000
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
	store	r1,[r14+-84]
!   Data Move: _temp_397 = *_temp_398  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_397) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_399 = _temp_397 + 24
	load	[r14+-88],r1
	add	r1,24,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_399 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-80],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1001,r13		! source line 1001
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
	store	r1,[r14+-76]
!   Data Move: *_temp_400 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-76],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1002,r13		! source line 1002
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
	store	r1,[r14+-72]
!   Data Move: *_temp_401 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-72],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1003,r13		! source line 1003
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=junk  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1003,r13		! source line 1003
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! FOR STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_406 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_407 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_406  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-112]
_Label_402:
!   Perform the FOR-LOOP termination test
!   if i > _temp_407 then goto _Label_405		
	load	[r14+-112],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_405
_Label_403:
	mov	1005,r13		! source line 1005
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_411 = pcb + 124
	load	[r14+-116],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_411 [i ] into _temp_412
!     make sure index expr is >= 0
	load	[r14+-112],r2
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
!   Data Move: _temp_410 = *_temp_412  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_410) then goto _Label_409
	load	[r14+-60],r1
	cmp	r1,r0
	be	_Label_409
!	jmp	_Label_408
_Label_408:
! THEN...
	mov	1007,r13		! source line 1007
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_414 = pcb + 124
	load	[r14+-116],r1
	add	r1,124,r1
	store	r1,[r14+-44]
!   Move address of _temp_414 [i ] into _temp_415
!     make sure index expr is >= 0
	load	[r14+-112],r2
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
!   Data Move: _temp_413 = *_temp_415  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_416 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_413  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_417 = pcb + 124
	load	[r14+-116],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_417 [i ] into _temp_418
!     make sure index expr is >= 0
	load	[r14+-112],r2
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
!   Data Move: *_temp_418 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-28],r2
	store	r1,[r2]
! END IF...
_Label_409:
!   Increment the FOR-LOOP index variable and jump back
_Label_404:
!   i = i + 1
	load	[r14+-112],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
	jmp	_Label_402
! END FOR
_Label_405:
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_420 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_419 = _temp_420		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_421 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_419  sizeInBytes=4
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
	mov	1012,r13		! source line 1012
	mov	"\0\0SE",r10
!   _temp_422 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-116],r1
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
	mov	1013,r13		! source line 1013
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_423
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_424
	.word	8
	.word	4
	.word	_Label_425
	.word	-12
	.word	4
	.word	_Label_426
	.word	-16
	.word	4
	.word	_Label_427
	.word	-20
	.word	4
	.word	_Label_428
	.word	-24
	.word	4
	.word	_Label_429
	.word	-28
	.word	4
	.word	_Label_430
	.word	-32
	.word	4
	.word	_Label_431
	.word	-36
	.word	4
	.word	_Label_432
	.word	-40
	.word	4
	.word	_Label_433
	.word	-44
	.word	4
	.word	_Label_434
	.word	-48
	.word	4
	.word	_Label_435
	.word	-52
	.word	4
	.word	_Label_436
	.word	-56
	.word	4
	.word	_Label_437
	.word	-60
	.word	4
	.word	_Label_438
	.word	-64
	.word	4
	.word	_Label_439
	.word	-68
	.word	4
	.word	_Label_440
	.word	-72
	.word	4
	.word	_Label_441
	.word	-76
	.word	4
	.word	_Label_442
	.word	-80
	.word	4
	.word	_Label_443
	.word	-84
	.word	4
	.word	_Label_444
	.word	-88
	.word	4
	.word	_Label_445
	.word	-92
	.word	4
	.word	_Label_446
	.word	-96
	.word	4
	.word	_Label_447
	.word	-100
	.word	4
	.word	_Label_448
	.word	-104
	.word	4
	.word	_Label_449
	.word	-108
	.word	4
	.word	_Label_450
	.word	-112
	.word	4
	.word	_Label_451
	.word	-116
	.word	4
	.word	0
_Label_423:
	.ascii	"ProcessFinish\0"
	.align
_Label_424:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_449:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_450:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_451:
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
_Label_4021:
	push	r0
	sub	r1,1,r1
	bne	_Label_4021
	mov	1019,r13		! source line 1019
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_452 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_452  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1023,r13		! source line 1023
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1024,r13		! source line 1024
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1024,r13		! source line 1024
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
	.word	_Label_453
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_454
	.word	8
	.word	4
	.word	_Label_455
	.word	-12
	.word	4
	.word	0
_Label_453:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_454:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_452\0"
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
_Label_4022:
	push	r0
	sub	r1,1,r1
	bne	_Label_4022
	mov	1499,r13		! source line 1499
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1511,r13		! source line 1511
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
	mov	1512,r13		! source line 1512
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1512,r13		! source line 1512
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
	.word	_Label_456
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_456:
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
_Label_4023:
	push	r0
	sub	r1,1,r1
	bne	_Label_4023
	mov	1517,r13		! source line 1517
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0IF",r10
!   _temp_460 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_461 = _temp_460 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_459 = *_temp_461  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_459 == 0 then goto _Label_458		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_458
!	jmp	_Label_457
_Label_457:
! THEN...
	mov	1530,r13		! source line 1530
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0SE",r10
!   _temp_463 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_464 = _temp_463 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_462 = *_temp_464  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_462) then goto _runtimeErrorNullPointer
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
_Label_458:
! RETURN STATEMENT...
	mov	1529,r13		! source line 1529
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
	.word	_Label_465
	.word	0		! total size of parameters
	.word	28		! frame size = 28
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
	.word	0
_Label_465:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_459\0"
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
	mov	1536,r13		! source line 1536
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1545,r13		! source line 1545
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
	.word	_Label_472
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_472:
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
_Label_4024:
	push	r0
	sub	r1,1,r1
	bne	_Label_4024
	mov	1550,r13		! source line 1550
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1556,r13		! source line 1556
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_473 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_473  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1557,r13		! source line 1557
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1557,r13		! source line 1557
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
	.word	_Label_474
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_475
	.word	-12
	.word	4
	.word	0
_Label_474:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_473\0"
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
_Label_4025:
	push	r0
	sub	r1,1,r1
	bne	_Label_4025
	mov	1562,r13		! source line 1562
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1568,r13		! source line 1568
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_476 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_476  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1569,r13		! source line 1569
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1569,r13		! source line 1569
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
	.word	_Label_477
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_478
	.word	-12
	.word	4
	.word	0
_Label_477:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_476\0"
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
_Label_4026:
	push	r0
	sub	r1,1,r1
	bne	_Label_4026
	mov	1574,r13		! source line 1574
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1580,r13		! source line 1580
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_479 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_479  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1581,r13		! source line 1581
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1581,r13		! source line 1581
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
	.word	_Label_480
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_481
	.word	-12
	.word	4
	.word	0
_Label_480:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_479\0"
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
_Label_4027:
	push	r0
	sub	r1,1,r1
	bne	_Label_4027
	mov	1586,r13		! source line 1586
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1592,r13		! source line 1592
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_482 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_482  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1593,r13		! source line 1593
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1593,r13		! source line 1593
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
	.word	_Label_483
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_484
	.word	-12
	.word	4
	.word	0
_Label_483:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_482\0"
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
_Label_4028:
	push	r0
	sub	r1,1,r1
	bne	_Label_4028
	mov	1598,r13		! source line 1598
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1604,r13		! source line 1604
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_485 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_485  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1605,r13		! source line 1605
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1605,r13		! source line 1605
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
	.word	_Label_486
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_487
	.word	-12
	.word	4
	.word	0
_Label_486:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_485\0"
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
_Label_4029:
	push	r0
	sub	r1,1,r1
	bne	_Label_4029
	mov	1610,r13		! source line 1610
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1616,r13		! source line 1616
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_488 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_488  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1617,r13		! source line 1617
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1617,r13		! source line 1617
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
	.word	_Label_489
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_490
	.word	-12
	.word	4
	.word	0
_Label_489:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_488\0"
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
_Label_4030:
	push	r0
	sub	r1,1,r1
	bne	_Label_4030
	mov	1622,r13		! source line 1622
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1628,r13		! source line 1628
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_491 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_491  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1629,r13		! source line 1629
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1629,r13		! source line 1629
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
	.word	_Label_492
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_493
	.word	-12
	.word	4
	.word	0
_Label_492:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_491\0"
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
_Label_4031:
	push	r0
	sub	r1,1,r1
	bne	_Label_4031
	mov	1634,r13		! source line 1634
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_494 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_494  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1639,r13		! source line 1639
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1640,r13		! source line 1640
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_495 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_495  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1641,r13		! source line 1641
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1644,r13		! source line 1644
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_499 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_498 = *_temp_499  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_498 == 0 then goto _Label_497		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_497
!	jmp	_Label_496
_Label_496:
! THEN...
	mov	1645,r13		! source line 1645
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1645,r13		! source line 1645
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_501 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_500 = *_temp_501  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_500) then goto _runtimeErrorNullPointer
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
	jmp	_Label_502
_Label_497:
! ELSE...
	mov	1647,r13		! source line 1647
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_503 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1647,r13		! source line 1647
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_502:
! SEND STATEMENT...
	mov	1649,r13		! source line 1649
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
	mov	1655,r13		! source line 1655
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1655,r13		! source line 1655
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
	.word	_Label_504
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_505
	.word	8
	.word	4
	.word	_Label_506
	.word	-12
	.word	4
	.word	_Label_507
	.word	-16
	.word	4
	.word	_Label_508
	.word	-20
	.word	4
	.word	_Label_509
	.word	-24
	.word	4
	.word	_Label_510
	.word	-28
	.word	4
	.word	_Label_511
	.word	-32
	.word	4
	.word	_Label_512
	.word	-36
	.word	4
	.word	0
_Label_504:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_505:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_494\0"
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
_Label_4032:
	push	r0
	sub	r1,1,r1
	bne	_Label_4032
	mov	1660,r13		! source line 1660
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1681,r13		! source line 1681
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_4033
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_513
_Label_4033:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_513
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_513
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_527,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_527:
	jmp	_Label_519	! 1:	
	jmp	_Label_526	! 2:	
	jmp	_Label_516	! 3:	
	jmp	_Label_515	! 4:	
	jmp	_Label_518	! 5:	
	jmp	_Label_517	! 6:	
	jmp	_Label_520	! 7:	
	jmp	_Label_521	! 8:	
	jmp	_Label_522	! 9:	
	jmp	_Label_523	! 10:	
	jmp	_Label_524	! 11:	
	jmp	_Label_525	! 12:	
! CASE 4...
_Label_515:
! RETURN STATEMENT...
	mov	1683,r13		! source line 1683
	mov	"\0\0RE",r10
!   Call the function
	mov	1683,r13		! source line 1683
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_528  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_528  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_516:
! CALL STATEMENT...
!   Call the function
	mov	1685,r13		! source line 1685
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
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
! CASE 6...
_Label_517:
! RETURN STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1688,r13		! source line 1688
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_529  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_529  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_518:
! RETURN STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1690,r13		! source line 1690
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_530  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_530  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_519:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1692,r13		! source line 1692
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_520:
! RETURN STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1695,r13		! source line 1695
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_531  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_531  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_521:
! RETURN STATEMENT...
	mov	1697,r13		! source line 1697
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1697,r13		! source line 1697
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_532  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_532  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_522:
! RETURN STATEMENT...
	mov	1699,r13		! source line 1699
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
	mov	1699,r13		! source line 1699
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_533  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_533  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_523:
! RETURN STATEMENT...
	mov	1701,r13		! source line 1701
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
	mov	1701,r13		! source line 1701
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_534  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_534  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_524:
! RETURN STATEMENT...
	mov	1703,r13		! source line 1703
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1703,r13		! source line 1703
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_535  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_535  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_525:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1705,r13		! source line 1705
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1706,r13		! source line 1706
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_526:
! CALL STATEMENT...
!   Call the function
	mov	1708,r13		! source line 1708
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
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
! DEFAULT CASE...
_Label_513:
! CALL STATEMENT...
!   _temp_536 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_536  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1711,r13		! source line 1711
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1712,r13		! source line 1712
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1713,r13		! source line 1713
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_537 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_537  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1714,r13		! source line 1714
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_514:
! RETURN STATEMENT...
	mov	1716,r13		! source line 1716
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
	.word	_Label_538
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_539
	.word	8
	.word	4
	.word	_Label_540
	.word	12
	.word	4
	.word	_Label_541
	.word	16
	.word	4
	.word	_Label_542
	.word	20
	.word	4
	.word	_Label_543
	.word	24
	.word	4
	.word	_Label_544
	.word	-12
	.word	4
	.word	_Label_545
	.word	-16
	.word	4
	.word	_Label_546
	.word	-20
	.word	4
	.word	_Label_547
	.word	-24
	.word	4
	.word	_Label_548
	.word	-28
	.word	4
	.word	_Label_549
	.word	-32
	.word	4
	.word	_Label_550
	.word	-36
	.word	4
	.word	_Label_551
	.word	-40
	.word	4
	.word	_Label_552
	.word	-44
	.word	4
	.word	_Label_553
	.word	-48
	.word	4
	.word	0
_Label_538:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_539:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_540:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_541:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_542:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_543:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_528\0"
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
_Label_4034:
	push	r0
	sub	r1,1,r1
	bne	_Label_4034
	mov	1721,r13		! source line 1721
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1722,r13		! source line 1722
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1722,r13		! source line 1722
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
	.word	_Label_554
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_555
	.word	8
	.word	4
	.word	0
_Label_554:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_555:
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
_Label_4035:
	push	r0
	sub	r1,1,r1
	bne	_Label_4035
	mov	1727,r13		! source line 1727
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_556 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_556  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1728,r13		! source line 1728
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1728,r13		! source line 1728
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
	.word	_Label_557
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_558
	.word	-12
	.word	4
	.word	0
_Label_557:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_556\0"
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
_Label_4036:
	push	r0
	sub	r1,1,r1
	bne	_Label_4036
	mov	1733,r13		! source line 1733
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1734,r13		! source line 1734
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
	mov	1734,r13		! source line 1734
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
	.word	_Label_559
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_559:
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
	mov	73,r1
_Label_4037:
	push	r0
	sub	r1,1,r1
	bne	_Label_4037
	mov	1739,r13		! source line 1739
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0AS",r10
	mov	1746,r13		! source line 1746
	mov	"\0\0SE",r10
!   _temp_560 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-264]
!   Send message GetANewProcess
	load	[r14+-264],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=childPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	1747,r13		! source line 1747
	mov	"\0\0AS",r10
	mov	1747,r13		! source line 1747
	mov	"\0\0SE",r10
!   _temp_561 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-260]
!   Send message GetANewThread
	load	[r14+-260],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=childThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	1748,r13		! source line 1748
	mov	"\0\0AS",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_562 = childPCB + 24
	load	[r14+-268],r1
	add	r1,24,r1
	store	r1,[r14+-256]
!   Data Move: *_temp_562 = childThread  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r14+-256],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0AS",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_563 = childPCB + 16
	load	[r14+-268],r1
	add	r1,16,r1
	store	r1,[r14+-252]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_566 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-240]
!   Data Move: _temp_565 = *_temp_566  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   if intIsZero (_temp_565) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_567 = _temp_565 + 12
	load	[r14+-244],r1
	add	r1,12,r1
	store	r1,[r14+-236]
!   Data Move: _temp_564 = *_temp_567  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-248]
!   Data Move: *_temp_563 = _temp_564  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r14+-252],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1750,r13		! source line 1750
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_568 = childThread + 68
	load	[r14+-272],r1
	add	r1,68,r1
	store	r1,[r14+-232]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_570 = childThread + 88
	load	[r14+-272],r1
	add	r1,88,r1
	store	r1,[r14+-224]
!   Move address of _temp_570 [999 ] into _temp_571
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-224],r1
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
	store	r2,[r14+-220]
!   _temp_569 = _temp_571		(4 bytes)
	load	[r14+-220],r1
	store	r1,[r14+-228]
!   Data Move: *_temp_568 = _temp_569  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r14+-232],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_572 = childThread + 4160
	load	[r14+-272],r1
	add	r1,4160,r1
	store	r1,[r14+-216]
!   Data Move: *_temp_572 = childPCB  (sizeInBytes=4)
	load	[r14+-268],r1
	load	[r14+-216],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_573 = childThread + 76
	load	[r14+-272],r1
	add	r1,76,r1
	store	r1,[r14+-212]
!   Data Move: *_temp_573 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-212],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_575 = childThread + 4096
	load	[r14+-272],r1
	add	r1,4096,r1
	store	r1,[r14+-204]
!   Move address of _temp_575 [0 ] into _temp_576
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-204],r1
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
	store	r2,[r14+-200]
!   _temp_574 = _temp_576		(4 bytes)
	load	[r14+-200],r1
	store	r1,[r14+-208]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Call the function
	mov	1753,r13		! source line 1753
	mov	"\0\0CE",r10
	call	SaveUserRegs
! FOR STATEMENT...
	mov	1754,r13		! source line 1754
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_581 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-196]
!   Calculate and save the FOR-LOOP ending value
!   _temp_582 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-192]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_581  (sizeInBytes=4)
	load	[r14+-196],r1
	store	r1,[r14+-280]
_Label_577:
!   Perform the FOR-LOOP termination test
!   if i > _temp_582 then goto _Label_580		
	load	[r14+-280],r1
	load	[r14+-192],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_580
_Label_578:
	mov	1754,r13		! source line 1754
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1755,r13		! source line 1755
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_587 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-180]
!   Data Move: _temp_586 = *_temp_587  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_586) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_588 = _temp_586 + 124
	load	[r14+-184],r1
	add	r1,124,r1
	store	r1,[r14+-176]
!   Move address of _temp_588 [i ] into _temp_589
!     make sure index expr is >= 0
	load	[r14+-280],r2
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
!   Data Move: _temp_585 = *_temp_589  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_585) then goto _Label_584
	load	[r14+-188],r1
	cmp	r1,r0
	be	_Label_584
!	jmp	_Label_583
_Label_583:
! THEN...
	mov	1756,r13		! source line 1756
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1756,r13		! source line 1756
	mov	"\0\0AS",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_590 = childPCB + 124
	load	[r14+-268],r1
	add	r1,124,r1
	store	r1,[r14+-168]
!   Move address of _temp_590 [i ] into _temp_591
!     make sure index expr is >= 0
	load	[r14+-280],r2
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
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_594 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-152]
!   Data Move: _temp_593 = *_temp_594  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_593) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_595 = _temp_593 + 124
	load	[r14+-156],r1
	add	r1,124,r1
	store	r1,[r14+-148]
!   Move address of _temp_595 [i ] into _temp_596
!     make sure index expr is >= 0
	load	[r14+-280],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Data Move: _temp_592 = *_temp_596  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   Data Move: *_temp_591 = _temp_592  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r14+-164],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1757,r13		! source line 1757
	mov	"\0\0AS",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_598 = childPCB + 124
	load	[r14+-268],r1
	add	r1,124,r1
	store	r1,[r14+-136]
!   Move address of _temp_598 [i ] into _temp_599
!     make sure index expr is >= 0
	load	[r14+-280],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
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
	store	r2,[r14+-132]
!   Data Move: _temp_597 = *_temp_599  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_597) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_600 = _temp_597 + 24
	load	[r14+-140],r1
	add	r1,24,r1
	store	r1,[r14+-128]
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = childPCB + 124
	load	[r14+-268],r1
	add	r1,124,r1
	store	r1,[r14+-112]
!   Move address of _temp_604 [i ] into _temp_605
!     make sure index expr is >= 0
	load	[r14+-280],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Data Move: _temp_603 = *_temp_605  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_603) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_606 = _temp_603 + 24
	load	[r14+-116],r1
	add	r1,24,r1
	store	r1,[r14+-104]
!   Data Move: _temp_602 = *_temp_606  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_601 = _temp_602 + 1		(int)
	load	[r14+-120],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   Data Move: *_temp_600 = _temp_601  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r14+-128],r2
	store	r1,[r2]
! END IF...
_Label_584:
!   Increment the FOR-LOOP index variable and jump back
_Label_579:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_577
! END FOR
_Label_580:
! ASSIGNMENT STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1760,r13		! source line 1760
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	1761,r13		! source line 1761
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_608 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_607 = *_temp_608  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_607) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_609 = _temp_607 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   _temp_610 = _temp_609 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Data Move: tmp = *_temp_610  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-276]
! IF STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0IF",r10
!   if tmp <= 0 then goto _Label_612		(int)
	load	[r14+-276],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_612
!	jmp	_Label_611
_Label_611:
! THEN...
	mov	1763,r13		! source line 1763
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = childPCB + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_613 = _temp_614		(4 bytes)
	load	[r14+-80],r1
	store	r1,[r14+-84]
!   _temp_615 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_613  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=tmp  sizeInBytes=4
	load	[r14+-276],r1
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
	mov	1764,r13		! source line 1764
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_620 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_621 = tmp - 1		(int)
	load	[r14+-276],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_620  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-280]
_Label_616:
!   Perform the FOR-LOOP termination test
!   if i > _temp_621 then goto _Label_619		
	load	[r14+-280],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_619
_Label_617:
	mov	1764,r13		! source line 1764
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_623 = childPCB + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_622  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
	mov	1766,r13		! source line 1766
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_626 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_625 = *_temp_626  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_625) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_627 = _temp_625 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_624  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_622  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_624  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1765,r13		! source line 1765
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0IF",r10
	mov	1767,r13		! source line 1767
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_631 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_630 = *_temp_631  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_630) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_632 = _temp_630 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_628 else goto _Label_629
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_629
	jmp	_Label_628
_Label_628:
! THEN...
	mov	1768,r13		! source line 1768
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1768,r13		! source line 1768
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_633 = childPCB + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
	jmp	_Label_634
_Label_629:
! ELSE...
	mov	1770,r13		! source line 1770
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_635 = childPCB + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-280],r1
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
_Label_634:
!   Increment the FOR-LOOP index variable and jump back
_Label_618:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_616
! END FOR
_Label_619:
! END IF...
_Label_612:
! ASSIGNMENT STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0AS",r10
!   Call the function
	mov	1774,r13		! source line 1774
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-284]
! SEND STATEMENT...
	mov	1775,r13		! source line 1775
	mov	"\0\0SE",r10
!   _temp_636 = _function_207_ResumeChildAfterFork
	set	_function_207_ResumeChildAfterFork,r1
	store	r1,[r14+-20]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_636  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldUserPC  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1776,r13		! source line 1776
	mov	"\0\0RE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = childPCB + 12
	load	[r14+-268],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_637 = *_temp_638  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_637  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_639
	.word	0		! total size of parameters
	.word	292		! frame size = 292
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
	.word	_Label_654
	.word	-68
	.word	4
	.word	_Label_655
	.word	-72
	.word	4
	.word	_Label_656
	.word	-76
	.word	4
	.word	_Label_657
	.word	-80
	.word	4
	.word	_Label_658
	.word	-84
	.word	4
	.word	_Label_659
	.word	-88
	.word	4
	.word	_Label_660
	.word	-92
	.word	4
	.word	_Label_661
	.word	-96
	.word	4
	.word	_Label_662
	.word	-100
	.word	4
	.word	_Label_663
	.word	-104
	.word	4
	.word	_Label_664
	.word	-108
	.word	4
	.word	_Label_665
	.word	-112
	.word	4
	.word	_Label_666
	.word	-116
	.word	4
	.word	_Label_667
	.word	-120
	.word	4
	.word	_Label_668
	.word	-124
	.word	4
	.word	_Label_669
	.word	-128
	.word	4
	.word	_Label_670
	.word	-132
	.word	4
	.word	_Label_671
	.word	-136
	.word	4
	.word	_Label_672
	.word	-140
	.word	4
	.word	_Label_673
	.word	-144
	.word	4
	.word	_Label_674
	.word	-148
	.word	4
	.word	_Label_675
	.word	-152
	.word	4
	.word	_Label_676
	.word	-156
	.word	4
	.word	_Label_677
	.word	-160
	.word	4
	.word	_Label_678
	.word	-164
	.word	4
	.word	_Label_679
	.word	-168
	.word	4
	.word	_Label_680
	.word	-172
	.word	4
	.word	_Label_681
	.word	-176
	.word	4
	.word	_Label_682
	.word	-180
	.word	4
	.word	_Label_683
	.word	-184
	.word	4
	.word	_Label_684
	.word	-188
	.word	4
	.word	_Label_685
	.word	-192
	.word	4
	.word	_Label_686
	.word	-196
	.word	4
	.word	_Label_687
	.word	-200
	.word	4
	.word	_Label_688
	.word	-204
	.word	4
	.word	_Label_689
	.word	-208
	.word	4
	.word	_Label_690
	.word	-212
	.word	4
	.word	_Label_691
	.word	-216
	.word	4
	.word	_Label_692
	.word	-220
	.word	4
	.word	_Label_693
	.word	-224
	.word	4
	.word	_Label_694
	.word	-228
	.word	4
	.word	_Label_695
	.word	-232
	.word	4
	.word	_Label_696
	.word	-236
	.word	4
	.word	_Label_697
	.word	-240
	.word	4
	.word	_Label_698
	.word	-244
	.word	4
	.word	_Label_699
	.word	-248
	.word	4
	.word	_Label_700
	.word	-252
	.word	4
	.word	_Label_701
	.word	-256
	.word	4
	.word	_Label_702
	.word	-260
	.word	4
	.word	_Label_703
	.word	-264
	.word	4
	.word	_Label_704
	.word	-268
	.word	4
	.word	_Label_705
	.word	-272
	.word	4
	.word	_Label_706
	.word	-276
	.word	4
	.word	_Label_707
	.word	-280
	.word	4
	.word	_Label_708
	.word	-284
	.word	4
	.word	_Label_709
	.word	-288
	.word	4
	.word	0
_Label_639:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_635\0"
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
	.ascii	"_temp_627\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_704:
	.byte	'P'
	.ascii	"childPCB\0"
	.align
_Label_705:
	.byte	'P'
	.ascii	"childThread\0"
	.align
_Label_706:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_707:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_708:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_709:
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
_Label_4038:
	push	r0
	sub	r1,1,r1
	bne	_Label_4038
	mov	1779,r13		! source line 1779
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1784,r13		! source line 1784
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1784,r13		! source line 1784
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1785,r13		! source line 1785
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_711 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_710 = *_temp_711  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_710) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_712 = _temp_710 + 32
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
!   _temp_714 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_714 [0 ] into _temp_715
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
!   _temp_713 = _temp_715		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1786,r13		! source line 1786
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_716 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_716 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_717 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_717 [14 ] into _temp_718
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
!   Data Move: initUserStackTop = *_temp_718  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1790,r13		! source line 1790
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_719 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_719 [999 ] into _temp_720
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
!   initSystemStackTop = _temp_720		(4 bytes)
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
	mov	1791,r13		! source line 1791
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1791,r13		! source line 1791
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
	.word	_Label_721
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_722
	.word	8
	.word	4
	.word	_Label_723
	.word	-12
	.word	4
	.word	_Label_724
	.word	-16
	.word	4
	.word	_Label_725
	.word	-20
	.word	4
	.word	_Label_726
	.word	-24
	.word	4
	.word	_Label_727
	.word	-28
	.word	4
	.word	_Label_728
	.word	-32
	.word	4
	.word	_Label_729
	.word	-36
	.word	4
	.word	_Label_730
	.word	-40
	.word	4
	.word	_Label_731
	.word	-44
	.word	4
	.word	_Label_732
	.word	-48
	.word	4
	.word	_Label_733
	.word	-52
	.word	4
	.word	_Label_734
	.word	-56
	.word	4
	.word	_Label_735
	.word	-60
	.word	4
	.word	_Label_736
	.word	-64
	.word	4
	.word	0
_Label_721:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_722:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_734:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_735:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_736:
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
_Label_4039:
	push	r0
	sub	r1,1,r1
	bne	_Label_4039
	mov	1796,r13		! source line 1796
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1800,r13		! source line 1800
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_741 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_742 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_741  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_737:
!   Perform the FOR-LOOP termination test
!   if i > _temp_742 then goto _Label_740		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_740
_Label_738:
	mov	1800,r13		! source line 1800
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1801,r13		! source line 1801
	mov	"\0\0IF",r10
!   _temp_748 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_749 = _temp_748 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_749 [i ] into _temp_750
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
!   _temp_751 = _temp_750 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_747 = *_temp_751  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_747 != processID then goto _Label_744		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_744
!	jmp	_Label_746
_Label_746:
!   _temp_753 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_754 = _temp_753 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_754 [i ] into _temp_755
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
!   _temp_756 = _temp_755 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_752 = *_temp_756  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_759 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_758 = *_temp_759  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_758) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_760 = _temp_758 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_757 = *_temp_760  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_752 != _temp_757 then goto _Label_744		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_744
!	jmp	_Label_745
_Label_745:
!   _temp_762 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_763 = _temp_762 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_763 [i ] into _temp_764
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
!   _temp_765 = _temp_764 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_761 = *_temp_765  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_761 == 3 then goto _Label_744		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_744
!	jmp	_Label_743
_Label_743:
! THEN...
	mov	1802,r13		! source line 1802
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1802,r13		! source line 1802
	mov	"\0\0AS",r10
	mov	1802,r13		! source line 1802
	mov	"\0\0SE",r10
!   _temp_767 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_768 = _temp_767 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_768 [i ] into _temp_769
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
!   _temp_766 = _temp_769		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_770 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_766  sizeInBytes=4
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
	mov	1803,r13		! source line 1803
	mov	"\0\0RE",r10
!   ReturnResult: childExitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_744:
!   Increment the FOR-LOOP index variable and jump back
_Label_739:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_737
! END FOR
_Label_740:
! RETURN STATEMENT...
	mov	1807,r13		! source line 1807
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
	.word	_Label_771
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_772
	.word	8
	.word	4
	.word	_Label_773
	.word	-12
	.word	4
	.word	_Label_774
	.word	-16
	.word	4
	.word	_Label_775
	.word	-20
	.word	4
	.word	_Label_776
	.word	-24
	.word	4
	.word	_Label_777
	.word	-28
	.word	4
	.word	_Label_778
	.word	-32
	.word	4
	.word	_Label_779
	.word	-36
	.word	4
	.word	_Label_780
	.word	-40
	.word	4
	.word	_Label_781
	.word	-44
	.word	4
	.word	_Label_782
	.word	-48
	.word	4
	.word	_Label_783
	.word	-52
	.word	4
	.word	_Label_784
	.word	-56
	.word	4
	.word	_Label_785
	.word	-60
	.word	4
	.word	_Label_786
	.word	-64
	.word	4
	.word	_Label_787
	.word	-68
	.word	4
	.word	_Label_788
	.word	-72
	.word	4
	.word	_Label_789
	.word	-76
	.word	4
	.word	_Label_790
	.word	-80
	.word	4
	.word	_Label_791
	.word	-84
	.word	4
	.word	_Label_792
	.word	-88
	.word	4
	.word	_Label_793
	.word	-92
	.word	4
	.word	_Label_794
	.word	-96
	.word	4
	.word	_Label_795
	.word	-100
	.word	4
	.word	_Label_796
	.word	-104
	.word	4
	.word	_Label_797
	.word	-108
	.word	4
	.word	_Label_798
	.word	-112
	.word	4
	.word	_Label_799
	.word	-116
	.word	4
	.word	_Label_800
	.word	-120
	.word	4
	.word	0
_Label_771:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_772:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_799:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_800:
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
_Label_4040:
	push	r0
	sub	r1,1,r1
	bne	_Label_4040
	mov	1812,r13		! source line 1812
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-264,r4
	mov	23,r3
_Label_4041:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4041
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1821,r13		! source line 1821
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-148]
! ASSIGNMENT STATEMENT...
	mov	1822,r13		! source line 1822
	mov	"\0\0AS",r10
	mov	1822,r13		! source line 1822
	mov	"\0\0SE",r10
!   _temp_802 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-124]
!   _temp_803 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-120]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_805 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_804 = *_temp_805  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_804) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_806 = _temp_804 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_802  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_803  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-108],r1
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
	mov	1823,r13		! source line 1823
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_808		(int)
	load	[r14+-268],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_808
!	jmp	_Label_807
_Label_807:
! THEN...
	mov	1824,r13		! source line 1824
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_809 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_809  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1824,r13		! source line 1824
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1825,r13		! source line 1825
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1826,r13		! source line 1826
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_808:
! ASSIGNMENT STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0AS",r10
	mov	1828,r13		! source line 1828
	mov	"\0\0SE",r10
!   _temp_810 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-100]
!   _temp_811 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_810  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-96],r1
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
	mov	1829,r13		! source line 1829
	mov	"\0\0IF",r10
!   if fp == 0 then goto _Label_813		(int)
	load	[r14+-132],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_813
!	jmp	_Label_812
_Label_812:
! THEN...
	mov	1830,r13		! source line 1830
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0SE",r10
!   _temp_814 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-92]
!   Send message Init
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0AS",r10
	mov	1831,r13		! source line 1831
	mov	"\0\0SE",r10
!   _temp_815 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-88]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_815  sizeInBytes=4
	load	[r14+-88],r1
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
! IF STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_817		(int)
	load	[r14+-136],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_817
!	jmp	_Label_816
_Label_816:
! THEN...
	mov	1833,r13		! source line 1833
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_818 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_818  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1833,r13		! source line 1833
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1834,r13		! source line 1834
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1835,r13		! source line 1835
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_817:
! SEND STATEMENT...
	mov	1837,r13		! source line 1837
	mov	"\0\0SE",r10
!   _temp_819 = &_P_Kernel_fileManager
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
	mov	1838,r13		! source line 1838
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_822 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_821 = *_temp_822  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_821) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_823 = _temp_821 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   _temp_820 = _temp_823		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-76]
!   _temp_824 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_820  sizeInBytes=4
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
	mov	1839,r13		! source line 1839
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_826 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_825 = *_temp_826  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_825) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_827 = _temp_825 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_827 = newAddrSpace  (sizeInBytes=92)
	add	r14,-264,r5
	load	[r14+-48],r4
	mov	23,r3
_Label_4042:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4042
! ASSIGNMENT STATEMENT...
	mov	1840,r13		! source line 1840
	mov	"\0\0AS",r10
!   _temp_829 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-40]
!   _temp_830 = _temp_829 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_828 = *_temp_830  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initUserStackTop = _temp_828 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! ASSIGNMENT STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_831 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_831 [999 ] into _temp_832
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
!   initSystemStackTop = _temp_832		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-144]
! SEND STATEMENT...
	mov	1842,r13		! source line 1842
	mov	"\0\0SE",r10
!   _temp_833 = &newAddrSpace
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
	mov	1843,r13		! source line 1843
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_834 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_834 = 1  (sizeInBytes=1)
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
	mov	1844,r13		! source line 1844
	mov	"\0\0CE",r10
	call	BecomeUserThread
	jmp	_Label_835
_Label_813:
! ELSE...
	mov	1846,r13		! source line 1846
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_836 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_836  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1846,r13		! source line 1846
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_837 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_837  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1847,r13		! source line 1847
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1848,r13		! source line 1848
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1849,r13		! source line 1849
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_835:
! RETURN STATEMENT...
	mov	1852,r13		! source line 1852
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
	.word	_Label_838
	.word	4		! total size of parameters
	.word	276		! frame size = 276
	.word	_Label_839
	.word	8
	.word	4
	.word	_Label_840
	.word	-12
	.word	4
	.word	_Label_841
	.word	-16
	.word	4
	.word	_Label_842
	.word	-20
	.word	4
	.word	_Label_843
	.word	-24
	.word	4
	.word	_Label_844
	.word	-28
	.word	4
	.word	_Label_845
	.word	-32
	.word	4
	.word	_Label_846
	.word	-36
	.word	4
	.word	_Label_847
	.word	-40
	.word	4
	.word	_Label_848
	.word	-44
	.word	4
	.word	_Label_849
	.word	-48
	.word	4
	.word	_Label_850
	.word	-52
	.word	4
	.word	_Label_851
	.word	-56
	.word	4
	.word	_Label_852
	.word	-60
	.word	4
	.word	_Label_853
	.word	-64
	.word	4
	.word	_Label_854
	.word	-68
	.word	4
	.word	_Label_855
	.word	-72
	.word	4
	.word	_Label_856
	.word	-76
	.word	4
	.word	_Label_857
	.word	-80
	.word	4
	.word	_Label_858
	.word	-84
	.word	4
	.word	_Label_859
	.word	-88
	.word	4
	.word	_Label_860
	.word	-92
	.word	4
	.word	_Label_861
	.word	-96
	.word	4
	.word	_Label_862
	.word	-100
	.word	4
	.word	_Label_863
	.word	-104
	.word	4
	.word	_Label_864
	.word	-108
	.word	4
	.word	_Label_865
	.word	-112
	.word	4
	.word	_Label_866
	.word	-116
	.word	4
	.word	_Label_867
	.word	-120
	.word	4
	.word	_Label_868
	.word	-124
	.word	4
	.word	_Label_869
	.word	-128
	.word	4
	.word	_Label_870
	.word	-132
	.word	4
	.word	_Label_871
	.word	-136
	.word	4
	.word	_Label_872
	.word	-140
	.word	4
	.word	_Label_873
	.word	-144
	.word	4
	.word	_Label_874
	.word	-148
	.word	4
	.word	_Label_875
	.word	-172
	.word	24
	.word	_Label_876
	.word	-264
	.word	92
	.word	_Label_877
	.word	-268
	.word	4
	.word	0
_Label_838:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_839:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_870:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_871:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_872:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_873:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_874:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_875:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_876:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_877:
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
_Label_4043:
	push	r0
	sub	r1,1,r1
	bne	_Label_4043
	mov	1857,r13		! source line 1857
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0AS",r10
	mov	1860,r13		! source line 1860
	mov	"\0\0SE",r10
!   _temp_878 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_879 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_881 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_880 = *_temp_881  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_880) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_882 = _temp_880 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_878  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_879  sizeInBytes=4
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
!   _temp_883 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_883  sizeInBytes=4
	load	[r14+-20],r1
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
! CALL STATEMENT...
!   _temp_884 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_884  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1863,r13		! source line 1863
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_885 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_885  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1864,r13		! source line 1864
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1865,r13		! source line 1865
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1866,r13		! source line 1866
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
	.word	_Label_886
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_887
	.word	8
	.word	4
	.word	_Label_888
	.word	-12
	.word	4
	.word	_Label_889
	.word	-16
	.word	4
	.word	_Label_890
	.word	-20
	.word	4
	.word	_Label_891
	.word	-24
	.word	4
	.word	_Label_892
	.word	-28
	.word	4
	.word	_Label_893
	.word	-32
	.word	4
	.word	_Label_894
	.word	-36
	.word	4
	.word	_Label_895
	.word	-40
	.word	4
	.word	_Label_896
	.word	-64
	.word	24
	.word	_Label_897
	.word	-68
	.word	4
	.word	0
_Label_886:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_887:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_896:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_897:
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
_Label_4044:
	push	r0
	sub	r1,1,r1
	bne	_Label_4044
	mov	1871,r13		! source line 1871
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0AS",r10
	mov	1878,r13		! source line 1878
	mov	"\0\0SE",r10
!   _temp_898 = &kernelFileName
	add	r14,-112,r1
	store	r1,[r14+-88]
!   _temp_899 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_901 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_900 = *_temp_901  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_900) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_902 = _temp_900 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_898  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_899  sizeInBytes=4
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
	mov	1879,r13		! source line 1879
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_904		(int)
	load	[r14+-116],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_904
!	jmp	_Label_903
_Label_903:
! THEN...
	mov	1880,r13		! source line 1880
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_905 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_905  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1880,r13		! source line 1880
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1881,r13		! source line 1881
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1882,r13		! source line 1882
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_904:
! FOR STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_910 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_911 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_910  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-120]
_Label_906:
!   Perform the FOR-LOOP termination test
!   if i > _temp_911 then goto _Label_909		
	load	[r14+-120],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_909
_Label_907:
	mov	1885,r13		! source line 1885
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1886,r13		! source line 1886
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_916 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_915 = *_temp_916  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_915) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_917 = _temp_915 + 124
	load	[r14+-52],r1
	add	r1,124,r1
	store	r1,[r14+-44]
!   Move address of _temp_917 [i ] into _temp_918
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
!   Data Move: _temp_914 = *_temp_918  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_914) then goto _Label_912
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_912
	jmp	_Label_913
_Label_912:
! THEN...
	mov	1887,r13		! source line 1887
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0BR",r10
	jmp	_Label_909
	jmp	_Label_919
_Label_913:
! ELSE...
	mov	1888,r13		! source line 1888
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1888,r13		! source line 1888
	mov	"\0\0IF",r10
!   if i != 9 then goto _Label_921		(int)
	load	[r14+-120],r1
	mov	9,r2
	cmp	r1,r2
	bne	_Label_921
!	jmp	_Label_920
_Label_920:
! THEN...
	mov	1889,r13		! source line 1889
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_922 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_922  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1889,r13		! source line 1889
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1890,r13		! source line 1890
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1891,r13		! source line 1891
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_921:
! END IF...
_Label_919:
!   Increment the FOR-LOOP index variable and jump back
_Label_908:
!   i = i + 1
	load	[r14+-120],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
	jmp	_Label_906
! END FOR
_Label_909:
! ASSIGNMENT STATEMENT...
	mov	1895,r13		! source line 1895
	mov	"\0\0AS",r10
	mov	1895,r13		! source line 1895
	mov	"\0\0SE",r10
!   _temp_923 = &kernelFileName
	add	r14,-112,r1
	store	r1,[r14+-32]
!   _temp_924 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_923  sizeInBytes=4
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
	mov	1896,r13		! source line 1896
	mov	"\0\0IF",r10
!   if intIsZero (fp) then goto _Label_925
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_925
	jmp	_Label_926
_Label_925:
! THEN...
	mov	1897,r13		! source line 1897
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_926:
! ASSIGNMENT STATEMENT...
	mov	1900,r13		! source line 1900
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_928 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_927 = *_temp_928  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_927) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_929 = _temp_927 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_929 [i ] into _temp_930
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
!   Data Move: *_temp_930 = fp  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1902,r13		! source line 1902
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
	.word	_Label_931
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_932
	.word	8
	.word	4
	.word	_Label_933
	.word	-12
	.word	4
	.word	_Label_934
	.word	-16
	.word	4
	.word	_Label_935
	.word	-20
	.word	4
	.word	_Label_936
	.word	-24
	.word	4
	.word	_Label_937
	.word	-28
	.word	4
	.word	_Label_938
	.word	-32
	.word	4
	.word	_Label_939
	.word	-36
	.word	4
	.word	_Label_940
	.word	-40
	.word	4
	.word	_Label_941
	.word	-44
	.word	4
	.word	_Label_942
	.word	-48
	.word	4
	.word	_Label_943
	.word	-52
	.word	4
	.word	_Label_944
	.word	-56
	.word	4
	.word	_Label_945
	.word	-60
	.word	4
	.word	_Label_946
	.word	-64
	.word	4
	.word	_Label_947
	.word	-68
	.word	4
	.word	_Label_948
	.word	-72
	.word	4
	.word	_Label_949
	.word	-76
	.word	4
	.word	_Label_950
	.word	-80
	.word	4
	.word	_Label_951
	.word	-84
	.word	4
	.word	_Label_952
	.word	-88
	.word	4
	.word	_Label_953
	.word	-112
	.word	24
	.word	_Label_954
	.word	-116
	.word	4
	.word	_Label_955
	.word	-120
	.word	4
	.word	_Label_956
	.word	-124
	.word	4
	.word	0
_Label_931:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_932:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_953:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_954:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_955:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_956:
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
_Label_4045:
	push	r0
	sub	r1,1,r1
	bne	_Label_4045
	mov	1907,r13		! source line 1907
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_960		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_960
	jmp	_Label_957
_Label_960:
!   if fileDesc <= 9 then goto _Label_959		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_959
	jmp	_Label_957
_Label_959:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_963 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-360]
!   Data Move: _temp_962 = *_temp_963  (sizeInBytes=4)
	load	[r14+-360],r1
	load	[r1],r1
	store	r1,[r14+-364]
!   if intIsZero (_temp_962) then goto _runtimeErrorNullPointer
	load	[r14+-364],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_964 = _temp_962 + 124
	load	[r14+-364],r1
	add	r1,124,r1
	store	r1,[r14+-356]
!   Move address of _temp_964 [fileDesc ] into _temp_965
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
!   Data Move: _temp_961 = *_temp_965  (sizeInBytes=4)
	load	[r14+-352],r1
	load	[r1],r1
	store	r1,[r14+-368]
!   if intIsZero (_temp_961) then goto _Label_957
	load	[r14+-368],r1
	cmp	r1,r0
	be	_Label_957
	jmp	_Label_958
_Label_957:
! THEN...
	mov	1921,r13		! source line 1921
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_966 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-348]
!   Prepare Argument: offset=8  value=_temp_966  sizeInBytes=4
	load	[r14+-348],r1
	store	r1,[r15+0]
!   Call the function
	mov	1921,r13		! source line 1921
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1922,r13		! source line 1922
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,416,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_958:
! IF STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_968		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_968
!	jmp	_Label_967
_Label_967:
! THEN...
	mov	1926,r13		! source line 1926
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_969 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-344]
!   Prepare Argument: offset=8  value=_temp_969  sizeInBytes=4
	load	[r14+-344],r1
	store	r1,[r15+0]
!   Call the function
	mov	1926,r13		! source line 1926
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1927,r13		! source line 1927
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1928,r13		! source line 1928
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,416,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_968:
! IF STATEMENT...
	mov	1931,r13		! source line 1931
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_975 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-328]
!   Data Move: _temp_974 = *_temp_975  (sizeInBytes=4)
	load	[r14+-328],r1
	load	[r1],r1
	store	r1,[r14+-332]
!   if intIsZero (_temp_974) then goto _runtimeErrorNullPointer
	load	[r14+-332],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_976 = _temp_974 + 124
	load	[r14+-332],r1
	add	r1,124,r1
	store	r1,[r14+-324]
!   Move address of _temp_976 [fileDesc ] into _temp_977
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
!   Data Move: _temp_973 = *_temp_977  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r1],r1
	store	r1,[r14+-336]
!   if intIsZero (_temp_973) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_978 = _temp_973 + 20
	load	[r14+-336],r1
	add	r1,20,r1
	store	r1,[r14+-316]
!   Data Move: _temp_972 = *_temp_978  (sizeInBytes=4)
	load	[r14+-316],r1
	load	[r1],r1
	store	r1,[r14+-340]
!   if intIsZero (_temp_972) then goto _Label_970
	load	[r14+-340],r1
	cmp	r1,r0
	be	_Label_970
	jmp	_Label_971
_Label_970:
! THEN...
	mov	1932,r13		! source line 1932
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_979 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-312]
!   Prepare Argument: offset=8  value=_temp_979  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Call the function
	mov	1932,r13		! source line 1932
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1933,r13		! source line 1933
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1934,r13		! source line 1934
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,416,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_971:
! ASSIGNMENT STATEMENT...
	mov	1937,r13		! source line 1937
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_983 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-296]
!   Data Move: _temp_982 = *_temp_983  (sizeInBytes=4)
	load	[r14+-296],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   if intIsZero (_temp_982) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_984 = _temp_982 + 124
	load	[r14+-300],r1
	add	r1,124,r1
	store	r1,[r14+-292]
!   Move address of _temp_984 [fileDesc ] into _temp_985
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
!   Data Move: _temp_981 = *_temp_985  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   if intIsZero (_temp_981) then goto _runtimeErrorNullPointer
	load	[r14+-304],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_986 = _temp_981 + 20
	load	[r14+-304],r1
	add	r1,20,r1
	store	r1,[r14+-284]
!   Data Move: _temp_980 = *_temp_986  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r1],r1
	store	r1,[r14+-308]
!   if intIsZero (_temp_980) then goto _runtimeErrorNullPointer
	load	[r14+-308],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_987 = _temp_980 + 24
	load	[r14+-308],r1
	add	r1,24,r1
	store	r1,[r14+-280]
!   Data Move: sizeOfFile = *_temp_987  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r1],r1
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	1938,r13		! source line 1938
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-372]
! ASSIGNMENT STATEMENT...
	mov	1939,r13		! source line 1939
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
	mov	1940,r13		! source line 1940
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
	mov	1941,r13		! source line 1941
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	1942,r13		! source line 1942
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_990 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-268]
!   Data Move: _temp_989 = *_temp_990  (sizeInBytes=4)
	load	[r14+-268],r1
	load	[r1],r1
	store	r1,[r14+-272]
!   if intIsZero (_temp_989) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_991 = _temp_989 + 124
	load	[r14+-272],r1
	add	r1,124,r1
	store	r1,[r14+-264]
!   Move address of _temp_991 [fileDesc ] into _temp_992
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
!   Data Move: _temp_988 = *_temp_992  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r1],r1
	store	r1,[r14+-276]
!   if intIsZero (_temp_988) then goto _runtimeErrorNullPointer
	load	[r14+-276],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_993 = _temp_988 + 16
	load	[r14+-276],r1
	add	r1,16,r1
	store	r1,[r14+-256]
!   Data Move: nextPosInFile = *_temp_993  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-388]
! WHILE STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0WH",r10
_Label_994:
!	jmp	_Label_995
_Label_995:
	mov	1944,r13		! source line 1944
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-380],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! IF STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0IF",r10
!   _temp_999 = nextPosInFile + chunkSize		(int)
	load	[r14+-388],r1
	load	[r14+-384],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
!   if _temp_999 <= sizeOfFile then goto _Label_998		(int)
	load	[r14+-252],r1
	load	[r14+-400],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_998
!	jmp	_Label_997
_Label_997:
! THEN...
	mov	1948,r13		! source line 1948
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1948,r13		! source line 1948
	mov	"\0\0AS",r10
!   chunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-400],r1
	load	[r14+-388],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! END IF...
_Label_998:
! IF STATEMENT...
	mov	1950,r13		! source line 1950
	mov	"\0\0IF",r10
!   _temp_1002 = copiedSoFar + chunkSize		(int)
	load	[r14+-392],r1
	load	[r14+-384],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
!   if _temp_1002 <= sizeInBytes then goto _Label_1001		(int)
	load	[r14+-248],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1001
!	jmp	_Label_1000
_Label_1000:
! THEN...
	mov	1951,r13		! source line 1951
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-392],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! END IF...
_Label_1001:
! IF STATEMENT...
	mov	1953,r13		! source line 1953
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1004		(int)
	load	[r14+-384],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1004
!	jmp	_Label_1003
_Label_1003:
! THEN...
	mov	1954,r13		! source line 1954
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1954,r13		! source line 1954
	mov	"\0\0BR",r10
	jmp	_Label_996
! END IF...
_Label_1004:
! IF STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0IF",r10
!   if virtAddr >= 0 then goto _Label_1009		(int)
	load	[r14+-372],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1009
	jmp	_Label_1005
_Label_1009:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1013 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-232]
!   Data Move: _temp_1012 = *_temp_1013  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_1012) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1014 = _temp_1012 + 32
	load	[r14+-236],r1
	add	r1,32,r1
	store	r1,[r14+-228]
!   _temp_1015 = _temp_1014 + 4
	load	[r14+-228],r1
	add	r1,4,r1
	store	r1,[r14+-224]
!   Data Move: _temp_1011 = *_temp_1015  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   _temp_1010 = _temp_1011 - 1		(int)
	load	[r14+-240],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
!   if virtPage <= _temp_1010 then goto _Label_1008		(int)
	load	[r14+-376],r1
	load	[r14+-244],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1008
	jmp	_Label_1005
_Label_1008:
	mov	1958,r13		! source line 1958
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1018 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-216]
!   Data Move: _temp_1017 = *_temp_1018  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_1017) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1019 = _temp_1017 + 32
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
!   Retrieve Result: targetName=_temp_1016  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_1016 then goto _Label_1007 else goto _Label_1005
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1005
	jmp	_Label_1007
_Label_1007:
	mov	1958,r13		! source line 1958
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1022 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-204]
!   Data Move: _temp_1021 = *_temp_1022  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if intIsZero (_temp_1021) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1023 = _temp_1021 + 32
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
!   Retrieve Result: targetName=_temp_1020  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1020 then goto _Label_1006 else goto _Label_1005
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1005
	jmp	_Label_1006
_Label_1005:
! THEN...
	mov	1959,r13		! source line 1959
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1024 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=8  value=_temp_1024  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	1959,r13		! source line 1959
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1960,r13		! source line 1960
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,416,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1006:
! ASSIGNMENT STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-388],r1
	load	[r14+-384],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-392],r1
	load	[r14+-384],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-376],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-380]
! IF STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1026		(int)
	load	[r14+-392],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1026
!	jmp	_Label_1025
_Label_1025:
! THEN...
	mov	1969,r13		! source line 1969
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1969,r13		! source line 1969
	mov	"\0\0BR",r10
	jmp	_Label_996
! END IF...
_Label_1026:
! END WHILE...
	jmp	_Label_994
_Label_996:
! ASSIGNMENT STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-372]
! ASSIGNMENT STATEMENT...
	mov	1974,r13		! source line 1974
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
	mov	1975,r13		! source line 1975
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
	mov	1976,r13		! source line 1976
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1029 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_1028 = *_temp_1029  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1028) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1030 = _temp_1028 + 124
	load	[r14+-188],r1
	add	r1,124,r1
	store	r1,[r14+-180]
!   Move address of _temp_1030 [fileDesc ] into _temp_1031
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
!   Data Move: _temp_1027 = *_temp_1031  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1027) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1032 = _temp_1027 + 16
	load	[r14+-192],r1
	add	r1,16,r1
	store	r1,[r14+-172]
!   Data Move: nextPosInFile = *_temp_1032  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-388]
! WHILE STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0WH",r10
_Label_1033:
!	jmp	_Label_1034
_Label_1034:
	mov	1978,r13		! source line 1978
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1980,r13		! source line 1980
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-380],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! IF STATEMENT...
	mov	1981,r13		! source line 1981
	mov	"\0\0IF",r10
!   _temp_1038 = nextPosInFile + chunkSize		(int)
	load	[r14+-388],r1
	load	[r14+-384],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
!   if _temp_1038 <= sizeOfFile then goto _Label_1037		(int)
	load	[r14+-168],r1
	load	[r14+-400],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1037
!	jmp	_Label_1036
_Label_1036:
! THEN...
	mov	1982,r13		! source line 1982
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0AS",r10
!   chunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-400],r1
	load	[r14+-388],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! END IF...
_Label_1037:
! IF STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0IF",r10
!   _temp_1041 = copiedSoFar + chunkSize		(int)
	load	[r14+-392],r1
	load	[r14+-384],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
!   if _temp_1041 <= sizeInBytes then goto _Label_1040		(int)
	load	[r14+-164],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1040
!	jmp	_Label_1039
_Label_1039:
! THEN...
	mov	1985,r13		! source line 1985
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-392],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! END IF...
_Label_1040:
! IF STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1043		(int)
	load	[r14+-384],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1043
!	jmp	_Label_1042
_Label_1042:
! THEN...
	mov	1988,r13		! source line 1988
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0BR",r10
	jmp	_Label_1035
! END IF...
_Label_1043:
! IF STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0IF",r10
!   if virtAddr >= 0 then goto _Label_1048		(int)
	load	[r14+-372],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1048
	jmp	_Label_1044
_Label_1048:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1052 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1051 = *_temp_1052  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1051) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1053 = _temp_1051 + 32
	load	[r14+-152],r1
	add	r1,32,r1
	store	r1,[r14+-144]
!   _temp_1054 = _temp_1053 + 4
	load	[r14+-144],r1
	add	r1,4,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1050 = *_temp_1054  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   _temp_1049 = _temp_1050 - 1		(int)
	load	[r14+-156],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if virtPage <= _temp_1049 then goto _Label_1047		(int)
	load	[r14+-376],r1
	load	[r14+-160],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1047
	jmp	_Label_1044
_Label_1047:
	mov	1992,r13		! source line 1992
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1057 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-132]
!   Data Move: _temp_1056 = *_temp_1057  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_1056) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1058 = _temp_1056 + 32
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
!   Retrieve Result: targetName=_temp_1055  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1055 then goto _Label_1046 else goto _Label_1044
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1044
	jmp	_Label_1046
_Label_1046:
	mov	1992,r13		! source line 1992
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1061 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: _temp_1060 = *_temp_1061  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_1060) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1062 = _temp_1060 + 32
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
!   Retrieve Result: targetName=_temp_1059  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1059 then goto _Label_1045 else goto _Label_1044
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1044
	jmp	_Label_1045
_Label_1044:
! THEN...
	mov	1993,r13		! source line 1993
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1063 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1063  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1993,r13		! source line 1993
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1994,r13		! source line 1994
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,416,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1045:
! SEND STATEMENT...
	mov	1998,r13		! source line 1998
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1065 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1064 = *_temp_1065  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1064) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1066 = _temp_1064 + 32
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
	mov	1999,r13		! source line 1999
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1068 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1067 = *_temp_1068  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1067) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1069 = _temp_1067 + 32
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
	mov	2000,r13		! source line 2000
	mov	"\0\0AS",r10
	mov	2000,r13		! source line 2000
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1072 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1071 = *_temp_1072  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1071) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1073 = _temp_1071 + 32
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
!   Retrieve Result: targetName=_temp_1070  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   destAddr = _temp_1070 + offset		(int)
	load	[r14+-84],r1
	load	[r14+-380],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2001,r13		! source line 2001
	mov	"\0\0AS",r10
	mov	2001,r13		! source line 2001
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1076 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1075 = *_temp_1076  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1075) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1077 = _temp_1075 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1077 [fileDesc ] into _temp_1078
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
!   Data Move: _temp_1074 = *_temp_1078  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_1079 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1074  sizeInBytes=4
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
	mov	2002,r13		! source line 2002
	mov	"\0\0IF",r10
!   if readStat then goto _Label_1081 else goto _Label_1080
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1080
	jmp	_Label_1081
_Label_1080:
! THEN...
	mov	2003,r13		! source line 2003
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1082 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1082  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	2003,r13		! source line 2003
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2004,r13		! source line 2004
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,416,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1081:
! ASSIGNMENT STATEMENT...
	mov	2008,r13		! source line 2008
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-388],r1
	load	[r14+-384],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2009,r13		! source line 2009
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-392],r1
	load	[r14+-384],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-376],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	2011,r13		! source line 2011
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-380]
! IF STATEMENT...
	mov	2013,r13		! source line 2013
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1084		(int)
	load	[r14+-392],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1084
!	jmp	_Label_1083
_Label_1083:
! THEN...
	mov	2014,r13		! source line 2014
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0BR",r10
	jmp	_Label_1035
! END IF...
_Label_1084:
! END WHILE...
	jmp	_Label_1033
_Label_1035:
! ASSIGNMENT STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1087 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1086 = *_temp_1087  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1086) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1088 = _temp_1086 + 124
	load	[r14+-36],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Move address of _temp_1088 [fileDesc ] into _temp_1089
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
!   Data Move: _temp_1085 = *_temp_1089  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1085) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1090 = _temp_1085 + 16
	load	[r14+-40],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1090 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-388],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2020,r13		! source line 2020
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
	.word	_Label_1091
	.word	12		! total size of parameters
	.word	412		! frame size = 412
	.word	_Label_1092
	.word	8
	.word	4
	.word	_Label_1093
	.word	12
	.word	4
	.word	_Label_1094
	.word	16
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
	.word	_Label_1098
	.word	-32
	.word	4
	.word	_Label_1099
	.word	-36
	.word	4
	.word	_Label_1100
	.word	-40
	.word	4
	.word	_Label_1101
	.word	-44
	.word	4
	.word	_Label_1102
	.word	-48
	.word	4
	.word	_Label_1103
	.word	-52
	.word	4
	.word	_Label_1104
	.word	-56
	.word	4
	.word	_Label_1105
	.word	-60
	.word	4
	.word	_Label_1106
	.word	-64
	.word	4
	.word	_Label_1107
	.word	-68
	.word	4
	.word	_Label_1108
	.word	-72
	.word	4
	.word	_Label_1109
	.word	-76
	.word	4
	.word	_Label_1110
	.word	-80
	.word	4
	.word	_Label_1111
	.word	-84
	.word	4
	.word	_Label_1112
	.word	-88
	.word	4
	.word	_Label_1113
	.word	-92
	.word	4
	.word	_Label_1114
	.word	-96
	.word	4
	.word	_Label_1115
	.word	-100
	.word	4
	.word	_Label_1116
	.word	-104
	.word	4
	.word	_Label_1117
	.word	-108
	.word	4
	.word	_Label_1118
	.word	-112
	.word	4
	.word	_Label_1119
	.word	-116
	.word	4
	.word	_Label_1120
	.word	-120
	.word	4
	.word	_Label_1121
	.word	-124
	.word	4
	.word	_Label_1122
	.word	-9
	.word	1
	.word	_Label_1123
	.word	-128
	.word	4
	.word	_Label_1124
	.word	-132
	.word	4
	.word	_Label_1125
	.word	-136
	.word	4
	.word	_Label_1126
	.word	-10
	.word	1
	.word	_Label_1127
	.word	-140
	.word	4
	.word	_Label_1128
	.word	-144
	.word	4
	.word	_Label_1129
	.word	-148
	.word	4
	.word	_Label_1130
	.word	-152
	.word	4
	.word	_Label_1131
	.word	-156
	.word	4
	.word	_Label_1132
	.word	-160
	.word	4
	.word	_Label_1133
	.word	-164
	.word	4
	.word	_Label_1134
	.word	-168
	.word	4
	.word	_Label_1135
	.word	-172
	.word	4
	.word	_Label_1136
	.word	-176
	.word	4
	.word	_Label_1137
	.word	-180
	.word	4
	.word	_Label_1138
	.word	-184
	.word	4
	.word	_Label_1139
	.word	-188
	.word	4
	.word	_Label_1140
	.word	-192
	.word	4
	.word	_Label_1141
	.word	-196
	.word	4
	.word	_Label_1142
	.word	-200
	.word	4
	.word	_Label_1143
	.word	-204
	.word	4
	.word	_Label_1144
	.word	-208
	.word	4
	.word	_Label_1145
	.word	-11
	.word	1
	.word	_Label_1146
	.word	-212
	.word	4
	.word	_Label_1147
	.word	-216
	.word	4
	.word	_Label_1148
	.word	-220
	.word	4
	.word	_Label_1149
	.word	-12
	.word	1
	.word	_Label_1150
	.word	-224
	.word	4
	.word	_Label_1151
	.word	-228
	.word	4
	.word	_Label_1152
	.word	-232
	.word	4
	.word	_Label_1153
	.word	-236
	.word	4
	.word	_Label_1154
	.word	-240
	.word	4
	.word	_Label_1155
	.word	-244
	.word	4
	.word	_Label_1156
	.word	-248
	.word	4
	.word	_Label_1157
	.word	-252
	.word	4
	.word	_Label_1158
	.word	-256
	.word	4
	.word	_Label_1159
	.word	-260
	.word	4
	.word	_Label_1160
	.word	-264
	.word	4
	.word	_Label_1161
	.word	-268
	.word	4
	.word	_Label_1162
	.word	-272
	.word	4
	.word	_Label_1163
	.word	-276
	.word	4
	.word	_Label_1164
	.word	-280
	.word	4
	.word	_Label_1165
	.word	-284
	.word	4
	.word	_Label_1166
	.word	-288
	.word	4
	.word	_Label_1167
	.word	-292
	.word	4
	.word	_Label_1168
	.word	-296
	.word	4
	.word	_Label_1169
	.word	-300
	.word	4
	.word	_Label_1170
	.word	-304
	.word	4
	.word	_Label_1171
	.word	-308
	.word	4
	.word	_Label_1172
	.word	-312
	.word	4
	.word	_Label_1173
	.word	-316
	.word	4
	.word	_Label_1174
	.word	-320
	.word	4
	.word	_Label_1175
	.word	-324
	.word	4
	.word	_Label_1176
	.word	-328
	.word	4
	.word	_Label_1177
	.word	-332
	.word	4
	.word	_Label_1178
	.word	-336
	.word	4
	.word	_Label_1179
	.word	-340
	.word	4
	.word	_Label_1180
	.word	-344
	.word	4
	.word	_Label_1181
	.word	-348
	.word	4
	.word	_Label_1182
	.word	-352
	.word	4
	.word	_Label_1183
	.word	-356
	.word	4
	.word	_Label_1184
	.word	-360
	.word	4
	.word	_Label_1185
	.word	-364
	.word	4
	.word	_Label_1186
	.word	-368
	.word	4
	.word	_Label_1187
	.word	-372
	.word	4
	.word	_Label_1188
	.word	-376
	.word	4
	.word	_Label_1189
	.word	-380
	.word	4
	.word	_Label_1190
	.word	-384
	.word	4
	.word	_Label_1191
	.word	-388
	.word	4
	.word	_Label_1192
	.word	-392
	.word	4
	.word	_Label_1193
	.word	-396
	.word	4
	.word	_Label_1194
	.word	-13
	.word	1
	.word	_Label_1195
	.word	-400
	.word	4
	.word	0
_Label_1091:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1092:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1093:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1094:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1122:
	.byte	'C'
	.ascii	"_temp_1059\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1126:
	.byte	'C'
	.ascii	"_temp_1055\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1145:
	.byte	'C'
	.ascii	"_temp_1020\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1149:
	.byte	'C'
	.ascii	"_temp_1016\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_1187:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1188:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1189:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1190:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1191:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1192:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1193:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1194:
	.byte	'B'
	.ascii	"readStat\0"
	.align
_Label_1195:
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
_Label_4046:
	push	r0
	sub	r1,1,r1
	bne	_Label_4046
	mov	2025,r13		! source line 2025
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1199		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1199
	jmp	_Label_1196
_Label_1199:
!   if fileDesc <= 9 then goto _Label_1198		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1198
	jmp	_Label_1196
_Label_1198:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1202 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-348]
!   Data Move: _temp_1201 = *_temp_1202  (sizeInBytes=4)
	load	[r14+-348],r1
	load	[r1],r1
	store	r1,[r14+-352]
!   if intIsZero (_temp_1201) then goto _runtimeErrorNullPointer
	load	[r14+-352],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1203 = _temp_1201 + 124
	load	[r14+-352],r1
	add	r1,124,r1
	store	r1,[r14+-344]
!   Move address of _temp_1203 [fileDesc ] into _temp_1204
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
!   Data Move: _temp_1200 = *_temp_1204  (sizeInBytes=4)
	load	[r14+-340],r1
	load	[r1],r1
	store	r1,[r14+-356]
!   if intIsZero (_temp_1200) then goto _Label_1196
	load	[r14+-356],r1
	cmp	r1,r0
	be	_Label_1196
	jmp	_Label_1197
_Label_1196:
! THEN...
	mov	2040,r13		! source line 2040
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1205 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-336]
!   Prepare Argument: offset=8  value=_temp_1205  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+0]
!   Call the function
	mov	2040,r13		! source line 2040
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2041,r13		! source line 2041
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,404,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1197:
! IF STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1207		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1207
!	jmp	_Label_1206
_Label_1206:
! THEN...
	mov	2045,r13		! source line 2045
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1208 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-332]
!   Prepare Argument: offset=8  value=_temp_1208  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Call the function
	mov	2045,r13		! source line 2045
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2046,r13		! source line 2046
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,404,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1207:
! IF STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1214 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-316]
!   Data Move: _temp_1213 = *_temp_1214  (sizeInBytes=4)
	load	[r14+-316],r1
	load	[r1],r1
	store	r1,[r14+-320]
!   if intIsZero (_temp_1213) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1215 = _temp_1213 + 124
	load	[r14+-320],r1
	add	r1,124,r1
	store	r1,[r14+-312]
!   Move address of _temp_1215 [fileDesc ] into _temp_1216
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
!   Data Move: _temp_1212 = *_temp_1216  (sizeInBytes=4)
	load	[r14+-308],r1
	load	[r1],r1
	store	r1,[r14+-324]
!   if intIsZero (_temp_1212) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1217 = _temp_1212 + 20
	load	[r14+-324],r1
	add	r1,20,r1
	store	r1,[r14+-304]
!   Data Move: _temp_1211 = *_temp_1217  (sizeInBytes=4)
	load	[r14+-304],r1
	load	[r1],r1
	store	r1,[r14+-328]
!   if intIsZero (_temp_1211) then goto _Label_1209
	load	[r14+-328],r1
	cmp	r1,r0
	be	_Label_1209
	jmp	_Label_1210
_Label_1209:
! THEN...
	mov	2050,r13		! source line 2050
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1218 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-300]
!   Prepare Argument: offset=8  value=_temp_1218  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Call the function
	mov	2050,r13		! source line 2050
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2051,r13		! source line 2051
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,404,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1210:
! ASSIGNMENT STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1222 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-284]
!   Data Move: _temp_1221 = *_temp_1222  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_1221) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1223 = _temp_1221 + 124
	load	[r14+-288],r1
	add	r1,124,r1
	store	r1,[r14+-280]
!   Move address of _temp_1223 [fileDesc ] into _temp_1224
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
!   Data Move: _temp_1220 = *_temp_1224  (sizeInBytes=4)
	load	[r14+-276],r1
	load	[r1],r1
	store	r1,[r14+-292]
!   if intIsZero (_temp_1220) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1225 = _temp_1220 + 20
	load	[r14+-292],r1
	add	r1,20,r1
	store	r1,[r14+-272]
!   Data Move: _temp_1219 = *_temp_1225  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_1219) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1226 = _temp_1219 + 24
	load	[r14+-296],r1
	add	r1,24,r1
	store	r1,[r14+-268]
!   Data Move: sizeOfFile = *_temp_1226  (sizeInBytes=4)
	load	[r14+-268],r1
	load	[r1],r1
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-360]
! ASSIGNMENT STATEMENT...
	mov	2057,r13		! source line 2057
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
	mov	2058,r13		! source line 2058
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
	mov	2059,r13		! source line 2059
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1229 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: _temp_1228 = *_temp_1229  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_1228) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1230 = _temp_1228 + 124
	load	[r14+-260],r1
	add	r1,124,r1
	store	r1,[r14+-252]
!   Move address of _temp_1230 [fileDesc ] into _temp_1231
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
!   Data Move: _temp_1227 = *_temp_1231  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-264]
!   if intIsZero (_temp_1227) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1232 = _temp_1227 + 16
	load	[r14+-264],r1
	add	r1,16,r1
	store	r1,[r14+-244]
!   Data Move: nextPosInFile = *_temp_1232  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-376]
! WHILE STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0WH",r10
_Label_1233:
!	jmp	_Label_1234
_Label_1234:
	mov	2061,r13		! source line 2061
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-368],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
! IF STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0IF",r10
!   _temp_1238 = nextPosInFile + chunkSize		(int)
	load	[r14+-376],r1
	load	[r14+-372],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
!   if _temp_1238 <= sizeOfFile then goto _Label_1237		(int)
	load	[r14+-240],r1
	load	[r14+-388],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1237
!	jmp	_Label_1236
_Label_1236:
! THEN...
	mov	2065,r13		! source line 2065
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0AS",r10
!   chunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-388],r1
	load	[r14+-376],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
! END IF...
_Label_1237:
! IF STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0IF",r10
!   _temp_1241 = copiedSoFar + chunkSize		(int)
	load	[r14+-380],r1
	load	[r14+-372],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
!   if _temp_1241 <= sizeInBytes then goto _Label_1240		(int)
	load	[r14+-236],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1240
!	jmp	_Label_1239
_Label_1239:
! THEN...
	mov	2068,r13		! source line 2068
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-380],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
! END IF...
_Label_1240:
! IF STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1243		(int)
	load	[r14+-372],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1243
!	jmp	_Label_1242
_Label_1242:
! THEN...
	mov	2071,r13		! source line 2071
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0BR",r10
	jmp	_Label_1235
! END IF...
_Label_1243:
! IF STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0IF",r10
!   if virtAddr >= 0 then goto _Label_1248		(int)
	load	[r14+-360],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1248
	jmp	_Label_1244
_Label_1248:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1252 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-220]
!   Data Move: _temp_1251 = *_temp_1252  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_1251) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1253 = _temp_1251 + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-216]
!   _temp_1254 = _temp_1253 + 4
	load	[r14+-216],r1
	add	r1,4,r1
	store	r1,[r14+-212]
!   Data Move: _temp_1250 = *_temp_1254  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   _temp_1249 = _temp_1250 - 1		(int)
	load	[r14+-228],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
!   if virtPage <= _temp_1249 then goto _Label_1247		(int)
	load	[r14+-364],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1247
	jmp	_Label_1244
_Label_1247:
	mov	2075,r13		! source line 2075
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1257 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-204]
!   Data Move: _temp_1256 = *_temp_1257  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if intIsZero (_temp_1256) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1258 = _temp_1256 + 32
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
!   Retrieve Result: targetName=_temp_1255  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_1255 then goto _Label_1246 else goto _Label_1244
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1244
	jmp	_Label_1246
_Label_1246:
	mov	2075,r13		! source line 2075
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1261 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-192]
!   Data Move: _temp_1260 = *_temp_1261  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_1260) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1262 = _temp_1260 + 32
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
!   Retrieve Result: targetName=_temp_1259  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1259 then goto _Label_1245 else goto _Label_1244
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1244
	jmp	_Label_1245
_Label_1244:
! THEN...
	mov	2076,r13		! source line 2076
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1263 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1263  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	2076,r13		! source line 2076
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2077,r13		! source line 2077
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,404,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1245:
! ASSIGNMENT STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-376],r1
	load	[r14+-372],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-380],r1
	load	[r14+-372],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	2082,r13		! source line 2082
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-364],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-364]
! ASSIGNMENT STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-368]
! IF STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1265		(int)
	load	[r14+-380],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1265
!	jmp	_Label_1264
_Label_1264:
! THEN...
	mov	2086,r13		! source line 2086
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0BR",r10
	jmp	_Label_1235
! END IF...
_Label_1265:
! END WHILE...
	jmp	_Label_1233
_Label_1235:
! ASSIGNMENT STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-360]
! ASSIGNMENT STATEMENT...
	mov	2091,r13		! source line 2091
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
	mov	2092,r13		! source line 2092
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
	mov	2093,r13		! source line 2093
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1268 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1267 = *_temp_1268  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1267) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1269 = _temp_1267 + 124
	load	[r14+-176],r1
	add	r1,124,r1
	store	r1,[r14+-168]
!   Move address of _temp_1269 [fileDesc ] into _temp_1270
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
!   Data Move: _temp_1266 = *_temp_1270  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_1266) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1271 = _temp_1266 + 16
	load	[r14+-180],r1
	add	r1,16,r1
	store	r1,[r14+-160]
!   Data Move: nextPosInFile = *_temp_1271  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-376]
! WHILE STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0WH",r10
_Label_1272:
!	jmp	_Label_1273
_Label_1273:
	mov	2095,r13		! source line 2095
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-368],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
! IF STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0IF",r10
!   _temp_1277 = nextPosInFile + chunkSize		(int)
	load	[r14+-376],r1
	load	[r14+-372],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   if _temp_1277 <= sizeOfFile then goto _Label_1276		(int)
	load	[r14+-156],r1
	load	[r14+-388],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1276
!	jmp	_Label_1275
_Label_1275:
! THEN...
	mov	2099,r13		! source line 2099
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0AS",r10
!   chunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-388],r1
	load	[r14+-376],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
! END IF...
_Label_1276:
! IF STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0IF",r10
!   _temp_1280 = copiedSoFar + chunkSize		(int)
	load	[r14+-380],r1
	load	[r14+-372],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if _temp_1280 <= sizeInBytes then goto _Label_1279		(int)
	load	[r14+-152],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1279
!	jmp	_Label_1278
_Label_1278:
! THEN...
	mov	2102,r13		! source line 2102
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-380],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
! END IF...
_Label_1279:
! IF STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1282		(int)
	load	[r14+-372],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1282
!	jmp	_Label_1281
_Label_1281:
! THEN...
	mov	2105,r13		! source line 2105
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0BR",r10
	jmp	_Label_1274
! END IF...
_Label_1282:
! IF STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0IF",r10
!   if virtAddr >= 0 then goto _Label_1287		(int)
	load	[r14+-360],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1287
	jmp	_Label_1283
_Label_1287:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1291 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1290 = *_temp_1291  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1290) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1292 = _temp_1290 + 32
	load	[r14+-140],r1
	add	r1,32,r1
	store	r1,[r14+-132]
!   _temp_1293 = _temp_1292 + 4
	load	[r14+-132],r1
	add	r1,4,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1289 = *_temp_1293  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   _temp_1288 = _temp_1289 - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
!   if virtPage <= _temp_1288 then goto _Label_1286		(int)
	load	[r14+-364],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1286
	jmp	_Label_1283
_Label_1286:
	mov	2109,r13		! source line 2109
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1296 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: _temp_1295 = *_temp_1296  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_1295) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1297 = _temp_1295 + 32
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
!   Retrieve Result: targetName=_temp_1294  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1294 then goto _Label_1285 else goto _Label_1283
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1283
	jmp	_Label_1285
_Label_1285:
	mov	2109,r13		! source line 2109
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1300 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1299 = *_temp_1300  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1299) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1301 = _temp_1299 + 32
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
!   Retrieve Result: targetName=_temp_1298  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1298 then goto _Label_1284 else goto _Label_1283
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1283
	jmp	_Label_1284
_Label_1283:
! THEN...
	mov	2110,r13		! source line 2110
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1302 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_1302  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	2110,r13		! source line 2110
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,404,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1284:
! SEND STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1304 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1303 = *_temp_1304  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1303) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1305 = _temp_1303 + 32
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
	mov	2116,r13		! source line 2116
	mov	"\0\0AS",r10
	mov	2116,r13		! source line 2116
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1308 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1307 = *_temp_1308  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1307) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1309 = _temp_1307 + 32
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
!   Retrieve Result: targetName=_temp_1306  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   destAddr = _temp_1306 + offset		(int)
	load	[r14+-84],r1
	load	[r14+-368],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! ASSIGNMENT STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0AS",r10
	mov	2117,r13		! source line 2117
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1312 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1311 = *_temp_1312  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1311) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1313 = _temp_1311 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1313 [fileDesc ] into _temp_1314
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
!   Data Move: _temp_1310 = *_temp_1314  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_1315 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1310  sizeInBytes=4
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
	mov	2118,r13		! source line 2118
	mov	"\0\0IF",r10
!   if writeStat then goto _Label_1317 else goto _Label_1316
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1316
	jmp	_Label_1317
_Label_1316:
! THEN...
	mov	2119,r13		! source line 2119
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1318 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1318  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	2119,r13		! source line 2119
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,404,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1317:
! ASSIGNMENT STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-376],r1
	load	[r14+-372],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-380],r1
	load	[r14+-372],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-364],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-364]
! ASSIGNMENT STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-368]
! IF STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1320		(int)
	load	[r14+-380],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1320
!	jmp	_Label_1319
_Label_1319:
! THEN...
	mov	2130,r13		! source line 2130
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0BR",r10
	jmp	_Label_1274
! END IF...
_Label_1320:
! END WHILE...
	jmp	_Label_1272
_Label_1274:
! ASSIGNMENT STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1323 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1322 = *_temp_1323  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1322) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1324 = _temp_1322 + 124
	load	[r14+-36],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Move address of _temp_1324 [fileDesc ] into _temp_1325
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
!   Data Move: _temp_1321 = *_temp_1325  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1321) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1326 = _temp_1321 + 16
	load	[r14+-40],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1326 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-376],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2136,r13		! source line 2136
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
	.word	_Label_1327
	.word	12		! total size of parameters
	.word	400		! frame size = 400
	.word	_Label_1328
	.word	8
	.word	4
	.word	_Label_1329
	.word	12
	.word	4
	.word	_Label_1330
	.word	16
	.word	4
	.word	_Label_1331
	.word	-20
	.word	4
	.word	_Label_1332
	.word	-24
	.word	4
	.word	_Label_1333
	.word	-28
	.word	4
	.word	_Label_1334
	.word	-32
	.word	4
	.word	_Label_1335
	.word	-36
	.word	4
	.word	_Label_1336
	.word	-40
	.word	4
	.word	_Label_1337
	.word	-44
	.word	4
	.word	_Label_1338
	.word	-48
	.word	4
	.word	_Label_1339
	.word	-52
	.word	4
	.word	_Label_1340
	.word	-56
	.word	4
	.word	_Label_1341
	.word	-60
	.word	4
	.word	_Label_1342
	.word	-64
	.word	4
	.word	_Label_1343
	.word	-68
	.word	4
	.word	_Label_1344
	.word	-72
	.word	4
	.word	_Label_1345
	.word	-76
	.word	4
	.word	_Label_1346
	.word	-80
	.word	4
	.word	_Label_1347
	.word	-84
	.word	4
	.word	_Label_1348
	.word	-88
	.word	4
	.word	_Label_1349
	.word	-92
	.word	4
	.word	_Label_1350
	.word	-96
	.word	4
	.word	_Label_1351
	.word	-100
	.word	4
	.word	_Label_1352
	.word	-104
	.word	4
	.word	_Label_1353
	.word	-108
	.word	4
	.word	_Label_1354
	.word	-112
	.word	4
	.word	_Label_1355
	.word	-9
	.word	1
	.word	_Label_1356
	.word	-116
	.word	4
	.word	_Label_1357
	.word	-120
	.word	4
	.word	_Label_1358
	.word	-124
	.word	4
	.word	_Label_1359
	.word	-10
	.word	1
	.word	_Label_1360
	.word	-128
	.word	4
	.word	_Label_1361
	.word	-132
	.word	4
	.word	_Label_1362
	.word	-136
	.word	4
	.word	_Label_1363
	.word	-140
	.word	4
	.word	_Label_1364
	.word	-144
	.word	4
	.word	_Label_1365
	.word	-148
	.word	4
	.word	_Label_1366
	.word	-152
	.word	4
	.word	_Label_1367
	.word	-156
	.word	4
	.word	_Label_1368
	.word	-160
	.word	4
	.word	_Label_1369
	.word	-164
	.word	4
	.word	_Label_1370
	.word	-168
	.word	4
	.word	_Label_1371
	.word	-172
	.word	4
	.word	_Label_1372
	.word	-176
	.word	4
	.word	_Label_1373
	.word	-180
	.word	4
	.word	_Label_1374
	.word	-184
	.word	4
	.word	_Label_1375
	.word	-188
	.word	4
	.word	_Label_1376
	.word	-192
	.word	4
	.word	_Label_1377
	.word	-196
	.word	4
	.word	_Label_1378
	.word	-11
	.word	1
	.word	_Label_1379
	.word	-200
	.word	4
	.word	_Label_1380
	.word	-204
	.word	4
	.word	_Label_1381
	.word	-208
	.word	4
	.word	_Label_1382
	.word	-12
	.word	1
	.word	_Label_1383
	.word	-212
	.word	4
	.word	_Label_1384
	.word	-216
	.word	4
	.word	_Label_1385
	.word	-220
	.word	4
	.word	_Label_1386
	.word	-224
	.word	4
	.word	_Label_1387
	.word	-228
	.word	4
	.word	_Label_1388
	.word	-232
	.word	4
	.word	_Label_1389
	.word	-236
	.word	4
	.word	_Label_1390
	.word	-240
	.word	4
	.word	_Label_1391
	.word	-244
	.word	4
	.word	_Label_1392
	.word	-248
	.word	4
	.word	_Label_1393
	.word	-252
	.word	4
	.word	_Label_1394
	.word	-256
	.word	4
	.word	_Label_1395
	.word	-260
	.word	4
	.word	_Label_1396
	.word	-264
	.word	4
	.word	_Label_1397
	.word	-268
	.word	4
	.word	_Label_1398
	.word	-272
	.word	4
	.word	_Label_1399
	.word	-276
	.word	4
	.word	_Label_1400
	.word	-280
	.word	4
	.word	_Label_1401
	.word	-284
	.word	4
	.word	_Label_1402
	.word	-288
	.word	4
	.word	_Label_1403
	.word	-292
	.word	4
	.word	_Label_1404
	.word	-296
	.word	4
	.word	_Label_1405
	.word	-300
	.word	4
	.word	_Label_1406
	.word	-304
	.word	4
	.word	_Label_1407
	.word	-308
	.word	4
	.word	_Label_1408
	.word	-312
	.word	4
	.word	_Label_1409
	.word	-316
	.word	4
	.word	_Label_1410
	.word	-320
	.word	4
	.word	_Label_1411
	.word	-324
	.word	4
	.word	_Label_1412
	.word	-328
	.word	4
	.word	_Label_1413
	.word	-332
	.word	4
	.word	_Label_1414
	.word	-336
	.word	4
	.word	_Label_1415
	.word	-340
	.word	4
	.word	_Label_1416
	.word	-344
	.word	4
	.word	_Label_1417
	.word	-348
	.word	4
	.word	_Label_1418
	.word	-352
	.word	4
	.word	_Label_1419
	.word	-356
	.word	4
	.word	_Label_1420
	.word	-360
	.word	4
	.word	_Label_1421
	.word	-364
	.word	4
	.word	_Label_1422
	.word	-368
	.word	4
	.word	_Label_1423
	.word	-372
	.word	4
	.word	_Label_1424
	.word	-376
	.word	4
	.word	_Label_1425
	.word	-380
	.word	4
	.word	_Label_1426
	.word	-384
	.word	4
	.word	_Label_1427
	.word	-13
	.word	1
	.word	_Label_1428
	.word	-388
	.word	4
	.word	0
_Label_1327:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1328:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1329:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1330:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1355:
	.byte	'C'
	.ascii	"_temp_1298\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1359:
	.byte	'C'
	.ascii	"_temp_1294\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1378:
	.byte	'C'
	.ascii	"_temp_1259\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1382:
	.byte	'C'
	.ascii	"_temp_1255\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1420:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1421:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1422:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1423:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1424:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1425:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1426:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1427:
	.byte	'B'
	.ascii	"writeStat\0"
	.align
_Label_1428:
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
_Label_4047:
	push	r0
	sub	r1,1,r1
	bne	_Label_4047
	mov	2141,r13		! source line 2141
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0SE",r10
!   _temp_1429 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-140]
!   _temp_1430 = _temp_1429 + 4
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
	mov	2148,r13		! source line 2148
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1435		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1435
	jmp	_Label_1431
_Label_1435:
!   if fileDesc <= 9 then goto _Label_1434		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1434
	jmp	_Label_1431
_Label_1434:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1438 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-124]
!   Data Move: _temp_1437 = *_temp_1438  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_1437) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1439 = _temp_1437 + 124
	load	[r14+-128],r1
	add	r1,124,r1
	store	r1,[r14+-120]
!   Move address of _temp_1439 [fileDesc ] into _temp_1440
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
!   Data Move: _temp_1436 = *_temp_1440  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1436) then goto _Label_1431
	load	[r14+-132],r1
	cmp	r1,r0
	be	_Label_1431
!	jmp	_Label_1433
_Label_1433:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1444 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1443 = *_temp_1444  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1443) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1445 = _temp_1443 + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-96]
!   Move address of _temp_1445 [fileDesc ] into _temp_1446
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
!   Data Move: _temp_1442 = *_temp_1446  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1442) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1447 = _temp_1442 + 20
	load	[r14+-108],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1441 = *_temp_1447  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1441) then goto _Label_1431
	load	[r14+-112],r1
	cmp	r1,r0
	be	_Label_1431
	jmp	_Label_1432
_Label_1431:
! THEN...
	mov	2149,r13		! source line 2149
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1448 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1448  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	2149,r13		! source line 2149
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2150,r13		! source line 2150
	mov	"\0\0CA",r10
	call	_P_System_nl
! SEND STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0SE",r10
!   _temp_1449 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   _temp_1450 = _temp_1449 + 4
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
	mov	2152,r13		! source line 2152
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1432:
! ASSIGNMENT STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1452 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1451 = *_temp_1452  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1451) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1453 = _temp_1451 + 124
	load	[r14+-72],r1
	add	r1,124,r1
	store	r1,[r14+-64]
!   Move address of _temp_1453 [fileDesc ] into _temp_1454
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
!   Data Move: fp = *_temp_1454  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0AS",r10
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1456 = fp + 20
	load	[r14+-144],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1455 = *_temp_1456  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1455) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1457 = _temp_1455 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: N = *_temp_1457  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-148]
! IF STATEMENT...
	mov	2157,r13		! source line 2157
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1459		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1459
!	jmp	_Label_1458
_Label_1458:
! THEN...
	mov	2158,r13		! source line 2158
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2158,r13		! source line 2158
	mov	"\0\0AS",r10
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1460 = fp + 16
	load	[r14+-144],r1
	add	r1,16,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1460 = N  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0SE",r10
!   _temp_1461 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   _temp_1462 = _temp_1461 + 4
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
	mov	2160,r13		! source line 2160
	mov	"\0\0RE",r10
!   ReturnResult: N  (sizeInBytes=4)
	load	[r14+-148],r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1463
_Label_1459:
! ELSE...
	mov	2161,r13		! source line 2161
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0IF",r10
!   if newCurrentPos >= -1 then goto _Label_1466		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1466
	jmp	_Label_1464
_Label_1466:
!   if newCurrentPos <= N then goto _Label_1465		(int)
	load	[r14+12],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1465
!	jmp	_Label_1464
_Label_1464:
! THEN...
	mov	2162,r13		! source line 2162
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1467 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1467  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2162,r13		! source line 2162
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2163,r13		! source line 2163
	mov	"\0\0CA",r10
	call	_P_System_nl
! SEND STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0SE",r10
!   _temp_1468 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_1469 = _temp_1468 + 4
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
	mov	2165,r13		! source line 2165
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1470
_Label_1465:
! ELSE...
	mov	2167,r13		! source line 2167
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0AS",r10
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1471 = fp + 16
	load	[r14+-144],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1471 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0SE",r10
!   _temp_1472 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1473 = _temp_1472 + 4
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
	mov	2169,r13		! source line 2169
	mov	"\0\0RE",r10
!   ReturnResult: newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1470:
! END IF...
_Label_1463:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_1474
	.word	8		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_1475
	.word	8
	.word	4
	.word	_Label_1476
	.word	12
	.word	4
	.word	_Label_1477
	.word	-12
	.word	4
	.word	_Label_1478
	.word	-16
	.word	4
	.word	_Label_1479
	.word	-20
	.word	4
	.word	_Label_1480
	.word	-24
	.word	4
	.word	_Label_1481
	.word	-28
	.word	4
	.word	_Label_1482
	.word	-32
	.word	4
	.word	_Label_1483
	.word	-36
	.word	4
	.word	_Label_1484
	.word	-40
	.word	4
	.word	_Label_1485
	.word	-44
	.word	4
	.word	_Label_1486
	.word	-48
	.word	4
	.word	_Label_1487
	.word	-52
	.word	4
	.word	_Label_1488
	.word	-56
	.word	4
	.word	_Label_1489
	.word	-60
	.word	4
	.word	_Label_1490
	.word	-64
	.word	4
	.word	_Label_1491
	.word	-68
	.word	4
	.word	_Label_1492
	.word	-72
	.word	4
	.word	_Label_1493
	.word	-76
	.word	4
	.word	_Label_1494
	.word	-80
	.word	4
	.word	_Label_1495
	.word	-84
	.word	4
	.word	_Label_1496
	.word	-88
	.word	4
	.word	_Label_1497
	.word	-92
	.word	4
	.word	_Label_1498
	.word	-96
	.word	4
	.word	_Label_1499
	.word	-100
	.word	4
	.word	_Label_1500
	.word	-104
	.word	4
	.word	_Label_1501
	.word	-108
	.word	4
	.word	_Label_1502
	.word	-112
	.word	4
	.word	_Label_1503
	.word	-116
	.word	4
	.word	_Label_1504
	.word	-120
	.word	4
	.word	_Label_1505
	.word	-124
	.word	4
	.word	_Label_1506
	.word	-128
	.word	4
	.word	_Label_1507
	.word	-132
	.word	4
	.word	_Label_1508
	.word	-136
	.word	4
	.word	_Label_1509
	.word	-140
	.word	4
	.word	_Label_1510
	.word	-144
	.word	4
	.word	_Label_1511
	.word	-148
	.word	4
	.word	0
_Label_1474:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1475:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1476:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1510:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_1511:
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
_Label_4048:
	push	r0
	sub	r1,1,r1
	bne	_Label_4048
	mov	2175,r13		! source line 2175
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1516		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1516
	jmp	_Label_1512
_Label_1516:
!   if fileDesc <= 9 then goto _Label_1515		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1515
	jmp	_Label_1512
_Label_1515:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1519 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1518 = *_temp_1519  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1518) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1520 = _temp_1518 + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-96]
!   Move address of _temp_1520 [fileDesc ] into _temp_1521
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
!   Data Move: _temp_1517 = *_temp_1521  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1517) then goto _Label_1512
	load	[r14+-108],r1
	cmp	r1,r0
	be	_Label_1512
!	jmp	_Label_1514
_Label_1514:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1525 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1524 = *_temp_1525  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1524) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1526 = _temp_1524 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_1526 [fileDesc ] into _temp_1527
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
!   Data Move: _temp_1523 = *_temp_1527  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1523) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1528 = _temp_1523 + 20
	load	[r14+-84],r1
	add	r1,20,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1522 = *_temp_1528  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1522) then goto _Label_1512
	load	[r14+-88],r1
	cmp	r1,r0
	be	_Label_1512
	jmp	_Label_1513
_Label_1512:
! THEN...
	mov	2180,r13		! source line 2180
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1529 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1529  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	2180,r13		! source line 2180
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2181,r13		! source line 2181
	mov	"\0\0CA",r10
	call	_P_System_nl
	jmp	_Label_1530
_Label_1513:
! ELSE...
	mov	2183,r13		! source line 2183
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2183,r13		! source line 2183
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1532 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1531 = *_temp_1532  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1531) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1533 = _temp_1531 + 124
	load	[r14+-56],r1
	add	r1,124,r1
	store	r1,[r14+-48]
!   Move address of _temp_1533 [fileDesc ] into _temp_1534
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
!   Data Move: fp = *_temp_1534  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0AS",r10
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1536 = fp + 20
	load	[r14+-112],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1535 = *_temp_1536  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1535) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1537 = _temp_1535 + 24
	load	[r14+-40],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: N = *_temp_1537  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-116]
! SEND STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0SE",r10
!   _temp_1538 = &_P_Kernel_fileManager
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
	mov	2187,r13		! source line 2187
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1540 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1539 = *_temp_1540  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1539) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1541 = _temp_1539 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1541 [fileDesc ] into _temp_1542
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
!   Data Move: *_temp_1542 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1530:
! RETURN STATEMENT...
	mov	2179,r13		! source line 2179
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
	.word	_Label_1543
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_1544
	.word	8
	.word	4
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
	.word	_Label_1556
	.word	-56
	.word	4
	.word	_Label_1557
	.word	-60
	.word	4
	.word	_Label_1558
	.word	-64
	.word	4
	.word	_Label_1559
	.word	-68
	.word	4
	.word	_Label_1560
	.word	-72
	.word	4
	.word	_Label_1561
	.word	-76
	.word	4
	.word	_Label_1562
	.word	-80
	.word	4
	.word	_Label_1563
	.word	-84
	.word	4
	.word	_Label_1564
	.word	-88
	.word	4
	.word	_Label_1565
	.word	-92
	.word	4
	.word	_Label_1566
	.word	-96
	.word	4
	.word	_Label_1567
	.word	-100
	.word	4
	.word	_Label_1568
	.word	-104
	.word	4
	.word	_Label_1569
	.word	-108
	.word	4
	.word	_Label_1570
	.word	-112
	.word	4
	.word	_Label_1571
	.word	-116
	.word	4
	.word	0
_Label_1543:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1544:
	.byte	'I'
	.ascii	"fileDesc\0"
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
	.ascii	"_temp_1534\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1570:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_1571:
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
_Label_4049:
	push	r0
	sub	r1,1,r1
	bne	_Label_4049
	mov	2779,r13		! source line 2779
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2783,r13		! source line 2783
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1572 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1572  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2784,r13		! source line 2784
	mov	"\0\0AS",r10
!   _temp_1573 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1573) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1575 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1575) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1574 = *_temp_1575  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1573 = _temp_1574  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2785,r13		! source line 2785
	mov	"\0\0AS",r10
!   _temp_1576 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1576) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1578 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1578) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1577 = *_temp_1578  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1576 = _temp_1577  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2786,r13		! source line 2786
	mov	"\0\0AS",r10
!   _temp_1579 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1579) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1581 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1581) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1580 = *_temp_1581  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1579 = _temp_1580  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2786,r13		! source line 2786
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
	.word	_Label_1582
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1583
	.word	8
	.word	4
	.word	_Label_1584
	.word	12
	.word	4
	.word	_Label_1585
	.word	-16
	.word	4
	.word	_Label_1586
	.word	-9
	.word	1
	.word	_Label_1587
	.word	-20
	.word	4
	.word	_Label_1588
	.word	-24
	.word	4
	.word	_Label_1589
	.word	-10
	.word	1
	.word	_Label_1590
	.word	-28
	.word	4
	.word	_Label_1591
	.word	-32
	.word	4
	.word	_Label_1592
	.word	-11
	.word	1
	.word	_Label_1593
	.word	-36
	.word	4
	.word	_Label_1594
	.word	-12
	.word	1
	.word	_Label_1595
	.word	-40
	.word	4
	.word	_Label_1596
	.word	-44
	.word	4
	.word	0
_Label_1582:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1583:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1584:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1586:
	.byte	'C'
	.ascii	"_temp_1580\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1589:
	.byte	'C'
	.ascii	"_temp_1577\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1592:
	.byte	'C'
	.ascii	"_temp_1574\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1594:
	.byte	'C'
	.ascii	"_temp_1572\0"
	.align
_Label_1595:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1596:
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
_Label_4050:
	push	r0
	sub	r1,1,r1
	bne	_Label_4050
	mov	2789,r13		! source line 2789
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1598 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1597 = *_temp_1598  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1597  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2790,r13		! source line 2790
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2791,r13		! source line 2791
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2791,r13		! source line 2791
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
	.word	_Label_1599
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1600
	.word	8
	.word	4
	.word	_Label_1601
	.word	-12
	.word	4
	.word	_Label_1602
	.word	-16
	.word	4
	.word	0
_Label_1599:
	.ascii	"printFCB\0"
	.align
_Label_1600:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1597\0"
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
_Label_4051:
	push	r0
	sub	r1,1,r1
	bne	_Label_4051
	mov	2794,r13		! source line 2794
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1603 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1603  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2795,r13		! source line 2795
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1604 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1604  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2796,r13		! source line 2796
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1605 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1605  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2797,r13		! source line 2797
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2798,r13		! source line 2798
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
	mov	2798,r13		! source line 2798
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
	.word	_Label_1606
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1607
	.word	8
	.word	4
	.word	_Label_1608
	.word	-12
	.word	4
	.word	_Label_1609
	.word	-16
	.word	4
	.word	_Label_1610
	.word	-20
	.word	4
	.word	0
_Label_1606:
	.ascii	"printOpen\0"
	.align
_Label_1607:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1603\0"
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
_Label_4052:
	push	r0
	sub	r1,1,r1
	bne	_Label_4052
	mov	3058,r13		! source line 3058
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3060,r13		! source line 3060
	mov	"\0\0AS",r10
	mov	3060,r13		! source line 3060
	mov	"\0\0SE",r10
!   _temp_1611 = &_P_Kernel_threadManager
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
	mov	3061,r13		! source line 3061
	mov	"\0\0AS",r10
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1612 = myProgram + 72
	load	[r14+-28],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   _temp_1613 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1612 = _temp_1613  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3062,r13		! source line 3062
	mov	"\0\0SE",r10
!   _temp_1614 = _function_203_StartUserProcess
	set	_function_203_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1614  sizeInBytes=4
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
	mov	3062,r13		! source line 3062
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
	.word	_Label_1615
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1616
	.word	-12
	.word	4
	.word	_Label_1617
	.word	-16
	.word	4
	.word	_Label_1618
	.word	-20
	.word	4
	.word	_Label_1619
	.word	-24
	.word	4
	.word	_Label_1620
	.word	-28
	.word	4
	.word	0
_Label_1615:
	.ascii	"InitFirstProcess\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1620:
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
_Label_4053:
	push	r0
	sub	r1,1,r1
	bne	_Label_4053
	mov	3065,r13		! source line 3065
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3072,r13		! source line 3072
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	3072,r13		! source line 3072
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	3073,r13		! source line 3073
	mov	"\0\0AS",r10
	mov	3073,r13		! source line 3073
	mov	"\0\0SE",r10
!   _temp_1621 = &_P_Kernel_processManager
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
	mov	3074,r13		! source line 3074
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1622 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_1622 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3075,r13		! source line 3075
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1623 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_1623 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3076,r13		! source line 3076
	mov	"\0\0AS",r10
	mov	3076,r13		! source line 3076
	mov	"\0\0SE",r10
!   _temp_1624 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-60]
!   _temp_1625 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1624  sizeInBytes=4
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
	mov	3077,r13		! source line 3077
	mov	"\0\0IF",r10
!   if fp == 0 then goto _Label_1627		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1627
!	jmp	_Label_1626
_Label_1626:
! THEN...
	mov	3078,r13		! source line 3078
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3078,r13		! source line 3078
	mov	"\0\0AS",r10
	mov	3078,r13		! source line 3078
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1629 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_1628 = _temp_1629		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1628  sizeInBytes=4
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
	mov	3079,r13		! source line 3079
	mov	"\0\0SE",r10
!   _temp_1630 = &_P_Kernel_fileManager
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
	mov	3080,r13		! source line 3080
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1632 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_1633 = _temp_1632 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1631 = *_temp_1633  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_1631 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	3081,r13		! source line 3081
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1634 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_1634 [999 ] into _temp_1635
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
!   initSystemStackTop = _temp_1635		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	3082,r13		! source line 3082
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1636 = pcb + 32
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
	mov	3083,r13		! source line 3083
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1637 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1637 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3084,r13		! source line 3084
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	3084,r13		! source line 3084
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
	mov	3085,r13		! source line 3085
	mov	"\0\0CE",r10
	call	BecomeUserThread
	jmp	_Label_1638
_Label_1627:
! ELSE...
	mov	3087,r13		! source line 3087
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1639 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1639  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3087,r13		! source line 3087
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	3088,r13		! source line 3088
	mov	"\0\0CA",r10
	call	_P_System_nl
! END IF...
_Label_1638:
! RETURN STATEMENT...
	mov	3077,r13		! source line 3077
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
	.word	_Label_1640
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1641
	.word	8
	.word	4
	.word	_Label_1642
	.word	-12
	.word	4
	.word	_Label_1643
	.word	-16
	.word	4
	.word	_Label_1644
	.word	-20
	.word	4
	.word	_Label_1645
	.word	-24
	.word	4
	.word	_Label_1646
	.word	-28
	.word	4
	.word	_Label_1647
	.word	-32
	.word	4
	.word	_Label_1648
	.word	-36
	.word	4
	.word	_Label_1649
	.word	-40
	.word	4
	.word	_Label_1650
	.word	-44
	.word	4
	.word	_Label_1651
	.word	-48
	.word	4
	.word	_Label_1652
	.word	-52
	.word	4
	.word	_Label_1653
	.word	-56
	.word	4
	.word	_Label_1654
	.word	-60
	.word	4
	.word	_Label_1655
	.word	-64
	.word	4
	.word	_Label_1656
	.word	-68
	.word	4
	.word	_Label_1657
	.word	-72
	.word	4
	.word	_Label_1658
	.word	-76
	.word	4
	.word	_Label_1659
	.word	-80
	.word	4
	.word	_Label_1660
	.word	-84
	.word	4
	.word	_Label_1661
	.word	-88
	.word	4
	.word	_Label_1662
	.word	-92
	.word	4
	.word	_Label_1663
	.word	-96
	.word	4
	.word	0
_Label_1640:
	.ascii	"StartUserProcess\0"
	.align
_Label_1641:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1658:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_1659:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_1660:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_1661:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_1662:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_1663:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1664
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1664:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1665
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1665:
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
_Label_4054:
	push	r0
	sub	r1,1,r1
	bne	_Label_4054
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1667		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1667
!	jmp	_Label_1666
_Label_1666:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1668 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1668  sizeInBytes=4
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
_Label_1667:
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
	.word	_Label_1670
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1671
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1672
	.word	12
	.word	4
	.word	_Label_1673
	.word	-12
	.word	4
	.word	_Label_1674
	.word	-16
	.word	4
	.word	0
_Label_1670:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1671:
	.ascii	"Pself\0"
	.align
_Label_1672:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1668\0"
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
_Label_4055:
	push	r0
	sub	r1,1,r1
	bne	_Label_4055
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
!   if count != 2147483647 then goto _Label_1676		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1676
!	jmp	_Label_1675
_Label_1675:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1677 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1677  sizeInBytes=4
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
_Label_1676:
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
!   if count > 0 then goto _Label_1679		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1679
!	jmp	_Label_1678
_Label_1678:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_1680 = &waitingThreads
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
!   _temp_1681 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1681 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_1682 = &_P_Kernel_readyList
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
_Label_1679:
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
	.word	_Label_1683
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1684
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1685
	.word	-12
	.word	4
	.word	_Label_1686
	.word	-16
	.word	4
	.word	_Label_1687
	.word	-20
	.word	4
	.word	_Label_1688
	.word	-24
	.word	4
	.word	_Label_1689
	.word	-28
	.word	4
	.word	_Label_1690
	.word	-32
	.word	4
	.word	0
_Label_1683:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1684:
	.ascii	"Pself\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1689:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1690:
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
_Label_4056:
	push	r0
	sub	r1,1,r1
	bne	_Label_4056
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
!   if count != -2147483648 then goto _Label_1692		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1692
!	jmp	_Label_1691
_Label_1691:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1693 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1693  sizeInBytes=4
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
_Label_1692:
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
!   if count >= 0 then goto _Label_1695		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1695
!	jmp	_Label_1694
_Label_1694:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_1696 = &waitingThreads
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
_Label_1695:
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
	.word	_Label_1697
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1698
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1699
	.word	-12
	.word	4
	.word	_Label_1700
	.word	-16
	.word	4
	.word	_Label_1701
	.word	-20
	.word	4
	.word	0
_Label_1697:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1698:
	.ascii	"Pself\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1701:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1702
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1702:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1703
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1703:
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
_Label_4057:
	push	r0
	sub	r1,1,r1
	bne	_Label_4057
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
	.word	_Label_1705
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1706
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1707
	.word	-12
	.word	4
	.word	0
_Label_1705:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1706:
	.ascii	"Pself\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1704\0"
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
_Label_4058:
	push	r0
	sub	r1,1,r1
	bne	_Label_4058
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1709		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1709
!	jmp	_Label_1708
_Label_1708:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1710 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1710  sizeInBytes=4
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
_Label_1709:
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
!   if heldBy == 0 then goto _Label_1714		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1714
!   _temp_1713 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1715
_Label_1714:
!   _temp_1713 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1715:
!   if _temp_1713 then goto _Label_1712 else goto _Label_1711
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1711
	jmp	_Label_1712
_Label_1711:
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
	jmp	_Label_1716
_Label_1712:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_1717 = &waitingThreads
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
_Label_1716:
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
	.word	_Label_1718
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1719
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1720
	.word	-16
	.word	4
	.word	_Label_1721
	.word	-9
	.word	1
	.word	_Label_1722
	.word	-20
	.word	4
	.word	_Label_1723
	.word	-24
	.word	4
	.word	0
_Label_1718:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1719:
	.ascii	"Pself\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1721:
	.byte	'C'
	.ascii	"_temp_1713\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1723:
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
_Label_4059:
	push	r0
	sub	r1,1,r1
	bne	_Label_4059
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1725		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1725
!	jmp	_Label_1724
_Label_1724:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1726 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1726  sizeInBytes=4
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
_Label_1725:
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
!   _temp_1727 = &waitingThreads
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
!   if t == 0 then goto _Label_1729		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1729
!	jmp	_Label_1728
_Label_1728:
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
!   _temp_1730 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1730 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_1731 = &_P_Kernel_readyList
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
	jmp	_Label_1732
_Label_1729:
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
_Label_1732:
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
	.word	_Label_1733
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1734
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1735
	.word	-12
	.word	4
	.word	_Label_1736
	.word	-16
	.word	4
	.word	_Label_1737
	.word	-20
	.word	4
	.word	_Label_1738
	.word	-24
	.word	4
	.word	_Label_1739
	.word	-28
	.word	4
	.word	_Label_1740
	.word	-32
	.word	4
	.word	0
_Label_1733:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1734:
	.ascii	"Pself\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1739:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1740:
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
_Label_4060:
	push	r0
	sub	r1,1,r1
	bne	_Label_4060
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1743		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1743
!	jmp	_Label_1742
_Label_1742:
!   _temp_1741 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1744
_Label_1743:
!   _temp_1741 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1744:
!   ReturnResult: _temp_1741  (sizeInBytes=1)
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
	.word	_Label_1745
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1746
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1747
	.word	-9
	.word	1
	.word	0
_Label_1745:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1746:
	.ascii	"Pself\0"
	.align
_Label_1747:
	.byte	'C'
	.ascii	"_temp_1741\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1748
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1748:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1749
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1749:
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
_Label_4061:
	push	r0
	sub	r1,1,r1
	bne	_Label_4061
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
	.word	_Label_1751
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1752
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1753
	.word	-12
	.word	4
	.word	0
_Label_1751:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1752:
	.ascii	"Pself\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1750\0"
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
_Label_4062:
	push	r0
	sub	r1,1,r1
	bne	_Label_4062
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
!   Retrieve Result: targetName=_temp_1756  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1756 then goto _Label_1755 else goto _Label_1754
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1754
	jmp	_Label_1755
_Label_1754:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1757 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1757  sizeInBytes=4
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
_Label_1755:
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
!   _temp_1758 = &waitingThreads
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
	.word	_Label_1759
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1760
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1761
	.word	12
	.word	4
	.word	_Label_1762
	.word	-16
	.word	4
	.word	_Label_1763
	.word	-20
	.word	4
	.word	_Label_1764
	.word	-9
	.word	1
	.word	_Label_1765
	.word	-24
	.word	4
	.word	0
_Label_1759:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1760:
	.ascii	"Pself\0"
	.align
_Label_1761:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1764:
	.byte	'C'
	.ascii	"_temp_1756\0"
	.align
_Label_1765:
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
_Label_4063:
	push	r0
	sub	r1,1,r1
	bne	_Label_4063
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
!   Retrieve Result: targetName=_temp_1768  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1768 then goto _Label_1767 else goto _Label_1766
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1766
	jmp	_Label_1767
_Label_1766:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1769 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1769  sizeInBytes=4
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
_Label_1767:
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
!   _temp_1770 = &waitingThreads
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
!   if t == 0 then goto _Label_1772		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1772
!	jmp	_Label_1771
_Label_1771:
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
!   _temp_1773 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1773 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_1774 = &_P_Kernel_readyList
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
_Label_1772:
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
	.word	_Label_1775
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1776
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1777
	.word	12
	.word	4
	.word	_Label_1778
	.word	-16
	.word	4
	.word	_Label_1779
	.word	-20
	.word	4
	.word	_Label_1780
	.word	-24
	.word	4
	.word	_Label_1781
	.word	-28
	.word	4
	.word	_Label_1782
	.word	-9
	.word	1
	.word	_Label_1783
	.word	-32
	.word	4
	.word	_Label_1784
	.word	-36
	.word	4
	.word	0
_Label_1775:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1776:
	.ascii	"Pself\0"
	.align
_Label_1777:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1782:
	.byte	'C'
	.ascii	"_temp_1768\0"
	.align
_Label_1783:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1784:
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
_Label_4064:
	push	r0
	sub	r1,1,r1
	bne	_Label_4064
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
!   Retrieve Result: targetName=_temp_1787  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1787 then goto _Label_1786 else goto _Label_1785
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1785
	jmp	_Label_1786
_Label_1785:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1788 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1788  sizeInBytes=4
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
_Label_1786:
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
_Label_1789:
!	jmp	_Label_1790
_Label_1790:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_1792 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1793
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1793
	jmp	_Label_1794
_Label_1793:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_1791
! END IF...
_Label_1794:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1795 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1795 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_1796 = &_P_Kernel_readyList
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
	jmp	_Label_1789
_Label_1791:
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
	.word	_Label_1797
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1798
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1799
	.word	12
	.word	4
	.word	_Label_1800
	.word	-16
	.word	4
	.word	_Label_1801
	.word	-20
	.word	4
	.word	_Label_1802
	.word	-24
	.word	4
	.word	_Label_1803
	.word	-28
	.word	4
	.word	_Label_1804
	.word	-9
	.word	1
	.word	_Label_1805
	.word	-32
	.word	4
	.word	_Label_1806
	.word	-36
	.word	4
	.word	0
_Label_1797:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1798:
	.ascii	"Pself\0"
	.align
_Label_1799:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1804:
	.byte	'C'
	.ascii	"_temp_1787\0"
	.align
_Label_1805:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1806:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1807
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
_Label_1807:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1808
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1808:
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
_Label_4065:
	push	r0
	sub	r1,1,r1
	bne	_Label_4065
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
!   _temp_1809 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1809) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1809 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_1810 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1810 [0 ] into _temp_1811
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
!   Data Move: *_temp_1811 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1812 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1812 [999 ] into _temp_1813
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
!   Data Move: *_temp_1813 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1814 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1814 [999 ] into _temp_1815
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
!   stackTop = _temp_1815		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1816 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1818 = &_temp_1817
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1818 = _temp_1818 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1820:
!   Data Move: *_temp_1818 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1818 = _temp_1818 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1819 = _temp_1819 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1819) then goto _Label_1820
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1820
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1821 = &_temp_1817
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4066
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4066:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1816 = *_temp_1821  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_4067:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4067
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
!   _temp_1822 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1824 = &_temp_1823
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1824 = _temp_1824 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1826:
!   Data Move: *_temp_1824 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1824 = _temp_1824 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1825 = _temp_1825 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1825) then goto _Label_1826
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1826
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1827 = &_temp_1823
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_4068
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4068:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1822 = *_temp_1827  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_4069:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4069
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
	.word	_Label_1828
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1829
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1830
	.word	12
	.word	4
	.word	_Label_1831
	.word	-12
	.word	4
	.word	_Label_1832
	.word	-16
	.word	4
	.word	_Label_1833
	.word	-20
	.word	4
	.word	_Label_1834
	.word	-84
	.word	64
	.word	_Label_1835
	.word	-88
	.word	4
	.word	_Label_1836
	.word	-92
	.word	4
	.word	_Label_1837
	.word	-96
	.word	4
	.word	_Label_1838
	.word	-100
	.word	4
	.word	_Label_1839
	.word	-156
	.word	56
	.word	_Label_1840
	.word	-160
	.word	4
	.word	_Label_1841
	.word	-164
	.word	4
	.word	_Label_1842
	.word	-168
	.word	4
	.word	_Label_1843
	.word	-172
	.word	4
	.word	_Label_1844
	.word	-176
	.word	4
	.word	_Label_1845
	.word	-180
	.word	4
	.word	_Label_1846
	.word	-184
	.word	4
	.word	_Label_1847
	.word	-188
	.word	4
	.word	0
_Label_1828:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1829:
	.ascii	"Pself\0"
	.align
_Label_1830:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1809\0"
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
_Label_4070:
	push	r0
	sub	r1,1,r1
	bne	_Label_4070
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
!   _temp_1848 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1848  (sizeInBytes=4)
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
!   _temp_1850 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1849  sizeInBytes=4
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
	.word	_Label_1851
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1852
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1853
	.word	12
	.word	4
	.word	_Label_1854
	.word	16
	.word	4
	.word	_Label_1855
	.word	-12
	.word	4
	.word	_Label_1856
	.word	-16
	.word	4
	.word	_Label_1857
	.word	-20
	.word	4
	.word	_Label_1858
	.word	-24
	.word	4
	.word	_Label_1859
	.word	-28
	.word	4
	.word	0
_Label_1851:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1852:
	.ascii	"Pself\0"
	.align
_Label_1853:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1854:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1858:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1859:
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
_Label_4071:
	push	r0
	sub	r1,1,r1
	bne	_Label_4071
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1862 == _P_Kernel_currentThread then goto _Label_1861		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1861
!	jmp	_Label_1860
_Label_1860:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1863 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1863  sizeInBytes=4
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
_Label_1861:
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
!   _temp_1864 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1866		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1866
!	jmp	_Label_1865
_Label_1865:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1868		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1868
!	jmp	_Label_1867
_Label_1867:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1869 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1869  sizeInBytes=4
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
_Label_1868:
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
!   _temp_1871 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1870  sizeInBytes=4
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
_Label_1866:
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
	.word	_Label_1872
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1873
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1874
	.word	-12
	.word	4
	.word	_Label_1875
	.word	-16
	.word	4
	.word	_Label_1876
	.word	-20
	.word	4
	.word	_Label_1877
	.word	-24
	.word	4
	.word	_Label_1878
	.word	-28
	.word	4
	.word	_Label_1879
	.word	-32
	.word	4
	.word	_Label_1880
	.word	-36
	.word	4
	.word	_Label_1881
	.word	-40
	.word	4
	.word	_Label_1882
	.word	-44
	.word	4
	.word	0
_Label_1872:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1873:
	.ascii	"Pself\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1880:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1881:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1882:
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
_Label_4072:
	push	r0
	sub	r1,1,r1
	bne	_Label_4072
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1884		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1884
!	jmp	_Label_1883
_Label_1883:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1885 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1885  sizeInBytes=4
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
_Label_1884:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1888 == _P_Kernel_currentThread then goto _Label_1887		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1887
!	jmp	_Label_1886
_Label_1886:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1889 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1889  sizeInBytes=4
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
_Label_1887:
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
!   _temp_1890 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1891
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1891
	jmp	_Label_1892
_Label_1891:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1893 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1893  sizeInBytes=4
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
_Label_1892:
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
	.word	_Label_1894
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1895
	.word	4		! size of self
	.word	8		! offset of self
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
_Label_1894:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1895:
	.ascii	"Pself\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1901:
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
_Label_4073:
	push	r0
	sub	r1,1,r1
	bne	_Label_4073
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_1905 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1905 [0 ] into _temp_1906
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
!   Data Move: _temp_1904 = *_temp_1906  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1904 == 606348324 then goto _Label_1903		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1903
!	jmp	_Label_1902
_Label_1902:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1907 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1907  sizeInBytes=4
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
	jmp	_Label_1908
_Label_1903:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_1912 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1912 [999 ] into _temp_1913
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
!   Data Move: _temp_1911 = *_temp_1913  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1911 == 606348324 then goto _Label_1910		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1910
!	jmp	_Label_1909
_Label_1909:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1914 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1914  sizeInBytes=4
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
_Label_1910:
! END IF...
_Label_1908:
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
	.word	_Label_1915
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1916
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1917
	.word	-12
	.word	4
	.word	_Label_1918
	.word	-16
	.word	4
	.word	_Label_1919
	.word	-20
	.word	4
	.word	_Label_1920
	.word	-24
	.word	4
	.word	_Label_1921
	.word	-28
	.word	4
	.word	_Label_1922
	.word	-32
	.word	4
	.word	_Label_1923
	.word	-36
	.word	4
	.word	_Label_1924
	.word	-40
	.word	4
	.word	0
_Label_1915:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1916:
	.ascii	"Pself\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1904\0"
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
_Label_4074:
	push	r0
	sub	r1,1,r1
	bne	_Label_4074
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
!   _temp_1925 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1925  sizeInBytes=4
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
!   _temp_1926 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1926  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1927  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1928 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1928  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1929 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1929  sizeInBytes=4
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
!   _temp_1934 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1935 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1934  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1930:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1935 then goto _Label_1933		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1933
_Label_1931:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1936 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1936  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1937 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1937  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1938 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1938  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1940 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1940 [i ] into _temp_1941
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
!   Data Move: _temp_1939 = *_temp_1941  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1939  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1942 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1942  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1944 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1944 [i ] into _temp_1945
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
!   Data Move: _temp_1943 = *_temp_1945  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1943  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1946 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1946  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1932:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1930
! END FOR
_Label_1933:
! CALL STATEMENT...
!   _temp_1947 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-116]
!   _temp_1948 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1947  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1948  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1949 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-108]
!   _temp_1951 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1951 [0 ] into _temp_1952
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
!   _temp_1950 = _temp_1952		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1949  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1950  sizeInBytes=4
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
	be	_Label_1955
	cmp	r1,2
	be	_Label_1956
	cmp	r1,3
	be	_Label_1957
	cmp	r1,4
	be	_Label_1958
	cmp	r1,5
	be	_Label_1959
	jmp	_Label_1953
! CASE 1...
_Label_1955:
! CALL STATEMENT...
!   _temp_1960 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1960  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_1954
! CASE 2...
_Label_1956:
! CALL STATEMENT...
!   _temp_1961 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1961  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_1954
! CASE 3...
_Label_1957:
! CALL STATEMENT...
!   _temp_1962 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1962  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_1954
! CASE 4...
_Label_1958:
! CALL STATEMENT...
!   _temp_1963 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1963  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_1954
! CASE 5...
_Label_1959:
! CALL STATEMENT...
!   _temp_1964 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1964  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_1954
! DEFAULT CASE...
_Label_1953:
! CALL STATEMENT...
!   _temp_1965 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1965  sizeInBytes=4
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
_Label_1954:
! CALL STATEMENT...
!   _temp_1966 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1966  sizeInBytes=4
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
!   _temp_1967 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1967  sizeInBytes=4
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
!   _temp_1972 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1973 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1972  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1968:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1973 then goto _Label_1971		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1971
_Label_1969:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1974 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1974  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1975 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1975  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1976 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1976  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1978 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1978 [i ] into _temp_1979
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
!   Data Move: _temp_1977 = *_temp_1979  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1977  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1980 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1980  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1982 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1982 [i ] into _temp_1983
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
!   Data Move: _temp_1981 = *_temp_1983  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1981  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1984 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1984  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1970:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1968
! END FOR
_Label_1971:
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
	.word	_Label_1985
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1986
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1987
	.word	-12
	.word	4
	.word	_Label_1988
	.word	-16
	.word	4
	.word	_Label_1989
	.word	-20
	.word	4
	.word	_Label_1990
	.word	-24
	.word	4
	.word	_Label_1991
	.word	-28
	.word	4
	.word	_Label_1992
	.word	-32
	.word	4
	.word	_Label_1993
	.word	-36
	.word	4
	.word	_Label_1994
	.word	-40
	.word	4
	.word	_Label_1995
	.word	-44
	.word	4
	.word	_Label_1996
	.word	-48
	.word	4
	.word	_Label_1997
	.word	-52
	.word	4
	.word	_Label_1998
	.word	-56
	.word	4
	.word	_Label_1999
	.word	-60
	.word	4
	.word	_Label_2000
	.word	-64
	.word	4
	.word	_Label_2001
	.word	-68
	.word	4
	.word	_Label_2002
	.word	-72
	.word	4
	.word	_Label_2003
	.word	-76
	.word	4
	.word	_Label_2004
	.word	-80
	.word	4
	.word	_Label_2005
	.word	-84
	.word	4
	.word	_Label_2006
	.word	-88
	.word	4
	.word	_Label_2007
	.word	-92
	.word	4
	.word	_Label_2008
	.word	-96
	.word	4
	.word	_Label_2009
	.word	-100
	.word	4
	.word	_Label_2010
	.word	-104
	.word	4
	.word	_Label_2011
	.word	-108
	.word	4
	.word	_Label_2012
	.word	-112
	.word	4
	.word	_Label_2013
	.word	-116
	.word	4
	.word	_Label_2014
	.word	-120
	.word	4
	.word	_Label_2015
	.word	-124
	.word	4
	.word	_Label_2016
	.word	-128
	.word	4
	.word	_Label_2017
	.word	-132
	.word	4
	.word	_Label_2018
	.word	-136
	.word	4
	.word	_Label_2019
	.word	-140
	.word	4
	.word	_Label_2020
	.word	-144
	.word	4
	.word	_Label_2021
	.word	-148
	.word	4
	.word	_Label_2022
	.word	-152
	.word	4
	.word	_Label_2023
	.word	-156
	.word	4
	.word	_Label_2024
	.word	-160
	.word	4
	.word	_Label_2025
	.word	-164
	.word	4
	.word	_Label_2026
	.word	-168
	.word	4
	.word	_Label_2027
	.word	-172
	.word	4
	.word	_Label_2028
	.word	-176
	.word	4
	.word	_Label_2029
	.word	-180
	.word	4
	.word	_Label_2030
	.word	-184
	.word	4
	.word	_Label_2031
	.word	-188
	.word	4
	.word	_Label_2032
	.word	-192
	.word	4
	.word	_Label_2033
	.word	-196
	.word	4
	.word	0
_Label_1985:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1986:
	.ascii	"Pself\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_2032:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2033:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_2034
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_2034:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2035
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_2035:
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
_Label_4075:
	push	r0
	sub	r1,1,r1
	bne	_Label_4075
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2036 = _StringConst_100
	set	_StringConst_100,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_2036  sizeInBytes=4
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
!   _temp_2037 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_2039 = &_temp_2038
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_2039 = _temp_2039 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2041 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_4076:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4076
!   _temp_2041 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_2043:
!   Data Move: *_temp_2039 = _temp_2041  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_4077:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4077
!   _temp_2039 = _temp_2039 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_2040 = _temp_2040 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_2040) then goto _Label_2043
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_2043
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_2044 = &_temp_2038
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4078
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4078:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2037 = *_temp_2044  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_4079:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4079
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
!   _temp_2048 = &threadManagerLock
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
!   _temp_2049 = &aThreadBecomeFree
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
!   _temp_2054 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2055 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2054  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_2050:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2055 then goto _Label_2053		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2053
_Label_2051:
	mov	702,r13		! source line 702
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0SE",r10
!   _temp_2056 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-48]
!   _temp_2057 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2057 [i ] into _temp_2058
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
!   Prepare Argument: offset=12  value=_temp_2056  sizeInBytes=4
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
!   _temp_2060 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_2060 [i ] into _temp_2061
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
!   _temp_2059 = _temp_2061		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2062 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2059  sizeInBytes=4
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
!   _temp_2063 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2063 [i ] into _temp_2064
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
!   _temp_2065 = _temp_2064 + 76
	load	[r14+-16],r1
	add	r1,76,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_2065 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-12],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_2052:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_2050
! END FOR
_Label_2053:
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
	.word	_Label_2066
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_2067
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_2074
	.word	-36
	.word	4
	.word	_Label_2075
	.word	-40
	.word	4
	.word	_Label_2076
	.word	-44
	.word	4
	.word	_Label_2077
	.word	-48
	.word	4
	.word	_Label_2078
	.word	-52
	.word	4
	.word	_Label_2079
	.word	-56
	.word	4
	.word	_Label_2080
	.word	-60
	.word	4
	.word	_Label_2081
	.word	-64
	.word	4
	.word	_Label_2082
	.word	-68
	.word	4
	.word	_Label_2083
	.word	-72
	.word	4
	.word	_Label_2084
	.word	-76
	.word	4
	.word	_Label_2085
	.word	-80
	.word	4
	.word	_Label_2086
	.word	-84
	.word	4
	.word	_Label_2087
	.word	-4248
	.word	4164
	.word	_Label_2088
	.word	-4252
	.word	4
	.word	_Label_2089
	.word	-4256
	.word	4
	.word	_Label_2090
	.word	-45900
	.word	41644
	.word	_Label_2091
	.word	-45904
	.word	4
	.word	_Label_2092
	.word	-45908
	.word	4
	.word	_Label_2093
	.word	-45912
	.word	4
	.word	0
_Label_2066:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2067:
	.ascii	"Pself\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2093:
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
_Label_4080:
	push	r0
	sub	r1,1,r1
	bne	_Label_4080
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
!   _temp_2094 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2094  sizeInBytes=4
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
!   _temp_2099 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2100 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2099  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_2095:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2100 then goto _Label_2098		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2098
_Label_2096:
	mov	720,r13		! source line 720
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2101 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2101  sizeInBytes=4
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
!   _temp_2102 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2102  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2104 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2104 [i ] into _temp_2105
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
!   _temp_2103 = _temp_2105		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2103  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CA",r10
	call	_function_210_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_2097:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2095
! END FOR
_Label_2098:
! CALL STATEMENT...
!   _temp_2106 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2106  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0SE",r10
!   _temp_2107 = _function_209_PrintObjectAddr
	set	_function_209_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2108 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2107  sizeInBytes=4
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
	.word	_Label_2109
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2110
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2111
	.word	-12
	.word	4
	.word	_Label_2112
	.word	-16
	.word	4
	.word	_Label_2113
	.word	-20
	.word	4
	.word	_Label_2114
	.word	-24
	.word	4
	.word	_Label_2115
	.word	-28
	.word	4
	.word	_Label_2116
	.word	-32
	.word	4
	.word	_Label_2117
	.word	-36
	.word	4
	.word	_Label_2118
	.word	-40
	.word	4
	.word	_Label_2119
	.word	-44
	.word	4
	.word	_Label_2120
	.word	-48
	.word	4
	.word	_Label_2121
	.word	-52
	.word	4
	.word	_Label_2122
	.word	-56
	.word	4
	.word	_Label_2123
	.word	-60
	.word	4
	.word	0
_Label_2109:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2110:
	.ascii	"Pself\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2122:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2123:
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
_Label_4081:
	push	r0
	sub	r1,1,r1
	bne	_Label_4081
	mov	734,r13		! source line 734
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0SE",r10
!   _temp_2124 = &threadManagerLock
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
_Label_2125:
	mov	741,r13		! source line 741
	mov	"\0\0SE",r10
!   _temp_2128 = &freeList
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
!   if result==true then goto _Label_2126 else goto _Label_2127
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2127
	jmp	_Label_2126
_Label_2126:
	mov	741,r13		! source line 741
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0SE",r10
!   _temp_2129 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2130 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2129  sizeInBytes=4
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
	jmp	_Label_2125
_Label_2127:
! ASSIGNMENT STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0AS",r10
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_2131 = &freeList
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
!   _temp_2132 = tmp + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2132 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0SE",r10
!   _temp_2133 = &threadManagerLock
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
	.word	_Label_2134
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2135
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2136
	.word	-12
	.word	4
	.word	_Label_2137
	.word	-16
	.word	4
	.word	_Label_2138
	.word	-20
	.word	4
	.word	_Label_2139
	.word	-24
	.word	4
	.word	_Label_2140
	.word	-28
	.word	4
	.word	_Label_2141
	.word	-32
	.word	4
	.word	_Label_2142
	.word	-36
	.word	4
	.word	_Label_2143
	.word	-40
	.word	4
	.word	0
_Label_2134:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2135:
	.ascii	"Pself\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2143:
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
_Label_4082:
	push	r0
	sub	r1,1,r1
	bne	_Label_4082
	mov	753,r13		! source line 753
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0SE",r10
!   _temp_2144 = &threadManagerLock
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
!   _temp_2145 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2145 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0SE",r10
!   _temp_2146 = &freeList
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
!   _temp_2147 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2148 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2147  sizeInBytes=4
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
!   _temp_2149 = &threadManagerLock
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
	.word	_Label_2150
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2151
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2152
	.word	12
	.word	4
	.word	_Label_2153
	.word	-12
	.word	4
	.word	_Label_2154
	.word	-16
	.word	4
	.word	_Label_2155
	.word	-20
	.word	4
	.word	_Label_2156
	.word	-24
	.word	4
	.word	_Label_2157
	.word	-28
	.word	4
	.word	_Label_2158
	.word	-32
	.word	4
	.word	0
_Label_2150:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2151:
	.ascii	"Pself\0"
	.align
_Label_2152:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2159
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2159:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2160
	.word	_sourceFileName
	.word	213		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2160:
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
_Label_4083:
	push	r0
	sub	r1,1,r1
	bne	_Label_4083
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
_Label_4084:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4084
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_2162 = &addrSpace
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
!   _temp_2163 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2165 = &_temp_2164
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2165 = _temp_2165 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2167:
!   Data Move: *_temp_2165 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2165 = _temp_2165 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2166 = _temp_2166 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2166) then goto _Label_2167
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2167
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2168 = &_temp_2164
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4085
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4085:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2163 = *_temp_2168  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4086:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4086
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
	.word	_Label_2169
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2170
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2171
	.word	-12
	.word	4
	.word	_Label_2172
	.word	-16
	.word	4
	.word	_Label_2173
	.word	-20
	.word	4
	.word	_Label_2174
	.word	-64
	.word	44
	.word	_Label_2175
	.word	-68
	.word	4
	.word	_Label_2176
	.word	-72
	.word	4
	.word	_Label_2177
	.word	-76
	.word	4
	.word	0
_Label_2169:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2170:
	.ascii	"Pself\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2161\0"
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
_Label_4087:
	push	r0
	sub	r1,1,r1
	bne	_Label_4087
	mov	790,r13		! source line 790
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2178) then goto _runtimeErrorNullPointer
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
!   _temp_2179 = &addrSpace
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
!   _temp_2180 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2180  sizeInBytes=4
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
	.word	_Label_2181
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2182
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2183
	.word	-12
	.word	4
	.word	_Label_2184
	.word	-16
	.word	4
	.word	_Label_2185
	.word	-20
	.word	4
	.word	0
_Label_2181:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2182:
	.ascii	"Pself\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2178\0"
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
_Label_4088:
	push	r0
	sub	r1,1,r1
	bne	_Label_4088
	mov	813,r13		! source line 813
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2186 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2186  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2187  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2188 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2188  sizeInBytes=4
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
!   _temp_2189 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2189  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2191		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2191
!	jmp	_Label_2190
_Label_2190:
! THEN...
	mov	823,r13		! source line 823
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2192 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2192  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2193
_Label_2191:
! ELSE...
	mov	824,r13		! source line 824
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2195		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2195
!	jmp	_Label_2194
_Label_2194:
! THEN...
	mov	825,r13		! source line 825
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2196 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2196  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2197
_Label_2195:
! ELSE...
	mov	826,r13		! source line 826
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2199		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2199
!	jmp	_Label_2198
_Label_2198:
! THEN...
	mov	827,r13		! source line 827
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2200 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2200  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2201
_Label_2199:
! ELSE...
	mov	829,r13		! source line 829
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2202 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2202  sizeInBytes=4
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
_Label_2201:
! END IF...
_Label_2197:
! END IF...
_Label_2193:
! CALL STATEMENT...
!   _temp_2203 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2203  sizeInBytes=4
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
!   _temp_2204 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2204  sizeInBytes=4
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
	.word	_Label_2205
	.word	4		! total size of parameters
	.word	44		! frame size = 44
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
	.word	_Label_2212
	.word	-32
	.word	4
	.word	_Label_2213
	.word	-36
	.word	4
	.word	_Label_2214
	.word	-40
	.word	4
	.word	_Label_2215
	.word	-44
	.word	4
	.word	_Label_2216
	.word	-48
	.word	4
	.word	0
_Label_2205:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
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
	.ascii	"_temp_2200\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2217
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
_Label_2217:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2218
	.word	_sourceFileName
	.word	233		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2218:
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
_Label_4089:
	push	r0
	sub	r1,1,r1
	bne	_Label_4089
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0AS",r10
!   _temp_2219 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1940]
!   NEW ARRAY Constructor...
!   _temp_2221 = &_temp_2220
	add	r14,-1936,r1
	store	r1,[r14+-252]
!   _temp_2221 = _temp_2221 + 4
	load	[r14+-252],r1
	add	r1,4,r1
	store	r1,[r14+-252]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2223 = zeros  (sizeInBytes=168)
	add	r14,-244,r4
	mov	42,r3
_Label_4090:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4090
!   _temp_2223 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-244]
	mov	10,r1
	store	r1,[r14+-248]
_Label_2225:
!   Data Move: *_temp_2221 = _temp_2223  (sizeInBytes=168)
	add	r14,-244,r5
	load	[r14+-252],r4
	mov	42,r3
_Label_4091:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4091
!   _temp_2221 = _temp_2221 + 168
	load	[r14+-252],r1
	add	r1,168,r1
	store	r1,[r14+-252]
!   _temp_2222 = _temp_2222 + -1
	load	[r14+-248],r1
	add	r1,-1,r1
	store	r1,[r14+-248]
!   if intNotZero (_temp_2222) then goto _Label_2225
	load	[r14+-248],r1
	cmp	r1,r0
	bne	_Label_2225
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1936]
!   _temp_2226 = &_temp_2220
	add	r14,-1936,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	load	[r14+-1940],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4092
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4092:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2219 = *_temp_2226  (sizeInBytes=1684)
	load	[r14+-72],r5
	load	[r14+-1940],r4
	mov	421,r3
_Label_4093:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4093
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
!   _temp_2229 = &processManagerLock
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
!   _temp_2230 = &aProcessBecameFree
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
!   _temp_2233 = &aProcessDied
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
!   _temp_2238 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2239 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2238  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-1944]
_Label_2234:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2239 then goto _Label_2237		
	load	[r14+-1944],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2237
_Label_2235:
	mov	860,r13		! source line 860
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0SE",r10
!   _temp_2240 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_2240 [i ] into _temp_2241
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
!   _temp_2243 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2243 [i ] into _temp_2244
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
!   _temp_2242 = _temp_2244		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2245 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2242  sizeInBytes=4
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
_Label_2236:
!   i = i + 1
	load	[r14+-1944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1944]
	jmp	_Label_2234
! END FOR
_Label_2237:
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
	.word	_Label_2246
	.word	4		! total size of parameters
	.word	1944		! frame size = 1944
	.word	_Label_2247
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2248
	.word	-12
	.word	4
	.word	_Label_2249
	.word	-16
	.word	4
	.word	_Label_2250
	.word	-20
	.word	4
	.word	_Label_2251
	.word	-24
	.word	4
	.word	_Label_2252
	.word	-28
	.word	4
	.word	_Label_2253
	.word	-32
	.word	4
	.word	_Label_2254
	.word	-36
	.word	4
	.word	_Label_2255
	.word	-40
	.word	4
	.word	_Label_2256
	.word	-44
	.word	4
	.word	_Label_2257
	.word	-48
	.word	4
	.word	_Label_2258
	.word	-52
	.word	4
	.word	_Label_2259
	.word	-56
	.word	4
	.word	_Label_2260
	.word	-60
	.word	4
	.word	_Label_2261
	.word	-64
	.word	4
	.word	_Label_2262
	.word	-68
	.word	4
	.word	_Label_2263
	.word	-72
	.word	4
	.word	_Label_2264
	.word	-76
	.word	4
	.word	_Label_2265
	.word	-244
	.word	168
	.word	_Label_2266
	.word	-248
	.word	4
	.word	_Label_2267
	.word	-252
	.word	4
	.word	_Label_2268
	.word	-1936
	.word	1684
	.word	_Label_2269
	.word	-1940
	.word	4
	.word	_Label_2270
	.word	-1944
	.word	4
	.word	0
_Label_2246:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2247:
	.ascii	"Pself\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2270:
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
_Label_4094:
	push	r0
	sub	r1,1,r1
	bne	_Label_4094
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
!   _temp_2271 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2271  sizeInBytes=4
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
!   _temp_2276 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2277 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2276  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2272:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2277 then goto _Label_2275		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2275
_Label_2273:
	mov	877,r13		! source line 877
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2278 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2278  sizeInBytes=4
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
!   _temp_2279 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2279  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0SE",r10
!   _temp_2280 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2280 [i ] into _temp_2281
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
_Label_2274:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2272
! END FOR
_Label_2275:
! CALL STATEMENT...
!   _temp_2282 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2282  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0SE",r10
!   _temp_2283 = _function_209_PrintObjectAddr
	set	_function_209_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2284 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2283  sizeInBytes=4
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
	.word	_Label_2285
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2286
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2287
	.word	-12
	.word	4
	.word	_Label_2288
	.word	-16
	.word	4
	.word	_Label_2289
	.word	-20
	.word	4
	.word	_Label_2290
	.word	-24
	.word	4
	.word	_Label_2291
	.word	-28
	.word	4
	.word	_Label_2292
	.word	-32
	.word	4
	.word	_Label_2293
	.word	-36
	.word	4
	.word	_Label_2294
	.word	-40
	.word	4
	.word	_Label_2295
	.word	-44
	.word	4
	.word	_Label_2296
	.word	-48
	.word	4
	.word	_Label_2297
	.word	-52
	.word	4
	.word	_Label_2298
	.word	-56
	.word	4
	.word	0
_Label_2285:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2286:
	.ascii	"Pself\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2297:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2298:
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
_Label_4095:
	push	r0
	sub	r1,1,r1
	bne	_Label_4095
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
!   _temp_2299 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2299  sizeInBytes=4
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
!   _temp_2304 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2305 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2304  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2300:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2305 then goto _Label_2303		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2303
_Label_2301:
	mov	900,r13		! source line 900
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2306 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2306  sizeInBytes=4
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
!   _temp_2307 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2307 [i ] into _temp_2308
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
_Label_2302:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2300
! END FOR
_Label_2303:
! CALL STATEMENT...
!   _temp_2309 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2309  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_2310 = _function_209_PrintObjectAddr
	set	_function_209_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2311 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2310  sizeInBytes=4
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
	.word	_Label_2312
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2313
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2314
	.word	-12
	.word	4
	.word	_Label_2315
	.word	-16
	.word	4
	.word	_Label_2316
	.word	-20
	.word	4
	.word	_Label_2317
	.word	-24
	.word	4
	.word	_Label_2318
	.word	-28
	.word	4
	.word	_Label_2319
	.word	-32
	.word	4
	.word	_Label_2320
	.word	-36
	.word	4
	.word	_Label_2321
	.word	-40
	.word	4
	.word	_Label_2322
	.word	-44
	.word	4
	.word	_Label_2323
	.word	-48
	.word	4
	.word	_Label_2324
	.word	-52
	.word	4
	.word	0
_Label_2312:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2313:
	.ascii	"Pself\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2323:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2324:
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
_Label_4096:
	push	r0
	sub	r1,1,r1
	bne	_Label_4096
	mov	913,r13		! source line 913
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0SE",r10
!   _temp_2325 = &processManagerLock
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
!   if intIsZero (_temp_2326) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2327 = _temp_2326 + 1752
	load	[r14+-72],r1
	add	r1,1752,r1
	store	r1,[r14+-68]
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2330) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2331 = _temp_2330 + 1752
	load	[r14+-56],r1
	add	r1,1752,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2329 = *_temp_2331  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_2328 = _temp_2329 + 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Data Move: *_temp_2327 = _temp_2328  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r14+-68],r2
	store	r1,[r2]
! WHILE STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0WH",r10
_Label_2332:
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_2335 = &freeList
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
!   if result==true then goto _Label_2333 else goto _Label_2334
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2334
	jmp	_Label_2333
_Label_2333:
	mov	921,r13		! source line 921
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0SE",r10
!   _temp_2336 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-44]
!   _temp_2337 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2336  sizeInBytes=4
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
	jmp	_Label_2332
_Label_2334:
! ASSIGNMENT STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0AS",r10
	mov	924,r13		! source line 924
	mov	"\0\0SE",r10
!   _temp_2338 = &freeList
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
!   _temp_2339 = tmp + 20
	load	[r14+-80],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2339 = 1  (sizeInBytes=4)
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
!   _temp_2340 = tmp + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-28]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2342) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2343 = _temp_2342 + 1752
	load	[r14+-20],r1
	add	r1,1752,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2341 = *_temp_2343  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2340 = _temp_2341  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_2344 = &processManagerLock
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
	.word	_Label_2345
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_2346
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2347
	.word	-12
	.word	4
	.word	_Label_2348
	.word	-16
	.word	4
	.word	_Label_2349
	.word	-20
	.word	4
	.word	_Label_2350
	.word	-24
	.word	4
	.word	_Label_2351
	.word	-28
	.word	4
	.word	_Label_2352
	.word	-32
	.word	4
	.word	_Label_2353
	.word	-36
	.word	4
	.word	_Label_2354
	.word	-40
	.word	4
	.word	_Label_2355
	.word	-44
	.word	4
	.word	_Label_2356
	.word	-48
	.word	4
	.word	_Label_2357
	.word	-52
	.word	4
	.word	_Label_2358
	.word	-56
	.word	4
	.word	_Label_2359
	.word	-60
	.word	4
	.word	_Label_2360
	.word	-64
	.word	4
	.word	_Label_2361
	.word	-68
	.word	4
	.word	_Label_2362
	.word	-72
	.word	4
	.word	_Label_2363
	.word	-76
	.word	4
	.word	_Label_2364
	.word	-80
	.word	4
	.word	0
_Label_2345:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2346:
	.ascii	"Pself\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2364:
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
_Label_4097:
	push	r0
	sub	r1,1,r1
	bne	_Label_4097
	mov	934,r13		! source line 934
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2365 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2365  sizeInBytes=4
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
!   _temp_2366 = &processManagerLock
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
!   _temp_2367 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2367 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0SE",r10
!   _temp_2368 = &freeList
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
!   _temp_2369 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-24]
!   _temp_2370 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2369  sizeInBytes=4
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
!   if intIsZero (_temp_2371) then goto _runtimeErrorNullPointer
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
!   _temp_2372 = &processManagerLock
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
	.word	_Label_2373
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2374
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2375
	.word	12
	.word	4
	.word	_Label_2376
	.word	-12
	.word	4
	.word	_Label_2377
	.word	-16
	.word	4
	.word	_Label_2378
	.word	-20
	.word	4
	.word	_Label_2379
	.word	-24
	.word	4
	.word	_Label_2380
	.word	-28
	.word	4
	.word	_Label_2381
	.word	-32
	.word	4
	.word	_Label_2382
	.word	-36
	.word	4
	.word	_Label_2383
	.word	-40
	.word	4
	.word	0
_Label_2373:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2374:
	.ascii	"Pself\0"
	.align
_Label_2375:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2365\0"
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
_Label_4098:
	push	r0
	sub	r1,1,r1
	bne	_Label_4098
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
!   _temp_2384 = &processManagerLock
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
!   _temp_2389 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-192]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2390 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-188]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2389  (sizeInBytes=4)
	load	[r14+-192],r1
	store	r1,[r14+-200]
_Label_2385:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2390 then goto _Label_2388		
	load	[r14+-200],r1
	load	[r14+-188],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2388
_Label_2386:
	mov	954,r13		! source line 954
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2395 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-180]
!   Data Move: _temp_2394 = *_temp_2395  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   _temp_2397 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-172]
!   _temp_2398 = _temp_2397 + 4
	load	[r14+-172],r1
	add	r1,4,r1
	store	r1,[r14+-168]
!   Move address of _temp_2398 [i ] into _temp_2399
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
!   _temp_2400 = _temp_2399 + 16
	load	[r14+-164],r1
	add	r1,16,r1
	store	r1,[r14+-160]
!   Data Move: _temp_2396 = *_temp_2400  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if _temp_2394 != _temp_2396 then goto _Label_2392		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	cmp	r1,r2
	bne	_Label_2392
!	jmp	_Label_2393
_Label_2393:
!   _temp_2402 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-152]
!   _temp_2403 = _temp_2402 + 4
	load	[r14+-152],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_2403 [i ] into _temp_2404
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
!   _temp_2405 = _temp_2404 + 20
	load	[r14+-144],r1
	add	r1,20,r1
	store	r1,[r14+-140]
!   Data Move: _temp_2401 = *_temp_2405  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if _temp_2401 != 2 then goto _Label_2392		(int)
	load	[r14+-156],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2392
!	jmp	_Label_2391
_Label_2391:
! THEN...
	mov	956,r13		! source line 956
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
!   _temp_2406 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-136]
!   _temp_2407 = _temp_2406 + 4
	load	[r14+-136],r1
	add	r1,4,r1
	store	r1,[r14+-132]
!   Move address of _temp_2407 [i ] into _temp_2408
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
!   _temp_2409 = _temp_2408 + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-124]
!   Data Move: *_temp_2409 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-124],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_2411 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-116]
!   _temp_2412 = _temp_2411 + 4
	load	[r14+-116],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_2412 [i ] into _temp_2413
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
!   _temp_2410 = _temp_2413		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-120]
!   _temp_2414 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2410  sizeInBytes=4
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
!   _temp_2415 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-100]
!   _temp_2416 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_2415  sizeInBytes=4
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
	jmp	_Label_2417
_Label_2392:
! ELSE...
	mov	959,r13		! source line 959
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0IF",r10
!   if isZombie then goto _Label_2419 else goto _Label_2421
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2421
	jmp	_Label_2419
_Label_2421:
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2423 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2422 = *_temp_2423  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   _temp_2425 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_2426 = _temp_2425 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_2426 [i ] into _temp_2427
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
!   _temp_2428 = _temp_2427 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2424 = *_temp_2428  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2422 != _temp_2424 then goto _Label_2419		(int)
	load	[r14+-92],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bne	_Label_2419
!	jmp	_Label_2420
_Label_2420:
!   _temp_2430 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_2431 = _temp_2430 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_2431 [i ] into _temp_2432
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
!   _temp_2433 = _temp_2432 + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2429 = *_temp_2433  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_2429 != 1 then goto _Label_2419		(int)
	load	[r14+-64],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2419
!	jmp	_Label_2418
_Label_2418:
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
!   _temp_2434 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_2434 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	962,r13		! source line 962
	mov	"\0\0SE",r10
!   _temp_2435 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_2436 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2435  sizeInBytes=4
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
_Label_2419:
! END IF...
_Label_2417:
!   Increment the FOR-LOOP index variable and jump back
_Label_2387:
!   i = i + 1
	load	[r14+-200],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
	jmp	_Label_2385
! END FOR
_Label_2388:
! IF STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0IF",r10
!   if isZombie then goto _Label_2438 else goto _Label_2437
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2437
	jmp	_Label_2438
_Label_2437:
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
!   _temp_2439 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2439 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0SE",r10
!   _temp_2440 = &freeList
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
!   _temp_2441 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-24]
!   _temp_2442 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2441  sizeInBytes=4
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
_Label_2438:
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_2443 = &processManagerLock
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
	.word	_Label_2444
	.word	8		! total size of parameters
	.word	200		! frame size = 200
	.word	_Label_2445
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2446
	.word	12
	.word	4
	.word	_Label_2447
	.word	-16
	.word	4
	.word	_Label_2448
	.word	-20
	.word	4
	.word	_Label_2449
	.word	-24
	.word	4
	.word	_Label_2450
	.word	-28
	.word	4
	.word	_Label_2451
	.word	-32
	.word	4
	.word	_Label_2452
	.word	-36
	.word	4
	.word	_Label_2453
	.word	-40
	.word	4
	.word	_Label_2454
	.word	-44
	.word	4
	.word	_Label_2455
	.word	-48
	.word	4
	.word	_Label_2456
	.word	-52
	.word	4
	.word	_Label_2457
	.word	-56
	.word	4
	.word	_Label_2458
	.word	-60
	.word	4
	.word	_Label_2459
	.word	-64
	.word	4
	.word	_Label_2460
	.word	-68
	.word	4
	.word	_Label_2461
	.word	-72
	.word	4
	.word	_Label_2462
	.word	-76
	.word	4
	.word	_Label_2463
	.word	-80
	.word	4
	.word	_Label_2464
	.word	-84
	.word	4
	.word	_Label_2465
	.word	-88
	.word	4
	.word	_Label_2466
	.word	-92
	.word	4
	.word	_Label_2467
	.word	-96
	.word	4
	.word	_Label_2468
	.word	-100
	.word	4
	.word	_Label_2469
	.word	-104
	.word	4
	.word	_Label_2470
	.word	-108
	.word	4
	.word	_Label_2471
	.word	-112
	.word	4
	.word	_Label_2472
	.word	-116
	.word	4
	.word	_Label_2473
	.word	-120
	.word	4
	.word	_Label_2474
	.word	-124
	.word	4
	.word	_Label_2475
	.word	-128
	.word	4
	.word	_Label_2476
	.word	-132
	.word	4
	.word	_Label_2477
	.word	-136
	.word	4
	.word	_Label_2478
	.word	-140
	.word	4
	.word	_Label_2479
	.word	-144
	.word	4
	.word	_Label_2480
	.word	-148
	.word	4
	.word	_Label_2481
	.word	-152
	.word	4
	.word	_Label_2482
	.word	-156
	.word	4
	.word	_Label_2483
	.word	-160
	.word	4
	.word	_Label_2484
	.word	-164
	.word	4
	.word	_Label_2485
	.word	-168
	.word	4
	.word	_Label_2486
	.word	-172
	.word	4
	.word	_Label_2487
	.word	-176
	.word	4
	.word	_Label_2488
	.word	-180
	.word	4
	.word	_Label_2489
	.word	-184
	.word	4
	.word	_Label_2490
	.word	-188
	.word	4
	.word	_Label_2491
	.word	-192
	.word	4
	.word	_Label_2492
	.word	-196
	.word	4
	.word	_Label_2493
	.word	-200
	.word	4
	.word	_Label_2494
	.word	-9
	.word	1
	.word	0
_Label_2444:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2445:
	.ascii	"Pself\0"
	.align
_Label_2446:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2413\0"
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
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2493:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2494:
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
_Label_4099:
	push	r0
	sub	r1,1,r1
	bne	_Label_4099
	mov	975,r13		! source line 975
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0SE",r10
!   _temp_2495 = &processManagerLock
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
_Label_2496:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2500 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2499 = *_temp_2500  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_2499 == 2 then goto _Label_2498		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2498
!	jmp	_Label_2497
_Label_2497:
	mov	979,r13		! source line 979
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0SE",r10
!   _temp_2501 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_2502 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2501  sizeInBytes=4
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
	jmp	_Label_2496
_Label_2498:
! ASSIGNMENT STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2503 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exitStatus = *_temp_2503  (sizeInBytes=4)
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
!   _temp_2504 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2504 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0SE",r10
!   _temp_2505 = &freeList
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
!   _temp_2506 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2507 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2506  sizeInBytes=4
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
!   _temp_2508 = &processManagerLock
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
	.word	_Label_2509
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2510
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2511
	.word	12
	.word	4
	.word	_Label_2512
	.word	-12
	.word	4
	.word	_Label_2513
	.word	-16
	.word	4
	.word	_Label_2514
	.word	-20
	.word	4
	.word	_Label_2515
	.word	-24
	.word	4
	.word	_Label_2516
	.word	-28
	.word	4
	.word	_Label_2517
	.word	-32
	.word	4
	.word	_Label_2518
	.word	-36
	.word	4
	.word	_Label_2519
	.word	-40
	.word	4
	.word	_Label_2520
	.word	-44
	.word	4
	.word	_Label_2521
	.word	-48
	.word	4
	.word	_Label_2522
	.word	-52
	.word	4
	.word	_Label_2523
	.word	-56
	.word	4
	.word	0
_Label_2509:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2510:
	.ascii	"Pself\0"
	.align
_Label_2511:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2523:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2524
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2524:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2525
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2525:
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
_Label_4100:
	push	r0
	sub	r1,1,r1
	bne	_Label_4100
	mov	1033,r13		! source line 1033
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2526 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2526  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1039,r13		! source line 1039
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1040,r13		! source line 1040
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
	mov	1041,r13		! source line 1041
	mov	"\0\0SE",r10
!   _temp_2528 = &framesInUse
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
	mov	1042,r13		! source line 1042
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1043,r13		! source line 1043
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
	mov	1044,r13		! source line 1044
	mov	"\0\0SE",r10
!   _temp_2530 = &frameManagerLock
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
	mov	1045,r13		! source line 1045
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
	mov	1046,r13		! source line 1046
	mov	"\0\0SE",r10
!   _temp_2532 = &newFramesAvailable
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
	mov	1052,r13		! source line 1052
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2537 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2538 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2537  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2533:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2538 then goto _Label_2536		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2536
_Label_2534:
	mov	1052,r13		! source line 1052
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2541 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2541) then goto _Label_2540
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2540
!	jmp	_Label_2539
_Label_2539:
! THEN...
	mov	1056,r13		! source line 1056
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2542 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2542  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1056,r13		! source line 1056
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2540:
!   Increment the FOR-LOOP index variable and jump back
_Label_2535:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2533
! END FOR
_Label_2536:
! RETURN STATEMENT...
	mov	1052,r13		! source line 1052
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
	.word	_Label_2543
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2544
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2545
	.word	-12
	.word	4
	.word	_Label_2546
	.word	-16
	.word	4
	.word	_Label_2547
	.word	-20
	.word	4
	.word	_Label_2548
	.word	-24
	.word	4
	.word	_Label_2549
	.word	-28
	.word	4
	.word	_Label_2550
	.word	-32
	.word	4
	.word	_Label_2551
	.word	-36
	.word	4
	.word	_Label_2552
	.word	-40
	.word	4
	.word	_Label_2553
	.word	-44
	.word	4
	.word	_Label_2554
	.word	-48
	.word	4
	.word	_Label_2555
	.word	-52
	.word	4
	.word	_Label_2556
	.word	-56
	.word	4
	.word	0
_Label_2543:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2544:
	.ascii	"Pself\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2556:
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
_Label_4101:
	push	r0
	sub	r1,1,r1
	bne	_Label_4101
	mov	1063,r13		! source line 1063
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1067,r13		! source line 1067
	mov	"\0\0SE",r10
!   _temp_2557 = &frameManagerLock
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
!   _temp_2558 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2558  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1068,r13		! source line 1068
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2559 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2559  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1069,r13		! source line 1069
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2560 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2560  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1070,r13		! source line 1070
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0SE",r10
!   _temp_2561 = &framesInUse
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
	mov	1072,r13		! source line 1072
	mov	"\0\0SE",r10
!   _temp_2562 = &frameManagerLock
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
	mov	1072,r13		! source line 1072
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
	.word	_Label_2563
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2564
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2565
	.word	-12
	.word	4
	.word	_Label_2566
	.word	-16
	.word	4
	.word	_Label_2567
	.word	-20
	.word	4
	.word	_Label_2568
	.word	-24
	.word	4
	.word	_Label_2569
	.word	-28
	.word	4
	.word	_Label_2570
	.word	-32
	.word	4
	.word	0
_Label_2563:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2564:
	.ascii	"Pself\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2557\0"
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
_Label_4102:
	push	r0
	sub	r1,1,r1
	bne	_Label_4102
	mov	1077,r13		! source line 1077
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0SE",r10
!   _temp_2571 = &frameManagerLock
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
	mov	1088,r13		! source line 1088
	mov	"\0\0WH",r10
_Label_2572:
!   if numberFreeFrames >= 1 then goto _Label_2574		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2574
!	jmp	_Label_2573
_Label_2573:
	mov	1088,r13		! source line 1088
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1089,r13		! source line 1089
	mov	"\0\0SE",r10
!   _temp_2575 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2576 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2575  sizeInBytes=4
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
	jmp	_Label_2572
_Label_2574:
! ASSIGNMENT STATEMENT...
	mov	1093,r13		! source line 1093
	mov	"\0\0AS",r10
	mov	1093,r13		! source line 1093
	mov	"\0\0SE",r10
!   _temp_2577 = &framesInUse
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
	mov	1094,r13		! source line 1094
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
	mov	1097,r13		! source line 1097
	mov	"\0\0SE",r10
!   _temp_2578 = &frameManagerLock
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
	mov	1100,r13		! source line 1100
	mov	"\0\0AS",r10
!   _temp_2579 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2579		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1102,r13		! source line 1102
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
	.word	_Label_2580
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2581
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2582
	.word	-12
	.word	4
	.word	_Label_2583
	.word	-16
	.word	4
	.word	_Label_2584
	.word	-20
	.word	4
	.word	_Label_2585
	.word	-24
	.word	4
	.word	_Label_2586
	.word	-28
	.word	4
	.word	_Label_2587
	.word	-32
	.word	4
	.word	_Label_2588
	.word	-36
	.word	4
	.word	_Label_2589
	.word	-40
	.word	4
	.word	0
_Label_2580:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2581:
	.ascii	"Pself\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2588:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2589:
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
_Label_4103:
	push	r0
	sub	r1,1,r1
	bne	_Label_4103
	mov	1107,r13		! source line 1107
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0SE",r10
!   _temp_2590 = &frameManagerLock
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
	mov	1110,r13		! source line 1110
	mov	"\0\0WH",r10
_Label_2591:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_2593		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2593
!	jmp	_Label_2592
_Label_2592:
	mov	1110,r13		! source line 1110
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1111,r13		! source line 1111
	mov	"\0\0SE",r10
!   _temp_2594 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2595 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2594  sizeInBytes=4
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
	jmp	_Label_2591
_Label_2593:
! FOR STATEMENT...
	mov	1113,r13		! source line 1113
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2600 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2601 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2600  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_2596:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2601 then goto _Label_2599		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2599
_Label_2597:
	mov	1113,r13		! source line 1113
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1114,r13		! source line 1114
	mov	"\0\0AS",r10
	mov	1114,r13		! source line 1114
	mov	"\0\0SE",r10
!   _temp_2602 = &framesInUse
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
	mov	1115,r13		! source line 1115
	mov	"\0\0AS",r10
!   _temp_2603 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2603		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1116,r13		! source line 1116
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
_Label_2598:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2596
! END FOR
_Label_2599:
! ASSIGNMENT STATEMENT...
	mov	1118,r13		! source line 1118
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
	mov	1119,r13		! source line 1119
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2604 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2604 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0SE",r10
!   _temp_2605 = &frameManagerLock
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
	mov	1120,r13		! source line 1120
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
	.word	_Label_2606
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2607
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2608
	.word	12
	.word	4
	.word	_Label_2609
	.word	16
	.word	4
	.word	_Label_2610
	.word	-12
	.word	4
	.word	_Label_2611
	.word	-16
	.word	4
	.word	_Label_2612
	.word	-20
	.word	4
	.word	_Label_2613
	.word	-24
	.word	4
	.word	_Label_2614
	.word	-28
	.word	4
	.word	_Label_2615
	.word	-32
	.word	4
	.word	_Label_2616
	.word	-36
	.word	4
	.word	_Label_2617
	.word	-40
	.word	4
	.word	_Label_2618
	.word	-44
	.word	4
	.word	_Label_2619
	.word	-48
	.word	4
	.word	_Label_2620
	.word	-52
	.word	4
	.word	_Label_2621
	.word	-56
	.word	4
	.word	0
_Label_2606:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2607:
	.ascii	"Pself\0"
	.align
_Label_2608:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2609:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2619:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2620:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2621:
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
_Label_4104:
	push	r0
	sub	r1,1,r1
	bne	_Label_4104
	mov	1125,r13		! source line 1125
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_2622 = &frameManagerLock
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
	mov	1128,r13		! source line 1128
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2627 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2630 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2629 = *_temp_2630  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2628 = _temp_2629 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2627  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_2623:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2628 then goto _Label_2626		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2626
_Label_2624:
	mov	1128,r13		! source line 1128
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1129,r13		! source line 1129
	mov	"\0\0AS",r10
	mov	1129,r13		! source line 1129
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
	mov	1130,r13		! source line 1130
	mov	"\0\0AS",r10
!   _temp_2631 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_2631 div 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0SE",r10
!   _temp_2632 = &framesInUse
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
_Label_2625:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_2623
! END FOR
_Label_2626:
! ASSIGNMENT STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2634 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2633 = *_temp_2634  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_2633		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2635 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2635 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1135,r13		! source line 1135
	mov	"\0\0SE",r10
!   _temp_2636 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2637 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2636  sizeInBytes=4
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
	mov	1136,r13		! source line 1136
	mov	"\0\0SE",r10
!   _temp_2638 = &frameManagerLock
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
	mov	1136,r13		! source line 1136
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
	.word	_Label_2639
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2640
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2641
	.word	12
	.word	4
	.word	_Label_2642
	.word	-12
	.word	4
	.word	_Label_2643
	.word	-16
	.word	4
	.word	_Label_2644
	.word	-20
	.word	4
	.word	_Label_2645
	.word	-24
	.word	4
	.word	_Label_2646
	.word	-28
	.word	4
	.word	_Label_2647
	.word	-32
	.word	4
	.word	_Label_2648
	.word	-36
	.word	4
	.word	_Label_2649
	.word	-40
	.word	4
	.word	_Label_2650
	.word	-44
	.word	4
	.word	_Label_2651
	.word	-48
	.word	4
	.word	_Label_2652
	.word	-52
	.word	4
	.word	_Label_2653
	.word	-56
	.word	4
	.word	_Label_2654
	.word	-60
	.word	4
	.word	_Label_2655
	.word	-64
	.word	4
	.word	_Label_2656
	.word	-68
	.word	4
	.word	_Label_2657
	.word	-72
	.word	4
	.word	0
_Label_2639:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2640:
	.ascii	"Pself\0"
	.align
_Label_2641:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2655:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2656:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2657:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2658
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
_Label_2658:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2659
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2659:
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
_Label_4105:
	push	r0
	sub	r1,1,r1
	bne	_Label_4105
	mov	1147,r13		! source line 1147
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0AS",r10
!   _temp_2660 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2662 = &_temp_2661
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2662 = _temp_2662 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2664:
!   Data Move: *_temp_2662 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2662 = _temp_2662 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2663 = _temp_2663 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2663) then goto _Label_2664
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2664
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2665 = &_temp_2661
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4106
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4106:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2660 = *_temp_2665  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4107:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4107
! RETURN STATEMENT...
	mov	1152,r13		! source line 1152
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
	.word	_Label_2666
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2667
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2668
	.word	-12
	.word	4
	.word	_Label_2669
	.word	-16
	.word	4
	.word	_Label_2670
	.word	-20
	.word	4
	.word	_Label_2671
	.word	-104
	.word	84
	.word	_Label_2672
	.word	-108
	.word	4
	.word	0
_Label_2666:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2667:
	.ascii	"Pself\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2660\0"
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
_Label_4108:
	push	r0
	sub	r1,1,r1
	bne	_Label_4108
	mov	1157,r13		! source line 1157
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2673 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2673  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1162,r13		! source line 1162
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2674 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2674  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1163,r13		! source line 1163
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2679 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2680 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2679  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2675:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2680 then goto _Label_2678		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2678
_Label_2676:
	mov	1164,r13		! source line 1164
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2681 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2681  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1165,r13		! source line 1165
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2683 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2683 [i ] into _temp_2684
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
!   _temp_2682 = _temp_2684		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2682  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1166,r13		! source line 1166
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2685 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2685  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1167,r13		! source line 1167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2687 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2687 [i ] into _temp_2688
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
!   Data Move: _temp_2686 = *_temp_2688  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2686  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1168,r13		! source line 1168
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2689 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2689  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1169,r13		! source line 1169
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2690 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2690  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1170,r13		! source line 1170
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2691 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2691  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1171,r13		! source line 1171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2693) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2692  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2692  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1172,r13		! source line 1172
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2694 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2694  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1173,r13		! source line 1173
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1174,r13		! source line 1174
	mov	"\0\0IF",r10
	mov	1174,r13		! source line 1174
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2698) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2697  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2697) then goto _Label_2696
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2696
!	jmp	_Label_2695
_Label_2695:
! THEN...
	mov	1175,r13		! source line 1175
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2700) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2699  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2699  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1175,r13		! source line 1175
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2701
_Label_2696:
! ELSE...
	mov	1177,r13		! source line 1177
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2702 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2702  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1177,r13		! source line 1177
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2701:
! CALL STATEMENT...
!   _temp_2703 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2703  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1179,r13		! source line 1179
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0IF",r10
	mov	1180,r13		! source line 1180
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2706) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2704 else goto _Label_2705
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2705
	jmp	_Label_2704
_Label_2704:
! THEN...
	mov	1181,r13		! source line 1181
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2707 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2707  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1181,r13		! source line 1181
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2708
_Label_2705:
! ELSE...
	mov	1183,r13		! source line 1183
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2709 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2709  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1183,r13		! source line 1183
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2708:
! CALL STATEMENT...
!   _temp_2710 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2710  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1185,r13		! source line 1185
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0IF",r10
	mov	1186,r13		! source line 1186
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2713) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2711 else goto _Label_2712
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2712
	jmp	_Label_2711
_Label_2711:
! THEN...
	mov	1187,r13		! source line 1187
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2714 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2714  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1187,r13		! source line 1187
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2715
_Label_2712:
! ELSE...
	mov	1189,r13		! source line 1189
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2716 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2716  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1189,r13		! source line 1189
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2715:
! CALL STATEMENT...
!   _temp_2717 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2717  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1191,r13		! source line 1191
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0IF",r10
	mov	1192,r13		! source line 1192
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2720) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2718 else goto _Label_2719
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2719
	jmp	_Label_2718
_Label_2718:
! THEN...
	mov	1193,r13		! source line 1193
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2721 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2721  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1193,r13		! source line 1193
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2722
_Label_2719:
! ELSE...
	mov	1195,r13		! source line 1195
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2723 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2723  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1195,r13		! source line 1195
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2722:
! CALL STATEMENT...
!   _temp_2724 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2724  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1197,r13		! source line 1197
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0IF",r10
	mov	1198,r13		! source line 1198
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2727) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2725 else goto _Label_2726
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2726
	jmp	_Label_2725
_Label_2725:
! THEN...
	mov	1199,r13		! source line 1199
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2728 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2728  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1199,r13		! source line 1199
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2729
_Label_2726:
! ELSE...
	mov	1201,r13		! source line 1201
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2730 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2730  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1201,r13		! source line 1201
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2729:
! CALL STATEMENT...
!   Call the function
	mov	1203,r13		! source line 1203
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2677:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2675
! END FOR
_Label_2678:
! RETURN STATEMENT...
	mov	1164,r13		! source line 1164
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
	.word	_Label_2731
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2732
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2733
	.word	-12
	.word	4
	.word	_Label_2734
	.word	-16
	.word	4
	.word	_Label_2735
	.word	-20
	.word	4
	.word	_Label_2736
	.word	-24
	.word	4
	.word	_Label_2737
	.word	-28
	.word	4
	.word	_Label_2738
	.word	-32
	.word	4
	.word	_Label_2739
	.word	-36
	.word	4
	.word	_Label_2740
	.word	-40
	.word	4
	.word	_Label_2741
	.word	-44
	.word	4
	.word	_Label_2742
	.word	-48
	.word	4
	.word	_Label_2743
	.word	-52
	.word	4
	.word	_Label_2744
	.word	-56
	.word	4
	.word	_Label_2745
	.word	-60
	.word	4
	.word	_Label_2746
	.word	-64
	.word	4
	.word	_Label_2747
	.word	-68
	.word	4
	.word	_Label_2748
	.word	-72
	.word	4
	.word	_Label_2749
	.word	-76
	.word	4
	.word	_Label_2750
	.word	-80
	.word	4
	.word	_Label_2751
	.word	-84
	.word	4
	.word	_Label_2752
	.word	-88
	.word	4
	.word	_Label_2753
	.word	-92
	.word	4
	.word	_Label_2754
	.word	-96
	.word	4
	.word	_Label_2755
	.word	-100
	.word	4
	.word	_Label_2756
	.word	-104
	.word	4
	.word	_Label_2757
	.word	-108
	.word	4
	.word	_Label_2758
	.word	-112
	.word	4
	.word	_Label_2759
	.word	-116
	.word	4
	.word	_Label_2760
	.word	-120
	.word	4
	.word	_Label_2761
	.word	-124
	.word	4
	.word	_Label_2762
	.word	-128
	.word	4
	.word	_Label_2763
	.word	-132
	.word	4
	.word	_Label_2764
	.word	-136
	.word	4
	.word	_Label_2765
	.word	-140
	.word	4
	.word	_Label_2766
	.word	-144
	.word	4
	.word	_Label_2767
	.word	-148
	.word	4
	.word	_Label_2768
	.word	-152
	.word	4
	.word	_Label_2769
	.word	-156
	.word	4
	.word	_Label_2770
	.word	-160
	.word	4
	.word	_Label_2771
	.word	-164
	.word	4
	.word	_Label_2772
	.word	-168
	.word	4
	.word	0
_Label_2731:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2732:
	.ascii	"Pself\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2772:
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
_Label_4109:
	push	r0
	sub	r1,1,r1
	bne	_Label_4109
	mov	1209,r13		! source line 1209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1214,r13		! source line 1214
	mov	"\0\0RE",r10
!   _temp_2775 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2775 [entry ] into _temp_2776
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
!   Data Move: _temp_2774 = *_temp_2776  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2773 = _temp_2774 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2773  (sizeInBytes=4)
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
	.word	_Label_2777
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2778
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2779
	.word	12
	.word	4
	.word	_Label_2780
	.word	-12
	.word	4
	.word	_Label_2781
	.word	-16
	.word	4
	.word	_Label_2782
	.word	-20
	.word	4
	.word	_Label_2783
	.word	-24
	.word	4
	.word	0
_Label_2777:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2778:
	.ascii	"Pself\0"
	.align
_Label_2779:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2773\0"
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
_Label_4110:
	push	r0
	sub	r1,1,r1
	bne	_Label_4110
	mov	1219,r13		! source line 1219
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0RE",r10
!   _temp_2786 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2786 [entry ] into _temp_2787
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
!   Data Move: _temp_2785 = *_temp_2787  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2784 = _temp_2785 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2784  (sizeInBytes=4)
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
	.word	_Label_2788
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2789
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2790
	.word	12
	.word	4
	.word	_Label_2791
	.word	-12
	.word	4
	.word	_Label_2792
	.word	-16
	.word	4
	.word	_Label_2793
	.word	-20
	.word	4
	.word	_Label_2794
	.word	-24
	.word	4
	.word	0
_Label_2788:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2789:
	.ascii	"Pself\0"
	.align
_Label_2790:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2784\0"
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
_Label_4111:
	push	r0
	sub	r1,1,r1
	bne	_Label_4111
	mov	1228,r13		! source line 1228
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0AS",r10
!   _temp_2795 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2795 [entry ] into _temp_2796
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
!   _temp_2800 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2800 [entry ] into _temp_2801
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
!   Data Move: _temp_2799 = *_temp_2801  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2798 = _temp_2799 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2797 = _temp_2798 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2796 = _temp_2797  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1233,r13		! source line 1233
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
	.word	_Label_2802
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2803
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2804
	.word	12
	.word	4
	.word	_Label_2805
	.word	16
	.word	4
	.word	_Label_2806
	.word	-12
	.word	4
	.word	_Label_2807
	.word	-16
	.word	4
	.word	_Label_2808
	.word	-20
	.word	4
	.word	_Label_2809
	.word	-24
	.word	4
	.word	_Label_2810
	.word	-28
	.word	4
	.word	_Label_2811
	.word	-32
	.word	4
	.word	_Label_2812
	.word	-36
	.word	4
	.word	0
_Label_2802:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2803:
	.ascii	"Pself\0"
	.align
_Label_2804:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2805:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2795\0"
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
_Label_4112:
	push	r0
	sub	r1,1,r1
	bne	_Label_4112
	mov	1238,r13		! source line 1238
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1242,r13		! source line 1242
	mov	"\0\0RE",r10
!   _temp_2816 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2816 [entry ] into _temp_2817
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
!   Data Move: _temp_2815 = *_temp_2817  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2814 = _temp_2815 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2814) then goto _Label_2818
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2818
!   _temp_2813 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2819
_Label_2818:
!   _temp_2813 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2819:
!   ReturnResult: _temp_2813  (sizeInBytes=1)
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
	.word	_Label_2820
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2821
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2822
	.word	12
	.word	4
	.word	_Label_2823
	.word	-16
	.word	4
	.word	_Label_2824
	.word	-20
	.word	4
	.word	_Label_2825
	.word	-24
	.word	4
	.word	_Label_2826
	.word	-28
	.word	4
	.word	_Label_2827
	.word	-9
	.word	1
	.word	0
_Label_2820:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2821:
	.ascii	"Pself\0"
	.align
_Label_2822:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2827:
	.byte	'C'
	.ascii	"_temp_2813\0"
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
_Label_4113:
	push	r0
	sub	r1,1,r1
	bne	_Label_4113
	mov	1247,r13		! source line 1247
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0RE",r10
!   _temp_2831 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2831 [entry ] into _temp_2832
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
!   Data Move: _temp_2830 = *_temp_2832  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2829 = _temp_2830 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2829) then goto _Label_2833
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2833
!   _temp_2828 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2834
_Label_2833:
!   _temp_2828 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2834:
!   ReturnResult: _temp_2828  (sizeInBytes=1)
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
	.word	_Label_2835
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2836
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2837
	.word	12
	.word	4
	.word	_Label_2838
	.word	-16
	.word	4
	.word	_Label_2839
	.word	-20
	.word	4
	.word	_Label_2840
	.word	-24
	.word	4
	.word	_Label_2841
	.word	-28
	.word	4
	.word	_Label_2842
	.word	-9
	.word	1
	.word	0
_Label_2835:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2836:
	.ascii	"Pself\0"
	.align
_Label_2837:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2842:
	.byte	'C'
	.ascii	"_temp_2828\0"
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
_Label_4114:
	push	r0
	sub	r1,1,r1
	bne	_Label_4114
	mov	1256,r13		! source line 1256
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1260,r13		! source line 1260
	mov	"\0\0RE",r10
!   _temp_2846 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2846 [entry ] into _temp_2847
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
!   Data Move: _temp_2845 = *_temp_2847  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2844 = _temp_2845 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2844) then goto _Label_2848
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2848
!   _temp_2843 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2849
_Label_2848:
!   _temp_2843 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2849:
!   ReturnResult: _temp_2843  (sizeInBytes=1)
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
	.word	_Label_2850
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2851
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2852
	.word	12
	.word	4
	.word	_Label_2853
	.word	-16
	.word	4
	.word	_Label_2854
	.word	-20
	.word	4
	.word	_Label_2855
	.word	-24
	.word	4
	.word	_Label_2856
	.word	-28
	.word	4
	.word	_Label_2857
	.word	-9
	.word	1
	.word	0
_Label_2850:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2851:
	.ascii	"Pself\0"
	.align
_Label_2852:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2857:
	.byte	'C'
	.ascii	"_temp_2843\0"
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
_Label_4115:
	push	r0
	sub	r1,1,r1
	bne	_Label_4115
	mov	1265,r13		! source line 1265
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1269,r13		! source line 1269
	mov	"\0\0RE",r10
!   _temp_2861 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2861 [entry ] into _temp_2862
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
!   Data Move: _temp_2860 = *_temp_2862  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2859 = _temp_2860 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2859) then goto _Label_2863
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2863
!   _temp_2858 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2864
_Label_2863:
!   _temp_2858 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2864:
!   ReturnResult: _temp_2858  (sizeInBytes=1)
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
	.word	_Label_2865
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2866
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2867
	.word	12
	.word	4
	.word	_Label_2868
	.word	-16
	.word	4
	.word	_Label_2869
	.word	-20
	.word	4
	.word	_Label_2870
	.word	-24
	.word	4
	.word	_Label_2871
	.word	-28
	.word	4
	.word	_Label_2872
	.word	-9
	.word	1
	.word	0
_Label_2865:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2866:
	.ascii	"Pself\0"
	.align
_Label_2867:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2872:
	.byte	'C'
	.ascii	"_temp_2858\0"
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
_Label_4116:
	push	r0
	sub	r1,1,r1
	bne	_Label_4116
	mov	1274,r13		! source line 1274
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1278,r13		! source line 1278
	mov	"\0\0AS",r10
!   _temp_2873 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2873 [entry ] into _temp_2874
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
!   _temp_2877 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2877 [entry ] into _temp_2878
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
!   Data Move: _temp_2876 = *_temp_2878  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2875 = _temp_2876 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2874 = _temp_2875  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1278,r13		! source line 1278
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
	.word	_Label_2879
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2880
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2881
	.word	12
	.word	4
	.word	_Label_2882
	.word	-12
	.word	4
	.word	_Label_2883
	.word	-16
	.word	4
	.word	_Label_2884
	.word	-20
	.word	4
	.word	_Label_2885
	.word	-24
	.word	4
	.word	_Label_2886
	.word	-28
	.word	4
	.word	_Label_2887
	.word	-32
	.word	4
	.word	0
_Label_2879:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2880:
	.ascii	"Pself\0"
	.align
_Label_2881:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2873\0"
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
_Label_4117:
	push	r0
	sub	r1,1,r1
	bne	_Label_4117
	mov	1283,r13		! source line 1283
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0AS",r10
!   _temp_2888 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2888 [entry ] into _temp_2889
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
!   _temp_2892 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2892 [entry ] into _temp_2893
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
!   Data Move: _temp_2891 = *_temp_2893  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2890 = _temp_2891 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2889 = _temp_2890  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1287,r13		! source line 1287
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
	.word	_Label_2894
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2895
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2896
	.word	12
	.word	4
	.word	_Label_2897
	.word	-12
	.word	4
	.word	_Label_2898
	.word	-16
	.word	4
	.word	_Label_2899
	.word	-20
	.word	4
	.word	_Label_2900
	.word	-24
	.word	4
	.word	_Label_2901
	.word	-28
	.word	4
	.word	_Label_2902
	.word	-32
	.word	4
	.word	0
_Label_2894:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2895:
	.ascii	"Pself\0"
	.align
_Label_2896:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2897:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2888\0"
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
_Label_4118:
	push	r0
	sub	r1,1,r1
	bne	_Label_4118
	mov	1292,r13		! source line 1292
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0AS",r10
!   _temp_2903 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2903 [entry ] into _temp_2904
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
!   _temp_2907 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2907 [entry ] into _temp_2908
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
!   Data Move: _temp_2906 = *_temp_2908  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2905 = _temp_2906 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2904 = _temp_2905  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_2909
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2910
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2911
	.word	12
	.word	4
	.word	_Label_2912
	.word	-12
	.word	4
	.word	_Label_2913
	.word	-16
	.word	4
	.word	_Label_2914
	.word	-20
	.word	4
	.word	_Label_2915
	.word	-24
	.word	4
	.word	_Label_2916
	.word	-28
	.word	4
	.word	_Label_2917
	.word	-32
	.word	4
	.word	0
_Label_2909:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2910:
	.ascii	"Pself\0"
	.align
_Label_2911:
	.byte	'I'
	.ascii	"entry\0"
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
	.ascii	"_temp_2904\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2903\0"
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
_Label_4119:
	push	r0
	sub	r1,1,r1
	bne	_Label_4119
	mov	1301,r13		! source line 1301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1305,r13		! source line 1305
	mov	"\0\0AS",r10
!   _temp_2918 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2918 [entry ] into _temp_2919
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
!   _temp_2922 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2922 [entry ] into _temp_2923
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
!   Data Move: _temp_2921 = *_temp_2923  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2920 = _temp_2921 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2919 = _temp_2920  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1305,r13		! source line 1305
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
	.word	_Label_2924
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2925
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2926
	.word	12
	.word	4
	.word	_Label_2927
	.word	-12
	.word	4
	.word	_Label_2928
	.word	-16
	.word	4
	.word	_Label_2929
	.word	-20
	.word	4
	.word	_Label_2930
	.word	-24
	.word	4
	.word	_Label_2931
	.word	-28
	.word	4
	.word	_Label_2932
	.word	-32
	.word	4
	.word	0
_Label_2924:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2925:
	.ascii	"Pself\0"
	.align
_Label_2926:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2918\0"
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
_Label_4120:
	push	r0
	sub	r1,1,r1
	bne	_Label_4120
	mov	1310,r13		! source line 1310
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0AS",r10
!   _temp_2933 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2933 [entry ] into _temp_2934
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
!   _temp_2937 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2937 [entry ] into _temp_2938
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
!   Data Move: _temp_2936 = *_temp_2938  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2935 = _temp_2936 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2934 = _temp_2935  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1314,r13		! source line 1314
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
	.word	_Label_2939
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2940
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2941
	.word	12
	.word	4
	.word	_Label_2942
	.word	-12
	.word	4
	.word	_Label_2943
	.word	-16
	.word	4
	.word	_Label_2944
	.word	-20
	.word	4
	.word	_Label_2945
	.word	-24
	.word	4
	.word	_Label_2946
	.word	-28
	.word	4
	.word	_Label_2947
	.word	-32
	.word	4
	.word	0
_Label_2939:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2940:
	.ascii	"Pself\0"
	.align
_Label_2941:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2933\0"
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
_Label_4121:
	push	r0
	sub	r1,1,r1
	bne	_Label_4121
	mov	1319,r13		! source line 1319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0AS",r10
!   _temp_2948 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2948 [entry ] into _temp_2949
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
!   _temp_2952 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2952 [entry ] into _temp_2953
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
!   Data Move: _temp_2951 = *_temp_2953  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2950 = _temp_2951 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2949 = _temp_2950  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1323,r13		! source line 1323
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
	.word	_Label_2954
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2955
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2956
	.word	12
	.word	4
	.word	_Label_2957
	.word	-12
	.word	4
	.word	_Label_2958
	.word	-16
	.word	4
	.word	_Label_2959
	.word	-20
	.word	4
	.word	_Label_2960
	.word	-24
	.word	4
	.word	_Label_2961
	.word	-28
	.word	4
	.word	_Label_2962
	.word	-32
	.word	4
	.word	0
_Label_2954:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2955:
	.ascii	"Pself\0"
	.align
_Label_2956:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2948\0"
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
_Label_4122:
	push	r0
	sub	r1,1,r1
	bne	_Label_4122
	mov	1328,r13		! source line 1328
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0AS",r10
!   _temp_2963 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2963 [entry ] into _temp_2964
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
!   _temp_2967 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2967 [entry ] into _temp_2968
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
!   Data Move: _temp_2966 = *_temp_2968  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2965 = _temp_2966 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2964 = _temp_2965  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1332,r13		! source line 1332
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
	.word	_Label_2969
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2970
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2971
	.word	12
	.word	4
	.word	_Label_2972
	.word	-12
	.word	4
	.word	_Label_2973
	.word	-16
	.word	4
	.word	_Label_2974
	.word	-20
	.word	4
	.word	_Label_2975
	.word	-24
	.word	4
	.word	_Label_2976
	.word	-28
	.word	4
	.word	_Label_2977
	.word	-32
	.word	4
	.word	0
_Label_2969:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2970:
	.ascii	"Pself\0"
	.align
_Label_2971:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2967\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2963\0"
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
_Label_4123:
	push	r0
	sub	r1,1,r1
	bne	_Label_4123
	mov	1337,r13		! source line 1337
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1341,r13		! source line 1341
	mov	"\0\0AS",r10
!   _temp_2978 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2978 [entry ] into _temp_2979
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
!   _temp_2982 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2982 [entry ] into _temp_2983
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
!   Data Move: _temp_2981 = *_temp_2983  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2980 = _temp_2981 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2979 = _temp_2980  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1341,r13		! source line 1341
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
	.word	_Label_2984
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2985
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2986
	.word	12
	.word	4
	.word	_Label_2987
	.word	-12
	.word	4
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
	.word	-28
	.word	4
	.word	_Label_2992
	.word	-32
	.word	4
	.word	0
_Label_2984:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2985:
	.ascii	"Pself\0"
	.align
_Label_2986:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2978\0"
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
_Label_4124:
	push	r0
	sub	r1,1,r1
	bne	_Label_4124
	mov	1346,r13		! source line 1346
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2994 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2994 [0 ] into _temp_2995
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
!   _temp_2993 = _temp_2995		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2996 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2993  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2996  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1352,r13		! source line 1352
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1352,r13		! source line 1352
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
	.word	_Label_2997
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2998
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2999
	.word	-12
	.word	4
	.word	_Label_3000
	.word	-16
	.word	4
	.word	_Label_3001
	.word	-20
	.word	4
	.word	_Label_3002
	.word	-24
	.word	4
	.word	0
_Label_2997:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2998:
	.ascii	"Pself\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2996\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2995\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2993\0"
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
_Label_4125:
	push	r0
	sub	r1,1,r1
	bne	_Label_4125
	mov	1357,r13		! source line 1357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1372,r13		! source line 1372
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3003
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3003
	jmp	_Label_3004
_Label_3003:
! THEN...
	mov	1373,r13		! source line 1373
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_3005
_Label_3004:
! ELSE...
	mov	1374,r13		! source line 1374
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3007		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3007
!	jmp	_Label_3006
_Label_3006:
! THEN...
	mov	1375,r13		! source line 1375
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3007:
! END IF...
_Label_3005:
! ASSIGNMENT STATEMENT...
	mov	1377,r13		! source line 1377
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
	mov	1378,r13		! source line 1378
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
	mov	1381,r13		! source line 1381
	mov	"\0\0WH",r10
_Label_3008:
!	jmp	_Label_3009
_Label_3009:
	mov	1381,r13		! source line 1381
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3012		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3012
!	jmp	_Label_3011
_Label_3011:
! THEN...
	mov	1383,r13		! source line 1383
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3013 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3013  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1383,r13		! source line 1383
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3012:
! IF STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0IF",r10
	mov	1386,r13		! source line 1386
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3017) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3016  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3016 then goto _Label_3015 else goto _Label_3014
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3014
	jmp	_Label_3015
_Label_3014:
! THEN...
	mov	1387,r13		! source line 1387
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3018 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3018  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1387,r13		! source line 1387
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3015:
! ASSIGNMENT STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0AS",r10
	mov	1390,r13		! source line 1390
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3020) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3019  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_3019 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0WH",r10
_Label_3021:
!   if offset >= 8192 then goto _Label_3023		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3023
!	jmp	_Label_3022
_Label_3022:
	mov	1392,r13		! source line 1392
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3024 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_3024  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1398,r13		! source line 1398
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1400,r13		! source line 1400
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_3026		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3026
!	jmp	_Label_3025
_Label_3025:
! THEN...
	mov	1401,r13		! source line 1401
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3026:
! END WHILE...
	jmp	_Label_3021
_Label_3023:
! ASSIGNMENT STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_3008
_Label_3010:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_3027
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_3028
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3029
	.word	12
	.word	4
	.word	_Label_3030
	.word	16
	.word	4
	.word	_Label_3031
	.word	20
	.word	4
	.word	_Label_3032
	.word	-9
	.word	1
	.word	_Label_3033
	.word	-16
	.word	4
	.word	_Label_3034
	.word	-20
	.word	4
	.word	_Label_3035
	.word	-24
	.word	4
	.word	_Label_3036
	.word	-28
	.word	4
	.word	_Label_3037
	.word	-10
	.word	1
	.word	_Label_3038
	.word	-32
	.word	4
	.word	_Label_3039
	.word	-36
	.word	4
	.word	_Label_3040
	.word	-40
	.word	4
	.word	_Label_3041
	.word	-44
	.word	4
	.word	_Label_3042
	.word	-48
	.word	4
	.word	0
_Label_3027:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_3028:
	.ascii	"Pself\0"
	.align
_Label_3029:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3030:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3031:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3032:
	.byte	'C'
	.ascii	"_temp_3024\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3037:
	.byte	'C'
	.ascii	"_temp_3016\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3039:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3040:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3041:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3042:
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
_Label_4126:
	push	r0
	sub	r1,1,r1
	bne	_Label_4126
	mov	1411,r13		! source line 1411
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3043
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3043
	jmp	_Label_3044
_Label_3043:
! THEN...
	mov	1423,r13		! source line 1423
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_3045
_Label_3044:
! ELSE...
	mov	1424,r13		! source line 1424
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3047		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3047
!	jmp	_Label_3046
_Label_3046:
! THEN...
	mov	1425,r13		! source line 1425
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1425,r13		! source line 1425
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3047:
! END IF...
_Label_3045:
! ASSIGNMENT STATEMENT...
	mov	1427,r13		! source line 1427
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
	mov	1428,r13		! source line 1428
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
	mov	1429,r13		! source line 1429
	mov	"\0\0WH",r10
_Label_3048:
!	jmp	_Label_3049
_Label_3049:
	mov	1429,r13		! source line 1429
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3054		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3054
	jmp	_Label_3051
_Label_3054:
	mov	1431,r13		! source line 1431
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3056) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3055  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_3055 then goto _Label_3053 else goto _Label_3051
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_3051
	jmp	_Label_3053
_Label_3053:
	mov	1432,r13		! source line 1432
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3058) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3057  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3057 then goto _Label_3052 else goto _Label_3051
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3051
	jmp	_Label_3052
_Label_3051:
! THEN...
	mov	1433,r13		! source line 1433
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3052:
! ASSIGNMENT STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0AS",r10
	mov	1435,r13		! source line 1435
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3060) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3059  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_3059 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0WH",r10
_Label_3061:
!   if offset >= 8192 then goto _Label_3063		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3063
!	jmp	_Label_3062
_Label_3062:
	mov	1436,r13		! source line 1436
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1437,r13		! source line 1437
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3064 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_3064  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_3066		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3066
!	jmp	_Label_3065
_Label_3065:
! THEN...
	mov	1443,r13		! source line 1443
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1443,r13		! source line 1443
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3066:
! END WHILE...
	jmp	_Label_3061
_Label_3063:
! ASSIGNMENT STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_3048
_Label_3050:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_3067
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3068
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3069
	.word	12
	.word	4
	.word	_Label_3070
	.word	16
	.word	4
	.word	_Label_3071
	.word	20
	.word	4
	.word	_Label_3072
	.word	-9
	.word	1
	.word	_Label_3073
	.word	-16
	.word	4
	.word	_Label_3074
	.word	-20
	.word	4
	.word	_Label_3075
	.word	-24
	.word	4
	.word	_Label_3076
	.word	-10
	.word	1
	.word	_Label_3077
	.word	-28
	.word	4
	.word	_Label_3078
	.word	-11
	.word	1
	.word	_Label_3079
	.word	-32
	.word	4
	.word	_Label_3080
	.word	-36
	.word	4
	.word	_Label_3081
	.word	-40
	.word	4
	.word	_Label_3082
	.word	-44
	.word	4
	.word	0
_Label_3067:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_3068:
	.ascii	"Pself\0"
	.align
_Label_3069:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3070:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3071:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3072:
	.byte	'C'
	.ascii	"_temp_3064\0"
	.align
_Label_3073:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3074:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3075:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3076:
	.byte	'C'
	.ascii	"_temp_3057\0"
	.align
_Label_3077:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3078:
	.byte	'C'
	.ascii	"_temp_3055\0"
	.align
_Label_3079:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3080:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3081:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3082:
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
_Label_4127:
	push	r0
	sub	r1,1,r1
	bne	_Label_4127
	mov	1453,r13		! source line 1453
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0IF",r10
	mov	1477,r13		! source line 1477
	mov	"\0\0SE",r10
!   _temp_3086 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3087) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3086  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3085  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_3085 >= 4 then goto _Label_3084		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3084
!	jmp	_Label_3083
_Label_3083:
! THEN...
	mov	1480,r13		! source line 1480
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3084:
! IF STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_3089		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3089
!	jmp	_Label_3088
_Label_3088:
! THEN...
	mov	1485,r13		! source line 1485
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3089:
! ASSIGNMENT STATEMENT...
	mov	1488,r13		! source line 1488
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
	mov	1490,r13		! source line 1490
	mov	"\0\0RE",r10
	mov	1490,r13		! source line 1490
	mov	"\0\0SE",r10
!   _temp_3092 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_3091 = _temp_3092 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_3093 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_3094) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3091  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_3093  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3090  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_3090  (sizeInBytes=4)
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
	.word	_Label_3095
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3096
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3097
	.word	12
	.word	4
	.word	_Label_3098
	.word	16
	.word	4
	.word	_Label_3099
	.word	20
	.word	4
	.word	_Label_3100
	.word	-12
	.word	4
	.word	_Label_3101
	.word	-16
	.word	4
	.word	_Label_3102
	.word	-20
	.word	4
	.word	_Label_3103
	.word	-24
	.word	4
	.word	_Label_3104
	.word	-28
	.word	4
	.word	_Label_3105
	.word	-32
	.word	4
	.word	_Label_3106
	.word	-36
	.word	4
	.word	_Label_3107
	.word	-40
	.word	4
	.word	_Label_3108
	.word	-44
	.word	4
	.word	0
_Label_3095:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_3096:
	.ascii	"Pself\0"
	.align
_Label_3097:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_3098:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3099:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3101:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3108:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3109
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3109:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3110
	.word	_sourceFileName
	.word	308		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3110:
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
_Label_4128:
	push	r0
	sub	r1,1,r1
	bne	_Label_4128
	mov	2215,r13		! source line 2215
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3111 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3111  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2216,r13		! source line 2216
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2223,r13		! source line 2223
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
	mov	2224,r13		! source line 2224
	mov	"\0\0SE",r10
!   _temp_3113 = &semUsedInSynchMethods
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
	mov	2225,r13		! source line 2225
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
	mov	2226,r13		! source line 2226
	mov	"\0\0SE",r10
!   _temp_3115 = &diskBusy
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
	mov	2226,r13		! source line 2226
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
	.word	_Label_3116
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3117
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3118
	.word	-12
	.word	4
	.word	_Label_3119
	.word	-16
	.word	4
	.word	_Label_3120
	.word	-20
	.word	4
	.word	_Label_3121
	.word	-24
	.word	4
	.word	_Label_3122
	.word	-28
	.word	4
	.word	0
_Label_3116:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3117:
	.ascii	"Pself\0"
	.align
_Label_3118:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3114\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3111\0"
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
_Label_4129:
	push	r0
	sub	r1,1,r1
	bne	_Label_4129
	mov	2231,r13		! source line 2231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0SE",r10
!   _temp_3123 = &diskBusy
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
	mov	2245,r13		! source line 2245
	mov	"\0\0WH",r10
_Label_3124:
!	jmp	_Label_3125
_Label_3125:
	mov	2245,r13		! source line 2245
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0SE",r10
!   _temp_3127 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3128) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3127  sizeInBytes=4
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
	mov	2249,r13		! source line 2249
	mov	"\0\0SE",r10
!   _temp_3129 = &semUsedInSynchMethods
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
	mov	2252,r13		! source line 2252
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3138 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3132
	cmp	r1,2
	be	_Label_3133
	cmp	r1,3
	be	_Label_3134
	cmp	r1,4
	be	_Label_3135
	cmp	r1,5
	be	_Label_3136
	cmp	r1,6
	be	_Label_3137
	jmp	_Label_3130
! CASE 1...
_Label_3132:
! SEND STATEMENT...
	mov	2254,r13		! source line 2254
	mov	"\0\0SE",r10
!   _temp_3139 = &diskBusy
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
	mov	2255,r13		! source line 2255
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3133:
! CALL STATEMENT...
!   _temp_3140 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3140  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2257,r13		! source line 2257
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3134:
! CALL STATEMENT...
!   _temp_3141 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3141  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2259,r13		! source line 2259
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3135:
! CALL STATEMENT...
!   _temp_3142 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3142  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2261,r13		! source line 2261
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3136:
! BREAK STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0BR",r10
	jmp	_Label_3131
! CASE 6...
_Label_3137:
! CALL STATEMENT...
!   _temp_3143 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3143  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2267,r13		! source line 2267
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3130:
! CALL STATEMENT...
!   _temp_3144 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3144  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2269,r13		! source line 2269
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3131:
! END WHILE...
	jmp	_Label_3124
_Label_3126:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3145
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3146
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3147
	.word	12
	.word	4
	.word	_Label_3148
	.word	16
	.word	4
	.word	_Label_3149
	.word	20
	.word	4
	.word	_Label_3150
	.word	-12
	.word	4
	.word	_Label_3151
	.word	-16
	.word	4
	.word	_Label_3152
	.word	-20
	.word	4
	.word	_Label_3153
	.word	-24
	.word	4
	.word	_Label_3154
	.word	-28
	.word	4
	.word	_Label_3155
	.word	-32
	.word	4
	.word	_Label_3156
	.word	-36
	.word	4
	.word	_Label_3157
	.word	-40
	.word	4
	.word	_Label_3158
	.word	-44
	.word	4
	.word	_Label_3159
	.word	-48
	.word	4
	.word	_Label_3160
	.word	-52
	.word	4
	.word	0
_Label_3145:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3146:
	.ascii	"Pself\0"
	.align
_Label_3147:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3148:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3149:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3141\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3140\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3139\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3129\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3128\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3123\0"
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
	mov	2278,r13		! source line 2278
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2296,r13		! source line 2296
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
	mov	2297,r13		! source line 2297
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
	mov	2298,r13		! source line 2298
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
	mov	2299,r13		! source line 2299
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
	mov	2299,r13		! source line 2299
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
	.word	_Label_3161
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3162
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3163
	.word	12
	.word	4
	.word	_Label_3164
	.word	16
	.word	4
	.word	_Label_3165
	.word	20
	.word	4
	.word	_Label_3166
	.word	24
	.word	4
	.word	0
_Label_3161:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3162:
	.ascii	"Pself\0"
	.align
_Label_3163:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3164:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3165:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3166:
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
_Label_4130:
	push	r0
	sub	r1,1,r1
	bne	_Label_4130
	mov	2304,r13		! source line 2304
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2316,r13		! source line 2316
	mov	"\0\0SE",r10
!   _temp_3167 = &diskBusy
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
	mov	2317,r13		! source line 2317
	mov	"\0\0WH",r10
_Label_3168:
!	jmp	_Label_3169
_Label_3169:
	mov	2317,r13		! source line 2317
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0SE",r10
!   _temp_3171 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3172) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3171  sizeInBytes=4
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
	mov	2320,r13		! source line 2320
	mov	"\0\0SE",r10
!   _temp_3173 = &semUsedInSynchMethods
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
	mov	2323,r13		! source line 2323
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3182 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3176
	cmp	r1,2
	be	_Label_3177
	cmp	r1,3
	be	_Label_3178
	cmp	r1,4
	be	_Label_3179
	cmp	r1,5
	be	_Label_3180
	cmp	r1,6
	be	_Label_3181
	jmp	_Label_3174
! CASE 1...
_Label_3176:
! SEND STATEMENT...
	mov	2325,r13		! source line 2325
	mov	"\0\0SE",r10
!   _temp_3183 = &diskBusy
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
	mov	2326,r13		! source line 2326
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3177:
! CALL STATEMENT...
!   _temp_3184 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3184  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2328,r13		! source line 2328
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3178:
! CALL STATEMENT...
!   _temp_3185 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3185  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2330,r13		! source line 2330
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3179:
! CALL STATEMENT...
!   _temp_3186 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3186  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2332,r13		! source line 2332
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3180:
! BREAK STATEMENT...
	mov	2336,r13		! source line 2336
	mov	"\0\0BR",r10
	jmp	_Label_3175
! CASE 6...
_Label_3181:
! CALL STATEMENT...
!   _temp_3187 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3187  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2338,r13		! source line 2338
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3174:
! CALL STATEMENT...
!   _temp_3188 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3188  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2340,r13		! source line 2340
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3175:
! END WHILE...
	jmp	_Label_3168
_Label_3170:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3189
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3190
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3191
	.word	12
	.word	4
	.word	_Label_3192
	.word	16
	.word	4
	.word	_Label_3193
	.word	20
	.word	4
	.word	_Label_3194
	.word	-12
	.word	4
	.word	_Label_3195
	.word	-16
	.word	4
	.word	_Label_3196
	.word	-20
	.word	4
	.word	_Label_3197
	.word	-24
	.word	4
	.word	_Label_3198
	.word	-28
	.word	4
	.word	_Label_3199
	.word	-32
	.word	4
	.word	_Label_3200
	.word	-36
	.word	4
	.word	_Label_3201
	.word	-40
	.word	4
	.word	_Label_3202
	.word	-44
	.word	4
	.word	_Label_3203
	.word	-48
	.word	4
	.word	_Label_3204
	.word	-52
	.word	4
	.word	0
_Label_3189:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3190:
	.ascii	"Pself\0"
	.align
_Label_3191:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3192:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3193:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3194:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3195:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3196:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3197:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3200:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3201:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3202:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3203:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
_Label_3204:
	.byte	'?'
	.ascii	"_temp_3167\0"
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
	mov	2349,r13		! source line 2349
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2366,r13		! source line 2366
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
	mov	2367,r13		! source line 2367
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
	mov	2368,r13		! source line 2368
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
	mov	2369,r13		! source line 2369
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
	mov	2369,r13		! source line 2369
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
	.word	_Label_3205
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3206
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3207
	.word	12
	.word	4
	.word	_Label_3208
	.word	16
	.word	4
	.word	_Label_3209
	.word	20
	.word	4
	.word	_Label_3210
	.word	24
	.word	4
	.word	0
_Label_3205:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3206:
	.ascii	"Pself\0"
	.align
_Label_3207:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3208:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3209:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3210:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3211
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
_Label_3211:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3212
	.word	_sourceFileName
	.word	331		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3212:
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
_Label_4131:
	push	r0
	sub	r1,1,r1
	bne	_Label_4131
	mov	2380,r13		! source line 2380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3213 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3213  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2387,r13		! source line 2387
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2388,r13		! source line 2388
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
	mov	2389,r13		! source line 2389
	mov	"\0\0SE",r10
!   _temp_3215 = &fileManagerLock
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
	mov	2392,r13		! source line 2392
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
	mov	2393,r13		! source line 2393
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
	mov	2394,r13		! source line 2394
	mov	"\0\0SE",r10
!   _temp_3218 = &anFCBBecameFree
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
	mov	2395,r13		! source line 2395
	mov	"\0\0AS",r10
!   _temp_3219 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3221 = &_temp_3220
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3221 = _temp_3221 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3223 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4132:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4132
!   _temp_3223 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3225:
!   Data Move: *_temp_3221 = _temp_3223  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4133:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4133
!   _temp_3221 = _temp_3221 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3222 = _temp_3222 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3222) then goto _Label_3225
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3225
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3226 = &_temp_3220
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4134
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4134:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3219 = *_temp_3226  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4135:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4135
! FOR STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3231 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3232 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3231  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3227:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3232 then goto _Label_3230		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3230
_Label_3228:
	mov	2397,r13		! source line 2397
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2398,r13		! source line 2398
	mov	"\0\0AS",r10
!   _temp_3233 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3233 [i ] into _temp_3234
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
!   _temp_3235 = _temp_3234 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3235 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2399,r13		! source line 2399
	mov	"\0\0SE",r10
!   _temp_3236 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3236 [i ] into _temp_3237
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
	mov	2400,r13		! source line 2400
	mov	"\0\0SE",r10
!   _temp_3239 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3239 [i ] into _temp_3240
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
!   _temp_3238 = _temp_3240		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3241 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3238  sizeInBytes=4
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
_Label_3229:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3227
! END FOR
_Label_3230:
! ASSIGNMENT STATEMENT...
	mov	2404,r13		! source line 2404
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
	mov	2405,r13		! source line 2405
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
	mov	2406,r13		! source line 2406
	mov	"\0\0SE",r10
!   _temp_3244 = &anOpenFileBecameFree
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
	mov	2407,r13		! source line 2407
	mov	"\0\0AS",r10
!   _temp_3245 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3247 = &_temp_3246
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3247 = _temp_3247 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3249 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4136:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4136
!   _temp_3249 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3251:
!   Data Move: *_temp_3247 = _temp_3249  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4137:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4137
!   _temp_3247 = _temp_3247 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3248 = _temp_3248 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3248) then goto _Label_3251
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3251
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3252 = &_temp_3246
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4138
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4138:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3245 = *_temp_3252  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4139:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4139
! FOR STATEMENT...
	mov	2409,r13		! source line 2409
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
	store	r1,[r14+-944]
_Label_3253:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3258 then goto _Label_3256		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3256
_Label_3254:
	mov	2409,r13		! source line 2409
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0AS",r10
!   _temp_3259 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3259 [i ] into _temp_3260
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
!   _temp_3261 = _temp_3260 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3261 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0SE",r10
!   _temp_3263 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3263 [i ] into _temp_3264
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
!   _temp_3262 = _temp_3264		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3265 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3262  sizeInBytes=4
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
_Label_3255:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3253
! END FOR
_Label_3256:
! ASSIGNMENT STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4140:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4140
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0AS",r10
!   _temp_3267 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3268 = _temp_3267 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3268 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0AS",r10
	mov	2421,r13		! source line 2421
	mov	"\0\0SE",r10
!   _temp_3269 = &_P_Kernel_frameManager
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
	mov	2422,r13		! source line 2422
	mov	"\0\0SE",r10
!   _temp_3270 = &_P_Kernel_diskDriver
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
	mov	2422,r13		! source line 2422
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
	.word	_Label_3271
	.word	4		! total size of parameters
	.word	952		! frame size = 952
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
	.word	-100
	.word	28
	.word	_Label_3290
	.word	-104
	.word	4
	.word	_Label_3291
	.word	-108
	.word	4
	.word	_Label_3292
	.word	-392
	.word	284
	.word	_Label_3293
	.word	-396
	.word	4
	.word	_Label_3294
	.word	-400
	.word	4
	.word	_Label_3295
	.word	-404
	.word	4
	.word	_Label_3296
	.word	-408
	.word	4
	.word	_Label_3297
	.word	-412
	.word	4
	.word	_Label_3298
	.word	-416
	.word	4
	.word	_Label_3299
	.word	-420
	.word	4
	.word	_Label_3300
	.word	-424
	.word	4
	.word	_Label_3301
	.word	-428
	.word	4
	.word	_Label_3302
	.word	-432
	.word	4
	.word	_Label_3303
	.word	-436
	.word	4
	.word	_Label_3304
	.word	-440
	.word	4
	.word	_Label_3305
	.word	-444
	.word	4
	.word	_Label_3306
	.word	-448
	.word	4
	.word	_Label_3307
	.word	-452
	.word	4
	.word	_Label_3308
	.word	-456
	.word	4
	.word	_Label_3309
	.word	-460
	.word	4
	.word	_Label_3310
	.word	-500
	.word	40
	.word	_Label_3311
	.word	-504
	.word	4
	.word	_Label_3312
	.word	-508
	.word	4
	.word	_Label_3313
	.word	-912
	.word	404
	.word	_Label_3314
	.word	-916
	.word	4
	.word	_Label_3315
	.word	-920
	.word	4
	.word	_Label_3316
	.word	-924
	.word	4
	.word	_Label_3317
	.word	-928
	.word	4
	.word	_Label_3318
	.word	-932
	.word	4
	.word	_Label_3319
	.word	-936
	.word	4
	.word	_Label_3320
	.word	-940
	.word	4
	.word	_Label_3321
	.word	-944
	.word	4
	.word	0
_Label_3271:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
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
	.ascii	"_temp_3250\0"
	.align
_Label_3289:
	.byte	'?'
	.ascii	"_temp_3249\0"
	.align
_Label_3290:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3291:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3292:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3293:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3294:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3295:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
_Label_3296:
	.byte	'?'
	.ascii	"_temp_3242\0"
	.align
_Label_3297:
	.byte	'?'
	.ascii	"_temp_3241\0"
	.align
_Label_3298:
	.byte	'?'
	.ascii	"_temp_3240\0"
	.align
_Label_3299:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3300:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3301:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3302:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3303:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3304:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3305:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3306:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3231\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3216\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3215\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3213\0"
	.align
_Label_3321:
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
_Label_4141:
	push	r0
	sub	r1,1,r1
	bne	_Label_4141
	mov	2429,r13		! source line 2429
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2431,r13		! source line 2431
	mov	"\0\0SE",r10
!   _temp_3322 = &fileManagerLock
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
!   _temp_3323 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3323  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2432,r13		! source line 2432
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3328 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3329 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3328  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3324:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3329 then goto _Label_3327		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3327
_Label_3325:
	mov	2433,r13		! source line 2433
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3330 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3330  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2434,r13		! source line 2434
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2435,r13		! source line 2435
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3331 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3331  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2436,r13		! source line 2436
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0SE",r10
!   _temp_3332 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3332 [i ] into _temp_3333
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
_Label_3326:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3324
! END FOR
_Label_3327:
! CALL STATEMENT...
!   _temp_3334 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3334  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2439,r13		! source line 2439
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0SE",r10
!   _temp_3335 = _function_205_printFCB
	set	_function_205_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3336 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3335  sizeInBytes=4
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
	mov	2441,r13		! source line 2441
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3337 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3337  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2442,r13		! source line 2442
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3342 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3343 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3342  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3338:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3343 then goto _Label_3341		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3341
_Label_3339:
	mov	2443,r13		! source line 2443
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3344 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3344  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2444,r13		! source line 2444
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2445,r13		! source line 2445
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3345 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3345  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2446,r13		! source line 2446
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3347 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3347 [i ] into _temp_3348
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
!   _temp_3346 = _temp_3348		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3346  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2447,r13		! source line 2447
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3349 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3349  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2448,r13		! source line 2448
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0SE",r10
!   _temp_3350 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3350 [i ] into _temp_3351
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
_Label_3340:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3338
! END FOR
_Label_3341:
! CALL STATEMENT...
!   _temp_3352 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3352  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2451,r13		! source line 2451
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2452,r13		! source line 2452
	mov	"\0\0SE",r10
!   _temp_3353 = _function_204_printOpen
	set	_function_204_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3354 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3353  sizeInBytes=4
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
	mov	2453,r13		! source line 2453
	mov	"\0\0SE",r10
!   _temp_3355 = &fileManagerLock
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
	mov	2453,r13		! source line 2453
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
	.word	_Label_3356
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3357
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3358
	.word	-12
	.word	4
	.word	_Label_3359
	.word	-16
	.word	4
	.word	_Label_3360
	.word	-20
	.word	4
	.word	_Label_3361
	.word	-24
	.word	4
	.word	_Label_3362
	.word	-28
	.word	4
	.word	_Label_3363
	.word	-32
	.word	4
	.word	_Label_3364
	.word	-36
	.word	4
	.word	_Label_3365
	.word	-40
	.word	4
	.word	_Label_3366
	.word	-44
	.word	4
	.word	_Label_3367
	.word	-48
	.word	4
	.word	_Label_3368
	.word	-52
	.word	4
	.word	_Label_3369
	.word	-56
	.word	4
	.word	_Label_3370
	.word	-60
	.word	4
	.word	_Label_3371
	.word	-64
	.word	4
	.word	_Label_3372
	.word	-68
	.word	4
	.word	_Label_3373
	.word	-72
	.word	4
	.word	_Label_3374
	.word	-76
	.word	4
	.word	_Label_3375
	.word	-80
	.word	4
	.word	_Label_3376
	.word	-84
	.word	4
	.word	_Label_3377
	.word	-88
	.word	4
	.word	_Label_3378
	.word	-92
	.word	4
	.word	_Label_3379
	.word	-96
	.word	4
	.word	_Label_3380
	.word	-100
	.word	4
	.word	_Label_3381
	.word	-104
	.word	4
	.word	_Label_3382
	.word	-108
	.word	4
	.word	_Label_3383
	.word	-112
	.word	4
	.word	_Label_3384
	.word	-116
	.word	4
	.word	0
_Label_3356:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3357:
	.ascii	"Pself\0"
	.align
_Label_3358:
	.byte	'?'
	.ascii	"_temp_3355\0"
	.align
_Label_3359:
	.byte	'?'
	.ascii	"_temp_3354\0"
	.align
_Label_3360:
	.byte	'?'
	.ascii	"_temp_3353\0"
	.align
_Label_3361:
	.byte	'?'
	.ascii	"_temp_3352\0"
	.align
_Label_3362:
	.byte	'?'
	.ascii	"_temp_3351\0"
	.align
_Label_3363:
	.byte	'?'
	.ascii	"_temp_3350\0"
	.align
_Label_3364:
	.byte	'?'
	.ascii	"_temp_3349\0"
	.align
_Label_3365:
	.byte	'?'
	.ascii	"_temp_3348\0"
	.align
_Label_3366:
	.byte	'?'
	.ascii	"_temp_3347\0"
	.align
_Label_3367:
	.byte	'?'
	.ascii	"_temp_3346\0"
	.align
_Label_3368:
	.byte	'?'
	.ascii	"_temp_3345\0"
	.align
_Label_3369:
	.byte	'?'
	.ascii	"_temp_3344\0"
	.align
_Label_3370:
	.byte	'?'
	.ascii	"_temp_3343\0"
	.align
_Label_3371:
	.byte	'?'
	.ascii	"_temp_3342\0"
	.align
_Label_3372:
	.byte	'?'
	.ascii	"_temp_3337\0"
	.align
_Label_3373:
	.byte	'?'
	.ascii	"_temp_3336\0"
	.align
_Label_3374:
	.byte	'?'
	.ascii	"_temp_3335\0"
	.align
_Label_3375:
	.byte	'?'
	.ascii	"_temp_3334\0"
	.align
_Label_3376:
	.byte	'?'
	.ascii	"_temp_3333\0"
	.align
_Label_3377:
	.byte	'?'
	.ascii	"_temp_3332\0"
	.align
_Label_3378:
	.byte	'?'
	.ascii	"_temp_3331\0"
	.align
_Label_3379:
	.byte	'?'
	.ascii	"_temp_3330\0"
	.align
_Label_3380:
	.byte	'?'
	.ascii	"_temp_3329\0"
	.align
_Label_3381:
	.byte	'?'
	.ascii	"_temp_3328\0"
	.align
_Label_3382:
	.byte	'?'
	.ascii	"_temp_3323\0"
	.align
_Label_3383:
	.byte	'?'
	.ascii	"_temp_3322\0"
	.align
_Label_3384:
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
_Label_4142:
	push	r0
	sub	r1,1,r1
	bne	_Label_4142
	mov	2458,r13		! source line 2458
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0AS",r10
	mov	2474,r13		! source line 2474
	mov	"\0\0SE",r10
!   _temp_3385 = &_P_Kernel_fileManager
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
	mov	2475,r13		! source line 2475
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3386
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3386
	jmp	_Label_3387
_Label_3386:
! THEN...
	mov	2476,r13		! source line 2476
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3387:
! SEND STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0SE",r10
!   _temp_3388 = &fileManagerLock
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
	mov	2481,r13		! source line 2481
	mov	"\0\0WH",r10
_Label_3389:
	mov	2481,r13		! source line 2481
	mov	"\0\0SE",r10
!   _temp_3392 = &openFileFreeList
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
!   if result==true then goto _Label_3390 else goto _Label_3391
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3391
	jmp	_Label_3390
_Label_3390:
	mov	2481,r13		! source line 2481
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0SE",r10
!   _temp_3393 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3394 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3393  sizeInBytes=4
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
	jmp	_Label_3389
_Label_3391:
! ASSIGNMENT STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0AS",r10
	mov	2484,r13		! source line 2484
	mov	"\0\0SE",r10
!   _temp_3395 = &openFileFreeList
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
	mov	2487,r13		! source line 2487
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3396 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3396 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3397 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3397 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2491,r13		! source line 2491
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3398 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3398 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2493,r13		! source line 2493
	mov	"\0\0SE",r10
!   _temp_3399 = &fileManagerLock
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
	mov	2494,r13		! source line 2494
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
	.word	_Label_3400
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3401
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3402
	.word	12
	.word	4
	.word	_Label_3403
	.word	-12
	.word	4
	.word	_Label_3404
	.word	-16
	.word	4
	.word	_Label_3405
	.word	-20
	.word	4
	.word	_Label_3406
	.word	-24
	.word	4
	.word	_Label_3407
	.word	-28
	.word	4
	.word	_Label_3408
	.word	-32
	.word	4
	.word	_Label_3409
	.word	-36
	.word	4
	.word	_Label_3410
	.word	-40
	.word	4
	.word	_Label_3411
	.word	-44
	.word	4
	.word	_Label_3412
	.word	-48
	.word	4
	.word	_Label_3413
	.word	-52
	.word	4
	.word	_Label_3414
	.word	-56
	.word	4
	.word	0
_Label_3400:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3401:
	.ascii	"Pself\0"
	.align
_Label_3402:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3403:
	.byte	'?'
	.ascii	"_temp_3399\0"
	.align
_Label_3404:
	.byte	'?'
	.ascii	"_temp_3398\0"
	.align
_Label_3405:
	.byte	'?'
	.ascii	"_temp_3397\0"
	.align
_Label_3406:
	.byte	'?'
	.ascii	"_temp_3396\0"
	.align
_Label_3407:
	.byte	'?'
	.ascii	"_temp_3395\0"
	.align
_Label_3408:
	.byte	'?'
	.ascii	"_temp_3394\0"
	.align
_Label_3409:
	.byte	'?'
	.ascii	"_temp_3393\0"
	.align
_Label_3410:
	.byte	'?'
	.ascii	"_temp_3392\0"
	.align
_Label_3411:
	.byte	'?'
	.ascii	"_temp_3388\0"
	.align
_Label_3412:
	.byte	'?'
	.ascii	"_temp_3385\0"
	.align
_Label_3413:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3414:
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
_Label_4143:
	push	r0
	sub	r1,1,r1
	bne	_Label_4143
	mov	2499,r13		! source line 2499
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2527,r13		! source line 2527
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
	mov	2528,r13		! source line 2528
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3416		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3416
!	jmp	_Label_3415
_Label_3415:
! THEN...
	mov	2530,r13		! source line 2530
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3417 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3417  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2530,r13		! source line 2530
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3416:
! ASSIGNMENT STATEMENT...
	mov	2534,r13		! source line 2534
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
	mov	2535,r13		! source line 2535
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2536,r13		! source line 2536
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
	mov	2537,r13		! source line 2537
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2540,r13		! source line 2540
	mov	"\0\0WH",r10
_Label_3418:
!   if numFiles <= 0 then goto _Label_3420		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3420
!	jmp	_Label_3419
_Label_3419:
	mov	2540,r13		! source line 2540
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3421 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3421  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2541,r13		! source line 2541
	mov	"\0\0CA",r10
	call	_function_206_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2542,r13		! source line 2542
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3422 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3422  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2543,r13		! source line 2543
	mov	"\0\0CA",r10
	call	_function_206_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3423 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3423  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2545,r13		! source line 2545
	mov	"\0\0CA",r10
	call	_function_206_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3427 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3427 then goto _Label_3425		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3425
!	jmp	_Label_3426
_Label_3426:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3429
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
!   _temp_3428 = _temp_3429		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3428  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2548,r13		! source line 2548
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3424 else goto _Label_3425
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3425
	jmp	_Label_3424
_Label_3424:
! THEN...
	mov	2549,r13		! source line 2549
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0BR",r10
	jmp	_Label_3420
! END IF...
_Label_3425:
! ASSIGNMENT STATEMENT...
	mov	2551,r13		! source line 2551
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2552,r13		! source line 2552
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3418
_Label_3420:
! IF STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3431		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3431
!	jmp	_Label_3430
_Label_3430:
! THEN...
	mov	2557,r13		! source line 2557
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3431:
! SEND STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0SE",r10
!   _temp_3432 = &fileManagerLock
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
	mov	2562,r13		! source line 2562
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3437 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3438 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3437  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3433:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3438 then goto _Label_3436		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3436
_Label_3434:
	mov	2562,r13		! source line 2562
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0AS",r10
!   _temp_3439 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3439 [i ] into _temp_3440
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
!   fcb = _temp_3440		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3444 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3443 = *_temp_3444  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3443 != start then goto _Label_3442		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3442
!	jmp	_Label_3441
_Label_3441:
! THEN...
	mov	2565,r13		! source line 2565
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3445 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3448 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3447 = *_temp_3448  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3446 = _temp_3447 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3445 = _temp_3446  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0SE",r10
!   _temp_3449 = &fileManagerLock
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
	mov	2567,r13		! source line 2567
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3442:
!   Increment the FOR-LOOP index variable and jump back
_Label_3435:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3433
! END FOR
_Label_3436:
! WHILE STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0WH",r10
_Label_3450:
	mov	2572,r13		! source line 2572
	mov	"\0\0SE",r10
!   _temp_3453 = &fcbFreeList
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
!   if result==true then goto _Label_3451 else goto _Label_3452
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3452
	jmp	_Label_3451
_Label_3451:
	mov	2572,r13		! source line 2572
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0SE",r10
!   _temp_3454 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3455 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3454  sizeInBytes=4
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
	jmp	_Label_3450
_Label_3452:
! ASSIGNMENT STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0AS",r10
	mov	2575,r13		! source line 2575
	mov	"\0\0SE",r10
!   _temp_3456 = &fcbFreeList
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
	mov	2578,r13		! source line 2578
	mov	"\0\0SE",r10
!   _temp_3457 = &fileManagerLock
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
	mov	2581,r13		! source line 2581
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3458 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3458 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2582,r13		! source line 2582
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3459 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3459 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3460 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3460 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3465 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3464 = *_temp_3465  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3464 < 0 then goto _Label_3463		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3463
	jmp	_Label_3461
_Label_3463:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3466 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3466 ) then goto _Label_3462		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3462
!	jmp	_Label_3461
_Label_3461:
! THEN...
	mov	2585,r13		! source line 2585
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3467 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3467  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2585,r13		! source line 2585
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3462:
! RETURN STATEMENT...
	mov	2587,r13		! source line 2587
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
	.word	_Label_3468
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3469
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3470
	.word	12
	.word	4
	.word	_Label_3471
	.word	-12
	.word	4
	.word	_Label_3472
	.word	-16
	.word	4
	.word	_Label_3473
	.word	-20
	.word	4
	.word	_Label_3474
	.word	-24
	.word	4
	.word	_Label_3475
	.word	-28
	.word	4
	.word	_Label_3476
	.word	-32
	.word	4
	.word	_Label_3477
	.word	-36
	.word	4
	.word	_Label_3478
	.word	-40
	.word	4
	.word	_Label_3479
	.word	-44
	.word	4
	.word	_Label_3480
	.word	-48
	.word	4
	.word	_Label_3481
	.word	-52
	.word	4
	.word	_Label_3482
	.word	-56
	.word	4
	.word	_Label_3483
	.word	-60
	.word	4
	.word	_Label_3484
	.word	-64
	.word	4
	.word	_Label_3485
	.word	-68
	.word	4
	.word	_Label_3486
	.word	-72
	.word	4
	.word	_Label_3487
	.word	-76
	.word	4
	.word	_Label_3488
	.word	-80
	.word	4
	.word	_Label_3489
	.word	-84
	.word	4
	.word	_Label_3490
	.word	-88
	.word	4
	.word	_Label_3491
	.word	-92
	.word	4
	.word	_Label_3492
	.word	-96
	.word	4
	.word	_Label_3493
	.word	-100
	.word	4
	.word	_Label_3494
	.word	-104
	.word	4
	.word	_Label_3495
	.word	-108
	.word	4
	.word	_Label_3496
	.word	-112
	.word	4
	.word	_Label_3497
	.word	-116
	.word	4
	.word	_Label_3498
	.word	-120
	.word	4
	.word	_Label_3499
	.word	-124
	.word	4
	.word	_Label_3500
	.word	-128
	.word	4
	.word	_Label_3501
	.word	-132
	.word	4
	.word	_Label_3502
	.word	-136
	.word	4
	.word	_Label_3503
	.word	-140
	.word	4
	.word	_Label_3504
	.word	-144
	.word	4
	.word	_Label_3505
	.word	-148
	.word	4
	.word	_Label_3506
	.word	-152
	.word	4
	.word	_Label_3507
	.word	-156
	.word	4
	.word	_Label_3508
	.word	-160
	.word	4
	.word	0
_Label_3468:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3469:
	.ascii	"Pself\0"
	.align
_Label_3470:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3471:
	.byte	'?'
	.ascii	"_temp_3467\0"
	.align
_Label_3472:
	.byte	'?'
	.ascii	"_temp_3466\0"
	.align
_Label_3473:
	.byte	'?'
	.ascii	"_temp_3465\0"
	.align
_Label_3474:
	.byte	'?'
	.ascii	"_temp_3464\0"
	.align
_Label_3475:
	.byte	'?'
	.ascii	"_temp_3460\0"
	.align
_Label_3476:
	.byte	'?'
	.ascii	"_temp_3459\0"
	.align
_Label_3477:
	.byte	'?'
	.ascii	"_temp_3458\0"
	.align
_Label_3478:
	.byte	'?'
	.ascii	"_temp_3457\0"
	.align
_Label_3479:
	.byte	'?'
	.ascii	"_temp_3456\0"
	.align
_Label_3480:
	.byte	'?'
	.ascii	"_temp_3455\0"
	.align
_Label_3481:
	.byte	'?'
	.ascii	"_temp_3454\0"
	.align
_Label_3482:
	.byte	'?'
	.ascii	"_temp_3453\0"
	.align
_Label_3483:
	.byte	'?'
	.ascii	"_temp_3449\0"
	.align
_Label_3484:
	.byte	'?'
	.ascii	"_temp_3448\0"
	.align
_Label_3485:
	.byte	'?'
	.ascii	"_temp_3447\0"
	.align
_Label_3486:
	.byte	'?'
	.ascii	"_temp_3446\0"
	.align
_Label_3487:
	.byte	'?'
	.ascii	"_temp_3445\0"
	.align
_Label_3488:
	.byte	'?'
	.ascii	"_temp_3444\0"
	.align
_Label_3489:
	.byte	'?'
	.ascii	"_temp_3443\0"
	.align
_Label_3490:
	.byte	'?'
	.ascii	"_temp_3440\0"
	.align
_Label_3491:
	.byte	'?'
	.ascii	"_temp_3439\0"
	.align
_Label_3492:
	.byte	'?'
	.ascii	"_temp_3438\0"
	.align
_Label_3493:
	.byte	'?'
	.ascii	"_temp_3437\0"
	.align
_Label_3494:
	.byte	'?'
	.ascii	"_temp_3432\0"
	.align
_Label_3495:
	.byte	'?'
	.ascii	"_temp_3429\0"
	.align
_Label_3496:
	.byte	'?'
	.ascii	"_temp_3428\0"
	.align
_Label_3497:
	.byte	'?'
	.ascii	"_temp_3427\0"
	.align
_Label_3498:
	.byte	'?'
	.ascii	"_temp_3423\0"
	.align
_Label_3499:
	.byte	'?'
	.ascii	"_temp_3422\0"
	.align
_Label_3500:
	.byte	'?'
	.ascii	"_temp_3421\0"
	.align
_Label_3501:
	.byte	'?'
	.ascii	"_temp_3417\0"
	.align
_Label_3502:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3503:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3504:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3505:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3506:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3507:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3508:
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
_Label_4144:
	push	r0
	sub	r1,1,r1
	bne	_Label_4144
	mov	2600,r13		! source line 2600
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2602,r13		! source line 2602
	mov	"\0\0IF",r10
!   _temp_3511 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3511 then goto _Label_3510		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3510
!	jmp	_Label_3509
_Label_3509:
! THEN...
	mov	2603,r13		! source line 2603
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3510:
! SEND STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0SE",r10
!   _temp_3512 = &fileManagerLock
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
	mov	2606,r13		! source line 2606
	mov	"\0\0SE",r10
!   _temp_3513 = &_P_Kernel_fileManager
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
	mov	2607,r13		! source line 2607
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3514 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3514  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3515 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3518 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3517 = *_temp_3518  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3516 = _temp_3517 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3515 = _temp_3516  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3522 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3521 = *_temp_3522  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3521 > 0 then goto _Label_3520		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3520
!	jmp	_Label_3519
_Label_3519:
! THEN...
	mov	2610,r13		! source line 2610
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0SE",r10
!   _temp_3523 = &openFileFreeList
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
	mov	2611,r13		! source line 2611
	mov	"\0\0SE",r10
!   _temp_3524 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3525 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3524  sizeInBytes=4
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
	mov	2612,r13		! source line 2612
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3526 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3529 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3528 = *_temp_3529  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3527 = _temp_3528 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3526 = _temp_3527  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3533 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3532 = *_temp_3533  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3532 > 0 then goto _Label_3531		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3531
!	jmp	_Label_3530
_Label_3530:
! THEN...
	mov	2614,r13		! source line 2614
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0SE",r10
!   _temp_3534 = &fcbFreeList
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
	mov	2615,r13		! source line 2615
	mov	"\0\0SE",r10
!   _temp_3535 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3536 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3535  sizeInBytes=4
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
_Label_3531:
! END IF...
_Label_3520:
! SEND STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0SE",r10
!   _temp_3537 = &fileManagerLock
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
	mov	2618,r13		! source line 2618
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
	.word	_Label_3538
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3539
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3540
	.word	12
	.word	4
	.word	_Label_3541
	.word	-12
	.word	4
	.word	_Label_3542
	.word	-16
	.word	4
	.word	_Label_3543
	.word	-20
	.word	4
	.word	_Label_3544
	.word	-24
	.word	4
	.word	_Label_3545
	.word	-28
	.word	4
	.word	_Label_3546
	.word	-32
	.word	4
	.word	_Label_3547
	.word	-36
	.word	4
	.word	_Label_3548
	.word	-40
	.word	4
	.word	_Label_3549
	.word	-44
	.word	4
	.word	_Label_3550
	.word	-48
	.word	4
	.word	_Label_3551
	.word	-52
	.word	4
	.word	_Label_3552
	.word	-56
	.word	4
	.word	_Label_3553
	.word	-60
	.word	4
	.word	_Label_3554
	.word	-64
	.word	4
	.word	_Label_3555
	.word	-68
	.word	4
	.word	_Label_3556
	.word	-72
	.word	4
	.word	_Label_3557
	.word	-76
	.word	4
	.word	_Label_3558
	.word	-80
	.word	4
	.word	_Label_3559
	.word	-84
	.word	4
	.word	_Label_3560
	.word	-88
	.word	4
	.word	_Label_3561
	.word	-92
	.word	4
	.word	_Label_3562
	.word	-96
	.word	4
	.word	_Label_3563
	.word	-100
	.word	4
	.word	_Label_3564
	.word	-104
	.word	4
	.word	0
_Label_3538:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3539:
	.ascii	"Pself\0"
	.align
_Label_3540:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3541:
	.byte	'?'
	.ascii	"_temp_3537\0"
	.align
_Label_3542:
	.byte	'?'
	.ascii	"_temp_3536\0"
	.align
_Label_3543:
	.byte	'?'
	.ascii	"_temp_3535\0"
	.align
_Label_3544:
	.byte	'?'
	.ascii	"_temp_3534\0"
	.align
_Label_3545:
	.byte	'?'
	.ascii	"_temp_3533\0"
	.align
_Label_3546:
	.byte	'?'
	.ascii	"_temp_3532\0"
	.align
_Label_3547:
	.byte	'?'
	.ascii	"_temp_3529\0"
	.align
_Label_3548:
	.byte	'?'
	.ascii	"_temp_3528\0"
	.align
_Label_3549:
	.byte	'?'
	.ascii	"_temp_3527\0"
	.align
_Label_3550:
	.byte	'?'
	.ascii	"_temp_3526\0"
	.align
_Label_3551:
	.byte	'?'
	.ascii	"_temp_3525\0"
	.align
_Label_3552:
	.byte	'?'
	.ascii	"_temp_3524\0"
	.align
_Label_3553:
	.byte	'?'
	.ascii	"_temp_3523\0"
	.align
_Label_3554:
	.byte	'?'
	.ascii	"_temp_3522\0"
	.align
_Label_3555:
	.byte	'?'
	.ascii	"_temp_3521\0"
	.align
_Label_3556:
	.byte	'?'
	.ascii	"_temp_3518\0"
	.align
_Label_3557:
	.byte	'?'
	.ascii	"_temp_3517\0"
	.align
_Label_3558:
	.byte	'?'
	.ascii	"_temp_3516\0"
	.align
_Label_3559:
	.byte	'?'
	.ascii	"_temp_3515\0"
	.align
_Label_3560:
	.byte	'?'
	.ascii	"_temp_3514\0"
	.align
_Label_3561:
	.byte	'?'
	.ascii	"_temp_3513\0"
	.align
_Label_3562:
	.byte	'?'
	.ascii	"_temp_3512\0"
	.align
_Label_3563:
	.byte	'?'
	.ascii	"_temp_3511\0"
	.align
_Label_3564:
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
_Label_4145:
	push	r0
	sub	r1,1,r1
	bne	_Label_4145
	mov	2623,r13		! source line 2623
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3568 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3567 = *_temp_3568  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3567) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3569 = _temp_3567 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3569 ) then goto _Label_3566		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3566
!	jmp	_Label_3565
_Label_3565:
! THEN...
	mov	2629,r13		! source line 2629
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3574 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3573 = *_temp_3574  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3573) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3575 = _temp_3573 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3572 = *_temp_3575  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3572 >= 0 then goto _Label_3571		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3571
!	jmp	_Label_3570
_Label_3570:
! THEN...
	mov	2630,r13		! source line 2630
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3576 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3576  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2630,r13		! source line 2630
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3571:
! ASSIGNMENT STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3578 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3577 = *_temp_3578  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3577) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3579 = _temp_3577 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3579 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3583 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3582 = *_temp_3583  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3582) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3584 = _temp_3582 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3581 = *_temp_3584  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3587 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3586 = *_temp_3587  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3586) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3588 = _temp_3586 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3585 = *_temp_3588  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3580 = _temp_3581 + _temp_3585		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3591 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3590 = *_temp_3591  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3590) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3592 = _temp_3590 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3589 = *_temp_3592  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3593 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3580  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3589  sizeInBytes=4
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
_Label_3566:
! RETURN STATEMENT...
	mov	2628,r13		! source line 2628
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
	.word	_Label_3594
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3595
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3596
	.word	12
	.word	4
	.word	_Label_3597
	.word	-12
	.word	4
	.word	_Label_3598
	.word	-16
	.word	4
	.word	_Label_3599
	.word	-20
	.word	4
	.word	_Label_3600
	.word	-24
	.word	4
	.word	_Label_3601
	.word	-28
	.word	4
	.word	_Label_3602
	.word	-32
	.word	4
	.word	_Label_3603
	.word	-36
	.word	4
	.word	_Label_3604
	.word	-40
	.word	4
	.word	_Label_3605
	.word	-44
	.word	4
	.word	_Label_3606
	.word	-48
	.word	4
	.word	_Label_3607
	.word	-52
	.word	4
	.word	_Label_3608
	.word	-56
	.word	4
	.word	_Label_3609
	.word	-60
	.word	4
	.word	_Label_3610
	.word	-64
	.word	4
	.word	_Label_3611
	.word	-68
	.word	4
	.word	_Label_3612
	.word	-72
	.word	4
	.word	_Label_3613
	.word	-76
	.word	4
	.word	_Label_3614
	.word	-80
	.word	4
	.word	_Label_3615
	.word	-84
	.word	4
	.word	_Label_3616
	.word	-88
	.word	4
	.word	_Label_3617
	.word	-92
	.word	4
	.word	_Label_3618
	.word	-96
	.word	4
	.word	_Label_3619
	.word	-100
	.word	4
	.word	_Label_3620
	.word	-104
	.word	4
	.word	_Label_3621
	.word	-108
	.word	4
	.word	0
_Label_3594:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3595:
	.ascii	"Pself\0"
	.align
_Label_3596:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3597:
	.byte	'?'
	.ascii	"_temp_3593\0"
	.align
_Label_3598:
	.byte	'?'
	.ascii	"_temp_3592\0"
	.align
_Label_3599:
	.byte	'?'
	.ascii	"_temp_3591\0"
	.align
_Label_3600:
	.byte	'?'
	.ascii	"_temp_3590\0"
	.align
_Label_3601:
	.byte	'?'
	.ascii	"_temp_3589\0"
	.align
_Label_3602:
	.byte	'?'
	.ascii	"_temp_3588\0"
	.align
_Label_3603:
	.byte	'?'
	.ascii	"_temp_3587\0"
	.align
_Label_3604:
	.byte	'?'
	.ascii	"_temp_3586\0"
	.align
_Label_3605:
	.byte	'?'
	.ascii	"_temp_3585\0"
	.align
_Label_3606:
	.byte	'?'
	.ascii	"_temp_3584\0"
	.align
_Label_3607:
	.byte	'?'
	.ascii	"_temp_3583\0"
	.align
_Label_3608:
	.byte	'?'
	.ascii	"_temp_3582\0"
	.align
_Label_3609:
	.byte	'?'
	.ascii	"_temp_3581\0"
	.align
_Label_3610:
	.byte	'?'
	.ascii	"_temp_3580\0"
	.align
_Label_3611:
	.byte	'?'
	.ascii	"_temp_3579\0"
	.align
_Label_3612:
	.byte	'?'
	.ascii	"_temp_3578\0"
	.align
_Label_3613:
	.byte	'?'
	.ascii	"_temp_3577\0"
	.align
_Label_3614:
	.byte	'?'
	.ascii	"_temp_3576\0"
	.align
_Label_3615:
	.byte	'?'
	.ascii	"_temp_3575\0"
	.align
_Label_3616:
	.byte	'?'
	.ascii	"_temp_3574\0"
	.align
_Label_3617:
	.byte	'?'
	.ascii	"_temp_3573\0"
	.align
_Label_3618:
	.byte	'?'
	.ascii	"_temp_3572\0"
	.align
_Label_3619:
	.byte	'?'
	.ascii	"_temp_3569\0"
	.align
_Label_3620:
	.byte	'?'
	.ascii	"_temp_3568\0"
	.align
_Label_3621:
	.byte	'?'
	.ascii	"_temp_3567\0"
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
_Label_4146:
	push	r0
	sub	r1,1,r1
	bne	_Label_4146
	mov	2642,r13		! source line 2642
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0SE",r10
!   _temp_3622 = &fileManagerLock
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
	mov	2658,r13		! source line 2658
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3628		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3628
!   _temp_3627 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3629
_Label_3628:
!   _temp_3627 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3629:
!   if _temp_3627 then goto _Label_3626 else goto _Label_3623
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3623
	jmp	_Label_3626
_Label_3626:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3632 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3631 = *_temp_3632  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3631 == 0 then goto _Label_3633		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3633
!   _temp_3630 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3634
_Label_3633:
!   _temp_3630 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3634:
!   if _temp_3630 then goto _Label_3625 else goto _Label_3623
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3623
	jmp	_Label_3625
_Label_3625:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3637 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3636 = *_temp_3637  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3636) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3638 = _temp_3636 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3635 = *_temp_3638  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3635 >= 0 then goto _Label_3624		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3624
!	jmp	_Label_3623
_Label_3623:
! THEN...
	mov	2659,r13		! source line 2659
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3639 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3639  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2659,r13		! source line 2659
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3624:
! ASSIGNMENT STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3640 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3640  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0WH",r10
_Label_3641:
!   if numBytes <= 0 then goto _Label_3643		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3643
!	jmp	_Label_3642
_Label_3642:
	mov	2662,r13		! source line 2662
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2671,r13		! source line 2671
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
	mov	2672,r13		! source line 2672
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
	mov	2676,r13		! source line 2676
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3647 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3646 = *_temp_3647  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3646 == sector then goto _Label_3645		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3645
!	jmp	_Label_3644
_Label_3644:
! THEN...
	mov	2677,r13		! source line 2677
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3648) then goto _runtimeErrorNullPointer
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
	mov	2679,r13		! source line 2679
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3651 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3650 = *_temp_3651  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3649 = sector + _temp_3650		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3653 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3652 = *_temp_3653  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3654 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3649  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3652  sizeInBytes=4
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
	mov	2682,r13		! source line 2682
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3655 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3655 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3656 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3656 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3645:
! ASSIGNMENT STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3658 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3657 = *_temp_3658  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3657 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2686,r13		! source line 2686
	mov	"\0\0AS",r10
!   _temp_3659 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3659  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2686,r13		! source line 2686
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
	mov	2690,r13		! source line 2690
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2691,r13		! source line 2691
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3641
_Label_3643:
! SEND STATEMENT...
	mov	2700,r13		! source line 2700
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
	mov	2701,r13		! source line 2701
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
	.word	_Label_3661
	.word	20		! total size of parameters
	.word	136		! frame size = 136
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
	.word	-9
	.word	1
	.word	_Label_3691
	.word	-10
	.word	1
	.word	_Label_3692
	.word	-108
	.word	4
	.word	_Label_3693
	.word	-112
	.word	4
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
	.word	0
_Label_3661:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
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
	.ascii	"targetAddr\0"
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
	.ascii	"_temp_3651\0"
	.align
_Label_3677:
	.byte	'?'
	.ascii	"_temp_3650\0"
	.align
_Label_3678:
	.byte	'?'
	.ascii	"_temp_3649\0"
	.align
_Label_3679:
	.byte	'?'
	.ascii	"_temp_3648\0"
	.align
_Label_3680:
	.byte	'?'
	.ascii	"_temp_3647\0"
	.align
_Label_3681:
	.byte	'?'
	.ascii	"_temp_3646\0"
	.align
_Label_3682:
	.byte	'?'
	.ascii	"_temp_3640\0"
	.align
_Label_3683:
	.byte	'?'
	.ascii	"_temp_3639\0"
	.align
_Label_3684:
	.byte	'?'
	.ascii	"_temp_3638\0"
	.align
_Label_3685:
	.byte	'?'
	.ascii	"_temp_3637\0"
	.align
_Label_3686:
	.byte	'?'
	.ascii	"_temp_3636\0"
	.align
_Label_3687:
	.byte	'?'
	.ascii	"_temp_3635\0"
	.align
_Label_3688:
	.byte	'?'
	.ascii	"_temp_3632\0"
	.align
_Label_3689:
	.byte	'?'
	.ascii	"_temp_3631\0"
	.align
_Label_3690:
	.byte	'C'
	.ascii	"_temp_3630\0"
	.align
_Label_3691:
	.byte	'C'
	.ascii	"_temp_3627\0"
	.align
_Label_3692:
	.byte	'?'
	.ascii	"_temp_3622\0"
	.align
_Label_3693:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3694:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3695:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3696:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3697:
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
_Label_4147:
	push	r0
	sub	r1,1,r1
	bne	_Label_4147
	mov	2706,r13		! source line 2706
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2722,r13		! source line 2722
	mov	"\0\0SE",r10
!   _temp_3698 = &fileManagerLock
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
	mov	2723,r13		! source line 2723
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3704		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3704
!   _temp_3703 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3705
_Label_3704:
!   _temp_3703 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3705:
!   if _temp_3703 then goto _Label_3702 else goto _Label_3699
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3699
	jmp	_Label_3702
_Label_3702:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3708 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3707 = *_temp_3708  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3707 == 0 then goto _Label_3709		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3709
!   _temp_3706 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3710
_Label_3709:
!   _temp_3706 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3710:
!   if _temp_3706 then goto _Label_3701 else goto _Label_3699
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3699
	jmp	_Label_3701
_Label_3701:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3713 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3712 = *_temp_3713  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3712) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3714 = _temp_3712 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3711 = *_temp_3714  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3711 >= 0 then goto _Label_3700		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3700
!	jmp	_Label_3699
_Label_3699:
! THEN...
	mov	2724,r13		! source line 2724
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3715 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3715  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2724,r13		! source line 2724
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3700:
! ASSIGNMENT STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3716 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3716  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0WH",r10
_Label_3717:
!   if numBytes <= 0 then goto _Label_3719		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3719
!	jmp	_Label_3718
_Label_3718:
	mov	2727,r13		! source line 2727
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2736,r13		! source line 2736
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
	mov	2737,r13		! source line 2737
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
	mov	2741,r13		! source line 2741
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3723 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3722 = *_temp_3723  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3722 == sector then goto _Label_3721		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3721
!	jmp	_Label_3720
_Label_3720:
! THEN...
	mov	2743,r13		! source line 2743
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2743,r13		! source line 2743
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3724) then goto _runtimeErrorNullPointer
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
_Label_3721:
! ASSIGNMENT STATEMENT...
	mov	2745,r13		! source line 2745
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3726 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3725 = *_temp_3726  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3725 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2746,r13		! source line 2746
	mov	"\0\0AS",r10
!   _temp_3727 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3727  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2746,r13		! source line 2746
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2747,r13		! source line 2747
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3731 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3730 = *_temp_3731  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3730 != sector then goto _Label_3729		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3729
!	jmp	_Label_3728
_Label_3728:
	jmp	_Label_3732
_Label_3729:
! ELSE...
	mov	2749,r13		! source line 2749
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2749,r13		! source line 2749
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3735
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3735
	jmp	_Label_3734
_Label_3735:
!   if bytesToMove != 8192 then goto _Label_3734		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3734
!	jmp	_Label_3733
_Label_3733:
	jmp	_Label_3736
_Label_3734:
! ELSE...
	mov	2753,r13		! source line 2753
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3739 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3738 = *_temp_3739  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3737 = sector + _temp_3738		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3741 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3740 = *_temp_3741  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3742 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3737  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3740  sizeInBytes=4
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
_Label_3736:
! END IF...
_Label_3732:
! ASSIGNMENT STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3743 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3743 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2758,r13		! source line 2758
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3744 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3744 = 1  (sizeInBytes=1)
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
	mov	2762,r13		! source line 2762
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2763,r13		! source line 2763
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2764,r13		! source line 2764
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3717
_Label_3719:
! SEND STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0SE",r10
!   _temp_3745 = &fileManagerLock
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
	mov	2774,r13		! source line 2774
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
	.word	_Label_3746
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3747
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3748
	.word	12
	.word	4
	.word	_Label_3749
	.word	16
	.word	4
	.word	_Label_3750
	.word	20
	.word	4
	.word	_Label_3751
	.word	24
	.word	4
	.word	_Label_3752
	.word	-16
	.word	4
	.word	_Label_3753
	.word	-20
	.word	4
	.word	_Label_3754
	.word	-24
	.word	4
	.word	_Label_3755
	.word	-28
	.word	4
	.word	_Label_3756
	.word	-32
	.word	4
	.word	_Label_3757
	.word	-36
	.word	4
	.word	_Label_3758
	.word	-40
	.word	4
	.word	_Label_3759
	.word	-44
	.word	4
	.word	_Label_3760
	.word	-48
	.word	4
	.word	_Label_3761
	.word	-52
	.word	4
	.word	_Label_3762
	.word	-56
	.word	4
	.word	_Label_3763
	.word	-60
	.word	4
	.word	_Label_3764
	.word	-64
	.word	4
	.word	_Label_3765
	.word	-68
	.word	4
	.word	_Label_3766
	.word	-72
	.word	4
	.word	_Label_3767
	.word	-76
	.word	4
	.word	_Label_3768
	.word	-80
	.word	4
	.word	_Label_3769
	.word	-84
	.word	4
	.word	_Label_3770
	.word	-88
	.word	4
	.word	_Label_3771
	.word	-92
	.word	4
	.word	_Label_3772
	.word	-96
	.word	4
	.word	_Label_3773
	.word	-100
	.word	4
	.word	_Label_3774
	.word	-104
	.word	4
	.word	_Label_3775
	.word	-108
	.word	4
	.word	_Label_3776
	.word	-112
	.word	4
	.word	_Label_3777
	.word	-9
	.word	1
	.word	_Label_3778
	.word	-10
	.word	1
	.word	_Label_3779
	.word	-116
	.word	4
	.word	_Label_3780
	.word	-120
	.word	4
	.word	_Label_3781
	.word	-124
	.word	4
	.word	_Label_3782
	.word	-128
	.word	4
	.word	_Label_3783
	.word	-132
	.word	4
	.word	_Label_3784
	.word	-136
	.word	4
	.word	0
_Label_3746:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3747:
	.ascii	"Pself\0"
	.align
_Label_3748:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3749:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3750:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3751:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3752:
	.byte	'?'
	.ascii	"_temp_3745\0"
	.align
_Label_3753:
	.byte	'?'
	.ascii	"_temp_3744\0"
	.align
_Label_3754:
	.byte	'?'
	.ascii	"_temp_3743\0"
	.align
_Label_3755:
	.byte	'?'
	.ascii	"_temp_3742\0"
	.align
_Label_3756:
	.byte	'?'
	.ascii	"_temp_3741\0"
	.align
_Label_3757:
	.byte	'?'
	.ascii	"_temp_3740\0"
	.align
_Label_3758:
	.byte	'?'
	.ascii	"_temp_3739\0"
	.align
_Label_3759:
	.byte	'?'
	.ascii	"_temp_3738\0"
	.align
_Label_3760:
	.byte	'?'
	.ascii	"_temp_3737\0"
	.align
_Label_3761:
	.byte	'?'
	.ascii	"_temp_3731\0"
	.align
_Label_3762:
	.byte	'?'
	.ascii	"_temp_3730\0"
	.align
_Label_3763:
	.byte	'?'
	.ascii	"_temp_3727\0"
	.align
_Label_3764:
	.byte	'?'
	.ascii	"_temp_3726\0"
	.align
_Label_3765:
	.byte	'?'
	.ascii	"_temp_3725\0"
	.align
_Label_3766:
	.byte	'?'
	.ascii	"_temp_3724\0"
	.align
_Label_3767:
	.byte	'?'
	.ascii	"_temp_3723\0"
	.align
_Label_3768:
	.byte	'?'
	.ascii	"_temp_3722\0"
	.align
_Label_3769:
	.byte	'?'
	.ascii	"_temp_3716\0"
	.align
_Label_3770:
	.byte	'?'
	.ascii	"_temp_3715\0"
	.align
_Label_3771:
	.byte	'?'
	.ascii	"_temp_3714\0"
	.align
_Label_3772:
	.byte	'?'
	.ascii	"_temp_3713\0"
	.align
_Label_3773:
	.byte	'?'
	.ascii	"_temp_3712\0"
	.align
_Label_3774:
	.byte	'?'
	.ascii	"_temp_3711\0"
	.align
_Label_3775:
	.byte	'?'
	.ascii	"_temp_3708\0"
	.align
_Label_3776:
	.byte	'?'
	.ascii	"_temp_3707\0"
	.align
_Label_3777:
	.byte	'C'
	.ascii	"_temp_3706\0"
	.align
_Label_3778:
	.byte	'C'
	.ascii	"_temp_3703\0"
	.align
_Label_3779:
	.byte	'?'
	.ascii	"_temp_3698\0"
	.align
_Label_3780:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3781:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3782:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3783:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3784:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3785
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3785:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3786
	.word	_sourceFileName
	.word	356		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3786:
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
_Label_4148:
	push	r0
	sub	r1,1,r1
	bne	_Label_4148
	mov	2810,r13		! source line 2810
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2811,r13		! source line 2811
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0AS",r10
	mov	2812,r13		! source line 2812
	mov	"\0\0SE",r10
!   _temp_3787 = &_P_Kernel_frameManager
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
	mov	2813,r13		! source line 2813
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2814,r13		! source line 2814
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2815,r13		! source line 2815
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
	.word	_Label_3788
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3789
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3790
	.word	-12
	.word	4
	.word	0
_Label_3788:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3789:
	.ascii	"Pself\0"
	.align
_Label_3790:
	.byte	'?'
	.ascii	"_temp_3787\0"
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
_Label_4149:
	push	r0
	sub	r1,1,r1
	bne	_Label_4149
	mov	2820,r13		! source line 2820
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3791 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3791  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2821,r13		! source line 2821
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2822,r13		! source line 2822
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3792 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3792  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2823,r13		! source line 2823
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2824,r13		! source line 2824
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3793 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3793  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2825,r13		! source line 2825
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2826,r13		! source line 2826
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3794 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3794  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2827,r13		! source line 2827
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2828,r13		! source line 2828
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3795 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3795  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2829,r13		! source line 2829
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2830,r13		! source line 2830
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3796 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3796  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2831,r13		! source line 2831
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2832,r13		! source line 2832
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2833,r13		! source line 2833
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2833,r13		! source line 2833
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
	.word	_Label_3797
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3798
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3799
	.word	-12
	.word	4
	.word	_Label_3800
	.word	-16
	.word	4
	.word	_Label_3801
	.word	-20
	.word	4
	.word	_Label_3802
	.word	-24
	.word	4
	.word	_Label_3803
	.word	-28
	.word	4
	.word	_Label_3804
	.word	-32
	.word	4
	.word	0
_Label_3797:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3798:
	.ascii	"Pself\0"
	.align
_Label_3799:
	.byte	'?'
	.ascii	"_temp_3796\0"
	.align
_Label_3800:
	.byte	'?'
	.ascii	"_temp_3795\0"
	.align
_Label_3801:
	.byte	'?'
	.ascii	"_temp_3794\0"
	.align
_Label_3802:
	.byte	'?'
	.ascii	"_temp_3793\0"
	.align
_Label_3803:
	.byte	'?'
	.ascii	"_temp_3792\0"
	.align
_Label_3804:
	.byte	'?'
	.ascii	"_temp_3791\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3805
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3805:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3806
	.word	_sourceFileName
	.word	373		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3806:
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
_Label_4150:
	push	r0
	sub	r1,1,r1
	bne	_Label_4150
	mov	2844,r13		! source line 2844
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3807 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3807  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2845,r13		! source line 2845
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2846,r13		! source line 2846
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3808 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3808  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2847,r13		! source line 2847
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2848,r13		! source line 2848
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3810		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3810
!	jmp	_Label_3809
_Label_3809:
! THEN...
	mov	2849,r13		! source line 2849
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2849,r13		! source line 2849
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
	jmp	_Label_3811
_Label_3810:
! ELSE...
	mov	2851,r13		! source line 2851
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3812 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3812  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2851,r13		! source line 2851
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3811:
! RETURN STATEMENT...
	mov	2848,r13		! source line 2848
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
	.word	_Label_3813
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3814
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3815
	.word	-12
	.word	4
	.word	_Label_3816
	.word	-16
	.word	4
	.word	_Label_3817
	.word	-20
	.word	4
	.word	0
_Label_3813:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3814:
	.ascii	"Pself\0"
	.align
_Label_3815:
	.byte	'?'
	.ascii	"_temp_3812\0"
	.align
_Label_3816:
	.byte	'?'
	.ascii	"_temp_3808\0"
	.align
_Label_3817:
	.byte	'?'
	.ascii	"_temp_3807\0"
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
_Label_4151:
	push	r0
	sub	r1,1,r1
	bne	_Label_4151
	mov	2857,r13		! source line 2857
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0SE",r10
!   _temp_3818 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3819 = _temp_3818 + 4
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
	mov	2868,r13		! source line 2868
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2869,r13		! source line 2869
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
	mov	2870,r13		! source line 2870
	mov	"\0\0SE",r10
!   _temp_3820 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3821 = _temp_3820 + 4
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
	mov	2871,r13		! source line 2871
	mov	"\0\0RE",r10
	mov	2871,r13		! source line 2871
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3824 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3823  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3822  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3822  (sizeInBytes=1)
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
	.word	_Label_3825
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3826
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3827
	.word	12
	.word	4
	.word	_Label_3828
	.word	16
	.word	4
	.word	_Label_3829
	.word	-16
	.word	4
	.word	_Label_3830
	.word	-20
	.word	4
	.word	_Label_3831
	.word	-9
	.word	1
	.word	_Label_3832
	.word	-24
	.word	4
	.word	_Label_3833
	.word	-28
	.word	4
	.word	_Label_3834
	.word	-32
	.word	4
	.word	_Label_3835
	.word	-36
	.word	4
	.word	_Label_3836
	.word	-40
	.word	4
	.word	0
_Label_3825:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3826:
	.ascii	"Pself\0"
	.align
_Label_3827:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3828:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3829:
	.byte	'?'
	.ascii	"_temp_3824\0"
	.align
_Label_3830:
	.byte	'?'
	.ascii	"_temp_3823\0"
	.align
_Label_3831:
	.byte	'C'
	.ascii	"_temp_3822\0"
	.align
_Label_3832:
	.byte	'?'
	.ascii	"_temp_3821\0"
	.align
_Label_3833:
	.byte	'?'
	.ascii	"_temp_3820\0"
	.align
_Label_3834:
	.byte	'?'
	.ascii	"_temp_3819\0"
	.align
_Label_3835:
	.byte	'?'
	.ascii	"_temp_3818\0"
	.align
_Label_3836:
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
_Label_4152:
	push	r0
	sub	r1,1,r1
	bne	_Label_4152
	mov	2876,r13		! source line 2876
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2881,r13		! source line 2881
	mov	"\0\0IF",r10
	mov	2881,r13		! source line 2881
	mov	"\0\0SE",r10
!   _temp_3840 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3841) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3840  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3839  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3839 then goto _Label_3838 else goto _Label_3837
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3837
	jmp	_Label_3838
_Label_3837:
! THEN...
	mov	2882,r13		! source line 2882
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3842 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3842  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2882,r13		! source line 2882
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3838:
! RETURN STATEMENT...
	mov	2884,r13		! source line 2884
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
	.word	_Label_3843
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3844
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3845
	.word	-16
	.word	4
	.word	_Label_3846
	.word	-20
	.word	4
	.word	_Label_3847
	.word	-24
	.word	4
	.word	_Label_3848
	.word	-9
	.word	1
	.word	_Label_3849
	.word	-28
	.word	4
	.word	0
_Label_3843:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3844:
	.ascii	"Pself\0"
	.align
_Label_3845:
	.byte	'?'
	.ascii	"_temp_3842\0"
	.align
_Label_3846:
	.byte	'?'
	.ascii	"_temp_3841\0"
	.align
_Label_3847:
	.byte	'?'
	.ascii	"_temp_3840\0"
	.align
_Label_3848:
	.byte	'C'
	.ascii	"_temp_3839\0"
	.align
_Label_3849:
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
_Label_4153:
	push	r0
	sub	r1,1,r1
	bne	_Label_4153
	mov	2889,r13		! source line 2889
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2915,r13		! source line 2915
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3853 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3852 = *_temp_3853  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3852) then goto _Label_3851
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3851
!	jmp	_Label_3850
_Label_3850:
! THEN...
	mov	2916,r13		! source line 2916
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3854 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3854  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2916,r13		! source line 2916
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3851:
! IF STATEMENT...
	mov	2920,r13		! source line 2920
	mov	"\0\0IF",r10
	mov	2920,r13		! source line 2920
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3858) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3857  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3857 == 1112300152 then goto _Label_3856		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3856
!	jmp	_Label_3855
_Label_3855:
! THEN...
	mov	2921,r13		! source line 2921
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3859 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3859  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2921,r13		! source line 2921
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2922,r13		! source line 2922
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3856:
! ASSIGNMENT STATEMENT...
	mov	2926,r13		! source line 2926
	mov	"\0\0AS",r10
	mov	2926,r13		! source line 2926
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3860) then goto _runtimeErrorNullPointer
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
	mov	2927,r13		! source line 2927
	mov	"\0\0AS",r10
	mov	2927,r13		! source line 2927
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3861) then goto _runtimeErrorNullPointer
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
	mov	2928,r13		! source line 2928
	mov	"\0\0AS",r10
	mov	2928,r13		! source line 2928
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3862) then goto _runtimeErrorNullPointer
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
	mov	2929,r13		! source line 2929
	mov	"\0\0AS",r10
	mov	2929,r13		! source line 2929
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3863) then goto _runtimeErrorNullPointer
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
	mov	2930,r13		! source line 2930
	mov	"\0\0AS",r10
	mov	2930,r13		! source line 2930
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3864) then goto _runtimeErrorNullPointer
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
	mov	2931,r13		! source line 2931
	mov	"\0\0AS",r10
	mov	2931,r13		! source line 2931
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3865) then goto _runtimeErrorNullPointer
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
	mov	2934,r13		! source line 2934
	mov	"\0\0IF",r10
!   _temp_3868 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3868) then goto _Label_3867
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3867
!	jmp	_Label_3866
_Label_3866:
! THEN...
	mov	2935,r13		! source line 2935
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3869 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3869  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2935,r13		! source line 2935
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2936,r13		! source line 2936
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3867:
! ASSIGNMENT STATEMENT...
	mov	2938,r13		! source line 2938
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
	mov	2942,r13		! source line 2942
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3871
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3871
!	jmp	_Label_3870
_Label_3870:
! THEN...
	mov	2943,r13		! source line 2943
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3872 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3872  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2943,r13		! source line 2943
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2944,r13		! source line 2944
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3871:
! IF STATEMENT...
	mov	2948,r13		! source line 2948
	mov	"\0\0IF",r10
!   _temp_3875 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3875) then goto _Label_3874
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3874
!	jmp	_Label_3873
_Label_3873:
! THEN...
	mov	2949,r13		! source line 2949
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3876 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3876  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2949,r13		! source line 2949
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2950,r13		! source line 2950
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3874:
! IF STATEMENT...
	mov	2952,r13		! source line 2952
	mov	"\0\0IF",r10
!   _temp_3879 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3879 then goto _Label_3878		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3878
!	jmp	_Label_3877
_Label_3877:
! THEN...
	mov	2953,r13		! source line 2953
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3880 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3880  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2953,r13		! source line 2953
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2954,r13		! source line 2954
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3878:
! ASSIGNMENT STATEMENT...
	mov	2956,r13		! source line 2956
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
	mov	2959,r13		! source line 2959
	mov	"\0\0IF",r10
!   _temp_3883 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3883) then goto _Label_3882
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3882
!	jmp	_Label_3881
_Label_3881:
! THEN...
	mov	2960,r13		! source line 2960
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3884 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3884  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2960,r13		! source line 2960
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2961,r13		! source line 2961
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3882:
! IF STATEMENT...
	mov	2963,r13		! source line 2963
	mov	"\0\0IF",r10
!   _temp_3887 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3887 then goto _Label_3886		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3886
!	jmp	_Label_3885
_Label_3885:
! THEN...
	mov	2964,r13		! source line 2964
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3888 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3888  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2964,r13		! source line 2964
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2965,r13		! source line 2965
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3886:
! ASSIGNMENT STATEMENT...
	mov	2967,r13		! source line 2967
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
	mov	2970,r13		! source line 2970
	mov	"\0\0AS",r10
!   _temp_3891 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3890 = _temp_3891 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3889 = _temp_3890 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3889 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2985,r13		! source line 2985
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3893		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3893
!	jmp	_Label_3892
_Label_3892:
! THEN...
	mov	2986,r13		! source line 2986
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3894 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3894  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2986,r13		! source line 2986
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3895 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3895  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2987,r13		! source line 2987
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3896 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3896  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2988,r13		! source line 2988
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2989,r13		! source line 2989
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3893:
! SEND STATEMENT...
	mov	2991,r13		! source line 2991
	mov	"\0\0SE",r10
!   _temp_3897 = &_P_Kernel_frameManager
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
	mov	2997,r13		! source line 2997
	mov	"\0\0IF",r10
	mov	2997,r13		! source line 2997
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3901) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3900  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3900 == 707406378 then goto _Label_3899		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3899
!	jmp	_Label_3898
_Label_3898:
! THEN...
	mov	2998,r13		! source line 2998
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3902 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3902  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2998,r13		! source line 2998
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2999,r13		! source line 2999
	mov	"\0\0SE",r10
!   _temp_3903 = &_P_Kernel_frameManager
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
	mov	3000,r13		! source line 3000
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3899:
! ASSIGNMENT STATEMENT...
	mov	3004,r13		! source line 3004
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
	mov	3005,r13		! source line 3005
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3908 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3909 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3908  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3904:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3909 then goto _Label_3907		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3907
_Label_3905:
	mov	3005,r13		! source line 3005
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3006,r13		! source line 3006
	mov	"\0\0AS",r10
	mov	3006,r13		! source line 3006
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
	mov	3009,r13		! source line 3009
	mov	"\0\0IF",r10
	mov	3009,r13		! source line 3009
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3913) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3912  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3912 then goto _Label_3911 else goto _Label_3910
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3910
	jmp	_Label_3911
_Label_3910:
! THEN...
	mov	3010,r13		! source line 3010
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3914 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3914  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3010,r13		! source line 3010
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3011,r13		! source line 3011
	mov	"\0\0SE",r10
!   _temp_3915 = &_P_Kernel_frameManager
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
	mov	3012,r13		! source line 3012
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3911:
! SEND STATEMENT...
	mov	3014,r13		! source line 3014
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
	mov	3015,r13		! source line 3015
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3906:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3904
! END FOR
_Label_3907:
! IF STATEMENT...
	mov	3019,r13		! source line 3019
	mov	"\0\0IF",r10
	mov	3019,r13		! source line 3019
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3919) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3918  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3918 == 707406378 then goto _Label_3917		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3917
!	jmp	_Label_3916
_Label_3916:
! THEN...
	mov	3020,r13		! source line 3020
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3920 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3920  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3020,r13		! source line 3020
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3021,r13		! source line 3021
	mov	"\0\0SE",r10
!   _temp_3921 = &_P_Kernel_frameManager
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
	mov	3022,r13		! source line 3022
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3917:
! FOR STATEMENT...
	mov	3026,r13		! source line 3026
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3926 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3927 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3926  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3922:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3927 then goto _Label_3925		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3925
_Label_3923:
	mov	3026,r13		! source line 3026
	mov	"\0\0FB",r10
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
! IF STATEMENT...
	mov	3030,r13		! source line 3030
	mov	"\0\0IF",r10
	mov	3030,r13		! source line 3030
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3931) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3930  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3930 then goto _Label_3929 else goto _Label_3928
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3928
	jmp	_Label_3929
_Label_3928:
! THEN...
	mov	3031,r13		! source line 3031
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3932 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3932  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3031,r13		! source line 3031
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3032,r13		! source line 3032
	mov	"\0\0SE",r10
!   _temp_3933 = &_P_Kernel_frameManager
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
	mov	3033,r13		! source line 3033
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3929:
! ASSIGNMENT STATEMENT...
	mov	3035,r13		! source line 3035
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3924:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3922
! END FOR
_Label_3925:
! IF STATEMENT...
	mov	3039,r13		! source line 3039
	mov	"\0\0IF",r10
	mov	3039,r13		! source line 3039
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3937) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3936  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3936 == 707406378 then goto _Label_3935		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3935
!	jmp	_Label_3934
_Label_3934:
! THEN...
	mov	3040,r13		! source line 3040
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3938 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3938  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3040,r13		! source line 3040
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3041,r13		! source line 3041
	mov	"\0\0SE",r10
!   _temp_3939 = &_P_Kernel_frameManager
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
	mov	3042,r13		! source line 3042
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3935:
! ASSIGNMENT STATEMENT...
	mov	3046,r13		! source line 3046
	mov	"\0\0AS",r10
	mov	3046,r13		! source line 3046
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
	mov	3050,r13		! source line 3050
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3053,r13		! source line 3053
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
	.word	_Label_3940
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3941
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3942
	.word	12
	.word	4
	.word	_Label_3943
	.word	-16
	.word	4
	.word	_Label_3944
	.word	-20
	.word	4
	.word	_Label_3945
	.word	-24
	.word	4
	.word	_Label_3946
	.word	-28
	.word	4
	.word	_Label_3947
	.word	-32
	.word	4
	.word	_Label_3948
	.word	-36
	.word	4
	.word	_Label_3949
	.word	-40
	.word	4
	.word	_Label_3950
	.word	-9
	.word	1
	.word	_Label_3951
	.word	-44
	.word	4
	.word	_Label_3952
	.word	-48
	.word	4
	.word	_Label_3953
	.word	-52
	.word	4
	.word	_Label_3954
	.word	-56
	.word	4
	.word	_Label_3955
	.word	-60
	.word	4
	.word	_Label_3956
	.word	-64
	.word	4
	.word	_Label_3957
	.word	-68
	.word	4
	.word	_Label_3958
	.word	-72
	.word	4
	.word	_Label_3959
	.word	-76
	.word	4
	.word	_Label_3960
	.word	-10
	.word	1
	.word	_Label_3961
	.word	-80
	.word	4
	.word	_Label_3962
	.word	-84
	.word	4
	.word	_Label_3963
	.word	-88
	.word	4
	.word	_Label_3964
	.word	-92
	.word	4
	.word	_Label_3965
	.word	-96
	.word	4
	.word	_Label_3966
	.word	-100
	.word	4
	.word	_Label_3967
	.word	-104
	.word	4
	.word	_Label_3968
	.word	-108
	.word	4
	.word	_Label_3969
	.word	-112
	.word	4
	.word	_Label_3970
	.word	-116
	.word	4
	.word	_Label_3971
	.word	-120
	.word	4
	.word	_Label_3972
	.word	-124
	.word	4
	.word	_Label_3973
	.word	-128
	.word	4
	.word	_Label_3974
	.word	-132
	.word	4
	.word	_Label_3975
	.word	-136
	.word	4
	.word	_Label_3976
	.word	-140
	.word	4
	.word	_Label_3977
	.word	-144
	.word	4
	.word	_Label_3978
	.word	-148
	.word	4
	.word	_Label_3979
	.word	-152
	.word	4
	.word	_Label_3980
	.word	-156
	.word	4
	.word	_Label_3981
	.word	-160
	.word	4
	.word	_Label_3982
	.word	-164
	.word	4
	.word	_Label_3983
	.word	-168
	.word	4
	.word	_Label_3984
	.word	-172
	.word	4
	.word	_Label_3985
	.word	-176
	.word	4
	.word	_Label_3986
	.word	-180
	.word	4
	.word	_Label_3987
	.word	-184
	.word	4
	.word	_Label_3988
	.word	-188
	.word	4
	.word	_Label_3989
	.word	-192
	.word	4
	.word	_Label_3990
	.word	-196
	.word	4
	.word	_Label_3991
	.word	-200
	.word	4
	.word	_Label_3992
	.word	-204
	.word	4
	.word	_Label_3993
	.word	-208
	.word	4
	.word	_Label_3994
	.word	-212
	.word	4
	.word	_Label_3995
	.word	-216
	.word	4
	.word	_Label_3996
	.word	-220
	.word	4
	.word	_Label_3997
	.word	-224
	.word	4
	.word	_Label_3998
	.word	-228
	.word	4
	.word	_Label_3999
	.word	-232
	.word	4
	.word	_Label_4000
	.word	-236
	.word	4
	.word	_Label_4001
	.word	-240
	.word	4
	.word	_Label_4002
	.word	-244
	.word	4
	.word	_Label_4003
	.word	-248
	.word	4
	.word	_Label_4004
	.word	-252
	.word	4
	.word	_Label_4005
	.word	-256
	.word	4
	.word	_Label_4006
	.word	-260
	.word	4
	.word	_Label_4007
	.word	-264
	.word	4
	.word	_Label_4008
	.word	-268
	.word	4
	.word	0
_Label_3940:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3941:
	.ascii	"Pself\0"
	.align
_Label_3942:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3943:
	.byte	'?'
	.ascii	"_temp_3939\0"
	.align
_Label_3944:
	.byte	'?'
	.ascii	"_temp_3938\0"
	.align
_Label_3945:
	.byte	'?'
	.ascii	"_temp_3937\0"
	.align
_Label_3946:
	.byte	'?'
	.ascii	"_temp_3936\0"
	.align
_Label_3947:
	.byte	'?'
	.ascii	"_temp_3933\0"
	.align
_Label_3948:
	.byte	'?'
	.ascii	"_temp_3932\0"
	.align
_Label_3949:
	.byte	'?'
	.ascii	"_temp_3931\0"
	.align
_Label_3950:
	.byte	'C'
	.ascii	"_temp_3930\0"
	.align
_Label_3951:
	.byte	'?'
	.ascii	"_temp_3927\0"
	.align
_Label_3952:
	.byte	'?'
	.ascii	"_temp_3926\0"
	.align
_Label_3953:
	.byte	'?'
	.ascii	"_temp_3921\0"
	.align
_Label_3954:
	.byte	'?'
	.ascii	"_temp_3920\0"
	.align
_Label_3955:
	.byte	'?'
	.ascii	"_temp_3919\0"
	.align
_Label_3956:
	.byte	'?'
	.ascii	"_temp_3918\0"
	.align
_Label_3957:
	.byte	'?'
	.ascii	"_temp_3915\0"
	.align
_Label_3958:
	.byte	'?'
	.ascii	"_temp_3914\0"
	.align
_Label_3959:
	.byte	'?'
	.ascii	"_temp_3913\0"
	.align
_Label_3960:
	.byte	'C'
	.ascii	"_temp_3912\0"
	.align
_Label_3961:
	.byte	'?'
	.ascii	"_temp_3909\0"
	.align
_Label_3962:
	.byte	'?'
	.ascii	"_temp_3908\0"
	.align
_Label_3963:
	.byte	'?'
	.ascii	"_temp_3903\0"
	.align
_Label_3964:
	.byte	'?'
	.ascii	"_temp_3902\0"
	.align
_Label_3965:
	.byte	'?'
	.ascii	"_temp_3901\0"
	.align
_Label_3966:
	.byte	'?'
	.ascii	"_temp_3900\0"
	.align
_Label_3967:
	.byte	'?'
	.ascii	"_temp_3897\0"
	.align
_Label_3968:
	.byte	'?'
	.ascii	"_temp_3896\0"
	.align
_Label_3969:
	.byte	'?'
	.ascii	"_temp_3895\0"
	.align
_Label_3970:
	.byte	'?'
	.ascii	"_temp_3894\0"
	.align
_Label_3971:
	.byte	'?'
	.ascii	"_temp_3891\0"
	.align
_Label_3972:
	.byte	'?'
	.ascii	"_temp_3890\0"
	.align
_Label_3973:
	.byte	'?'
	.ascii	"_temp_3889\0"
	.align
_Label_3974:
	.byte	'?'
	.ascii	"_temp_3888\0"
	.align
_Label_3975:
	.byte	'?'
	.ascii	"_temp_3887\0"
	.align
_Label_3976:
	.byte	'?'
	.ascii	"_temp_3884\0"
	.align
_Label_3977:
	.byte	'?'
	.ascii	"_temp_3883\0"
	.align
_Label_3978:
	.byte	'?'
	.ascii	"_temp_3880\0"
	.align
_Label_3979:
	.byte	'?'
	.ascii	"_temp_3879\0"
	.align
_Label_3980:
	.byte	'?'
	.ascii	"_temp_3876\0"
	.align
_Label_3981:
	.byte	'?'
	.ascii	"_temp_3875\0"
	.align
_Label_3982:
	.byte	'?'
	.ascii	"_temp_3872\0"
	.align
_Label_3983:
	.byte	'?'
	.ascii	"_temp_3869\0"
	.align
_Label_3984:
	.byte	'?'
	.ascii	"_temp_3868\0"
	.align
_Label_3985:
	.byte	'?'
	.ascii	"_temp_3865\0"
	.align
_Label_3986:
	.byte	'?'
	.ascii	"_temp_3864\0"
	.align
_Label_3987:
	.byte	'?'
	.ascii	"_temp_3863\0"
	.align
_Label_3988:
	.byte	'?'
	.ascii	"_temp_3862\0"
	.align
_Label_3989:
	.byte	'?'
	.ascii	"_temp_3861\0"
	.align
_Label_3990:
	.byte	'?'
	.ascii	"_temp_3860\0"
	.align
_Label_3991:
	.byte	'?'
	.ascii	"_temp_3859\0"
	.align
_Label_3992:
	.byte	'?'
	.ascii	"_temp_3858\0"
	.align
_Label_3993:
	.byte	'?'
	.ascii	"_temp_3857\0"
	.align
_Label_3994:
	.byte	'?'
	.ascii	"_temp_3854\0"
	.align
_Label_3995:
	.byte	'?'
	.ascii	"_temp_3853\0"
	.align
_Label_3996:
	.byte	'?'
	.ascii	"_temp_3852\0"
	.align
_Label_3997:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3998:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3999:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_4000:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_4001:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_4002:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_4003:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_4004:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_4005:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_4006:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_4007:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_4008:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
