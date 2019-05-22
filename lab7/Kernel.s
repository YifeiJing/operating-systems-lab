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
_StringConst_199:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_198:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_197:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_196:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_195:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_194:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_193:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_192:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_191:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_190:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_189:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_188:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_187:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_186:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_185:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_184:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_183:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_182:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_181:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_180:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_179:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_178:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_177:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_176:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_175:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_174:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_173:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_172:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_171:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_170:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_169:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_168:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_167:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_166:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_165:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_164:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_163:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_162:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_161:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_160:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_159:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_158:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_157:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_156:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_155:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_154:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_153:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_152:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_151:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_150:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_149:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_148:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_147:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_146:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
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
	.word	6			! length
	.ascii	"      "
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
	.word	9			! length
	.ascii	"         "
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
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_136:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_135:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_134:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_133:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_132:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_131:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_130:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_129:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_128:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_127:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_126:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_125:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_124:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_123:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_122:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_121:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_120:
	.word	38			! length
	.ascii	"This function should never be invoked!"
	.align
_StringConst_119:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_118:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_117:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_116:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_115:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_114:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_113:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_112:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_111:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_110:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_109:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_108:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_107:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_106:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_105:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_104:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_103:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_102:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_101:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_100:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_99:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_98:
	.word	10			! length
	.ascii	"Threadpool"
	.align
_StringConst_97:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_96:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_95:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_94:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_93:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_92:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_91:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_90:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_89:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_88:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_87:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_86:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_85:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_84:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_83:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_82:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_81:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_80:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_79:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_78:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_77:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_76:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_75:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_74:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_73:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_72:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_71:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_70:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_69:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_68:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_67:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_66:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_65:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_64:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_63:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_62:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_61:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_60:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_59:
	.word	33			! length
	.ascii	"Failed to open file: TestProgram1"
	.align
_StringConst_58:
	.word	12			! length
	.ascii	"TestProgram3"
	.align
_StringConst_57:
	.word	9			! length
	.ascii	"myProgram"
	.align
_StringConst_56:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_55:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_54:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_53:
	.word	24			! length
	.ascii	"Invoke System call Close"
	.align
_StringConst_52:
	.word	15			! length
	.ascii	"newCurrentPos: "
	.align
_StringConst_51:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_50:
	.word	23			! length
	.ascii	"Invoke System call Seek"
	.align
_StringConst_49:
	.word	8			! length
	.ascii	"buffer: "
	.align
_StringConst_48:
	.word	24			! length
	.ascii	"Invoke System call Write"
	.align
_StringConst_47:
	.word	16			! length
	.ascii	"SynchRead failed"
	.align
_StringConst_46:
	.word	24			! length
	.ascii	"Error while reading file"
	.align
_StringConst_45:
	.word	24			! length
	.ascii	"Error while reading file"
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
	be	_Label_209
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
_Label_209:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_210
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_210
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_210
_Label_210:
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
_Label_3504:
	push	r0
	sub	r1,1,r1
	bne	_Label_3504
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_211 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_211  sizeInBytes=4
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
_Label_3505:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3505
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_215 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_216 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_215  sizeInBytes=4
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
!   _temp_217 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_218 = _temp_217 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_218 = 3  (sizeInBytes=4)
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
_Label_3506:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3506
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_220 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_221 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_220  sizeInBytes=4
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
!   _temp_222 = _function_208_IdleFunction
	set	_function_208_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_223 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_222  sizeInBytes=4
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
	.word	_Label_224
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_225
	.word	-12
	.word	4
	.word	_Label_226
	.word	-16
	.word	4
	.word	_Label_227
	.word	-20
	.word	4
	.word	_Label_228
	.word	-24
	.word	4
	.word	_Label_229
	.word	-28
	.word	4
	.word	_Label_230
	.word	-32
	.word	4
	.word	_Label_231
	.word	-36
	.word	4
	.word	_Label_232
	.word	-40
	.word	4
	.word	_Label_233
	.word	-44
	.word	4
	.word	_Label_234
	.word	-48
	.word	4
	.word	_Label_235
	.word	-52
	.word	4
	.word	_Label_236
	.word	-56
	.word	4
	.word	_Label_237
	.word	-60
	.word	4
	.word	0
_Label_224:
	.ascii	"InitializeScheduler\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_208_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_208_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3507:
	push	r0
	sub	r1,1,r1
	bne	_Label_3507
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_238:
!	jmp	_Label_239
_Label_239:
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
!   _temp_243 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_241 else goto _Label_242
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_242
	jmp	_Label_241
_Label_241:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_244
_Label_242:
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
_Label_244:
! END WHILE...
	jmp	_Label_238
_Label_240:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_208_IdleFunction:
	.word	_sourceFileName
	.word	_Label_245
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_246
	.word	8
	.word	4
	.word	_Label_247
	.word	-12
	.word	4
	.word	_Label_248
	.word	-16
	.word	4
	.word	0
_Label_245:
	.ascii	"IdleFunction\0"
	.align
_Label_246:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_248:
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
_Label_3508:
	push	r0
	sub	r1,1,r1
	bne	_Label_3508
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
!   _temp_251 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_251 ) then goto _Label_250		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_250
!	jmp	_Label_249
_Label_249:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_253 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_253 [0 ] into _temp_254
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
!   _temp_252 = _temp_254		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_252  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_250:
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
!   _temp_255 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_255 = 3  (sizeInBytes=4)
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
_Label_256:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_260 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_259  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_259 then goto _Label_258 else goto _Label_257
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_257
	jmp	_Label_258
_Label_257:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_261 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_262 = &_P_Kernel_threadManager
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
	jmp	_Label_256
_Label_258:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_265 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_265 ) then goto _Label_264		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_264
!	jmp	_Label_263
_Label_263:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_267 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_267 [0 ] into _temp_268
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
!   _temp_266 = _temp_268		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_266  sizeInBytes=4
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
!   _temp_270 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_269 = *_temp_270  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_269) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_271 = _temp_269 + 32
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
_Label_264:
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
	.word	_Label_272
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_273
	.word	8
	.word	4
	.word	_Label_274
	.word	-16
	.word	4
	.word	_Label_275
	.word	-20
	.word	4
	.word	_Label_276
	.word	-24
	.word	4
	.word	_Label_277
	.word	-28
	.word	4
	.word	_Label_278
	.word	-32
	.word	4
	.word	_Label_279
	.word	-36
	.word	4
	.word	_Label_280
	.word	-40
	.word	4
	.word	_Label_281
	.word	-44
	.word	4
	.word	_Label_282
	.word	-48
	.word	4
	.word	_Label_283
	.word	-52
	.word	4
	.word	_Label_284
	.word	-9
	.word	1
	.word	_Label_285
	.word	-56
	.word	4
	.word	_Label_286
	.word	-60
	.word	4
	.word	_Label_287
	.word	-64
	.word	4
	.word	_Label_288
	.word	-68
	.word	4
	.word	_Label_289
	.word	-72
	.word	4
	.word	_Label_290
	.word	-76
	.word	4
	.word	_Label_291
	.word	-80
	.word	4
	.word	0
_Label_272:
	.ascii	"Run\0"
	.align
_Label_273:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_284:
	.byte	'C'
	.ascii	"_temp_259\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_290:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_291:
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
_Label_3509:
	push	r0
	sub	r1,1,r1
	bne	_Label_3509
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
!   _temp_292 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_292  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_293 = _function_207_ThreadPrintShort
	set	_function_207_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_294 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_293  sizeInBytes=4
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
	.word	_Label_295
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_296
	.word	-12
	.word	4
	.word	_Label_297
	.word	-16
	.word	4
	.word	_Label_298
	.word	-20
	.word	4
	.word	_Label_299
	.word	-24
	.word	4
	.word	0
_Label_295:
	.ascii	"PrintReadyList\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_299:
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
_Label_3510:
	push	r0
	sub	r1,1,r1
	bne	_Label_3510
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
!   _temp_300 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_300  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_302 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_301 = *_temp_302  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
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
!   _temp_303 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_303  sizeInBytes=4
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
	.word	_Label_304
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_305
	.word	-12
	.word	4
	.word	_Label_306
	.word	-16
	.word	4
	.word	_Label_307
	.word	-20
	.word	4
	.word	_Label_308
	.word	-24
	.word	4
	.word	_Label_309
	.word	-28
	.word	4
	.word	_Label_310
	.word	-32
	.word	4
	.word	0
_Label_304:
	.ascii	"ThreadStartMain\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_309:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_310:
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
_Label_3511:
	push	r0
	sub	r1,1,r1
	bne	_Label_3511
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
!   _temp_311 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_312 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
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
	.word	_Label_313
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_314
	.word	-12
	.word	4
	.word	_Label_315
	.word	-16
	.word	4
	.word	_Label_316
	.word	-20
	.word	4
	.word	0
_Label_313:
	.ascii	"ThreadFinish\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_316:
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
_Label_3512:
	push	r0
	sub	r1,1,r1
	bne	_Label_3512
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
!   _temp_317 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_319		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_319
!	jmp	_Label_318
_Label_318:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_320 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
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
!   _temp_322 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_321 = *_temp_322  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_319:
! CALL STATEMENT...
!   _temp_323 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
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
!   _temp_324 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_325 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
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
	.word	_Label_326
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_327
	.word	8
	.word	4
	.word	_Label_328
	.word	-12
	.word	4
	.word	_Label_329
	.word	-16
	.word	4
	.word	_Label_330
	.word	-20
	.word	4
	.word	_Label_331
	.word	-24
	.word	4
	.word	_Label_332
	.word	-28
	.word	4
	.word	_Label_333
	.word	-32
	.word	4
	.word	_Label_334
	.word	-36
	.word	4
	.word	_Label_335
	.word	-40
	.word	4
	.word	0
_Label_326:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_327:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_335:
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
_Label_3513:
	push	r0
	sub	r1,1,r1
	bne	_Label_3513
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
!   if newStatus != 1 then goto _Label_337		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_337
!	jmp	_Label_336
_Label_336:
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
	jmp	_Label_338
_Label_337:
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
_Label_338:
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
	.word	_Label_339
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_340
	.word	8
	.word	4
	.word	_Label_341
	.word	-12
	.word	4
	.word	0
_Label_339:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_340:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_341:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_207_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_207_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3514:
	push	r0
	sub	r1,1,r1
	bne	_Label_3514
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
!   if t == 0 then goto _Label_345		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_345
!   _temp_344 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_346
_Label_345:
!   _temp_344 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_346:
!   if _temp_344 then goto _Label_343 else goto _Label_342
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_342
	jmp	_Label_343
_Label_342:
! THEN...
	mov	650,r13		! source line 650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_347 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
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
_Label_343:
! CALL STATEMENT...
!   _temp_348 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
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
!   _temp_350 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_349 = *_temp_350  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_351 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
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
!   _temp_360 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_359 = *_temp_360  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_354
	cmp	r1,2
	be	_Label_355
	cmp	r1,3
	be	_Label_356
	cmp	r1,4
	be	_Label_357
	cmp	r1,5
	be	_Label_358
	jmp	_Label_352
! CASE 1...
_Label_354:
! CALL STATEMENT...
!   _temp_361 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_353
! CASE 2...
_Label_355:
! CALL STATEMENT...
!   _temp_362 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_353
! CASE 3...
_Label_356:
! CALL STATEMENT...
!   _temp_363 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_353
! CASE 4...
_Label_357:
! CALL STATEMENT...
!   _temp_364 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0BR",r10
	jmp	_Label_353
! CASE 5...
_Label_358:
! CALL STATEMENT...
!   _temp_365 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0BR",r10
	jmp	_Label_353
! DEFAULT CASE...
_Label_352:
! CALL STATEMENT...
!   _temp_366 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
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
_Label_353:
! CALL STATEMENT...
!   _temp_367 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_367  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_368 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_369 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
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
_RoutineDescriptor__function_207_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_370
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_371
	.word	8
	.word	4
	.word	_Label_372
	.word	-16
	.word	4
	.word	_Label_373
	.word	-20
	.word	4
	.word	_Label_374
	.word	-24
	.word	4
	.word	_Label_375
	.word	-28
	.word	4
	.word	_Label_376
	.word	-32
	.word	4
	.word	_Label_377
	.word	-36
	.word	4
	.word	_Label_378
	.word	-40
	.word	4
	.word	_Label_379
	.word	-44
	.word	4
	.word	_Label_380
	.word	-48
	.word	4
	.word	_Label_381
	.word	-52
	.word	4
	.word	_Label_382
	.word	-56
	.word	4
	.word	_Label_383
	.word	-60
	.word	4
	.word	_Label_384
	.word	-64
	.word	4
	.word	_Label_385
	.word	-68
	.word	4
	.word	_Label_386
	.word	-72
	.word	4
	.word	_Label_387
	.word	-76
	.word	4
	.word	_Label_388
	.word	-9
	.word	1
	.word	_Label_389
	.word	-80
	.word	4
	.word	0
_Label_370:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_371:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_388:
	.byte	'C'
	.ascii	"_temp_344\0"
	.align
_Label_389:
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
_Label_3515:
	push	r0
	sub	r1,1,r1
	bne	_Label_3515
	mov	993,r13		! source line 993
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! pcb
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_390 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: pcb = *_temp_390  (sizeInBytes=4)
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
!   _temp_392 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_391 = *_temp_392  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_391) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_393 = _temp_391 + 28
	load	[r14+-56],r1
	add	r1,28,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_393 = exitStatus  (sizeInBytes=4)
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
!   _temp_395 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_394 = *_temp_395  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_394) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_396 = _temp_394 + 24
	load	[r14+-44],r1
	add	r1,24,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_396 = 0  (sizeInBytes=4)
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
!   _temp_397 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_397 = 0  (sizeInBytes=4)
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
!   _temp_398 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_398 = 0  (sizeInBytes=1)
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
!   _temp_400 = pcb + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_399 = _temp_400		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_401 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_399  sizeInBytes=4
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
!   _temp_402 = &_P_Kernel_processManager
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
	.word	_Label_403
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_404
	.word	8
	.word	4
	.word	_Label_405
	.word	-12
	.word	4
	.word	_Label_406
	.word	-16
	.word	4
	.word	_Label_407
	.word	-20
	.word	4
	.word	_Label_408
	.word	-24
	.word	4
	.word	_Label_409
	.word	-28
	.word	4
	.word	_Label_410
	.word	-32
	.word	4
	.word	_Label_411
	.word	-36
	.word	4
	.word	_Label_412
	.word	-40
	.word	4
	.word	_Label_413
	.word	-44
	.word	4
	.word	_Label_414
	.word	-48
	.word	4
	.word	_Label_415
	.word	-52
	.word	4
	.word	_Label_416
	.word	-56
	.word	4
	.word	_Label_417
	.word	-60
	.word	4
	.word	_Label_418
	.word	-64
	.word	4
	.word	_Label_419
	.word	-68
	.word	4
	.word	0
_Label_403:
	.ascii	"ProcessFinish\0"
	.align
_Label_404:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_418:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_419:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_206_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_206_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3516:
	push	r0
	sub	r1,1,r1
	bne	_Label_3516
	mov	1012,r13		! source line 1012
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_420 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_420  sizeInBytes=4
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
_RoutineDescriptor__function_206_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_421
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_422
	.word	8
	.word	4
	.word	_Label_423
	.word	-12
	.word	4
	.word	0
_Label_421:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_422:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_420\0"
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
_Label_3517:
	push	r0
	sub	r1,1,r1
	bne	_Label_3517
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
	.word	_Label_424
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_424:
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
_Label_3518:
	push	r0
	sub	r1,1,r1
	bne	_Label_3518
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
!   _temp_428 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_429 = _temp_428 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_427 = *_temp_429  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_427 == 0 then goto _Label_426		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_426
!	jmp	_Label_425
_Label_425:
! THEN...
	mov	1523,r13		! source line 1523
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0SE",r10
!   _temp_431 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_432 = _temp_431 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_430 = *_temp_432  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_430) then goto _runtimeErrorNullPointer
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
_Label_426:
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
	.word	_Label_433
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_434
	.word	-12
	.word	4
	.word	_Label_435
	.word	-16
	.word	4
	.word	_Label_436
	.word	-20
	.word	4
	.word	_Label_437
	.word	-24
	.word	4
	.word	_Label_438
	.word	-28
	.word	4
	.word	_Label_439
	.word	-32
	.word	4
	.word	0
_Label_433:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_427\0"
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
	.word	_Label_440
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_440:
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
_Label_3519:
	push	r0
	sub	r1,1,r1
	bne	_Label_3519
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
!   _temp_441 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1550,r13		! source line 1550
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
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
	.word	_Label_442
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_443
	.word	-12
	.word	4
	.word	0
_Label_442:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_441\0"
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
_Label_3520:
	push	r0
	sub	r1,1,r1
	bne	_Label_3520
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
!   _temp_444 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1562,r13		! source line 1562
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
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
	.word	_Label_445
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_446
	.word	-12
	.word	4
	.word	0
_Label_445:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_444\0"
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
_Label_3521:
	push	r0
	sub	r1,1,r1
	bne	_Label_3521
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
!   _temp_447 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_447  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1574,r13		! source line 1574
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
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
	.word	_Label_448
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_449
	.word	-12
	.word	4
	.word	0
_Label_448:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_447\0"
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
_Label_3522:
	push	r0
	sub	r1,1,r1
	bne	_Label_3522
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
!   _temp_450 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_450  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1586,r13		! source line 1586
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
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
	.word	_Label_451
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_452
	.word	-12
	.word	4
	.word	0
_Label_451:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_450\0"
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
_Label_3523:
	push	r0
	sub	r1,1,r1
	bne	_Label_3523
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
!   _temp_453 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_453  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1598,r13		! source line 1598
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
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
	.word	_Label_454
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_455
	.word	-12
	.word	4
	.word	0
_Label_454:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_453\0"
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
_Label_3524:
	push	r0
	sub	r1,1,r1
	bne	_Label_3524
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
!   _temp_456 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_456  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1610,r13		! source line 1610
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
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
	.word	_Label_457
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_458
	.word	-12
	.word	4
	.word	0
_Label_457:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_456\0"
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
_Label_3525:
	push	r0
	sub	r1,1,r1
	bne	_Label_3525
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
!   _temp_459 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_459  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1622,r13		! source line 1622
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
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
	.word	_Label_460
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_461
	.word	-12
	.word	4
	.word	0
_Label_460:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_205_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_205_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3526:
	push	r0
	sub	r1,1,r1
	bne	_Label_3526
	mov	1627,r13		! source line 1627
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_462 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_462  sizeInBytes=4
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
!   _temp_463 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_463  sizeInBytes=4
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
!   _temp_467 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_466 = *_temp_467  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_466 == 0 then goto _Label_465		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_465
!	jmp	_Label_464
_Label_464:
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
!   _temp_469 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_468 = *_temp_469  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_468) then goto _runtimeErrorNullPointer
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
	jmp	_Label_470
_Label_465:
! ELSE...
	mov	1640,r13		! source line 1640
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_471 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_471  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1640,r13		! source line 1640
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_470:
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
_RoutineDescriptor__function_205_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_472
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_473
	.word	8
	.word	4
	.word	_Label_474
	.word	-12
	.word	4
	.word	_Label_475
	.word	-16
	.word	4
	.word	_Label_476
	.word	-20
	.word	4
	.word	_Label_477
	.word	-24
	.word	4
	.word	_Label_478
	.word	-28
	.word	4
	.word	_Label_479
	.word	-32
	.word	4
	.word	_Label_480
	.word	-36
	.word	4
	.word	0
_Label_472:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_473:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_462\0"
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
_Label_3527:
	push	r0
	sub	r1,1,r1
	bne	_Label_3527
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
	be	_Label_3528
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_481
_Label_3528:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_481
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_481
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_495,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_495:
	jmp	_Label_487	! 1:	
	jmp	_Label_494	! 2:	
	jmp	_Label_484	! 3:	
	jmp	_Label_483	! 4:	
	jmp	_Label_486	! 5:	
	jmp	_Label_485	! 6:	
	jmp	_Label_488	! 7:	
	jmp	_Label_489	! 8:	
	jmp	_Label_490	! 9:	
	jmp	_Label_491	! 10:	
	jmp	_Label_492	! 11:	
	jmp	_Label_493	! 12:	
! CASE 4...
_Label_483:
! RETURN STATEMENT...
	mov	1676,r13		! source line 1676
	mov	"\0\0RE",r10
!   Call the function
	mov	1676,r13		! source line 1676
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_496  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_496  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_484:
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
_Label_485:
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
!   Retrieve Result: targetName=_temp_497  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_497  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_486:
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
!   Retrieve Result: targetName=_temp_498  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_498  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_487:
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
_Label_488:
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
!   Retrieve Result: targetName=_temp_499  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_499  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_489:
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
!   Retrieve Result: targetName=_temp_500  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_500  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_490:
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
!   Retrieve Result: targetName=_temp_501  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_501  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_491:
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
!   Retrieve Result: targetName=_temp_502  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_502  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_492:
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
!   Retrieve Result: targetName=_temp_503  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_503  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_493:
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
_Label_494:
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
_Label_481:
! CALL STATEMENT...
!   _temp_504 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_504  sizeInBytes=4
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
!   _temp_505 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
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
_Label_482:
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
	.word	_Label_506
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_507
	.word	8
	.word	4
	.word	_Label_508
	.word	12
	.word	4
	.word	_Label_509
	.word	16
	.word	4
	.word	_Label_510
	.word	20
	.word	4
	.word	_Label_511
	.word	24
	.word	4
	.word	_Label_512
	.word	-12
	.word	4
	.word	_Label_513
	.word	-16
	.word	4
	.word	_Label_514
	.word	-20
	.word	4
	.word	_Label_515
	.word	-24
	.word	4
	.word	_Label_516
	.word	-28
	.word	4
	.word	_Label_517
	.word	-32
	.word	4
	.word	_Label_518
	.word	-36
	.word	4
	.word	_Label_519
	.word	-40
	.word	4
	.word	_Label_520
	.word	-44
	.word	4
	.word	_Label_521
	.word	-48
	.word	4
	.word	0
_Label_506:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_507:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_508:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_509:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_510:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_511:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_496\0"
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
_Label_3529:
	push	r0
	sub	r1,1,r1
	bne	_Label_3529
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
	.word	_Label_522
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_523
	.word	8
	.word	4
	.word	0
_Label_522:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_523:
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
_Label_3530:
	push	r0
	sub	r1,1,r1
	bne	_Label_3530
	mov	1720,r13		! source line 1720
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_524 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_524  sizeInBytes=4
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
	.word	_Label_525
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_526
	.word	-12
	.word	4
	.word	0
_Label_525:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_524\0"
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
_Label_3531:
	push	r0
	sub	r1,1,r1
	bne	_Label_3531
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
	.word	_Label_527
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_527:
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
_Label_3532:
	push	r0
	sub	r1,1,r1
	bne	_Label_3532
	mov	1732,r13		! source line 1732
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0AS",r10
	mov	1739,r13		! source line 1739
	mov	"\0\0SE",r10
!   _temp_528 = &_P_Kernel_processManager
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
!   _temp_529 = &_P_Kernel_threadManager
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
!   _temp_530 = childPCB + 24
	load	[r14+-172],r1
	add	r1,24,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_530 = childThread  (sizeInBytes=4)
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
!   _temp_531 = childPCB + 16
	load	[r14+-172],r1
	add	r1,16,r1
	store	r1,[r14+-156]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_534 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-144]
!   Data Move: _temp_533 = *_temp_534  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_533) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_535 = _temp_533 + 12
	load	[r14+-148],r1
	add	r1,12,r1
	store	r1,[r14+-140]
!   Data Move: _temp_532 = *_temp_535  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   Data Move: *_temp_531 = _temp_532  (sizeInBytes=4)
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
!   _temp_536 = childThread + 68
	load	[r14+-176],r1
	add	r1,68,r1
	store	r1,[r14+-136]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_538 = childThread + 88
	load	[r14+-176],r1
	add	r1,88,r1
	store	r1,[r14+-128]
!   Move address of _temp_538 [999 ] into _temp_539
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
!   _temp_537 = _temp_539		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-132]
!   Data Move: *_temp_536 = _temp_537  (sizeInBytes=4)
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
!   _temp_540 = childThread + 4160
	load	[r14+-176],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: *_temp_540 = childPCB  (sizeInBytes=4)
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
!   _temp_541 = childThread + 76
	load	[r14+-176],r1
	add	r1,76,r1
	store	r1,[r14+-116]
!   Data Move: *_temp_541 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-116],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_543 = childThread + 4096
	load	[r14+-176],r1
	add	r1,4096,r1
	store	r1,[r14+-108]
!   Move address of _temp_543 [0 ] into _temp_544
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
!   _temp_542 = _temp_544		(4 bytes)
	load	[r14+-104],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_542  sizeInBytes=4
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
!   _temp_546 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_545 = *_temp_546  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_545) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_547 = _temp_545 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   _temp_548 = _temp_547 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Data Move: tmp = *_temp_548  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-180]
! IF STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0IF",r10
!   if tmp <= 0 then goto _Label_550		(int)
	load	[r14+-180],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_550
!	jmp	_Label_549
_Label_549:
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
!   _temp_552 = childPCB + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_551 = _temp_552		(4 bytes)
	load	[r14+-80],r1
	store	r1,[r14+-84]
!   _temp_553 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_551  sizeInBytes=4
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
!   _temp_558 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_559 = tmp - 1		(int)
	load	[r14+-180],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_558  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-184]
_Label_554:
!   Perform the FOR-LOOP termination test
!   if i > _temp_559 then goto _Label_557		
	load	[r14+-184],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_557
_Label_555:
	mov	1751,r13		! source line 1751
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_561 = childPCB + 32
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
!   Retrieve Result: targetName=_temp_560  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
	mov	1753,r13		! source line 1753
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_564 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_563 = *_temp_564  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_563) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_565 = _temp_563 + 32
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
!   Retrieve Result: targetName=_temp_562  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_560  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_562  sizeInBytes=4
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
!   _temp_569 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_568 = *_temp_569  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_568) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_570 = _temp_568 + 32
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
!   if result==true then goto _Label_566 else goto _Label_567
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_567
	jmp	_Label_566
_Label_566:
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
!   _temp_571 = childPCB + 32
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
	jmp	_Label_572
_Label_567:
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
!   _temp_573 = childPCB + 32
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
_Label_572:
!   Increment the FOR-LOOP index variable and jump back
_Label_556:
!   i = i + 1
	load	[r14+-184],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
	jmp	_Label_554
! END FOR
_Label_557:
! END IF...
_Label_550:
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
!   _temp_574 = _function_204_ResumeChildAfterFork
	set	_function_204_ResumeChildAfterFork,r1
	store	r1,[r14+-20]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_574  sizeInBytes=4
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
!   _temp_576 = childPCB + 12
	load	[r14+-172],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_575 = *_temp_576  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_575  (sizeInBytes=4)
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
	.word	_Label_577
	.word	0		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_578
	.word	-12
	.word	4
	.word	_Label_579
	.word	-16
	.word	4
	.word	_Label_580
	.word	-20
	.word	4
	.word	_Label_581
	.word	-24
	.word	4
	.word	_Label_582
	.word	-28
	.word	4
	.word	_Label_583
	.word	-32
	.word	4
	.word	_Label_584
	.word	-36
	.word	4
	.word	_Label_585
	.word	-40
	.word	4
	.word	_Label_586
	.word	-44
	.word	4
	.word	_Label_587
	.word	-48
	.word	4
	.word	_Label_588
	.word	-52
	.word	4
	.word	_Label_589
	.word	-56
	.word	4
	.word	_Label_590
	.word	-60
	.word	4
	.word	_Label_591
	.word	-64
	.word	4
	.word	_Label_592
	.word	-68
	.word	4
	.word	_Label_593
	.word	-72
	.word	4
	.word	_Label_594
	.word	-76
	.word	4
	.word	_Label_595
	.word	-80
	.word	4
	.word	_Label_596
	.word	-84
	.word	4
	.word	_Label_597
	.word	-88
	.word	4
	.word	_Label_598
	.word	-92
	.word	4
	.word	_Label_599
	.word	-96
	.word	4
	.word	_Label_600
	.word	-100
	.word	4
	.word	_Label_601
	.word	-104
	.word	4
	.word	_Label_602
	.word	-108
	.word	4
	.word	_Label_603
	.word	-112
	.word	4
	.word	_Label_604
	.word	-116
	.word	4
	.word	_Label_605
	.word	-120
	.word	4
	.word	_Label_606
	.word	-124
	.word	4
	.word	_Label_607
	.word	-128
	.word	4
	.word	_Label_608
	.word	-132
	.word	4
	.word	_Label_609
	.word	-136
	.word	4
	.word	_Label_610
	.word	-140
	.word	4
	.word	_Label_611
	.word	-144
	.word	4
	.word	_Label_612
	.word	-148
	.word	4
	.word	_Label_613
	.word	-152
	.word	4
	.word	_Label_614
	.word	-156
	.word	4
	.word	_Label_615
	.word	-160
	.word	4
	.word	_Label_616
	.word	-164
	.word	4
	.word	_Label_617
	.word	-168
	.word	4
	.word	_Label_618
	.word	-172
	.word	4
	.word	_Label_619
	.word	-176
	.word	4
	.word	_Label_620
	.word	-180
	.word	4
	.word	_Label_621
	.word	-184
	.word	4
	.word	_Label_622
	.word	-188
	.word	4
	.word	_Label_623
	.word	-192
	.word	4
	.word	0
_Label_577:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_618:
	.byte	'P'
	.ascii	"childPCB\0"
	.align
_Label_619:
	.byte	'P'
	.ascii	"childThread\0"
	.align
_Label_620:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_621:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_622:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_623:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_204_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_204_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_3533:
	push	r0
	sub	r1,1,r1
	bne	_Label_3533
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
!   _temp_625 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_624 = *_temp_625  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_624) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_626 = _temp_624 + 32
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
!   _temp_628 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_628 [0 ] into _temp_629
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
!   _temp_627 = _temp_629		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_627  sizeInBytes=4
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
!   _temp_630 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_630 = 1  (sizeInBytes=1)
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
!   _temp_631 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_631 [14 ] into _temp_632
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
!   Data Move: initUserStackTop = *_temp_632  (sizeInBytes=4)
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
!   _temp_633 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_633 [999 ] into _temp_634
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
!   initSystemStackTop = _temp_634		(4 bytes)
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
_RoutineDescriptor__function_204_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_635
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_636
	.word	8
	.word	4
	.word	_Label_637
	.word	-12
	.word	4
	.word	_Label_638
	.word	-16
	.word	4
	.word	_Label_639
	.word	-20
	.word	4
	.word	_Label_640
	.word	-24
	.word	4
	.word	_Label_641
	.word	-28
	.word	4
	.word	_Label_642
	.word	-32
	.word	4
	.word	_Label_643
	.word	-36
	.word	4
	.word	_Label_644
	.word	-40
	.word	4
	.word	_Label_645
	.word	-44
	.word	4
	.word	_Label_646
	.word	-48
	.word	4
	.word	_Label_647
	.word	-52
	.word	4
	.word	_Label_648
	.word	-56
	.word	4
	.word	_Label_649
	.word	-60
	.word	4
	.word	_Label_650
	.word	-64
	.word	4
	.word	0
_Label_635:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_636:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_630\0"
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
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_648:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_649:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_650:
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
_Label_3534:
	push	r0
	sub	r1,1,r1
	bne	_Label_3534
	mov	1783,r13		! source line 1783
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_655 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_656 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_655  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_651:
!   Perform the FOR-LOOP termination test
!   if i > _temp_656 then goto _Label_654		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_654
_Label_652:
	mov	1787,r13		! source line 1787
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0IF",r10
!   _temp_662 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_663 = _temp_662 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_663 [i ] into _temp_664
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
!   _temp_665 = _temp_664 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_661 = *_temp_665  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_661 != processID then goto _Label_658		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_658
!	jmp	_Label_660
_Label_660:
!   _temp_667 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_668 = _temp_667 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_668 [i ] into _temp_669
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
!   _temp_670 = _temp_669 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_666 = *_temp_670  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_673 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_672 = *_temp_673  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_672) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_674 = _temp_672 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_671 = *_temp_674  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_666 != _temp_671 then goto _Label_658		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_658
!	jmp	_Label_659
_Label_659:
!   _temp_676 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_677 = _temp_676 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_677 [i ] into _temp_678
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
!   _temp_679 = _temp_678 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_675 = *_temp_679  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_675 == 3 then goto _Label_658		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_658
!	jmp	_Label_657
_Label_657:
! THEN...
	mov	1789,r13		! source line 1789
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0AS",r10
	mov	1789,r13		! source line 1789
	mov	"\0\0SE",r10
!   _temp_681 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_682 = _temp_681 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_682 [i ] into _temp_683
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
!   _temp_680 = _temp_683		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_684 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_680  sizeInBytes=4
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
_Label_658:
!   Increment the FOR-LOOP index variable and jump back
_Label_653:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_651
! END FOR
_Label_654:
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
	.word	_Label_685
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_686
	.word	8
	.word	4
	.word	_Label_687
	.word	-12
	.word	4
	.word	_Label_688
	.word	-16
	.word	4
	.word	_Label_689
	.word	-20
	.word	4
	.word	_Label_690
	.word	-24
	.word	4
	.word	_Label_691
	.word	-28
	.word	4
	.word	_Label_692
	.word	-32
	.word	4
	.word	_Label_693
	.word	-36
	.word	4
	.word	_Label_694
	.word	-40
	.word	4
	.word	_Label_695
	.word	-44
	.word	4
	.word	_Label_696
	.word	-48
	.word	4
	.word	_Label_697
	.word	-52
	.word	4
	.word	_Label_698
	.word	-56
	.word	4
	.word	_Label_699
	.word	-60
	.word	4
	.word	_Label_700
	.word	-64
	.word	4
	.word	_Label_701
	.word	-68
	.word	4
	.word	_Label_702
	.word	-72
	.word	4
	.word	_Label_703
	.word	-76
	.word	4
	.word	_Label_704
	.word	-80
	.word	4
	.word	_Label_705
	.word	-84
	.word	4
	.word	_Label_706
	.word	-88
	.word	4
	.word	_Label_707
	.word	-92
	.word	4
	.word	_Label_708
	.word	-96
	.word	4
	.word	_Label_709
	.word	-100
	.word	4
	.word	_Label_710
	.word	-104
	.word	4
	.word	_Label_711
	.word	-108
	.word	4
	.word	_Label_712
	.word	-112
	.word	4
	.word	_Label_713
	.word	-116
	.word	4
	.word	_Label_714
	.word	-120
	.word	4
	.word	0
_Label_685:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_686:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_713:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_714:
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
_Label_3535:
	push	r0
	sub	r1,1,r1
	bne	_Label_3535
	mov	1799,r13		! source line 1799
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-264,r4
	mov	23,r3
_Label_3536:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3536
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
!   _temp_716 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_716  sizeInBytes=4
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
!   _temp_717 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-120]
!   _temp_718 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_720 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_719 = *_temp_720  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_719) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_721 = _temp_719 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_717  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_718  sizeInBytes=4
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
!   if tmp >= 0 then goto _Label_723		(int)
	load	[r14+-268],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_723
!	jmp	_Label_722
_Label_722:
! THEN...
	mov	1812,r13		! source line 1812
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_724 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_724  sizeInBytes=4
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
_Label_723:
! ASSIGNMENT STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0AS",r10
	mov	1815,r13		! source line 1815
	mov	"\0\0SE",r10
!   _temp_725 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-96]
!   _temp_726 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_725  sizeInBytes=4
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
!   if fp == 0 then goto _Label_728		(int)
	load	[r14+-132],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_728
!	jmp	_Label_727
_Label_727:
! THEN...
	mov	1817,r13		! source line 1817
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0SE",r10
!   _temp_729 = &newAddrSpace
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
!   _temp_730 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-84]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_730  sizeInBytes=4
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
!   _temp_731 = &_P_Kernel_fileManager
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
!   _temp_734 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_733 = *_temp_734  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_733) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_735 = _temp_733 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   _temp_732 = _temp_735		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-76]
!   _temp_736 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_732  sizeInBytes=4
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
!   _temp_738 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_737 = *_temp_738  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_737) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_739 = _temp_737 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_739 = newAddrSpace  (sizeInBytes=92)
	add	r14,-264,r5
	load	[r14+-48],r4
	mov	23,r3
_Label_3537:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3537
! ASSIGNMENT STATEMENT...
	mov	1822,r13		! source line 1822
	mov	"\0\0AS",r10
!   _temp_741 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-40]
!   _temp_742 = _temp_741 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_740 = *_temp_742  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initUserStackTop = _temp_740 * 8192		(int)
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
!   _temp_743 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_743 [999 ] into _temp_744
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
!   initSystemStackTop = _temp_744		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-144]
! SEND STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0SE",r10
!   _temp_745 = &newAddrSpace
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
!   _temp_746 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_746 = 1  (sizeInBytes=1)
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
	jmp	_Label_747
_Label_728:
! ELSE...
	mov	1828,r13		! source line 1828
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_748 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_748  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_749 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
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
_Label_747:
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
	.word	_Label_750
	.word	4		! total size of parameters
	.word	276		! frame size = 276
	.word	_Label_751
	.word	8
	.word	4
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
	.word	-172
	.word	24
	.word	_Label_788
	.word	-264
	.word	92
	.word	_Label_789
	.word	-268
	.word	4
	.word	0
_Label_750:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_751:
	.byte	'P'
	.ascii	"filename\0"
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
	.ascii	"_temp_746\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_782:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_783:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_784:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_785:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_786:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_787:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_788:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_789:
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
_Label_3538:
	push	r0
	sub	r1,1,r1
	bne	_Label_3538
	mov	1838,r13		! source line 1838
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0AS",r10
	mov	1841,r13		! source line 1841
	mov	"\0\0SE",r10
!   _temp_790 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_791 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_793 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_792 = *_temp_793  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_792) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_794 = _temp_792 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_790  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_791  sizeInBytes=4
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
!   _temp_795 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_795  sizeInBytes=4
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
!   _temp_796 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_796  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1844,r13		! source line 1844
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_797 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_797  sizeInBytes=4
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
	.word	_Label_798
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_799
	.word	8
	.word	4
	.word	_Label_800
	.word	-12
	.word	4
	.word	_Label_801
	.word	-16
	.word	4
	.word	_Label_802
	.word	-20
	.word	4
	.word	_Label_803
	.word	-24
	.word	4
	.word	_Label_804
	.word	-28
	.word	4
	.word	_Label_805
	.word	-32
	.word	4
	.word	_Label_806
	.word	-36
	.word	4
	.word	_Label_807
	.word	-40
	.word	4
	.word	_Label_808
	.word	-64
	.word	24
	.word	_Label_809
	.word	-68
	.word	4
	.word	0
_Label_798:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_799:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_808:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_809:
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
_Label_3539:
	push	r0
	sub	r1,1,r1
	bne	_Label_3539
	mov	1852,r13		! source line 1852
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0AS",r10
	mov	1859,r13		! source line 1859
	mov	"\0\0SE",r10
!   _temp_810 = &kernelFileName
	add	r14,-112,r1
	store	r1,[r14+-88]
!   _temp_811 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_813 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_812 = *_temp_813  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_812) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_814 = _temp_812 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_810  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_811  sizeInBytes=4
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
!   if tmp >= 0 then goto _Label_816		(int)
	load	[r14+-116],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_816
!	jmp	_Label_815
_Label_815:
! THEN...
	mov	1861,r13		! source line 1861
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_817 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_817  sizeInBytes=4
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
_Label_816:
! FOR STATEMENT...
	mov	1866,r13		! source line 1866
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_822 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_823 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_822  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-120]
_Label_818:
!   Perform the FOR-LOOP termination test
!   if i > _temp_823 then goto _Label_821		
	load	[r14+-120],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_821
_Label_819:
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
!   _temp_828 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_827 = *_temp_828  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_827) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_829 = _temp_827 + 124
	load	[r14+-52],r1
	add	r1,124,r1
	store	r1,[r14+-44]
!   Move address of _temp_829 [i ] into _temp_830
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
!   Data Move: _temp_826 = *_temp_830  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_826) then goto _Label_824
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_824
	jmp	_Label_825
_Label_824:
! THEN...
	mov	1868,r13		! source line 1868
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1868,r13		! source line 1868
	mov	"\0\0BR",r10
	jmp	_Label_821
	jmp	_Label_831
_Label_825:
! ELSE...
	mov	1869,r13		! source line 1869
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1869,r13		! source line 1869
	mov	"\0\0IF",r10
!   if i != 9 then goto _Label_833		(int)
	load	[r14+-120],r1
	mov	9,r2
	cmp	r1,r2
	bne	_Label_833
!	jmp	_Label_832
_Label_832:
! THEN...
	mov	1870,r13		! source line 1870
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_834 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_834  sizeInBytes=4
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
_Label_833:
! END IF...
_Label_831:
!   Increment the FOR-LOOP index variable and jump back
_Label_820:
!   i = i + 1
	load	[r14+-120],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
	jmp	_Label_818
! END FOR
_Label_821:
! ASSIGNMENT STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0AS",r10
	mov	1876,r13		! source line 1876
	mov	"\0\0SE",r10
!   _temp_835 = &kernelFileName
	add	r14,-112,r1
	store	r1,[r14+-32]
!   _temp_836 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_835  sizeInBytes=4
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
!   if intIsZero (fp) then goto _Label_837
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_837
	jmp	_Label_838
_Label_837:
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
_Label_838:
! ASSIGNMENT STATEMENT...
	mov	1881,r13		! source line 1881
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_840 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_839 = *_temp_840  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_839) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_841 = _temp_839 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_841 [i ] into _temp_842
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
!   Data Move: *_temp_842 = fp  (sizeInBytes=4)
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
	.word	_Label_843
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_844
	.word	8
	.word	4
	.word	_Label_845
	.word	-12
	.word	4
	.word	_Label_846
	.word	-16
	.word	4
	.word	_Label_847
	.word	-20
	.word	4
	.word	_Label_848
	.word	-24
	.word	4
	.word	_Label_849
	.word	-28
	.word	4
	.word	_Label_850
	.word	-32
	.word	4
	.word	_Label_851
	.word	-36
	.word	4
	.word	_Label_852
	.word	-40
	.word	4
	.word	_Label_853
	.word	-44
	.word	4
	.word	_Label_854
	.word	-48
	.word	4
	.word	_Label_855
	.word	-52
	.word	4
	.word	_Label_856
	.word	-56
	.word	4
	.word	_Label_857
	.word	-60
	.word	4
	.word	_Label_858
	.word	-64
	.word	4
	.word	_Label_859
	.word	-68
	.word	4
	.word	_Label_860
	.word	-72
	.word	4
	.word	_Label_861
	.word	-76
	.word	4
	.word	_Label_862
	.word	-80
	.word	4
	.word	_Label_863
	.word	-84
	.word	4
	.word	_Label_864
	.word	-88
	.word	4
	.word	_Label_865
	.word	-112
	.word	24
	.word	_Label_866
	.word	-116
	.word	4
	.word	_Label_867
	.word	-120
	.word	4
	.word	_Label_868
	.word	-124
	.word	4
	.word	0
_Label_843:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_844:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_865:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_866:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_867:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_868:
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
	mov	72,r1
_Label_3540:
	push	r0
	sub	r1,1,r1
	bne	_Label_3540
	mov	1888,r13		! source line 1888
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! sizeOfFile
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_872 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-204]
!   Data Move: _temp_871 = *_temp_872  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if intIsZero (_temp_871) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_873 = _temp_871 + 124
	load	[r14+-208],r1
	add	r1,124,r1
	store	r1,[r14+-200]
!   Move address of _temp_873 [fileDesc ] into _temp_874
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-200],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-196]
!   Data Move: _temp_870 = *_temp_874  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   if intIsZero (_temp_870) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_875 = _temp_870 + 20
	load	[r14+-212],r1
	add	r1,20,r1
	store	r1,[r14+-192]
!   Data Move: _temp_869 = *_temp_875  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-216]
!   if intIsZero (_temp_869) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_876 = _temp_869 + 24
	load	[r14+-216],r1
	add	r1,24,r1
	store	r1,[r14+-188]
!   Data Move: sizeOfFile = *_temp_876  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0AS",r10
	mov	1902,r13		! source line 1902
	mov	"\0\0SE",r10
!   _temp_877 = &kernelFileName
	add	r14,-240,r1
	store	r1,[r14+-184]
!   _temp_878 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-180]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_880 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_879 = *_temp_880  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_879) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_881 = _temp_879 + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=_temp_877  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_878  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! IF STATEMENT...
	mov	1903,r13		! source line 1903
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_883		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_883
!	jmp	_Label_882
_Label_882:
! THEN...
	mov	1904,r13		! source line 1904
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_884 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_884  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1904,r13		! source line 1904
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1905,r13		! source line 1905
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1906,r13		! source line 1906
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,292,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_883:
! IF STATEMENT...
	mov	1908,r13		! source line 1908
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_886		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_886
!	jmp	_Label_885
_Label_885:
! THEN...
	mov	1909,r13		! source line 1909
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_887 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_887  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1909,r13		! source line 1909
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1910,r13		! source line 1910
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1911,r13		! source line 1911
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,292,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_886:
! ASSIGNMENT STATEMENT...
	mov	1913,r13		! source line 1913
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	1914,r13		! source line 1914
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-248],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-248],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0AS",r10
!   nextPosInFile = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
! WHILE STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0WH",r10
_Label_888:
!	jmp	_Label_889
_Label_889:
	mov	1919,r13		! source line 1919
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-256],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0IF",r10
!   _temp_893 = nextPosInFile + chunkSize		(int)
	load	[r14+-264],r1
	load	[r14+-260],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   if _temp_893 <= sizeOfFile then goto _Label_892		(int)
	load	[r14+-156],r1
	load	[r14+-276],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_892
!	jmp	_Label_891
_Label_891:
! THEN...
	mov	1923,r13		! source line 1923
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0AS",r10
!   chunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-276],r1
	load	[r14+-264],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! END IF...
_Label_892:
! IF STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0IF",r10
!   _temp_896 = copiedSoFar + chunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-260],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if _temp_896 <= sizeInBytes then goto _Label_895		(int)
	load	[r14+-152],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_895
!	jmp	_Label_894
_Label_894:
! THEN...
	mov	1926,r13		! source line 1926
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1926,r13		! source line 1926
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! END IF...
_Label_895:
! IF STATEMENT...
	mov	1928,r13		! source line 1928
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_898		(int)
	load	[r14+-260],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_898
!	jmp	_Label_897
_Label_897:
! THEN...
	mov	1929,r13		! source line 1929
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1929,r13		! source line 1929
	mov	"\0\0BR",r10
	jmp	_Label_890
! END IF...
_Label_898:
! IF STATEMENT...
	mov	1933,r13		! source line 1933
	mov	"\0\0IF",r10
!   if virtAddr >= 0 then goto _Label_903		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_903
	jmp	_Label_899
_Label_903:
!   if virtPage < 20 then goto _Label_902		(int)
	load	[r14+-252],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_902
	jmp	_Label_899
_Label_902:
	mov	1933,r13		! source line 1933
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_906 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-144]
!   Data Move: _temp_905 = *_temp_906  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_905) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_907 = _temp_905 + 32
	load	[r14+-148],r1
	add	r1,32,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-140],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_904  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_904 then goto _Label_901 else goto _Label_899
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_899
	jmp	_Label_901
_Label_901:
	mov	1933,r13		! source line 1933
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_910 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-132]
!   Data Move: _temp_909 = *_temp_910  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_909) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_911 = _temp_909 + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_908  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_908 then goto _Label_900 else goto _Label_899
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_899
	jmp	_Label_900
_Label_899:
! THEN...
	mov	1934,r13		! source line 1934
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_912 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_912  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	1934,r13		! source line 1934
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1935,r13		! source line 1935
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,292,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_900:
! ASSIGNMENT STATEMENT...
	mov	1938,r13		! source line 1938
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-264],r1
	load	[r14+-260],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	1939,r13		! source line 1939
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-260],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-252],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	1941,r13		! source line 1941
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_914		(int)
	load	[r14+-268],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_914
!	jmp	_Label_913
_Label_913:
! THEN...
	mov	1944,r13		! source line 1944
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0BR",r10
	jmp	_Label_890
! END IF...
_Label_914:
! END WHILE...
	jmp	_Label_888
_Label_890:
! ASSIGNMENT STATEMENT...
	mov	1948,r13		! source line 1948
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-248],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	1950,r13		! source line 1950
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-248],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	1952,r13		! source line 1952
	mov	"\0\0AS",r10
!   nextPosInFile = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
! WHILE STATEMENT...
	mov	1954,r13		! source line 1954
	mov	"\0\0WH",r10
_Label_915:
!	jmp	_Label_916
_Label_916:
	mov	1954,r13		! source line 1954
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-256],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	1957,r13		! source line 1957
	mov	"\0\0IF",r10
!   _temp_920 = nextPosInFile + chunkSize		(int)
	load	[r14+-264],r1
	load	[r14+-260],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_920 <= sizeOfFile then goto _Label_919		(int)
	load	[r14+-120],r1
	load	[r14+-276],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_919
!	jmp	_Label_918
_Label_918:
! THEN...
	mov	1958,r13		! source line 1958
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0AS",r10
!   chunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-276],r1
	load	[r14+-264],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! END IF...
_Label_919:
! IF STATEMENT...
	mov	1960,r13		! source line 1960
	mov	"\0\0IF",r10
!   _temp_923 = copiedSoFar + chunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-260],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_923 <= sizeInBytes then goto _Label_922		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_922
!	jmp	_Label_921
_Label_921:
! THEN...
	mov	1961,r13		! source line 1961
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! END IF...
_Label_922:
! IF STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_925		(int)
	load	[r14+-260],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_925
!	jmp	_Label_924
_Label_924:
! THEN...
	mov	1964,r13		! source line 1964
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0BR",r10
	jmp	_Label_917
! END IF...
_Label_925:
! IF STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0IF",r10
!   if virtAddr >= 0 then goto _Label_930		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_930
	jmp	_Label_926
_Label_930:
!   if virtPage < 20 then goto _Label_929		(int)
	load	[r14+-252],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_929
	jmp	_Label_926
_Label_929:
	mov	1968,r13		! source line 1968
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
	store	r1,[r14+-108]
!   Data Move: _temp_932 = *_temp_933  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_932) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_934 = _temp_932 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_931  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_931 then goto _Label_928 else goto _Label_926
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_926
	jmp	_Label_928
_Label_928:
	mov	1968,r13		! source line 1968
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
	store	r1,[r14+-96]
!   Data Move: _temp_936 = *_temp_937  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_936) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_938 = _temp_936 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_935  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_935 then goto _Label_927 else goto _Label_926
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_926
	jmp	_Label_927
_Label_926:
! THEN...
	mov	1969,r13		! source line 1969
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_939 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_939  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	1969,r13		! source line 1969
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1970,r13		! source line 1970
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,292,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_927:
! SEND STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_941 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_940 = *_temp_941  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_940) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_942 = _temp_940 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_944 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_943 = *_temp_944  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_943) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_945 = _temp_943 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0AS",r10
	mov	1976,r13		! source line 1976
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_948 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_947 = *_temp_948  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_947) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_949 = _temp_947 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_946  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   destAddr = _temp_946 + offset		(int)
	load	[r14+-60],r1
	load	[r14+-256],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0AS",r10
	mov	1977,r13		! source line 1977
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_952 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_951 = *_temp_952  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_951) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_953 = _temp_951 + 124
	load	[r14+-40],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_953 [fileDesc ] into _temp_954
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_950 = *_temp_954  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_955 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_950  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=chunkSize  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-24],r1
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
	mov	1978,r13		! source line 1978
	mov	"\0\0IF",r10
!   if readStat then goto _Label_957 else goto _Label_956
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_956
	jmp	_Label_957
_Label_956:
! THEN...
	mov	1979,r13		! source line 1979
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_958 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_958  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1979,r13		! source line 1979
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1980,r13		! source line 1980
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,292,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_957:
! ASSIGNMENT STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-264],r1
	load	[r14+-260],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-260],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-252],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	1989,r13		! source line 1989
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_960		(int)
	load	[r14+-268],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_960
!	jmp	_Label_959
_Label_959:
! THEN...
	mov	1990,r13		! source line 1990
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0BR",r10
	jmp	_Label_917
! END IF...
_Label_960:
! END WHILE...
	jmp	_Label_915
_Label_917:
! RETURN STATEMENT...
	mov	1994,r13		! source line 1994
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,292,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_961
	.word	12		! total size of parameters
	.word	288		! frame size = 288
	.word	_Label_962
	.word	8
	.word	4
	.word	_Label_963
	.word	12
	.word	4
	.word	_Label_964
	.word	16
	.word	4
	.word	_Label_965
	.word	-20
	.word	4
	.word	_Label_966
	.word	-24
	.word	4
	.word	_Label_967
	.word	-28
	.word	4
	.word	_Label_968
	.word	-32
	.word	4
	.word	_Label_969
	.word	-36
	.word	4
	.word	_Label_970
	.word	-40
	.word	4
	.word	_Label_971
	.word	-44
	.word	4
	.word	_Label_972
	.word	-48
	.word	4
	.word	_Label_973
	.word	-52
	.word	4
	.word	_Label_974
	.word	-56
	.word	4
	.word	_Label_975
	.word	-60
	.word	4
	.word	_Label_976
	.word	-64
	.word	4
	.word	_Label_977
	.word	-68
	.word	4
	.word	_Label_978
	.word	-72
	.word	4
	.word	_Label_979
	.word	-76
	.word	4
	.word	_Label_980
	.word	-80
	.word	4
	.word	_Label_981
	.word	-84
	.word	4
	.word	_Label_982
	.word	-88
	.word	4
	.word	_Label_983
	.word	-92
	.word	4
	.word	_Label_984
	.word	-96
	.word	4
	.word	_Label_985
	.word	-100
	.word	4
	.word	_Label_986
	.word	-9
	.word	1
	.word	_Label_987
	.word	-104
	.word	4
	.word	_Label_988
	.word	-108
	.word	4
	.word	_Label_989
	.word	-112
	.word	4
	.word	_Label_990
	.word	-10
	.word	1
	.word	_Label_991
	.word	-116
	.word	4
	.word	_Label_992
	.word	-120
	.word	4
	.word	_Label_993
	.word	-124
	.word	4
	.word	_Label_994
	.word	-128
	.word	4
	.word	_Label_995
	.word	-132
	.word	4
	.word	_Label_996
	.word	-136
	.word	4
	.word	_Label_997
	.word	-11
	.word	1
	.word	_Label_998
	.word	-140
	.word	4
	.word	_Label_999
	.word	-144
	.word	4
	.word	_Label_1000
	.word	-148
	.word	4
	.word	_Label_1001
	.word	-12
	.word	1
	.word	_Label_1002
	.word	-152
	.word	4
	.word	_Label_1003
	.word	-156
	.word	4
	.word	_Label_1004
	.word	-160
	.word	4
	.word	_Label_1005
	.word	-164
	.word	4
	.word	_Label_1006
	.word	-168
	.word	4
	.word	_Label_1007
	.word	-172
	.word	4
	.word	_Label_1008
	.word	-176
	.word	4
	.word	_Label_1009
	.word	-180
	.word	4
	.word	_Label_1010
	.word	-184
	.word	4
	.word	_Label_1011
	.word	-188
	.word	4
	.word	_Label_1012
	.word	-192
	.word	4
	.word	_Label_1013
	.word	-196
	.word	4
	.word	_Label_1014
	.word	-200
	.word	4
	.word	_Label_1015
	.word	-204
	.word	4
	.word	_Label_1016
	.word	-208
	.word	4
	.word	_Label_1017
	.word	-212
	.word	4
	.word	_Label_1018
	.word	-216
	.word	4
	.word	_Label_1019
	.word	-240
	.word	24
	.word	_Label_1020
	.word	-244
	.word	4
	.word	_Label_1021
	.word	-248
	.word	4
	.word	_Label_1022
	.word	-252
	.word	4
	.word	_Label_1023
	.word	-256
	.word	4
	.word	_Label_1024
	.word	-260
	.word	4
	.word	_Label_1025
	.word	-264
	.word	4
	.word	_Label_1026
	.word	-268
	.word	4
	.word	_Label_1027
	.word	-272
	.word	4
	.word	_Label_1028
	.word	-13
	.word	1
	.word	_Label_1029
	.word	-276
	.word	4
	.word	0
_Label_961:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_962:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_963:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_964:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_986:
	.byte	'C'
	.ascii	"_temp_935\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_990:
	.byte	'C'
	.ascii	"_temp_931\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_997:
	.byte	'C'
	.ascii	"_temp_908\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_1001:
	.byte	'C'
	.ascii	"_temp_904\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_1019:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_1020:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_1021:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1022:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1023:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1024:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1025:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1026:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1027:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1028:
	.byte	'B'
	.ascii	"readStat\0"
	.align
_Label_1029:
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
	mov	19,r1
_Label_3541:
	push	r0
	sub	r1,1,r1
	bne	_Label_3541
	mov	1999,r13		! source line 1999
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2003,r13		! source line 2003
	mov	"\0\0AS",r10
	mov	2003,r13		! source line 2003
	mov	"\0\0SE",r10
!   _temp_1030 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_1031 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1033 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1032 = *_temp_1033  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1032) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1034 = _temp_1032 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1030  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1031  sizeInBytes=4
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
!   _temp_1035 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1035  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2004,r13		! source line 2004
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2005,r13		! source line 2005
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1036 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2006,r13		! source line 2006
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1037 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1037  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2007,r13		! source line 2007
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2008,r13		! source line 2008
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2009,r13		! source line 2009
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
	.word	_Label_1038
	.word	12		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1039
	.word	8
	.word	4
	.word	_Label_1040
	.word	12
	.word	4
	.word	_Label_1041
	.word	16
	.word	4
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
	.word	-64
	.word	24
	.word	_Label_1051
	.word	-68
	.word	4
	.word	0
_Label_1038:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1039:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1040:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1041:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1050:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_1051:
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
_Label_3542:
	push	r0
	sub	r1,1,r1
	bne	_Label_3542
	mov	2014,r13		! source line 2014
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1052 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1052  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2016,r13		! source line 2016
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2017,r13		! source line 2017
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1053 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1053  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2018,r13		! source line 2018
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2019,r13		! source line 2019
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2020,r13		! source line 2020
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1054 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1054  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2021,r13		! source line 2021
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2022,r13		! source line 2022
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2023,r13		! source line 2023
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2024,r13		! source line 2024
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
	.word	_Label_1055
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1056
	.word	8
	.word	4
	.word	_Label_1057
	.word	12
	.word	4
	.word	_Label_1058
	.word	-12
	.word	4
	.word	_Label_1059
	.word	-16
	.word	4
	.word	_Label_1060
	.word	-20
	.word	4
	.word	0
_Label_1055:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1056:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1057:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1052\0"
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
_Label_3543:
	push	r0
	sub	r1,1,r1
	bne	_Label_3543
	mov	2029,r13		! source line 2029
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1061 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1061  sizeInBytes=4
	load	[r14+-16],r1
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
! CALL STATEMENT...
!   _temp_1062 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1062  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2033,r13		! source line 2033
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2034,r13		! source line 2034
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2035,r13		! source line 2035
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2035,r13		! source line 2035
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
	.word	_Label_1063
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1064
	.word	8
	.word	4
	.word	_Label_1065
	.word	-12
	.word	4
	.word	_Label_1066
	.word	-16
	.word	4
	.word	0
_Label_1063:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1064:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_203_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_203_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3544:
	push	r0
	sub	r1,1,r1
	bne	_Label_3544
	mov	2626,r13		! source line 2626
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1067 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1067  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0AS",r10
!   _temp_1068 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1068) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1070 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1070) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1069 = *_temp_1070  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1068 = _temp_1069  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0AS",r10
!   _temp_1071 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1071) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1073 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1073) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1072 = *_temp_1073  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1071 = _temp_1072  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0AS",r10
!   _temp_1074 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1074) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1076 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1076) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1075 = *_temp_1076  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1074 = _temp_1075  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_203_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1077
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1078
	.word	8
	.word	4
	.word	_Label_1079
	.word	12
	.word	4
	.word	_Label_1080
	.word	-16
	.word	4
	.word	_Label_1081
	.word	-9
	.word	1
	.word	_Label_1082
	.word	-20
	.word	4
	.word	_Label_1083
	.word	-24
	.word	4
	.word	_Label_1084
	.word	-10
	.word	1
	.word	_Label_1085
	.word	-28
	.word	4
	.word	_Label_1086
	.word	-32
	.word	4
	.word	_Label_1087
	.word	-11
	.word	1
	.word	_Label_1088
	.word	-36
	.word	4
	.word	_Label_1089
	.word	-12
	.word	1
	.word	_Label_1090
	.word	-40
	.word	4
	.word	_Label_1091
	.word	-44
	.word	4
	.word	0
_Label_1077:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1078:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1079:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1081:
	.byte	'C'
	.ascii	"_temp_1075\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1084:
	.byte	'C'
	.ascii	"_temp_1072\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1087:
	.byte	'C'
	.ascii	"_temp_1069\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1089:
	.byte	'C'
	.ascii	"_temp_1067\0"
	.align
_Label_1090:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1091:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_202_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_printFCB,r1
	push	r1
	mov	3,r1
_Label_3545:
	push	r0
	sub	r1,1,r1
	bne	_Label_3545
	mov	2636,r13		! source line 2636
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1093 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1092 = *_temp_1093  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1092  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2637,r13		! source line 2637
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2638,r13		! source line 2638
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_202_printFCB:
	.word	_sourceFileName
	.word	_Label_1094
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1095
	.word	8
	.word	4
	.word	_Label_1096
	.word	-12
	.word	4
	.word	_Label_1097
	.word	-16
	.word	4
	.word	0
_Label_1094:
	.ascii	"printFCB\0"
	.align
_Label_1095:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_201_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_201_printOpen,r1
	push	r1
	mov	4,r1
_Label_3546:
	push	r0
	sub	r1,1,r1
	bne	_Label_3546
	mov	2641,r13		! source line 2641
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1098 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1098  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2642,r13		! source line 2642
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1099 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1099  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2643,r13		! source line 2643
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1100 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1100  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2644,r13		! source line 2644
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2645,r13		! source line 2645
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
	mov	2645,r13		! source line 2645
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_201_printOpen:
	.word	_sourceFileName
	.word	_Label_1101
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1102
	.word	8
	.word	4
	.word	_Label_1103
	.word	-12
	.word	4
	.word	_Label_1104
	.word	-16
	.word	4
	.word	_Label_1105
	.word	-20
	.word	4
	.word	0
_Label_1101:
	.ascii	"printOpen\0"
	.align
_Label_1102:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1098\0"
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
_Label_3547:
	push	r0
	sub	r1,1,r1
	bne	_Label_3547
	mov	2905,r13		! source line 2905
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2907,r13		! source line 2907
	mov	"\0\0AS",r10
	mov	2907,r13		! source line 2907
	mov	"\0\0SE",r10
!   _temp_1106 = &_P_Kernel_threadManager
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
	mov	2908,r13		! source line 2908
	mov	"\0\0AS",r10
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1107 = myProgram + 72
	load	[r14+-28],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   _temp_1108 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1107 = _temp_1108  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2909,r13		! source line 2909
	mov	"\0\0SE",r10
!   _temp_1109 = _function_200_StartUserProcess
	set	_function_200_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1109  sizeInBytes=4
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
	mov	2909,r13		! source line 2909
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
	.word	_Label_1110
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1111
	.word	-12
	.word	4
	.word	_Label_1112
	.word	-16
	.word	4
	.word	_Label_1113
	.word	-20
	.word	4
	.word	_Label_1114
	.word	-24
	.word	4
	.word	_Label_1115
	.word	-28
	.word	4
	.word	0
_Label_1110:
	.ascii	"InitFirstProcess\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1115:
	.byte	'P'
	.ascii	"myProgram\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_200_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_200_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_3548:
	push	r0
	sub	r1,1,r1
	bne	_Label_3548
	mov	2912,r13		! source line 2912
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2919,r13		! source line 2919
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2919,r13		! source line 2919
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	2920,r13		! source line 2920
	mov	"\0\0AS",r10
	mov	2920,r13		! source line 2920
	mov	"\0\0SE",r10
!   _temp_1116 = &_P_Kernel_processManager
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
	mov	2921,r13		! source line 2921
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1117 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_1117 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2922,r13		! source line 2922
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1118 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_1118 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2923,r13		! source line 2923
	mov	"\0\0AS",r10
	mov	2923,r13		! source line 2923
	mov	"\0\0SE",r10
!   _temp_1119 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-60]
!   _temp_1120 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1119  sizeInBytes=4
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
	mov	2924,r13		! source line 2924
	mov	"\0\0IF",r10
!   if fp == 0 then goto _Label_1122		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1122
!	jmp	_Label_1121
_Label_1121:
! THEN...
	mov	2925,r13		! source line 2925
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2925,r13		! source line 2925
	mov	"\0\0AS",r10
	mov	2925,r13		! source line 2925
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1124 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_1123 = _temp_1124		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1123  sizeInBytes=4
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
	mov	2926,r13		! source line 2926
	mov	"\0\0SE",r10
!   _temp_1125 = &_P_Kernel_fileManager
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
	mov	2927,r13		! source line 2927
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1127 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_1128 = _temp_1127 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1126 = *_temp_1128  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_1126 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	2928,r13		! source line 2928
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1129 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_1129 [999 ] into _temp_1130
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
!   initSystemStackTop = _temp_1130		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	2929,r13		! source line 2929
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1131 = pcb + 32
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
	mov	2930,r13		! source line 2930
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1132 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1132 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2931,r13		! source line 2931
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	2931,r13		! source line 2931
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
	mov	2932,r13		! source line 2932
	mov	"\0\0CE",r10
	call	BecomeUserThread
	jmp	_Label_1133
_Label_1122:
! ELSE...
	mov	2934,r13		! source line 2934
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1134 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1134  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2934,r13		! source line 2934
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2935,r13		! source line 2935
	mov	"\0\0CA",r10
	call	_P_System_nl
! END IF...
_Label_1133:
! RETURN STATEMENT...
	mov	2924,r13		! source line 2924
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_200_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_1135
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1136
	.word	8
	.word	4
	.word	_Label_1137
	.word	-12
	.word	4
	.word	_Label_1138
	.word	-16
	.word	4
	.word	_Label_1139
	.word	-20
	.word	4
	.word	_Label_1140
	.word	-24
	.word	4
	.word	_Label_1141
	.word	-28
	.word	4
	.word	_Label_1142
	.word	-32
	.word	4
	.word	_Label_1143
	.word	-36
	.word	4
	.word	_Label_1144
	.word	-40
	.word	4
	.word	_Label_1145
	.word	-44
	.word	4
	.word	_Label_1146
	.word	-48
	.word	4
	.word	_Label_1147
	.word	-52
	.word	4
	.word	_Label_1148
	.word	-56
	.word	4
	.word	_Label_1149
	.word	-60
	.word	4
	.word	_Label_1150
	.word	-64
	.word	4
	.word	_Label_1151
	.word	-68
	.word	4
	.word	_Label_1152
	.word	-72
	.word	4
	.word	_Label_1153
	.word	-76
	.word	4
	.word	_Label_1154
	.word	-80
	.word	4
	.word	_Label_1155
	.word	-84
	.word	4
	.word	_Label_1156
	.word	-88
	.word	4
	.word	_Label_1157
	.word	-92
	.word	4
	.word	_Label_1158
	.word	-96
	.word	4
	.word	0
_Label_1135:
	.ascii	"StartUserProcess\0"
	.align
_Label_1136:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1153:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_1154:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_1155:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_1156:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_1157:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_1158:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1159
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1159:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1160
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1160:
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
_Label_3549:
	push	r0
	sub	r1,1,r1
	bne	_Label_3549
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1162		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1162
!	jmp	_Label_1161
_Label_1161:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1163 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1163  sizeInBytes=4
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
_Label_1162:
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
	.word	_Label_1165
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1166
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1167
	.word	12
	.word	4
	.word	_Label_1168
	.word	-12
	.word	4
	.word	_Label_1169
	.word	-16
	.word	4
	.word	0
_Label_1165:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1166:
	.ascii	"Pself\0"
	.align
_Label_1167:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1163\0"
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
_Label_3550:
	push	r0
	sub	r1,1,r1
	bne	_Label_3550
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
!   if count != 2147483647 then goto _Label_1171		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1171
!	jmp	_Label_1170
_Label_1170:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1172 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1172  sizeInBytes=4
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
_Label_1171:
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
!   if count > 0 then goto _Label_1174		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1174
!	jmp	_Label_1173
_Label_1173:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_1175 = &waitingThreads
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
!   _temp_1176 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1176 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_1177 = &_P_Kernel_readyList
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
_Label_1174:
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
	.word	_Label_1178
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1179
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1180
	.word	-12
	.word	4
	.word	_Label_1181
	.word	-16
	.word	4
	.word	_Label_1182
	.word	-20
	.word	4
	.word	_Label_1183
	.word	-24
	.word	4
	.word	_Label_1184
	.word	-28
	.word	4
	.word	_Label_1185
	.word	-32
	.word	4
	.word	0
_Label_1178:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1179:
	.ascii	"Pself\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1184:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1185:
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
_Label_3551:
	push	r0
	sub	r1,1,r1
	bne	_Label_3551
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
!   if count != -2147483648 then goto _Label_1187		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1187
!	jmp	_Label_1186
_Label_1186:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1188 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1188  sizeInBytes=4
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
_Label_1187:
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
!   if count >= 0 then goto _Label_1190		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1190
!	jmp	_Label_1189
_Label_1189:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_1191 = &waitingThreads
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
_Label_1190:
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
	.word	_Label_1192
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1193
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1194
	.word	-12
	.word	4
	.word	_Label_1195
	.word	-16
	.word	4
	.word	_Label_1196
	.word	-20
	.word	4
	.word	0
_Label_1192:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1193:
	.ascii	"Pself\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1196:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1197
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1197:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1198
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1198:
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
_Label_3552:
	push	r0
	sub	r1,1,r1
	bne	_Label_3552
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
	.word	_Label_1200
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1201
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1202
	.word	-12
	.word	4
	.word	0
_Label_1200:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1201:
	.ascii	"Pself\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1199\0"
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
_Label_3553:
	push	r0
	sub	r1,1,r1
	bne	_Label_3553
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1204		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1204
!	jmp	_Label_1203
_Label_1203:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1205 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1205  sizeInBytes=4
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
_Label_1204:
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
!   if heldBy == 0 then goto _Label_1209		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1209
!   _temp_1208 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1210
_Label_1209:
!   _temp_1208 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1210:
!   if _temp_1208 then goto _Label_1207 else goto _Label_1206
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1206
	jmp	_Label_1207
_Label_1206:
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
	jmp	_Label_1211
_Label_1207:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_1212 = &waitingThreads
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
_Label_1211:
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
	.word	_Label_1213
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1214
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1215
	.word	-16
	.word	4
	.word	_Label_1216
	.word	-9
	.word	1
	.word	_Label_1217
	.word	-20
	.word	4
	.word	_Label_1218
	.word	-24
	.word	4
	.word	0
_Label_1213:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1214:
	.ascii	"Pself\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1216:
	.byte	'C'
	.ascii	"_temp_1208\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1218:
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
_Label_3554:
	push	r0
	sub	r1,1,r1
	bne	_Label_3554
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1220		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1220
!	jmp	_Label_1219
_Label_1219:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1221 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1221  sizeInBytes=4
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
_Label_1220:
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
!   _temp_1222 = &waitingThreads
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
!   if t == 0 then goto _Label_1224		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1224
!	jmp	_Label_1223
_Label_1223:
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
!   _temp_1225 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1225 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_1226 = &_P_Kernel_readyList
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
	jmp	_Label_1227
_Label_1224:
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
_Label_1227:
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
	.word	_Label_1228
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1229
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1230
	.word	-12
	.word	4
	.word	_Label_1231
	.word	-16
	.word	4
	.word	_Label_1232
	.word	-20
	.word	4
	.word	_Label_1233
	.word	-24
	.word	4
	.word	_Label_1234
	.word	-28
	.word	4
	.word	_Label_1235
	.word	-32
	.word	4
	.word	0
_Label_1228:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1229:
	.ascii	"Pself\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1234:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1235:
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
_Label_3555:
	push	r0
	sub	r1,1,r1
	bne	_Label_3555
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1238		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1238
!	jmp	_Label_1237
_Label_1237:
!   _temp_1236 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1239
_Label_1238:
!   _temp_1236 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1239:
!   ReturnResult: _temp_1236  (sizeInBytes=1)
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
	.word	_Label_1240
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1241
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1242
	.word	-9
	.word	1
	.word	0
_Label_1240:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1241:
	.ascii	"Pself\0"
	.align
_Label_1242:
	.byte	'C'
	.ascii	"_temp_1236\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1243
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1243:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1244
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1244:
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
_Label_3556:
	push	r0
	sub	r1,1,r1
	bne	_Label_3556
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
	.word	_Label_1246
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1247
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1248
	.word	-12
	.word	4
	.word	0
_Label_1246:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1247:
	.ascii	"Pself\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1245\0"
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
_Label_3557:
	push	r0
	sub	r1,1,r1
	bne	_Label_3557
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
!   Retrieve Result: targetName=_temp_1251  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1251 then goto _Label_1250 else goto _Label_1249
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1249
	jmp	_Label_1250
_Label_1249:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1252 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1252  sizeInBytes=4
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
_Label_1250:
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
!   _temp_1253 = &waitingThreads
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
	.word	_Label_1254
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1255
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1256
	.word	12
	.word	4
	.word	_Label_1257
	.word	-16
	.word	4
	.word	_Label_1258
	.word	-20
	.word	4
	.word	_Label_1259
	.word	-9
	.word	1
	.word	_Label_1260
	.word	-24
	.word	4
	.word	0
_Label_1254:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1255:
	.ascii	"Pself\0"
	.align
_Label_1256:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1259:
	.byte	'C'
	.ascii	"_temp_1251\0"
	.align
_Label_1260:
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
_Label_3558:
	push	r0
	sub	r1,1,r1
	bne	_Label_3558
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
!   Retrieve Result: targetName=_temp_1263  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1263 then goto _Label_1262 else goto _Label_1261
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1261
	jmp	_Label_1262
_Label_1261:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1264 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1264  sizeInBytes=4
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
_Label_1262:
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
!   _temp_1265 = &waitingThreads
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
!   if t == 0 then goto _Label_1267		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1267
!	jmp	_Label_1266
_Label_1266:
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
!   _temp_1268 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1268 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_1269 = &_P_Kernel_readyList
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
_Label_1267:
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
	.word	_Label_1270
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1271
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1272
	.word	12
	.word	4
	.word	_Label_1273
	.word	-16
	.word	4
	.word	_Label_1274
	.word	-20
	.word	4
	.word	_Label_1275
	.word	-24
	.word	4
	.word	_Label_1276
	.word	-28
	.word	4
	.word	_Label_1277
	.word	-9
	.word	1
	.word	_Label_1278
	.word	-32
	.word	4
	.word	_Label_1279
	.word	-36
	.word	4
	.word	0
_Label_1270:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1271:
	.ascii	"Pself\0"
	.align
_Label_1272:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1277:
	.byte	'C'
	.ascii	"_temp_1263\0"
	.align
_Label_1278:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1279:
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
_Label_3559:
	push	r0
	sub	r1,1,r1
	bne	_Label_3559
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
!   Retrieve Result: targetName=_temp_1282  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1282 then goto _Label_1281 else goto _Label_1280
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1280
	jmp	_Label_1281
_Label_1280:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1283 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1283  sizeInBytes=4
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
_Label_1281:
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
_Label_1284:
!	jmp	_Label_1285
_Label_1285:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_1287 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1288
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1288
	jmp	_Label_1289
_Label_1288:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_1286
! END IF...
_Label_1289:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1290 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1290 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_1291 = &_P_Kernel_readyList
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
	jmp	_Label_1284
_Label_1286:
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
	.word	_Label_1292
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1293
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1294
	.word	12
	.word	4
	.word	_Label_1295
	.word	-16
	.word	4
	.word	_Label_1296
	.word	-20
	.word	4
	.word	_Label_1297
	.word	-24
	.word	4
	.word	_Label_1298
	.word	-28
	.word	4
	.word	_Label_1299
	.word	-9
	.word	1
	.word	_Label_1300
	.word	-32
	.word	4
	.word	_Label_1301
	.word	-36
	.word	4
	.word	0
_Label_1292:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1293:
	.ascii	"Pself\0"
	.align
_Label_1294:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1299:
	.byte	'C'
	.ascii	"_temp_1282\0"
	.align
_Label_1300:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1301:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1302
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
_Label_1302:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1303
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1303:
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
_Label_3560:
	push	r0
	sub	r1,1,r1
	bne	_Label_3560
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
!   _temp_1304 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1304) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1304 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_1305 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1305 [0 ] into _temp_1306
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
!   Data Move: *_temp_1306 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1307 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1307 [999 ] into _temp_1308
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
!   Data Move: *_temp_1308 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1309 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1309 [999 ] into _temp_1310
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
!   stackTop = _temp_1310		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1311 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1313 = &_temp_1312
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1313 = _temp_1313 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1315:
!   Data Move: *_temp_1313 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1313 = _temp_1313 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1314 = _temp_1314 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1314) then goto _Label_1315
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1315
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1316 = &_temp_1312
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3561
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3561:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1311 = *_temp_1316  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3562:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3562
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
!   _temp_1317 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1319 = &_temp_1318
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1319 = _temp_1319 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1321:
!   Data Move: *_temp_1319 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1319 = _temp_1319 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1320 = _temp_1320 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1320) then goto _Label_1321
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1321
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1322 = &_temp_1318
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3563
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3563:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1317 = *_temp_1322  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3564:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3564
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
	.word	_Label_1323
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1324
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1325
	.word	12
	.word	4
	.word	_Label_1326
	.word	-12
	.word	4
	.word	_Label_1327
	.word	-16
	.word	4
	.word	_Label_1328
	.word	-20
	.word	4
	.word	_Label_1329
	.word	-84
	.word	64
	.word	_Label_1330
	.word	-88
	.word	4
	.word	_Label_1331
	.word	-92
	.word	4
	.word	_Label_1332
	.word	-96
	.word	4
	.word	_Label_1333
	.word	-100
	.word	4
	.word	_Label_1334
	.word	-156
	.word	56
	.word	_Label_1335
	.word	-160
	.word	4
	.word	_Label_1336
	.word	-164
	.word	4
	.word	_Label_1337
	.word	-168
	.word	4
	.word	_Label_1338
	.word	-172
	.word	4
	.word	_Label_1339
	.word	-176
	.word	4
	.word	_Label_1340
	.word	-180
	.word	4
	.word	_Label_1341
	.word	-184
	.word	4
	.word	_Label_1342
	.word	-188
	.word	4
	.word	0
_Label_1323:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1324:
	.ascii	"Pself\0"
	.align
_Label_1325:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1304\0"
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
_Label_3565:
	push	r0
	sub	r1,1,r1
	bne	_Label_3565
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
!   _temp_1343 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1343  (sizeInBytes=4)
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
!   _temp_1345 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1344  sizeInBytes=4
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
	.word	_Label_1346
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1347
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1348
	.word	12
	.word	4
	.word	_Label_1349
	.word	16
	.word	4
	.word	_Label_1350
	.word	-12
	.word	4
	.word	_Label_1351
	.word	-16
	.word	4
	.word	_Label_1352
	.word	-20
	.word	4
	.word	_Label_1353
	.word	-24
	.word	4
	.word	_Label_1354
	.word	-28
	.word	4
	.word	0
_Label_1346:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1347:
	.ascii	"Pself\0"
	.align
_Label_1348:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1349:
	.byte	'I'
	.ascii	"arg\0"
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
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1354:
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
_Label_3566:
	push	r0
	sub	r1,1,r1
	bne	_Label_3566
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1357 == _P_Kernel_currentThread then goto _Label_1356		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1356
!	jmp	_Label_1355
_Label_1355:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1358 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1358  sizeInBytes=4
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
_Label_1356:
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
!   _temp_1359 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1361		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1361
!	jmp	_Label_1360
_Label_1360:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1363		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1363
!	jmp	_Label_1362
_Label_1362:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1364 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1364  sizeInBytes=4
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
_Label_1363:
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
!   _temp_1366 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1365  sizeInBytes=4
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
_Label_1361:
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
	.word	_Label_1367
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1368
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1369
	.word	-12
	.word	4
	.word	_Label_1370
	.word	-16
	.word	4
	.word	_Label_1371
	.word	-20
	.word	4
	.word	_Label_1372
	.word	-24
	.word	4
	.word	_Label_1373
	.word	-28
	.word	4
	.word	_Label_1374
	.word	-32
	.word	4
	.word	_Label_1375
	.word	-36
	.word	4
	.word	_Label_1376
	.word	-40
	.word	4
	.word	_Label_1377
	.word	-44
	.word	4
	.word	0
_Label_1367:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1368:
	.ascii	"Pself\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1375:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1376:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1377:
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
_Label_3567:
	push	r0
	sub	r1,1,r1
	bne	_Label_3567
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1379		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1379
!	jmp	_Label_1378
_Label_1378:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1380 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1380  sizeInBytes=4
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
_Label_1379:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1383 == _P_Kernel_currentThread then goto _Label_1382		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1382
!	jmp	_Label_1381
_Label_1381:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1384 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1384  sizeInBytes=4
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
_Label_1382:
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
!   _temp_1385 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1386
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1386
	jmp	_Label_1387
_Label_1386:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1388 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1388  sizeInBytes=4
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
_Label_1387:
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
	.word	_Label_1389
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1390
	.word	4		! size of self
	.word	8		! offset of self
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
_Label_1389:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1390:
	.ascii	"Pself\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1396:
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
_Label_3568:
	push	r0
	sub	r1,1,r1
	bne	_Label_3568
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_1400 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1400 [0 ] into _temp_1401
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
!   Data Move: _temp_1399 = *_temp_1401  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1399 == 606348324 then goto _Label_1398		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1398
!	jmp	_Label_1397
_Label_1397:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1402 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1402  sizeInBytes=4
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
	jmp	_Label_1403
_Label_1398:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_1407 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1407 [999 ] into _temp_1408
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
!   Data Move: _temp_1406 = *_temp_1408  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1406 == 606348324 then goto _Label_1405		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1405
!	jmp	_Label_1404
_Label_1404:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1409 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1409  sizeInBytes=4
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
_Label_1405:
! END IF...
_Label_1403:
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
	.word	_Label_1410
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1411
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1412
	.word	-12
	.word	4
	.word	_Label_1413
	.word	-16
	.word	4
	.word	_Label_1414
	.word	-20
	.word	4
	.word	_Label_1415
	.word	-24
	.word	4
	.word	_Label_1416
	.word	-28
	.word	4
	.word	_Label_1417
	.word	-32
	.word	4
	.word	_Label_1418
	.word	-36
	.word	4
	.word	_Label_1419
	.word	-40
	.word	4
	.word	0
_Label_1410:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1411:
	.ascii	"Pself\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1399\0"
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
_Label_3569:
	push	r0
	sub	r1,1,r1
	bne	_Label_3569
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
!   _temp_1420 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1420  sizeInBytes=4
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
!   _temp_1421 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1421  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1422  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1423 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1423  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1424 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1424  sizeInBytes=4
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
!   _temp_1429 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1430 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1429  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1425:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1430 then goto _Label_1428		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1428
_Label_1426:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1431 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1431  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1432 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1432  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1433 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1433  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1435 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1435 [i ] into _temp_1436
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
!   Data Move: _temp_1434 = *_temp_1436  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1434  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1437 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1437  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1439 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1439 [i ] into _temp_1440
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
!   Data Move: _temp_1438 = *_temp_1440  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1438  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1441 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1441  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1427:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1425
! END FOR
_Label_1428:
! CALL STATEMENT...
!   _temp_1442 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-116]
!   _temp_1443 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1442  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1443  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1444 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-108]
!   _temp_1446 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1446 [0 ] into _temp_1447
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
!   _temp_1445 = _temp_1447		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1444  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1445  sizeInBytes=4
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
	be	_Label_1450
	cmp	r1,2
	be	_Label_1451
	cmp	r1,3
	be	_Label_1452
	cmp	r1,4
	be	_Label_1453
	cmp	r1,5
	be	_Label_1454
	jmp	_Label_1448
! CASE 1...
_Label_1450:
! CALL STATEMENT...
!   _temp_1455 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1455  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_1449
! CASE 2...
_Label_1451:
! CALL STATEMENT...
!   _temp_1456 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1456  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_1449
! CASE 3...
_Label_1452:
! CALL STATEMENT...
!   _temp_1457 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1457  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_1449
! CASE 4...
_Label_1453:
! CALL STATEMENT...
!   _temp_1458 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1458  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_1449
! CASE 5...
_Label_1454:
! CALL STATEMENT...
!   _temp_1459 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1459  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_1449
! DEFAULT CASE...
_Label_1448:
! CALL STATEMENT...
!   _temp_1460 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1460  sizeInBytes=4
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
_Label_1449:
! CALL STATEMENT...
!   _temp_1461 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1461  sizeInBytes=4
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
!   _temp_1462 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1462  sizeInBytes=4
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
!   _temp_1467 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1468 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1467  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1463:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1468 then goto _Label_1466		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1466
_Label_1464:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1469 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1469  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1470 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1470  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1471 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1471  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1473 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1473 [i ] into _temp_1474
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
!   Data Move: _temp_1472 = *_temp_1474  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1472  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1475 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1475  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1477 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1477 [i ] into _temp_1478
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
!   Data Move: _temp_1476 = *_temp_1478  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1476  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1479 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1479  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1465:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1463
! END FOR
_Label_1466:
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
	.word	_Label_1480
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1481
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1482
	.word	-12
	.word	4
	.word	_Label_1483
	.word	-16
	.word	4
	.word	_Label_1484
	.word	-20
	.word	4
	.word	_Label_1485
	.word	-24
	.word	4
	.word	_Label_1486
	.word	-28
	.word	4
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
	.word	_Label_1492
	.word	-52
	.word	4
	.word	_Label_1493
	.word	-56
	.word	4
	.word	_Label_1494
	.word	-60
	.word	4
	.word	_Label_1495
	.word	-64
	.word	4
	.word	_Label_1496
	.word	-68
	.word	4
	.word	_Label_1497
	.word	-72
	.word	4
	.word	_Label_1498
	.word	-76
	.word	4
	.word	_Label_1499
	.word	-80
	.word	4
	.word	_Label_1500
	.word	-84
	.word	4
	.word	_Label_1501
	.word	-88
	.word	4
	.word	_Label_1502
	.word	-92
	.word	4
	.word	_Label_1503
	.word	-96
	.word	4
	.word	_Label_1504
	.word	-100
	.word	4
	.word	_Label_1505
	.word	-104
	.word	4
	.word	_Label_1506
	.word	-108
	.word	4
	.word	_Label_1507
	.word	-112
	.word	4
	.word	_Label_1508
	.word	-116
	.word	4
	.word	_Label_1509
	.word	-120
	.word	4
	.word	_Label_1510
	.word	-124
	.word	4
	.word	_Label_1511
	.word	-128
	.word	4
	.word	_Label_1512
	.word	-132
	.word	4
	.word	_Label_1513
	.word	-136
	.word	4
	.word	_Label_1514
	.word	-140
	.word	4
	.word	_Label_1515
	.word	-144
	.word	4
	.word	_Label_1516
	.word	-148
	.word	4
	.word	_Label_1517
	.word	-152
	.word	4
	.word	_Label_1518
	.word	-156
	.word	4
	.word	_Label_1519
	.word	-160
	.word	4
	.word	_Label_1520
	.word	-164
	.word	4
	.word	_Label_1521
	.word	-168
	.word	4
	.word	_Label_1522
	.word	-172
	.word	4
	.word	_Label_1523
	.word	-176
	.word	4
	.word	_Label_1524
	.word	-180
	.word	4
	.word	_Label_1525
	.word	-184
	.word	4
	.word	_Label_1526
	.word	-188
	.word	4
	.word	_Label_1527
	.word	-192
	.word	4
	.word	_Label_1528
	.word	-196
	.word	4
	.word	0
_Label_1480:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1481:
	.ascii	"Pself\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1527:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1528:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1529
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1529:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1530
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1530:
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
_Label_3570:
	push	r0
	sub	r1,1,r1
	bne	_Label_3570
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1531 = _StringConst_97
	set	_StringConst_97,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1531  sizeInBytes=4
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
!   _temp_1532 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1534 = &_temp_1533
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1534 = _temp_1534 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1536 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3571:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3571
!   _temp_1536 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1538:
!   Data Move: *_temp_1534 = _temp_1536  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3572:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3572
!   _temp_1534 = _temp_1534 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1535 = _temp_1535 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1535) then goto _Label_1538
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1538
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1539 = &_temp_1533
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3573
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3573:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1532 = *_temp_1539  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3574:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3574
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
!   _temp_1543 = &threadManagerLock
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
!   _temp_1544 = &aThreadBecomeFree
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
!   _temp_1549 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1550 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1549  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1545:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1550 then goto _Label_1548		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1548
_Label_1546:
	mov	702,r13		! source line 702
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0SE",r10
!   _temp_1551 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-48]
!   _temp_1552 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1552 [i ] into _temp_1553
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
!   Prepare Argument: offset=12  value=_temp_1551  sizeInBytes=4
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
!   _temp_1555 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1555 [i ] into _temp_1556
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
!   _temp_1554 = _temp_1556		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1557 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1554  sizeInBytes=4
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
!   _temp_1558 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1558 [i ] into _temp_1559
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
!   _temp_1560 = _temp_1559 + 76
	load	[r14+-16],r1
	add	r1,76,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1560 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-12],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1547:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1545
! END FOR
_Label_1548:
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
	.word	_Label_1561
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1562
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1563
	.word	-12
	.word	4
	.word	_Label_1564
	.word	-16
	.word	4
	.word	_Label_1565
	.word	-20
	.word	4
	.word	_Label_1566
	.word	-24
	.word	4
	.word	_Label_1567
	.word	-28
	.word	4
	.word	_Label_1568
	.word	-32
	.word	4
	.word	_Label_1569
	.word	-36
	.word	4
	.word	_Label_1570
	.word	-40
	.word	4
	.word	_Label_1571
	.word	-44
	.word	4
	.word	_Label_1572
	.word	-48
	.word	4
	.word	_Label_1573
	.word	-52
	.word	4
	.word	_Label_1574
	.word	-56
	.word	4
	.word	_Label_1575
	.word	-60
	.word	4
	.word	_Label_1576
	.word	-64
	.word	4
	.word	_Label_1577
	.word	-68
	.word	4
	.word	_Label_1578
	.word	-72
	.word	4
	.word	_Label_1579
	.word	-76
	.word	4
	.word	_Label_1580
	.word	-80
	.word	4
	.word	_Label_1581
	.word	-84
	.word	4
	.word	_Label_1582
	.word	-4248
	.word	4164
	.word	_Label_1583
	.word	-4252
	.word	4
	.word	_Label_1584
	.word	-4256
	.word	4
	.word	_Label_1585
	.word	-45900
	.word	41644
	.word	_Label_1586
	.word	-45904
	.word	4
	.word	_Label_1587
	.word	-45908
	.word	4
	.word	_Label_1588
	.word	-45912
	.word	4
	.word	0
_Label_1561:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1562:
	.ascii	"Pself\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1588:
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
_Label_3575:
	push	r0
	sub	r1,1,r1
	bne	_Label_3575
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
!   _temp_1589 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1589  sizeInBytes=4
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
!   _temp_1594 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1595 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1594  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1590:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1595 then goto _Label_1593		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1593
_Label_1591:
	mov	720,r13		! source line 720
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1596 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1596  sizeInBytes=4
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
!   _temp_1597 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1597  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1599 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1599 [i ] into _temp_1600
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
!   _temp_1598 = _temp_1600		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1598  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CA",r10
	call	_function_207_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1592:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1590
! END FOR
_Label_1593:
! CALL STATEMENT...
!   _temp_1601 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1601  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0SE",r10
!   _temp_1602 = _function_206_PrintObjectAddr
	set	_function_206_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1603 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1602  sizeInBytes=4
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
	.word	_Label_1604
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1605
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_1613
	.word	-40
	.word	4
	.word	_Label_1614
	.word	-44
	.word	4
	.word	_Label_1615
	.word	-48
	.word	4
	.word	_Label_1616
	.word	-52
	.word	4
	.word	_Label_1617
	.word	-56
	.word	4
	.word	_Label_1618
	.word	-60
	.word	4
	.word	0
_Label_1604:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1605:
	.ascii	"Pself\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1617:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1618:
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
_Label_3576:
	push	r0
	sub	r1,1,r1
	bne	_Label_3576
	mov	734,r13		! source line 734
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0SE",r10
!   _temp_1619 = &threadManagerLock
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
_Label_1620:
	mov	741,r13		! source line 741
	mov	"\0\0SE",r10
!   _temp_1623 = &freeList
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
!   if result==true then goto _Label_1621 else goto _Label_1622
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1622
	jmp	_Label_1621
_Label_1621:
	mov	741,r13		! source line 741
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0SE",r10
!   _temp_1624 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1625 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1624  sizeInBytes=4
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
	jmp	_Label_1620
_Label_1622:
! ASSIGNMENT STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0AS",r10
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_1626 = &freeList
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
!   _temp_1627 = tmp + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1627 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0SE",r10
!   _temp_1628 = &threadManagerLock
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
	.word	_Label_1629
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1630
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1631
	.word	-12
	.word	4
	.word	_Label_1632
	.word	-16
	.word	4
	.word	_Label_1633
	.word	-20
	.word	4
	.word	_Label_1634
	.word	-24
	.word	4
	.word	_Label_1635
	.word	-28
	.word	4
	.word	_Label_1636
	.word	-32
	.word	4
	.word	_Label_1637
	.word	-36
	.word	4
	.word	_Label_1638
	.word	-40
	.word	4
	.word	0
_Label_1629:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1630:
	.ascii	"Pself\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1638:
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
_Label_3577:
	push	r0
	sub	r1,1,r1
	bne	_Label_3577
	mov	753,r13		! source line 753
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0SE",r10
!   _temp_1639 = &threadManagerLock
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
!   _temp_1640 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1640 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0SE",r10
!   _temp_1641 = &freeList
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
!   _temp_1642 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1643 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1642  sizeInBytes=4
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
!   _temp_1644 = &threadManagerLock
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
	.word	_Label_1645
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1646
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1647
	.word	12
	.word	4
	.word	_Label_1648
	.word	-12
	.word	4
	.word	_Label_1649
	.word	-16
	.word	4
	.word	_Label_1650
	.word	-20
	.word	4
	.word	_Label_1651
	.word	-24
	.word	4
	.word	_Label_1652
	.word	-28
	.word	4
	.word	_Label_1653
	.word	-32
	.word	4
	.word	0
_Label_1645:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1646:
	.ascii	"Pself\0"
	.align
_Label_1647:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1654
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1654:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1655
	.word	_sourceFileName
	.word	213		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1655:
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
_Label_3578:
	push	r0
	sub	r1,1,r1
	bne	_Label_3578
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
_Label_3579:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3579
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_1657 = &addrSpace
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
!   _temp_1658 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_1660 = &_temp_1659
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_1660 = _temp_1660 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_1662:
!   Data Move: *_temp_1660 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1660 = _temp_1660 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1661 = _temp_1661 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1661) then goto _Label_1662
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1662
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_1663 = &_temp_1659
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3580
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3580:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1658 = *_temp_1663  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_3581:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3581
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
	.word	_Label_1664
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1665
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1666
	.word	-12
	.word	4
	.word	_Label_1667
	.word	-16
	.word	4
	.word	_Label_1668
	.word	-20
	.word	4
	.word	_Label_1669
	.word	-64
	.word	44
	.word	_Label_1670
	.word	-68
	.word	4
	.word	_Label_1671
	.word	-72
	.word	4
	.word	_Label_1672
	.word	-76
	.word	4
	.word	0
_Label_1664:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1665:
	.ascii	"Pself\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1656\0"
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
_Label_3582:
	push	r0
	sub	r1,1,r1
	bne	_Label_3582
	mov	790,r13		! source line 790
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1673) then goto _runtimeErrorNullPointer
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
!   _temp_1674 = &addrSpace
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
!   _temp_1675 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1675  sizeInBytes=4
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
	call	_function_207_ThreadPrintShort
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
	.word	_Label_1676
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1677
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1678
	.word	-12
	.word	4
	.word	_Label_1679
	.word	-16
	.word	4
	.word	_Label_1680
	.word	-20
	.word	4
	.word	0
_Label_1676:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1677:
	.ascii	"Pself\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1673\0"
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
_Label_3583:
	push	r0
	sub	r1,1,r1
	bne	_Label_3583
	mov	813,r13		! source line 813
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1681 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1681  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1682  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1683 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1683  sizeInBytes=4
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
!   _temp_1684 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1684  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1686		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1686
!	jmp	_Label_1685
_Label_1685:
! THEN...
	mov	823,r13		! source line 823
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1687 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1687  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1688
_Label_1686:
! ELSE...
	mov	824,r13		! source line 824
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1690		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1690
!	jmp	_Label_1689
_Label_1689:
! THEN...
	mov	825,r13		! source line 825
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1691 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1691  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1692
_Label_1690:
! ELSE...
	mov	826,r13		! source line 826
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1694		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1694
!	jmp	_Label_1693
_Label_1693:
! THEN...
	mov	827,r13		! source line 827
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1695 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1695  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1696
_Label_1694:
! ELSE...
	mov	829,r13		! source line 829
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1697 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1697  sizeInBytes=4
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
_Label_1696:
! END IF...
_Label_1692:
! END IF...
_Label_1688:
! CALL STATEMENT...
!   _temp_1698 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1698  sizeInBytes=4
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
!   _temp_1699 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1699  sizeInBytes=4
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
	.word	_Label_1700
	.word	4		! total size of parameters
	.word	44		! frame size = 44
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
	.word	0
_Label_1700:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
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
	.ascii	"_temp_1698\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1712
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
_Label_1712:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1713
	.word	_sourceFileName
	.word	233		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1713:
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
_Label_3584:
	push	r0
	sub	r1,1,r1
	bne	_Label_3584
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0AS",r10
!   _temp_1714 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1940]
!   NEW ARRAY Constructor...
!   _temp_1716 = &_temp_1715
	add	r14,-1936,r1
	store	r1,[r14+-252]
!   _temp_1716 = _temp_1716 + 4
	load	[r14+-252],r1
	add	r1,4,r1
	store	r1,[r14+-252]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1718 = zeros  (sizeInBytes=168)
	add	r14,-244,r4
	mov	42,r3
_Label_3585:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3585
!   _temp_1718 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-244]
	mov	10,r1
	store	r1,[r14+-248]
_Label_1720:
!   Data Move: *_temp_1716 = _temp_1718  (sizeInBytes=168)
	add	r14,-244,r5
	load	[r14+-252],r4
	mov	42,r3
_Label_3586:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3586
!   _temp_1716 = _temp_1716 + 168
	load	[r14+-252],r1
	add	r1,168,r1
	store	r1,[r14+-252]
!   _temp_1717 = _temp_1717 + -1
	load	[r14+-248],r1
	add	r1,-1,r1
	store	r1,[r14+-248]
!   if intNotZero (_temp_1717) then goto _Label_1720
	load	[r14+-248],r1
	cmp	r1,r0
	bne	_Label_1720
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1936]
!   _temp_1721 = &_temp_1715
	add	r14,-1936,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	load	[r14+-1940],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3587
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3587:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1714 = *_temp_1721  (sizeInBytes=1684)
	load	[r14+-72],r5
	load	[r14+-1940],r4
	mov	421,r3
_Label_3588:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3588
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
!   _temp_1724 = &processManagerLock
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
!   _temp_1725 = &aProcessBecameFree
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
!   _temp_1728 = &aProcessDied
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
!   _temp_1733 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1734 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1733  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-1944]
_Label_1729:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1734 then goto _Label_1732		
	load	[r14+-1944],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1732
_Label_1730:
	mov	860,r13		! source line 860
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0SE",r10
!   _temp_1735 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1735 [i ] into _temp_1736
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
!   _temp_1738 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1738 [i ] into _temp_1739
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
!   _temp_1737 = _temp_1739		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1740 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1737  sizeInBytes=4
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
_Label_1731:
!   i = i + 1
	load	[r14+-1944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1944]
	jmp	_Label_1729
! END FOR
_Label_1732:
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
	.word	_Label_1741
	.word	4		! total size of parameters
	.word	1944		! frame size = 1944
	.word	_Label_1742
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1743
	.word	-12
	.word	4
	.word	_Label_1744
	.word	-16
	.word	4
	.word	_Label_1745
	.word	-20
	.word	4
	.word	_Label_1746
	.word	-24
	.word	4
	.word	_Label_1747
	.word	-28
	.word	4
	.word	_Label_1748
	.word	-32
	.word	4
	.word	_Label_1749
	.word	-36
	.word	4
	.word	_Label_1750
	.word	-40
	.word	4
	.word	_Label_1751
	.word	-44
	.word	4
	.word	_Label_1752
	.word	-48
	.word	4
	.word	_Label_1753
	.word	-52
	.word	4
	.word	_Label_1754
	.word	-56
	.word	4
	.word	_Label_1755
	.word	-60
	.word	4
	.word	_Label_1756
	.word	-64
	.word	4
	.word	_Label_1757
	.word	-68
	.word	4
	.word	_Label_1758
	.word	-72
	.word	4
	.word	_Label_1759
	.word	-76
	.word	4
	.word	_Label_1760
	.word	-244
	.word	168
	.word	_Label_1761
	.word	-248
	.word	4
	.word	_Label_1762
	.word	-252
	.word	4
	.word	_Label_1763
	.word	-1936
	.word	1684
	.word	_Label_1764
	.word	-1940
	.word	4
	.word	_Label_1765
	.word	-1944
	.word	4
	.word	0
_Label_1741:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1742:
	.ascii	"Pself\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1765:
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
_Label_3589:
	push	r0
	sub	r1,1,r1
	bne	_Label_3589
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
!   _temp_1766 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1766  sizeInBytes=4
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
!   _temp_1771 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1772 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1771  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1767:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1772 then goto _Label_1770		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1770
_Label_1768:
	mov	877,r13		! source line 877
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1773 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1773  sizeInBytes=4
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
!   _temp_1774 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1774  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0SE",r10
!   _temp_1775 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1775 [i ] into _temp_1776
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
_Label_1769:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1767
! END FOR
_Label_1770:
! CALL STATEMENT...
!   _temp_1777 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1777  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0SE",r10
!   _temp_1778 = _function_206_PrintObjectAddr
	set	_function_206_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1779 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1778  sizeInBytes=4
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
	.word	_Label_1780
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1781
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1782
	.word	-12
	.word	4
	.word	_Label_1783
	.word	-16
	.word	4
	.word	_Label_1784
	.word	-20
	.word	4
	.word	_Label_1785
	.word	-24
	.word	4
	.word	_Label_1786
	.word	-28
	.word	4
	.word	_Label_1787
	.word	-32
	.word	4
	.word	_Label_1788
	.word	-36
	.word	4
	.word	_Label_1789
	.word	-40
	.word	4
	.word	_Label_1790
	.word	-44
	.word	4
	.word	_Label_1791
	.word	-48
	.word	4
	.word	_Label_1792
	.word	-52
	.word	4
	.word	_Label_1793
	.word	-56
	.word	4
	.word	0
_Label_1780:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1781:
	.ascii	"Pself\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1792:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1793:
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
_Label_3590:
	push	r0
	sub	r1,1,r1
	bne	_Label_3590
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
!   _temp_1794 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1794  sizeInBytes=4
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
!   _temp_1799 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1800 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1799  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1795:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1800 then goto _Label_1798		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1798
_Label_1796:
	mov	900,r13		! source line 900
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1801 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1801  sizeInBytes=4
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
!   _temp_1802 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1802 [i ] into _temp_1803
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
_Label_1797:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1795
! END FOR
_Label_1798:
! CALL STATEMENT...
!   _temp_1804 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1804  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_1805 = _function_206_PrintObjectAddr
	set	_function_206_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1806 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1805  sizeInBytes=4
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
	.word	_Label_1807
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1808
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1809
	.word	-12
	.word	4
	.word	_Label_1810
	.word	-16
	.word	4
	.word	_Label_1811
	.word	-20
	.word	4
	.word	_Label_1812
	.word	-24
	.word	4
	.word	_Label_1813
	.word	-28
	.word	4
	.word	_Label_1814
	.word	-32
	.word	4
	.word	_Label_1815
	.word	-36
	.word	4
	.word	_Label_1816
	.word	-40
	.word	4
	.word	_Label_1817
	.word	-44
	.word	4
	.word	_Label_1818
	.word	-48
	.word	4
	.word	_Label_1819
	.word	-52
	.word	4
	.word	0
_Label_1807:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1808:
	.ascii	"Pself\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1818:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1819:
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
_Label_3591:
	push	r0
	sub	r1,1,r1
	bne	_Label_3591
	mov	913,r13		! source line 913
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0SE",r10
!   _temp_1820 = &processManagerLock
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
!   if intIsZero (_temp_1821) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1822 = _temp_1821 + 1752
	load	[r14+-72],r1
	add	r1,1752,r1
	store	r1,[r14+-68]
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1825) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1826 = _temp_1825 + 1752
	load	[r14+-56],r1
	add	r1,1752,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1824 = *_temp_1826  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_1823 = _temp_1824 + 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Data Move: *_temp_1822 = _temp_1823  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r14+-68],r2
	store	r1,[r2]
! WHILE STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0WH",r10
_Label_1827:
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_1830 = &freeList
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
!   if result==true then goto _Label_1828 else goto _Label_1829
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1829
	jmp	_Label_1828
_Label_1828:
	mov	921,r13		! source line 921
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0SE",r10
!   _temp_1831 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-44]
!   _temp_1832 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1831  sizeInBytes=4
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
	jmp	_Label_1827
_Label_1829:
! ASSIGNMENT STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0AS",r10
	mov	924,r13		! source line 924
	mov	"\0\0SE",r10
!   _temp_1833 = &freeList
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
!   _temp_1834 = tmp + 20
	load	[r14+-80],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1834 = 1  (sizeInBytes=4)
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
!   _temp_1835 = tmp + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-28]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1837) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1838 = _temp_1837 + 1752
	load	[r14+-20],r1
	add	r1,1752,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1836 = *_temp_1838  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1835 = _temp_1836  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_1839 = &processManagerLock
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
	.word	_Label_1840
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_1841
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1842
	.word	-12
	.word	4
	.word	_Label_1843
	.word	-16
	.word	4
	.word	_Label_1844
	.word	-20
	.word	4
	.word	_Label_1845
	.word	-24
	.word	4
	.word	_Label_1846
	.word	-28
	.word	4
	.word	_Label_1847
	.word	-32
	.word	4
	.word	_Label_1848
	.word	-36
	.word	4
	.word	_Label_1849
	.word	-40
	.word	4
	.word	_Label_1850
	.word	-44
	.word	4
	.word	_Label_1851
	.word	-48
	.word	4
	.word	_Label_1852
	.word	-52
	.word	4
	.word	_Label_1853
	.word	-56
	.word	4
	.word	_Label_1854
	.word	-60
	.word	4
	.word	_Label_1855
	.word	-64
	.word	4
	.word	_Label_1856
	.word	-68
	.word	4
	.word	_Label_1857
	.word	-72
	.word	4
	.word	_Label_1858
	.word	-76
	.word	4
	.word	_Label_1859
	.word	-80
	.word	4
	.word	0
_Label_1840:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1841:
	.ascii	"Pself\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1859:
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
_Label_3592:
	push	r0
	sub	r1,1,r1
	bne	_Label_3592
	mov	934,r13		! source line 934
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1860 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1860  sizeInBytes=4
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
!   _temp_1861 = &processManagerLock
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
!   _temp_1862 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1862 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0SE",r10
!   _temp_1863 = &freeList
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
!   _temp_1864 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-24]
!   _temp_1865 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1864  sizeInBytes=4
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
!   if intIsZero (_temp_1866) then goto _runtimeErrorNullPointer
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
!   _temp_1867 = &processManagerLock
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
	.word	_Label_1868
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1869
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1870
	.word	12
	.word	4
	.word	_Label_1871
	.word	-12
	.word	4
	.word	_Label_1872
	.word	-16
	.word	4
	.word	_Label_1873
	.word	-20
	.word	4
	.word	_Label_1874
	.word	-24
	.word	4
	.word	_Label_1875
	.word	-28
	.word	4
	.word	_Label_1876
	.word	-32
	.word	4
	.word	_Label_1877
	.word	-36
	.word	4
	.word	_Label_1878
	.word	-40
	.word	4
	.word	0
_Label_1868:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1869:
	.ascii	"Pself\0"
	.align
_Label_1870:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1860\0"
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
_Label_3593:
	push	r0
	sub	r1,1,r1
	bne	_Label_3593
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
!   _temp_1879 = &processManagerLock
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
!   _temp_1884 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-192]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1885 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-188]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1884  (sizeInBytes=4)
	load	[r14+-192],r1
	store	r1,[r14+-200]
_Label_1880:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1885 then goto _Label_1883		
	load	[r14+-200],r1
	load	[r14+-188],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1883
_Label_1881:
	mov	954,r13		! source line 954
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1890 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1889 = *_temp_1890  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   _temp_1892 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-172]
!   _temp_1893 = _temp_1892 + 4
	load	[r14+-172],r1
	add	r1,4,r1
	store	r1,[r14+-168]
!   Move address of _temp_1893 [i ] into _temp_1894
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
!   _temp_1895 = _temp_1894 + 16
	load	[r14+-164],r1
	add	r1,16,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1891 = *_temp_1895  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if _temp_1889 != _temp_1891 then goto _Label_1887		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	cmp	r1,r2
	bne	_Label_1887
!	jmp	_Label_1888
_Label_1888:
!   _temp_1897 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-152]
!   _temp_1898 = _temp_1897 + 4
	load	[r14+-152],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_1898 [i ] into _temp_1899
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
!   _temp_1900 = _temp_1899 + 20
	load	[r14+-144],r1
	add	r1,20,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1896 = *_temp_1900  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if _temp_1896 != 2 then goto _Label_1887		(int)
	load	[r14+-156],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1887
!	jmp	_Label_1886
_Label_1886:
! THEN...
	mov	956,r13		! source line 956
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
!   _temp_1901 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-136]
!   _temp_1902 = _temp_1901 + 4
	load	[r14+-136],r1
	add	r1,4,r1
	store	r1,[r14+-132]
!   Move address of _temp_1902 [i ] into _temp_1903
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
!   _temp_1904 = _temp_1903 + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-124]
!   Data Move: *_temp_1904 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-124],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_1906 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-116]
!   _temp_1907 = _temp_1906 + 4
	load	[r14+-116],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_1907 [i ] into _temp_1908
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
!   _temp_1905 = _temp_1908		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-120]
!   _temp_1909 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_1905  sizeInBytes=4
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
!   _temp_1910 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-100]
!   _temp_1911 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_1910  sizeInBytes=4
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
	jmp	_Label_1912
_Label_1887:
! ELSE...
	mov	959,r13		! source line 959
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0IF",r10
!   if isZombie then goto _Label_1914 else goto _Label_1916
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1916
	jmp	_Label_1914
_Label_1916:
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1918 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1917 = *_temp_1918  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   _temp_1920 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_1921 = _temp_1920 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1921 [i ] into _temp_1922
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
!   _temp_1923 = _temp_1922 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1919 = *_temp_1923  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_1917 != _temp_1919 then goto _Label_1914		(int)
	load	[r14+-92],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bne	_Label_1914
!	jmp	_Label_1915
_Label_1915:
!   _temp_1925 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_1926 = _temp_1925 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1926 [i ] into _temp_1927
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
!   _temp_1928 = _temp_1927 + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1924 = *_temp_1928  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_1924 != 1 then goto _Label_1914		(int)
	load	[r14+-64],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1914
!	jmp	_Label_1913
_Label_1913:
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
!   _temp_1929 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1929 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	962,r13		! source line 962
	mov	"\0\0SE",r10
!   _temp_1930 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_1931 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1930  sizeInBytes=4
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
_Label_1914:
! END IF...
_Label_1912:
!   Increment the FOR-LOOP index variable and jump back
_Label_1882:
!   i = i + 1
	load	[r14+-200],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
	jmp	_Label_1880
! END FOR
_Label_1883:
! IF STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0IF",r10
!   if isZombie then goto _Label_1933 else goto _Label_1932
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1932
	jmp	_Label_1933
_Label_1932:
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
!   _temp_1934 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1934 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0SE",r10
!   _temp_1935 = &freeList
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
!   _temp_1936 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-24]
!   _temp_1937 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1936  sizeInBytes=4
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
_Label_1933:
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1938 = &processManagerLock
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
	.word	_Label_1939
	.word	8		! total size of parameters
	.word	200		! frame size = 200
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
	.word	-32
	.word	4
	.word	_Label_1947
	.word	-36
	.word	4
	.word	_Label_1948
	.word	-40
	.word	4
	.word	_Label_1949
	.word	-44
	.word	4
	.word	_Label_1950
	.word	-48
	.word	4
	.word	_Label_1951
	.word	-52
	.word	4
	.word	_Label_1952
	.word	-56
	.word	4
	.word	_Label_1953
	.word	-60
	.word	4
	.word	_Label_1954
	.word	-64
	.word	4
	.word	_Label_1955
	.word	-68
	.word	4
	.word	_Label_1956
	.word	-72
	.word	4
	.word	_Label_1957
	.word	-76
	.word	4
	.word	_Label_1958
	.word	-80
	.word	4
	.word	_Label_1959
	.word	-84
	.word	4
	.word	_Label_1960
	.word	-88
	.word	4
	.word	_Label_1961
	.word	-92
	.word	4
	.word	_Label_1962
	.word	-96
	.word	4
	.word	_Label_1963
	.word	-100
	.word	4
	.word	_Label_1964
	.word	-104
	.word	4
	.word	_Label_1965
	.word	-108
	.word	4
	.word	_Label_1966
	.word	-112
	.word	4
	.word	_Label_1967
	.word	-116
	.word	4
	.word	_Label_1968
	.word	-120
	.word	4
	.word	_Label_1969
	.word	-124
	.word	4
	.word	_Label_1970
	.word	-128
	.word	4
	.word	_Label_1971
	.word	-132
	.word	4
	.word	_Label_1972
	.word	-136
	.word	4
	.word	_Label_1973
	.word	-140
	.word	4
	.word	_Label_1974
	.word	-144
	.word	4
	.word	_Label_1975
	.word	-148
	.word	4
	.word	_Label_1976
	.word	-152
	.word	4
	.word	_Label_1977
	.word	-156
	.word	4
	.word	_Label_1978
	.word	-160
	.word	4
	.word	_Label_1979
	.word	-164
	.word	4
	.word	_Label_1980
	.word	-168
	.word	4
	.word	_Label_1981
	.word	-172
	.word	4
	.word	_Label_1982
	.word	-176
	.word	4
	.word	_Label_1983
	.word	-180
	.word	4
	.word	_Label_1984
	.word	-184
	.word	4
	.word	_Label_1985
	.word	-188
	.word	4
	.word	_Label_1986
	.word	-192
	.word	4
	.word	_Label_1987
	.word	-196
	.word	4
	.word	_Label_1988
	.word	-200
	.word	4
	.word	_Label_1989
	.word	-9
	.word	1
	.word	0
_Label_1939:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_1940:
	.ascii	"Pself\0"
	.align
_Label_1941:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1988:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1989:
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
_Label_3594:
	push	r0
	sub	r1,1,r1
	bne	_Label_3594
	mov	975,r13		! source line 975
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0SE",r10
!   _temp_1990 = &processManagerLock
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
_Label_1991:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1995 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1994 = *_temp_1995  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_1994 == 2 then goto _Label_1993		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1993
!	jmp	_Label_1992
_Label_1992:
	mov	979,r13		! source line 979
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0SE",r10
!   _temp_1996 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_1997 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1996  sizeInBytes=4
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
	jmp	_Label_1991
_Label_1993:
! ASSIGNMENT STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1998 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exitStatus = *_temp_1998  (sizeInBytes=4)
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
!   _temp_1999 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1999 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0SE",r10
!   _temp_2000 = &freeList
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
!   _temp_2001 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2002 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2001  sizeInBytes=4
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
!   _temp_2003 = &processManagerLock
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
	.word	_Label_2004
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2005
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2006
	.word	12
	.word	4
	.word	_Label_2007
	.word	-12
	.word	4
	.word	_Label_2008
	.word	-16
	.word	4
	.word	_Label_2009
	.word	-20
	.word	4
	.word	_Label_2010
	.word	-24
	.word	4
	.word	_Label_2011
	.word	-28
	.word	4
	.word	_Label_2012
	.word	-32
	.word	4
	.word	_Label_2013
	.word	-36
	.word	4
	.word	_Label_2014
	.word	-40
	.word	4
	.word	_Label_2015
	.word	-44
	.word	4
	.word	_Label_2016
	.word	-48
	.word	4
	.word	_Label_2017
	.word	-52
	.word	4
	.word	_Label_2018
	.word	-56
	.word	4
	.word	0
_Label_2004:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2005:
	.ascii	"Pself\0"
	.align
_Label_2006:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_2018:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2019
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2019:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2020
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2020:
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
_Label_3595:
	push	r0
	sub	r1,1,r1
	bne	_Label_3595
	mov	1026,r13		! source line 1026
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2021 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2021  sizeInBytes=4
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
!   _temp_2023 = &framesInUse
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
!   _temp_2025 = &frameManagerLock
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
!   _temp_2027 = &newFramesAvailable
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
!   _temp_2032 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2033 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2032  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2028:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2033 then goto _Label_2031		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2031
_Label_2029:
	mov	1045,r13		! source line 1045
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2036 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2036) then goto _Label_2035
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2035
!	jmp	_Label_2034
_Label_2034:
! THEN...
	mov	1049,r13		! source line 1049
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2037 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2037  sizeInBytes=4
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
_Label_2035:
!   Increment the FOR-LOOP index variable and jump back
_Label_2030:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2028
! END FOR
_Label_2031:
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
	.word	_Label_2038
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2039
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2040
	.word	-12
	.word	4
	.word	_Label_2041
	.word	-16
	.word	4
	.word	_Label_2042
	.word	-20
	.word	4
	.word	_Label_2043
	.word	-24
	.word	4
	.word	_Label_2044
	.word	-28
	.word	4
	.word	_Label_2045
	.word	-32
	.word	4
	.word	_Label_2046
	.word	-36
	.word	4
	.word	_Label_2047
	.word	-40
	.word	4
	.word	_Label_2048
	.word	-44
	.word	4
	.word	_Label_2049
	.word	-48
	.word	4
	.word	_Label_2050
	.word	-52
	.word	4
	.word	_Label_2051
	.word	-56
	.word	4
	.word	0
_Label_2038:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2039:
	.ascii	"Pself\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2051:
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
_Label_3596:
	push	r0
	sub	r1,1,r1
	bne	_Label_3596
	mov	1056,r13		! source line 1056
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0SE",r10
!   _temp_2052 = &frameManagerLock
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
!   _temp_2053 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2053  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1061,r13		! source line 1061
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2054 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2054  sizeInBytes=4
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
!   _temp_2055 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2055  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1063,r13		! source line 1063
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_2056 = &framesInUse
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
!   _temp_2057 = &frameManagerLock
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
	.word	_Label_2058
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2059
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2060
	.word	-12
	.word	4
	.word	_Label_2061
	.word	-16
	.word	4
	.word	_Label_2062
	.word	-20
	.word	4
	.word	_Label_2063
	.word	-24
	.word	4
	.word	_Label_2064
	.word	-28
	.word	4
	.word	_Label_2065
	.word	-32
	.word	4
	.word	0
_Label_2058:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2059:
	.ascii	"Pself\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2052\0"
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
_Label_3597:
	push	r0
	sub	r1,1,r1
	bne	_Label_3597
	mov	1070,r13		! source line 1070
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0SE",r10
!   _temp_2066 = &frameManagerLock
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
_Label_2067:
!   if numberFreeFrames >= 1 then goto _Label_2069		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2069
!	jmp	_Label_2068
_Label_2068:
	mov	1081,r13		! source line 1081
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0SE",r10
!   _temp_2070 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2071 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2070  sizeInBytes=4
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
	jmp	_Label_2067
_Label_2069:
! ASSIGNMENT STATEMENT...
	mov	1086,r13		! source line 1086
	mov	"\0\0AS",r10
	mov	1086,r13		! source line 1086
	mov	"\0\0SE",r10
!   _temp_2072 = &framesInUse
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
!   _temp_2073 = &frameManagerLock
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
!   _temp_2074 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2074		(int)
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
	.word	_Label_2075
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2076
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2077
	.word	-12
	.word	4
	.word	_Label_2078
	.word	-16
	.word	4
	.word	_Label_2079
	.word	-20
	.word	4
	.word	_Label_2080
	.word	-24
	.word	4
	.word	_Label_2081
	.word	-28
	.word	4
	.word	_Label_2082
	.word	-32
	.word	4
	.word	_Label_2083
	.word	-36
	.word	4
	.word	_Label_2084
	.word	-40
	.word	4
	.word	0
_Label_2075:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2076:
	.ascii	"Pself\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2083:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2084:
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
_Label_3598:
	push	r0
	sub	r1,1,r1
	bne	_Label_3598
	mov	1100,r13		! source line 1100
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0SE",r10
!   _temp_2085 = &frameManagerLock
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
_Label_2086:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_2088		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2088
!	jmp	_Label_2087
_Label_2087:
	mov	1103,r13		! source line 1103
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0SE",r10
!   _temp_2089 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2090 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2089  sizeInBytes=4
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
	jmp	_Label_2086
_Label_2088:
! FOR STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2095 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2096 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2095  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_2091:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2096 then goto _Label_2094		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2094
_Label_2092:
	mov	1106,r13		! source line 1106
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0AS",r10
	mov	1107,r13		! source line 1107
	mov	"\0\0SE",r10
!   _temp_2097 = &framesInUse
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
!   _temp_2098 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2098		(int)
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
_Label_2093:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2091
! END FOR
_Label_2094:
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
!   _temp_2099 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2099 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1113,r13		! source line 1113
	mov	"\0\0SE",r10
!   _temp_2100 = &frameManagerLock
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
	.word	_Label_2101
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2102
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2103
	.word	12
	.word	4
	.word	_Label_2104
	.word	16
	.word	4
	.word	_Label_2105
	.word	-12
	.word	4
	.word	_Label_2106
	.word	-16
	.word	4
	.word	_Label_2107
	.word	-20
	.word	4
	.word	_Label_2108
	.word	-24
	.word	4
	.word	_Label_2109
	.word	-28
	.word	4
	.word	_Label_2110
	.word	-32
	.word	4
	.word	_Label_2111
	.word	-36
	.word	4
	.word	_Label_2112
	.word	-40
	.word	4
	.word	_Label_2113
	.word	-44
	.word	4
	.word	_Label_2114
	.word	-48
	.word	4
	.word	_Label_2115
	.word	-52
	.word	4
	.word	_Label_2116
	.word	-56
	.word	4
	.word	0
_Label_2101:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2102:
	.ascii	"Pself\0"
	.align
_Label_2103:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2104:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2114:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2115:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2116:
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
_Label_3599:
	push	r0
	sub	r1,1,r1
	bne	_Label_3599
	mov	1118,r13		! source line 1118
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0SE",r10
!   _temp_2117 = &frameManagerLock
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
!   _temp_2122 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2125 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2124 = *_temp_2125  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2123 = _temp_2124 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2122  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_2118:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2123 then goto _Label_2121		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2121
_Label_2119:
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
!   _temp_2126 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_2126 div 8192		(int)
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
!   _temp_2127 = &framesInUse
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
_Label_2120:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_2118
! END FOR
_Label_2121:
! ASSIGNMENT STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2129 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2128 = *_temp_2129  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_2128		(int)
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
!   _temp_2130 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2130 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_2131 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2132 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2131  sizeInBytes=4
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
!   _temp_2133 = &frameManagerLock
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
	.word	_Label_2134
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2135
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2136
	.word	12
	.word	4
	.word	_Label_2137
	.word	-12
	.word	4
	.word	_Label_2138
	.word	-16
	.word	4
	.word	_Label_2139
	.word	-20
	.word	4
	.word	_Label_2140
	.word	-24
	.word	4
	.word	_Label_2141
	.word	-28
	.word	4
	.word	_Label_2142
	.word	-32
	.word	4
	.word	_Label_2143
	.word	-36
	.word	4
	.word	_Label_2144
	.word	-40
	.word	4
	.word	_Label_2145
	.word	-44
	.word	4
	.word	_Label_2146
	.word	-48
	.word	4
	.word	_Label_2147
	.word	-52
	.word	4
	.word	_Label_2148
	.word	-56
	.word	4
	.word	_Label_2149
	.word	-60
	.word	4
	.word	_Label_2150
	.word	-64
	.word	4
	.word	_Label_2151
	.word	-68
	.word	4
	.word	_Label_2152
	.word	-72
	.word	4
	.word	0
_Label_2134:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2135:
	.ascii	"Pself\0"
	.align
_Label_2136:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2150:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2151:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2152:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2153
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
_Label_2153:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2154
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2154:
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
_Label_3600:
	push	r0
	sub	r1,1,r1
	bne	_Label_3600
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
!   _temp_2155 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2157 = &_temp_2156
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2157 = _temp_2157 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2159:
!   Data Move: *_temp_2157 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2157 = _temp_2157 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2158 = _temp_2158 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2158) then goto _Label_2159
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2159
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2160 = &_temp_2156
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3601
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3601:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2155 = *_temp_2160  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3602:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3602
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
	.word	_Label_2161
	.word	4		! total size of parameters
	.word	100		! frame size = 100
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
	.word	-104
	.word	84
	.word	_Label_2167
	.word	-108
	.word	4
	.word	0
_Label_2161:
	.ascii	"AddrSpace"
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
	.ascii	"_temp_2158\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2155\0"
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
_Label_3603:
	push	r0
	sub	r1,1,r1
	bne	_Label_3603
	mov	1150,r13		! source line 1150
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2168 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2168  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1155,r13		! source line 1155
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2169 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2169  sizeInBytes=4
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
!   _temp_2174 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2175 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2174  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2170:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2175 then goto _Label_2173		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2173
_Label_2171:
	mov	1157,r13		! source line 1157
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2176 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2176  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1158,r13		! source line 1158
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2178 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2178 [i ] into _temp_2179
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
!   _temp_2177 = _temp_2179		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2177  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1159,r13		! source line 1159
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2180 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2180  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1160,r13		! source line 1160
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2182 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2182 [i ] into _temp_2183
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
!   Data Move: _temp_2181 = *_temp_2183  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2181  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1161,r13		! source line 1161
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2184 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2184  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1162,r13		! source line 1162
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2185 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2185  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1163,r13		! source line 1163
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2186 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2186  sizeInBytes=4
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
!   if intIsZero (_temp_2188) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2187  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2187  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1165,r13		! source line 1165
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2189 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2189  sizeInBytes=4
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
!   if intIsZero (_temp_2193) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2192  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2192) then goto _Label_2191
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2191
!	jmp	_Label_2190
_Label_2190:
! THEN...
	mov	1168,r13		! source line 1168
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2195) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2194  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2194  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1168,r13		! source line 1168
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2196
_Label_2191:
! ELSE...
	mov	1170,r13		! source line 1170
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2197 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2197  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1170,r13		! source line 1170
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2196:
! CALL STATEMENT...
!   _temp_2198 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2198  sizeInBytes=4
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
!   if intIsZero (_temp_2201) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2199 else goto _Label_2200
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2200
	jmp	_Label_2199
_Label_2199:
! THEN...
	mov	1174,r13		! source line 1174
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2202 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2202  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1174,r13		! source line 1174
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2203
_Label_2200:
! ELSE...
	mov	1176,r13		! source line 1176
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2204 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2204  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1176,r13		! source line 1176
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2203:
! CALL STATEMENT...
!   _temp_2205 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2205  sizeInBytes=4
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
!   if intIsZero (_temp_2208) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2206 else goto _Label_2207
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2207
	jmp	_Label_2206
_Label_2206:
! THEN...
	mov	1180,r13		! source line 1180
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2209 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2209  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1180,r13		! source line 1180
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2210
_Label_2207:
! ELSE...
	mov	1182,r13		! source line 1182
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2211 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2211  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1182,r13		! source line 1182
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2210:
! CALL STATEMENT...
!   _temp_2212 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2212  sizeInBytes=4
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
!   if intIsZero (_temp_2215) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2213 else goto _Label_2214
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2214
	jmp	_Label_2213
_Label_2213:
! THEN...
	mov	1186,r13		! source line 1186
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2216 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2216  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1186,r13		! source line 1186
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2217
_Label_2214:
! ELSE...
	mov	1188,r13		! source line 1188
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2218 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2218  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1188,r13		! source line 1188
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2217:
! CALL STATEMENT...
!   _temp_2219 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2219  sizeInBytes=4
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
!   if intIsZero (_temp_2222) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2220 else goto _Label_2221
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2221
	jmp	_Label_2220
_Label_2220:
! THEN...
	mov	1192,r13		! source line 1192
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2223 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2223  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1192,r13		! source line 1192
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2224
_Label_2221:
! ELSE...
	mov	1194,r13		! source line 1194
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2225 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2225  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1194,r13		! source line 1194
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2224:
! CALL STATEMENT...
!   Call the function
	mov	1196,r13		! source line 1196
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2172:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2170
! END FOR
_Label_2173:
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
	.word	_Label_2226
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2227
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2228
	.word	-12
	.word	4
	.word	_Label_2229
	.word	-16
	.word	4
	.word	_Label_2230
	.word	-20
	.word	4
	.word	_Label_2231
	.word	-24
	.word	4
	.word	_Label_2232
	.word	-28
	.word	4
	.word	_Label_2233
	.word	-32
	.word	4
	.word	_Label_2234
	.word	-36
	.word	4
	.word	_Label_2235
	.word	-40
	.word	4
	.word	_Label_2236
	.word	-44
	.word	4
	.word	_Label_2237
	.word	-48
	.word	4
	.word	_Label_2238
	.word	-52
	.word	4
	.word	_Label_2239
	.word	-56
	.word	4
	.word	_Label_2240
	.word	-60
	.word	4
	.word	_Label_2241
	.word	-64
	.word	4
	.word	_Label_2242
	.word	-68
	.word	4
	.word	_Label_2243
	.word	-72
	.word	4
	.word	_Label_2244
	.word	-76
	.word	4
	.word	_Label_2245
	.word	-80
	.word	4
	.word	_Label_2246
	.word	-84
	.word	4
	.word	_Label_2247
	.word	-88
	.word	4
	.word	_Label_2248
	.word	-92
	.word	4
	.word	_Label_2249
	.word	-96
	.word	4
	.word	_Label_2250
	.word	-100
	.word	4
	.word	_Label_2251
	.word	-104
	.word	4
	.word	_Label_2252
	.word	-108
	.word	4
	.word	_Label_2253
	.word	-112
	.word	4
	.word	_Label_2254
	.word	-116
	.word	4
	.word	_Label_2255
	.word	-120
	.word	4
	.word	_Label_2256
	.word	-124
	.word	4
	.word	_Label_2257
	.word	-128
	.word	4
	.word	_Label_2258
	.word	-132
	.word	4
	.word	_Label_2259
	.word	-136
	.word	4
	.word	_Label_2260
	.word	-140
	.word	4
	.word	_Label_2261
	.word	-144
	.word	4
	.word	_Label_2262
	.word	-148
	.word	4
	.word	_Label_2263
	.word	-152
	.word	4
	.word	_Label_2264
	.word	-156
	.word	4
	.word	_Label_2265
	.word	-160
	.word	4
	.word	_Label_2266
	.word	-164
	.word	4
	.word	_Label_2267
	.word	-168
	.word	4
	.word	0
_Label_2226:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2227:
	.ascii	"Pself\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2267:
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
_Label_3604:
	push	r0
	sub	r1,1,r1
	bne	_Label_3604
	mov	1202,r13		! source line 1202
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0RE",r10
!   _temp_2270 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2270 [entry ] into _temp_2271
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
!   Data Move: _temp_2269 = *_temp_2271  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2268 = _temp_2269 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2268  (sizeInBytes=4)
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
	.word	_Label_2272
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2273
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2274
	.word	12
	.word	4
	.word	_Label_2275
	.word	-12
	.word	4
	.word	_Label_2276
	.word	-16
	.word	4
	.word	_Label_2277
	.word	-20
	.word	4
	.word	_Label_2278
	.word	-24
	.word	4
	.word	0
_Label_2272:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2273:
	.ascii	"Pself\0"
	.align
_Label_2274:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2268\0"
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
_Label_3605:
	push	r0
	sub	r1,1,r1
	bne	_Label_3605
	mov	1212,r13		! source line 1212
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0RE",r10
!   _temp_2281 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2281 [entry ] into _temp_2282
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
!   Data Move: _temp_2280 = *_temp_2282  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2279 = _temp_2280 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2279  (sizeInBytes=4)
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
	.word	_Label_2283
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2284
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2285
	.word	12
	.word	4
	.word	_Label_2286
	.word	-12
	.word	4
	.word	_Label_2287
	.word	-16
	.word	4
	.word	_Label_2288
	.word	-20
	.word	4
	.word	_Label_2289
	.word	-24
	.word	4
	.word	0
_Label_2283:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2284:
	.ascii	"Pself\0"
	.align
_Label_2285:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2279\0"
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
_Label_3606:
	push	r0
	sub	r1,1,r1
	bne	_Label_3606
	mov	1221,r13		! source line 1221
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1226,r13		! source line 1226
	mov	"\0\0AS",r10
!   _temp_2290 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2290 [entry ] into _temp_2291
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
!   _temp_2295 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2295 [entry ] into _temp_2296
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
!   Data Move: _temp_2294 = *_temp_2296  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2293 = _temp_2294 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2292 = _temp_2293 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2291 = _temp_2292  (sizeInBytes=4)
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
	.word	_Label_2297
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2298
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2299
	.word	12
	.word	4
	.word	_Label_2300
	.word	16
	.word	4
	.word	_Label_2301
	.word	-12
	.word	4
	.word	_Label_2302
	.word	-16
	.word	4
	.word	_Label_2303
	.word	-20
	.word	4
	.word	_Label_2304
	.word	-24
	.word	4
	.word	_Label_2305
	.word	-28
	.word	4
	.word	_Label_2306
	.word	-32
	.word	4
	.word	_Label_2307
	.word	-36
	.word	4
	.word	0
_Label_2297:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2298:
	.ascii	"Pself\0"
	.align
_Label_2299:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2300:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2290\0"
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
_Label_3607:
	push	r0
	sub	r1,1,r1
	bne	_Label_3607
	mov	1231,r13		! source line 1231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0RE",r10
!   _temp_2311 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2311 [entry ] into _temp_2312
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
!   Data Move: _temp_2310 = *_temp_2312  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2309 = _temp_2310 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2309) then goto _Label_2313
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2313
!   _temp_2308 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2314
_Label_2313:
!   _temp_2308 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2314:
!   ReturnResult: _temp_2308  (sizeInBytes=1)
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
	.word	_Label_2315
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2316
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2317
	.word	12
	.word	4
	.word	_Label_2318
	.word	-16
	.word	4
	.word	_Label_2319
	.word	-20
	.word	4
	.word	_Label_2320
	.word	-24
	.word	4
	.word	_Label_2321
	.word	-28
	.word	4
	.word	_Label_2322
	.word	-9
	.word	1
	.word	0
_Label_2315:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2316:
	.ascii	"Pself\0"
	.align
_Label_2317:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2322:
	.byte	'C'
	.ascii	"_temp_2308\0"
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
_Label_3608:
	push	r0
	sub	r1,1,r1
	bne	_Label_3608
	mov	1240,r13		! source line 1240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0RE",r10
!   _temp_2326 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2326 [entry ] into _temp_2327
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
!   Data Move: _temp_2325 = *_temp_2327  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2324 = _temp_2325 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2324) then goto _Label_2328
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2328
!   _temp_2323 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2329
_Label_2328:
!   _temp_2323 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2329:
!   ReturnResult: _temp_2323  (sizeInBytes=1)
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
	.word	_Label_2330
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2331
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2332
	.word	12
	.word	4
	.word	_Label_2333
	.word	-16
	.word	4
	.word	_Label_2334
	.word	-20
	.word	4
	.word	_Label_2335
	.word	-24
	.word	4
	.word	_Label_2336
	.word	-28
	.word	4
	.word	_Label_2337
	.word	-9
	.word	1
	.word	0
_Label_2330:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2331:
	.ascii	"Pself\0"
	.align
_Label_2332:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2337:
	.byte	'C'
	.ascii	"_temp_2323\0"
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
_Label_3609:
	push	r0
	sub	r1,1,r1
	bne	_Label_3609
	mov	1249,r13		! source line 1249
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1253,r13		! source line 1253
	mov	"\0\0RE",r10
!   _temp_2341 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2341 [entry ] into _temp_2342
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
!   Data Move: _temp_2340 = *_temp_2342  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2339 = _temp_2340 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2339) then goto _Label_2343
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2343
!   _temp_2338 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2344
_Label_2343:
!   _temp_2338 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2344:
!   ReturnResult: _temp_2338  (sizeInBytes=1)
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
	.word	_Label_2345
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2346
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2347
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_2345:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2346:
	.ascii	"Pself\0"
	.align
_Label_2347:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2352:
	.byte	'C'
	.ascii	"_temp_2338\0"
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
_Label_3610:
	push	r0
	sub	r1,1,r1
	bne	_Label_3610
	mov	1258,r13		! source line 1258
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0RE",r10
!   _temp_2356 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2356 [entry ] into _temp_2357
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
!   Data Move: _temp_2355 = *_temp_2357  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2354 = _temp_2355 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2354) then goto _Label_2358
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2358
!   _temp_2353 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2359
_Label_2358:
!   _temp_2353 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2359:
!   ReturnResult: _temp_2353  (sizeInBytes=1)
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
	.word	_Label_2360
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2361
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2362
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_2360:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2361:
	.ascii	"Pself\0"
	.align
_Label_2362:
	.byte	'I'
	.ascii	"entry\0"
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
	.byte	'C'
	.ascii	"_temp_2353\0"
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
_Label_3611:
	push	r0
	sub	r1,1,r1
	bne	_Label_3611
	mov	1267,r13		! source line 1267
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1271,r13		! source line 1271
	mov	"\0\0AS",r10
!   _temp_2368 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2368 [entry ] into _temp_2369
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
!   _temp_2372 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2372 [entry ] into _temp_2373
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
!   Data Move: _temp_2371 = *_temp_2373  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2370 = _temp_2371 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2369 = _temp_2370  (sizeInBytes=4)
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
	.word	_Label_2374
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2375
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2376
	.word	12
	.word	4
	.word	_Label_2377
	.word	-12
	.word	4
	.word	_Label_2378
	.word	-16
	.word	4
	.word	_Label_2379
	.word	-20
	.word	4
	.word	_Label_2380
	.word	-24
	.word	4
	.word	_Label_2381
	.word	-28
	.word	4
	.word	_Label_2382
	.word	-32
	.word	4
	.word	0
_Label_2374:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2375:
	.ascii	"Pself\0"
	.align
_Label_2376:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2368\0"
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
_Label_3612:
	push	r0
	sub	r1,1,r1
	bne	_Label_3612
	mov	1276,r13		! source line 1276
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0AS",r10
!   _temp_2383 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2383 [entry ] into _temp_2384
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
!   _temp_2387 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2387 [entry ] into _temp_2388
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
!   Data Move: _temp_2386 = *_temp_2388  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2385 = _temp_2386 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2384 = _temp_2385  (sizeInBytes=4)
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
	.word	_Label_2389
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2390
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2391
	.word	12
	.word	4
	.word	_Label_2392
	.word	-12
	.word	4
	.word	_Label_2393
	.word	-16
	.word	4
	.word	_Label_2394
	.word	-20
	.word	4
	.word	_Label_2395
	.word	-24
	.word	4
	.word	_Label_2396
	.word	-28
	.word	4
	.word	_Label_2397
	.word	-32
	.word	4
	.word	0
_Label_2389:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2390:
	.ascii	"Pself\0"
	.align
_Label_2391:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2383\0"
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
_Label_3613:
	push	r0
	sub	r1,1,r1
	bne	_Label_3613
	mov	1285,r13		! source line 1285
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1289,r13		! source line 1289
	mov	"\0\0AS",r10
!   _temp_2398 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2398 [entry ] into _temp_2399
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
!   _temp_2402 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2402 [entry ] into _temp_2403
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
!   Data Move: _temp_2401 = *_temp_2403  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2400 = _temp_2401 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2399 = _temp_2400  (sizeInBytes=4)
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
	.word	_Label_2404
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2405
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2406
	.word	12
	.word	4
	.word	_Label_2407
	.word	-12
	.word	4
	.word	_Label_2408
	.word	-16
	.word	4
	.word	_Label_2409
	.word	-20
	.word	4
	.word	_Label_2410
	.word	-24
	.word	4
	.word	_Label_2411
	.word	-28
	.word	4
	.word	_Label_2412
	.word	-32
	.word	4
	.word	0
_Label_2404:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2405:
	.ascii	"Pself\0"
	.align
_Label_2406:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2398\0"
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
_Label_3614:
	push	r0
	sub	r1,1,r1
	bne	_Label_3614
	mov	1294,r13		! source line 1294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0AS",r10
!   _temp_2413 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2413 [entry ] into _temp_2414
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
!   _temp_2417 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2417 [entry ] into _temp_2418
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
!   Data Move: _temp_2416 = *_temp_2418  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2415 = _temp_2416 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2414 = _temp_2415  (sizeInBytes=4)
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
	.word	_Label_2419
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2420
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2421
	.word	12
	.word	4
	.word	_Label_2422
	.word	-12
	.word	4
	.word	_Label_2423
	.word	-16
	.word	4
	.word	_Label_2424
	.word	-20
	.word	4
	.word	_Label_2425
	.word	-24
	.word	4
	.word	_Label_2426
	.word	-28
	.word	4
	.word	_Label_2427
	.word	-32
	.word	4
	.word	0
_Label_2419:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2420:
	.ascii	"Pself\0"
	.align
_Label_2421:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2413\0"
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
_Label_3615:
	push	r0
	sub	r1,1,r1
	bne	_Label_3615
	mov	1303,r13		! source line 1303
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0AS",r10
!   _temp_2428 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2428 [entry ] into _temp_2429
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
!   _temp_2432 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2432 [entry ] into _temp_2433
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
!   Data Move: _temp_2431 = *_temp_2433  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2430 = _temp_2431 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2429 = _temp_2430  (sizeInBytes=4)
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
	.word	_Label_2434
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2435
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2436
	.word	12
	.word	4
	.word	_Label_2437
	.word	-12
	.word	4
	.word	_Label_2438
	.word	-16
	.word	4
	.word	_Label_2439
	.word	-20
	.word	4
	.word	_Label_2440
	.word	-24
	.word	4
	.word	_Label_2441
	.word	-28
	.word	4
	.word	_Label_2442
	.word	-32
	.word	4
	.word	0
_Label_2434:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2435:
	.ascii	"Pself\0"
	.align
_Label_2436:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2428\0"
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
_Label_3616:
	push	r0
	sub	r1,1,r1
	bne	_Label_3616
	mov	1312,r13		! source line 1312
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0AS",r10
!   _temp_2443 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2443 [entry ] into _temp_2444
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
!   _temp_2447 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2447 [entry ] into _temp_2448
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
!   Data Move: _temp_2446 = *_temp_2448  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2445 = _temp_2446 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2444 = _temp_2445  (sizeInBytes=4)
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
	.word	_Label_2449
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2450
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2451
	.word	12
	.word	4
	.word	_Label_2452
	.word	-12
	.word	4
	.word	_Label_2453
	.word	-16
	.word	4
	.word	_Label_2454
	.word	-20
	.word	4
	.word	_Label_2455
	.word	-24
	.word	4
	.word	_Label_2456
	.word	-28
	.word	4
	.word	_Label_2457
	.word	-32
	.word	4
	.word	0
_Label_2449:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2450:
	.ascii	"Pself\0"
	.align
_Label_2451:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2443\0"
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
_Label_3617:
	push	r0
	sub	r1,1,r1
	bne	_Label_3617
	mov	1321,r13		! source line 1321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1325,r13		! source line 1325
	mov	"\0\0AS",r10
!   _temp_2458 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2458 [entry ] into _temp_2459
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
!   _temp_2462 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2462 [entry ] into _temp_2463
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
!   Data Move: _temp_2461 = *_temp_2463  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2460 = _temp_2461 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2459 = _temp_2460  (sizeInBytes=4)
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
	.word	_Label_2464
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2465
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2466
	.word	12
	.word	4
	.word	_Label_2467
	.word	-12
	.word	4
	.word	_Label_2468
	.word	-16
	.word	4
	.word	_Label_2469
	.word	-20
	.word	4
	.word	_Label_2470
	.word	-24
	.word	4
	.word	_Label_2471
	.word	-28
	.word	4
	.word	_Label_2472
	.word	-32
	.word	4
	.word	0
_Label_2464:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2465:
	.ascii	"Pself\0"
	.align
_Label_2466:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2460\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2458\0"
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
_Label_3618:
	push	r0
	sub	r1,1,r1
	bne	_Label_3618
	mov	1330,r13		! source line 1330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0AS",r10
!   _temp_2473 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2473 [entry ] into _temp_2474
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
!   _temp_2477 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2477 [entry ] into _temp_2478
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
!   Data Move: _temp_2476 = *_temp_2478  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2475 = _temp_2476 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2474 = _temp_2475  (sizeInBytes=4)
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
	.word	_Label_2479
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2480
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2481
	.word	12
	.word	4
	.word	_Label_2482
	.word	-12
	.word	4
	.word	_Label_2483
	.word	-16
	.word	4
	.word	_Label_2484
	.word	-20
	.word	4
	.word	_Label_2485
	.word	-24
	.word	4
	.word	_Label_2486
	.word	-28
	.word	4
	.word	_Label_2487
	.word	-32
	.word	4
	.word	0
_Label_2479:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2480:
	.ascii	"Pself\0"
	.align
_Label_2481:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2473\0"
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
_Label_3619:
	push	r0
	sub	r1,1,r1
	bne	_Label_3619
	mov	1339,r13		! source line 1339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2489 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2489 [0 ] into _temp_2490
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
!   _temp_2488 = _temp_2490		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2491 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2488  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2491  sizeInBytes=4
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
	.word	_Label_2492
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2493
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2494
	.word	-12
	.word	4
	.word	_Label_2495
	.word	-16
	.word	4
	.word	_Label_2496
	.word	-20
	.word	4
	.word	_Label_2497
	.word	-24
	.word	4
	.word	0
_Label_2492:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2493:
	.ascii	"Pself\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2488\0"
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
_Label_3620:
	push	r0
	sub	r1,1,r1
	bne	_Label_3620
	mov	1350,r13		! source line 1350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2498
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2498
	jmp	_Label_2499
_Label_2498:
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
	jmp	_Label_2500
_Label_2499:
! ELSE...
	mov	1367,r13		! source line 1367
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2502		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2502
!	jmp	_Label_2501
_Label_2501:
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
_Label_2502:
! END IF...
_Label_2500:
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
_Label_2503:
!	jmp	_Label_2504
_Label_2504:
	mov	1374,r13		! source line 1374
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2507		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2507
!	jmp	_Label_2506
_Label_2506:
! THEN...
	mov	1376,r13		! source line 1376
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2508 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2508  sizeInBytes=4
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
_Label_2507:
! IF STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0IF",r10
	mov	1379,r13		! source line 1379
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2512) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2511  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2511 then goto _Label_2510 else goto _Label_2509
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2509
	jmp	_Label_2510
_Label_2509:
! THEN...
	mov	1380,r13		! source line 1380
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2513 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2513  sizeInBytes=4
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
_Label_2510:
! ASSIGNMENT STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0AS",r10
	mov	1383,r13		! source line 1383
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2515) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2514  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2514 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0WH",r10
_Label_2516:
!   if offset >= 8192 then goto _Label_2518		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2518
!	jmp	_Label_2517
_Label_2517:
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
!   Data Move: _temp_2519 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2519  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2521		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2521
!	jmp	_Label_2520
_Label_2520:
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
_Label_2521:
! END WHILE...
	jmp	_Label_2516
_Label_2518:
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
	jmp	_Label_2503
_Label_2505:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2522
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2523
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2524
	.word	12
	.word	4
	.word	_Label_2525
	.word	16
	.word	4
	.word	_Label_2526
	.word	20
	.word	4
	.word	_Label_2527
	.word	-9
	.word	1
	.word	_Label_2528
	.word	-16
	.word	4
	.word	_Label_2529
	.word	-20
	.word	4
	.word	_Label_2530
	.word	-24
	.word	4
	.word	_Label_2531
	.word	-28
	.word	4
	.word	_Label_2532
	.word	-10
	.word	1
	.word	_Label_2533
	.word	-32
	.word	4
	.word	_Label_2534
	.word	-36
	.word	4
	.word	_Label_2535
	.word	-40
	.word	4
	.word	_Label_2536
	.word	-44
	.word	4
	.word	_Label_2537
	.word	-48
	.word	4
	.word	0
_Label_2522:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2523:
	.ascii	"Pself\0"
	.align
_Label_2524:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2525:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2526:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2527:
	.byte	'C'
	.ascii	"_temp_2519\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2532:
	.byte	'C'
	.ascii	"_temp_2511\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2534:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2535:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2536:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2537:
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
_Label_3621:
	push	r0
	sub	r1,1,r1
	bne	_Label_3621
	mov	1404,r13		! source line 1404
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2538
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2538
	jmp	_Label_2539
_Label_2538:
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
	jmp	_Label_2540
_Label_2539:
! ELSE...
	mov	1417,r13		! source line 1417
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2542		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2542
!	jmp	_Label_2541
_Label_2541:
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
_Label_2542:
! END IF...
_Label_2540:
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
_Label_2543:
!	jmp	_Label_2544
_Label_2544:
	mov	1422,r13		! source line 1422
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2549		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2549
	jmp	_Label_2546
_Label_2549:
	mov	1424,r13		! source line 1424
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2551) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2550  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2550 then goto _Label_2548 else goto _Label_2546
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2546
	jmp	_Label_2548
_Label_2548:
	mov	1425,r13		! source line 1425
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2553) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2552  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2552 then goto _Label_2547 else goto _Label_2546
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2546
	jmp	_Label_2547
_Label_2546:
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
_Label_2547:
! ASSIGNMENT STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0AS",r10
	mov	1428,r13		! source line 1428
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2555) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2554  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2554 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0WH",r10
_Label_2556:
!   if offset >= 8192 then goto _Label_2558		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2558
!	jmp	_Label_2557
_Label_2557:
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
!   Data Move: _temp_2559 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2559  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2561		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2561
!	jmp	_Label_2560
_Label_2560:
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
_Label_2561:
! END WHILE...
	jmp	_Label_2556
_Label_2558:
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
	jmp	_Label_2543
_Label_2545:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2562
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2563
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2564
	.word	12
	.word	4
	.word	_Label_2565
	.word	16
	.word	4
	.word	_Label_2566
	.word	20
	.word	4
	.word	_Label_2567
	.word	-9
	.word	1
	.word	_Label_2568
	.word	-16
	.word	4
	.word	_Label_2569
	.word	-20
	.word	4
	.word	_Label_2570
	.word	-24
	.word	4
	.word	_Label_2571
	.word	-10
	.word	1
	.word	_Label_2572
	.word	-28
	.word	4
	.word	_Label_2573
	.word	-11
	.word	1
	.word	_Label_2574
	.word	-32
	.word	4
	.word	_Label_2575
	.word	-36
	.word	4
	.word	_Label_2576
	.word	-40
	.word	4
	.word	_Label_2577
	.word	-44
	.word	4
	.word	0
_Label_2562:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2563:
	.ascii	"Pself\0"
	.align
_Label_2564:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2565:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2566:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2567:
	.byte	'C'
	.ascii	"_temp_2559\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2571:
	.byte	'C'
	.ascii	"_temp_2552\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2573:
	.byte	'C'
	.ascii	"_temp_2550\0"
	.align
_Label_2574:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2575:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2576:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2577:
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
_Label_3622:
	push	r0
	sub	r1,1,r1
	bne	_Label_3622
	mov	1446,r13		! source line 1446
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1470,r13		! source line 1470
	mov	"\0\0IF",r10
	mov	1470,r13		! source line 1470
	mov	"\0\0SE",r10
!   _temp_2581 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2582) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2581  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2580  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2580 >= 4 then goto _Label_2579		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2579
!	jmp	_Label_2578
_Label_2578:
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
_Label_2579:
! IF STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2584		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2584
!	jmp	_Label_2583
_Label_2583:
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
_Label_2584:
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
!   _temp_2587 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2586 = _temp_2587 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2588 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2589) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2586  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2588  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2585  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2585  (sizeInBytes=4)
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
	.word	_Label_2590
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2591
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2592
	.word	12
	.word	4
	.word	_Label_2593
	.word	16
	.word	4
	.word	_Label_2594
	.word	20
	.word	4
	.word	_Label_2595
	.word	-12
	.word	4
	.word	_Label_2596
	.word	-16
	.word	4
	.word	_Label_2597
	.word	-20
	.word	4
	.word	_Label_2598
	.word	-24
	.word	4
	.word	_Label_2599
	.word	-28
	.word	4
	.word	_Label_2600
	.word	-32
	.word	4
	.word	_Label_2601
	.word	-36
	.word	4
	.word	_Label_2602
	.word	-40
	.word	4
	.word	_Label_2603
	.word	-44
	.word	4
	.word	0
_Label_2590:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2591:
	.ascii	"Pself\0"
	.align
_Label_2592:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2593:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2594:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2603:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2604
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2604:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2605
	.word	_sourceFileName
	.word	308		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2605:
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
_Label_3623:
	push	r0
	sub	r1,1,r1
	bne	_Label_3623
	mov	2062,r13		! source line 2062
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2606 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2606  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2063,r13		! source line 2063
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2070,r13		! source line 2070
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
	mov	2071,r13		! source line 2071
	mov	"\0\0SE",r10
!   _temp_2608 = &semUsedInSynchMethods
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
	mov	2072,r13		! source line 2072
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
	mov	2073,r13		! source line 2073
	mov	"\0\0SE",r10
!   _temp_2610 = &diskBusy
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
	mov	2073,r13		! source line 2073
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
	.word	_Label_2611
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2612
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2613
	.word	-12
	.word	4
	.word	_Label_2614
	.word	-16
	.word	4
	.word	_Label_2615
	.word	-20
	.word	4
	.word	_Label_2616
	.word	-24
	.word	4
	.word	_Label_2617
	.word	-28
	.word	4
	.word	0
_Label_2611:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2612:
	.ascii	"Pself\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2606\0"
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
_Label_3624:
	push	r0
	sub	r1,1,r1
	bne	_Label_3624
	mov	2078,r13		! source line 2078
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0SE",r10
!   _temp_2618 = &diskBusy
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
	mov	2092,r13		! source line 2092
	mov	"\0\0WH",r10
_Label_2619:
!	jmp	_Label_2620
_Label_2620:
	mov	2092,r13		! source line 2092
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0SE",r10
!   _temp_2622 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2623) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2622  sizeInBytes=4
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
	mov	2096,r13		! source line 2096
	mov	"\0\0SE",r10
!   _temp_2624 = &semUsedInSynchMethods
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
	mov	2099,r13		! source line 2099
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2633 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2627
	cmp	r1,2
	be	_Label_2628
	cmp	r1,3
	be	_Label_2629
	cmp	r1,4
	be	_Label_2630
	cmp	r1,5
	be	_Label_2631
	cmp	r1,6
	be	_Label_2632
	jmp	_Label_2625
! CASE 1...
_Label_2627:
! SEND STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0SE",r10
!   _temp_2634 = &diskBusy
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
	mov	2102,r13		! source line 2102
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2628:
! CALL STATEMENT...
!   _temp_2635 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2635  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2104,r13		! source line 2104
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2629:
! CALL STATEMENT...
!   _temp_2636 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2636  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2106,r13		! source line 2106
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2630:
! CALL STATEMENT...
!   _temp_2637 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2637  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2108,r13		! source line 2108
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2631:
! BREAK STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0BR",r10
	jmp	_Label_2626
! CASE 6...
_Label_2632:
! CALL STATEMENT...
!   _temp_2638 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2638  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2114,r13		! source line 2114
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2625:
! CALL STATEMENT...
!   _temp_2639 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2639  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2116,r13		! source line 2116
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2626:
! END WHILE...
	jmp	_Label_2619
_Label_2621:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2640
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2641
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2642
	.word	12
	.word	4
	.word	_Label_2643
	.word	16
	.word	4
	.word	_Label_2644
	.word	20
	.word	4
	.word	_Label_2645
	.word	-12
	.word	4
	.word	_Label_2646
	.word	-16
	.word	4
	.word	_Label_2647
	.word	-20
	.word	4
	.word	_Label_2648
	.word	-24
	.word	4
	.word	_Label_2649
	.word	-28
	.word	4
	.word	_Label_2650
	.word	-32
	.word	4
	.word	_Label_2651
	.word	-36
	.word	4
	.word	_Label_2652
	.word	-40
	.word	4
	.word	_Label_2653
	.word	-44
	.word	4
	.word	_Label_2654
	.word	-48
	.word	4
	.word	_Label_2655
	.word	-52
	.word	4
	.word	0
_Label_2640:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2641:
	.ascii	"Pself\0"
	.align
_Label_2642:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2643:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2644:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2618\0"
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
	mov	2125,r13		! source line 2125
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
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
	mov	2144,r13		! source line 2144
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
	mov	2145,r13		! source line 2145
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
	mov	2146,r13		! source line 2146
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
	mov	2146,r13		! source line 2146
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
	.word	_Label_2656
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2657
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2658
	.word	12
	.word	4
	.word	_Label_2659
	.word	16
	.word	4
	.word	_Label_2660
	.word	20
	.word	4
	.word	_Label_2661
	.word	24
	.word	4
	.word	0
_Label_2656:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2657:
	.ascii	"Pself\0"
	.align
_Label_2658:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2659:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2660:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2661:
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
_Label_3625:
	push	r0
	sub	r1,1,r1
	bne	_Label_3625
	mov	2151,r13		! source line 2151
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0SE",r10
!   _temp_2662 = &diskBusy
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
	mov	2164,r13		! source line 2164
	mov	"\0\0WH",r10
_Label_2663:
!	jmp	_Label_2664
_Label_2664:
	mov	2164,r13		! source line 2164
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0SE",r10
!   _temp_2666 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2667) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2666  sizeInBytes=4
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
	mov	2167,r13		! source line 2167
	mov	"\0\0SE",r10
!   _temp_2668 = &semUsedInSynchMethods
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
	mov	2170,r13		! source line 2170
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2677 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2671
	cmp	r1,2
	be	_Label_2672
	cmp	r1,3
	be	_Label_2673
	cmp	r1,4
	be	_Label_2674
	cmp	r1,5
	be	_Label_2675
	cmp	r1,6
	be	_Label_2676
	jmp	_Label_2669
! CASE 1...
_Label_2671:
! SEND STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0SE",r10
!   _temp_2678 = &diskBusy
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
	mov	2173,r13		! source line 2173
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2672:
! CALL STATEMENT...
!   _temp_2679 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2679  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2175,r13		! source line 2175
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2673:
! CALL STATEMENT...
!   _temp_2680 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2680  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2177,r13		! source line 2177
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2674:
! CALL STATEMENT...
!   _temp_2681 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2681  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2179,r13		! source line 2179
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2675:
! BREAK STATEMENT...
	mov	2183,r13		! source line 2183
	mov	"\0\0BR",r10
	jmp	_Label_2670
! CASE 6...
_Label_2676:
! CALL STATEMENT...
!   _temp_2682 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2682  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2185,r13		! source line 2185
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2669:
! CALL STATEMENT...
!   _temp_2683 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2683  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2187,r13		! source line 2187
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2670:
! END WHILE...
	jmp	_Label_2663
_Label_2665:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2684
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2685
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2686
	.word	12
	.word	4
	.word	_Label_2687
	.word	16
	.word	4
	.word	_Label_2688
	.word	20
	.word	4
	.word	_Label_2689
	.word	-12
	.word	4
	.word	_Label_2690
	.word	-16
	.word	4
	.word	_Label_2691
	.word	-20
	.word	4
	.word	_Label_2692
	.word	-24
	.word	4
	.word	_Label_2693
	.word	-28
	.word	4
	.word	_Label_2694
	.word	-32
	.word	4
	.word	_Label_2695
	.word	-36
	.word	4
	.word	_Label_2696
	.word	-40
	.word	4
	.word	_Label_2697
	.word	-44
	.word	4
	.word	_Label_2698
	.word	-48
	.word	4
	.word	_Label_2699
	.word	-52
	.word	4
	.word	0
_Label_2684:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2685:
	.ascii	"Pself\0"
	.align
_Label_2686:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2687:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2688:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2662\0"
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
	mov	2196,r13		! source line 2196
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
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
	mov	2214,r13		! source line 2214
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
	mov	2215,r13		! source line 2215
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
	mov	2216,r13		! source line 2216
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
	mov	2216,r13		! source line 2216
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
	.word	_Label_2700
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2701
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2702
	.word	12
	.word	4
	.word	_Label_2703
	.word	16
	.word	4
	.word	_Label_2704
	.word	20
	.word	4
	.word	_Label_2705
	.word	24
	.word	4
	.word	0
_Label_2700:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2701:
	.ascii	"Pself\0"
	.align
_Label_2702:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2703:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2704:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2705:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2706
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
_Label_2706:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2707
	.word	_sourceFileName
	.word	331		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2707:
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
_Label_3626:
	push	r0
	sub	r1,1,r1
	bne	_Label_3626
	mov	2227,r13		! source line 2227
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2708 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2708  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2234,r13		! source line 2234
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2235,r13		! source line 2235
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
	mov	2236,r13		! source line 2236
	mov	"\0\0SE",r10
!   _temp_2710 = &fileManagerLock
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
	mov	2239,r13		! source line 2239
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
	mov	2240,r13		! source line 2240
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
	mov	2241,r13		! source line 2241
	mov	"\0\0SE",r10
!   _temp_2713 = &anFCBBecameFree
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
	mov	2242,r13		! source line 2242
	mov	"\0\0AS",r10
!   _temp_2714 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2716 = &_temp_2715
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2716 = _temp_2716 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2718 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3627:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3627
!   _temp_2718 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2720:
!   Data Move: *_temp_2716 = _temp_2718  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3628:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3628
!   _temp_2716 = _temp_2716 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2717 = _temp_2717 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2717) then goto _Label_2720
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2720
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2721 = &_temp_2715
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3629
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3629:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2714 = *_temp_2721  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3630:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3630
! FOR STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2726 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2727 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2726  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2722:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2727 then goto _Label_2725		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2725
_Label_2723:
	mov	2244,r13		! source line 2244
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0AS",r10
!   _temp_2728 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2728 [i ] into _temp_2729
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
!   _temp_2730 = _temp_2729 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2730 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0SE",r10
!   _temp_2731 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2731 [i ] into _temp_2732
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
	mov	2247,r13		! source line 2247
	mov	"\0\0SE",r10
!   _temp_2734 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2734 [i ] into _temp_2735
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
!   _temp_2733 = _temp_2735		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2736 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2733  sizeInBytes=4
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
_Label_2724:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2722
! END FOR
_Label_2725:
! ASSIGNMENT STATEMENT...
	mov	2251,r13		! source line 2251
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
	mov	2252,r13		! source line 2252
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
	mov	2253,r13		! source line 2253
	mov	"\0\0SE",r10
!   _temp_2739 = &anOpenFileBecameFree
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
	mov	2254,r13		! source line 2254
	mov	"\0\0AS",r10
!   _temp_2740 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2742 = &_temp_2741
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2742 = _temp_2742 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2744 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3631:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3631
!   _temp_2744 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2746:
!   Data Move: *_temp_2742 = _temp_2744  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3632:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3632
!   _temp_2742 = _temp_2742 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2743 = _temp_2743 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2743) then goto _Label_2746
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2746
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2747 = &_temp_2741
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3633
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3633:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2740 = *_temp_2747  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3634:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3634
! FOR STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2752 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2753 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2752  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2748:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2753 then goto _Label_2751		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2751
_Label_2749:
	mov	2256,r13		! source line 2256
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0AS",r10
!   _temp_2754 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2754 [i ] into _temp_2755
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
!   _temp_2756 = _temp_2755 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2756 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0SE",r10
!   _temp_2758 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2758 [i ] into _temp_2759
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
!   _temp_2757 = _temp_2759		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2760 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2757  sizeInBytes=4
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
_Label_2750:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2748
! END FOR
_Label_2751:
! ASSIGNMENT STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3635:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3635
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0AS",r10
!   _temp_2762 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2763 = _temp_2762 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2763 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0AS",r10
	mov	2268,r13		! source line 2268
	mov	"\0\0SE",r10
!   _temp_2764 = &_P_Kernel_frameManager
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
	mov	2269,r13		! source line 2269
	mov	"\0\0SE",r10
!   _temp_2765 = &_P_Kernel_diskDriver
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
	mov	2269,r13		! source line 2269
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
	.word	_Label_2766
	.word	4		! total size of parameters
	.word	952		! frame size = 952
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
	.word	_Label_2774
	.word	-36
	.word	4
	.word	_Label_2775
	.word	-40
	.word	4
	.word	_Label_2776
	.word	-44
	.word	4
	.word	_Label_2777
	.word	-48
	.word	4
	.word	_Label_2778
	.word	-52
	.word	4
	.word	_Label_2779
	.word	-56
	.word	4
	.word	_Label_2780
	.word	-60
	.word	4
	.word	_Label_2781
	.word	-64
	.word	4
	.word	_Label_2782
	.word	-68
	.word	4
	.word	_Label_2783
	.word	-72
	.word	4
	.word	_Label_2784
	.word	-100
	.word	28
	.word	_Label_2785
	.word	-104
	.word	4
	.word	_Label_2786
	.word	-108
	.word	4
	.word	_Label_2787
	.word	-392
	.word	284
	.word	_Label_2788
	.word	-396
	.word	4
	.word	_Label_2789
	.word	-400
	.word	4
	.word	_Label_2790
	.word	-404
	.word	4
	.word	_Label_2791
	.word	-408
	.word	4
	.word	_Label_2792
	.word	-412
	.word	4
	.word	_Label_2793
	.word	-416
	.word	4
	.word	_Label_2794
	.word	-420
	.word	4
	.word	_Label_2795
	.word	-424
	.word	4
	.word	_Label_2796
	.word	-428
	.word	4
	.word	_Label_2797
	.word	-432
	.word	4
	.word	_Label_2798
	.word	-436
	.word	4
	.word	_Label_2799
	.word	-440
	.word	4
	.word	_Label_2800
	.word	-444
	.word	4
	.word	_Label_2801
	.word	-448
	.word	4
	.word	_Label_2802
	.word	-452
	.word	4
	.word	_Label_2803
	.word	-456
	.word	4
	.word	_Label_2804
	.word	-460
	.word	4
	.word	_Label_2805
	.word	-500
	.word	40
	.word	_Label_2806
	.word	-504
	.word	4
	.word	_Label_2807
	.word	-508
	.word	4
	.word	_Label_2808
	.word	-912
	.word	404
	.word	_Label_2809
	.word	-916
	.word	4
	.word	_Label_2810
	.word	-920
	.word	4
	.word	_Label_2811
	.word	-924
	.word	4
	.word	_Label_2812
	.word	-928
	.word	4
	.word	_Label_2813
	.word	-932
	.word	4
	.word	_Label_2814
	.word	-936
	.word	4
	.word	_Label_2815
	.word	-940
	.word	4
	.word	_Label_2816
	.word	-944
	.word	4
	.word	0
_Label_2766:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
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
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2816:
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
_Label_3636:
	push	r0
	sub	r1,1,r1
	bne	_Label_3636
	mov	2276,r13		! source line 2276
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0SE",r10
!   _temp_2817 = &fileManagerLock
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
!   _temp_2818 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2818  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2279,r13		! source line 2279
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2823 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2824 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2823  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2819:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2824 then goto _Label_2822		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2822
_Label_2820:
	mov	2280,r13		! source line 2280
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2825 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2825  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2281,r13		! source line 2281
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2282,r13		! source line 2282
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2826 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2826  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2283,r13		! source line 2283
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0SE",r10
!   _temp_2827 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2827 [i ] into _temp_2828
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
_Label_2821:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2819
! END FOR
_Label_2822:
! CALL STATEMENT...
!   _temp_2829 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2829  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2286,r13		! source line 2286
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0SE",r10
!   _temp_2830 = _function_202_printFCB
	set	_function_202_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2831 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2830  sizeInBytes=4
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
	mov	2288,r13		! source line 2288
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2832 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2832  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2289,r13		! source line 2289
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2837 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2838 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2837  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2833:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2838 then goto _Label_2836		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2836
_Label_2834:
	mov	2290,r13		! source line 2290
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2839 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2839  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2291,r13		! source line 2291
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2292,r13		! source line 2292
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2840 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2840  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2293,r13		! source line 2293
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2842 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2842 [i ] into _temp_2843
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
!   _temp_2841 = _temp_2843		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2841  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2294,r13		! source line 2294
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2844 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2844  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2295,r13		! source line 2295
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0SE",r10
!   _temp_2845 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2845 [i ] into _temp_2846
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
_Label_2835:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2833
! END FOR
_Label_2836:
! CALL STATEMENT...
!   _temp_2847 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2847  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2298,r13		! source line 2298
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0SE",r10
!   _temp_2848 = _function_201_printOpen
	set	_function_201_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2849 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2848  sizeInBytes=4
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
	mov	2300,r13		! source line 2300
	mov	"\0\0SE",r10
!   _temp_2850 = &fileManagerLock
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
	mov	2300,r13		! source line 2300
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
	.word	_Label_2851
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2852
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2853
	.word	-12
	.word	4
	.word	_Label_2854
	.word	-16
	.word	4
	.word	_Label_2855
	.word	-20
	.word	4
	.word	_Label_2856
	.word	-24
	.word	4
	.word	_Label_2857
	.word	-28
	.word	4
	.word	_Label_2858
	.word	-32
	.word	4
	.word	_Label_2859
	.word	-36
	.word	4
	.word	_Label_2860
	.word	-40
	.word	4
	.word	_Label_2861
	.word	-44
	.word	4
	.word	_Label_2862
	.word	-48
	.word	4
	.word	_Label_2863
	.word	-52
	.word	4
	.word	_Label_2864
	.word	-56
	.word	4
	.word	_Label_2865
	.word	-60
	.word	4
	.word	_Label_2866
	.word	-64
	.word	4
	.word	_Label_2867
	.word	-68
	.word	4
	.word	_Label_2868
	.word	-72
	.word	4
	.word	_Label_2869
	.word	-76
	.word	4
	.word	_Label_2870
	.word	-80
	.word	4
	.word	_Label_2871
	.word	-84
	.word	4
	.word	_Label_2872
	.word	-88
	.word	4
	.word	_Label_2873
	.word	-92
	.word	4
	.word	_Label_2874
	.word	-96
	.word	4
	.word	_Label_2875
	.word	-100
	.word	4
	.word	_Label_2876
	.word	-104
	.word	4
	.word	_Label_2877
	.word	-108
	.word	4
	.word	_Label_2878
	.word	-112
	.word	4
	.word	_Label_2879
	.word	-116
	.word	4
	.word	0
_Label_2851:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2852:
	.ascii	"Pself\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2879:
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
_Label_3637:
	push	r0
	sub	r1,1,r1
	bne	_Label_3637
	mov	2305,r13		! source line 2305
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2321,r13		! source line 2321
	mov	"\0\0AS",r10
	mov	2321,r13		! source line 2321
	mov	"\0\0SE",r10
!   _temp_2880 = &_P_Kernel_fileManager
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
	mov	2322,r13		! source line 2322
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2881
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2881
	jmp	_Label_2882
_Label_2881:
! THEN...
	mov	2323,r13		! source line 2323
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2882:
! SEND STATEMENT...
	mov	2327,r13		! source line 2327
	mov	"\0\0SE",r10
!   _temp_2883 = &fileManagerLock
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
	mov	2328,r13		! source line 2328
	mov	"\0\0WH",r10
_Label_2884:
	mov	2328,r13		! source line 2328
	mov	"\0\0SE",r10
!   _temp_2887 = &openFileFreeList
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
!   if result==true then goto _Label_2885 else goto _Label_2886
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2886
	jmp	_Label_2885
_Label_2885:
	mov	2328,r13		! source line 2328
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2329,r13		! source line 2329
	mov	"\0\0SE",r10
!   _temp_2888 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2889 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2888  sizeInBytes=4
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
	jmp	_Label_2884
_Label_2886:
! ASSIGNMENT STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0AS",r10
	mov	2331,r13		! source line 2331
	mov	"\0\0SE",r10
!   _temp_2890 = &openFileFreeList
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
	mov	2334,r13		! source line 2334
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2891 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2891 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2892 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2892 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2893 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2893 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2340,r13		! source line 2340
	mov	"\0\0SE",r10
!   _temp_2894 = &fileManagerLock
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
	mov	2341,r13		! source line 2341
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
	.word	_Label_2895
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2896
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2897
	.word	12
	.word	4
	.word	_Label_2898
	.word	-12
	.word	4
	.word	_Label_2899
	.word	-16
	.word	4
	.word	_Label_2900
	.word	-20
	.word	4
	.word	_Label_2901
	.word	-24
	.word	4
	.word	_Label_2902
	.word	-28
	.word	4
	.word	_Label_2903
	.word	-32
	.word	4
	.word	_Label_2904
	.word	-36
	.word	4
	.word	_Label_2905
	.word	-40
	.word	4
	.word	_Label_2906
	.word	-44
	.word	4
	.word	_Label_2907
	.word	-48
	.word	4
	.word	_Label_2908
	.word	-52
	.word	4
	.word	_Label_2909
	.word	-56
	.word	4
	.word	0
_Label_2895:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2896:
	.ascii	"Pself\0"
	.align
_Label_2897:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2908:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2909:
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
_Label_3638:
	push	r0
	sub	r1,1,r1
	bne	_Label_3638
	mov	2346,r13		! source line 2346
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2374,r13		! source line 2374
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
	mov	2375,r13		! source line 2375
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2911		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2911
!	jmp	_Label_2910
_Label_2910:
! THEN...
	mov	2377,r13		! source line 2377
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2912 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2912  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2377,r13		! source line 2377
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2911:
! ASSIGNMENT STATEMENT...
	mov	2381,r13		! source line 2381
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
	mov	2382,r13		! source line 2382
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2383,r13		! source line 2383
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
	mov	2384,r13		! source line 2384
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0WH",r10
_Label_2913:
!   if numFiles <= 0 then goto _Label_2915		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2915
!	jmp	_Label_2914
_Label_2914:
	mov	2387,r13		! source line 2387
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2916 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2916  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2388,r13		! source line 2388
	mov	"\0\0CA",r10
	call	_function_203_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2917 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2917  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2390,r13		! source line 2390
	mov	"\0\0CA",r10
	call	_function_203_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2918 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2918  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2392,r13		! source line 2392
	mov	"\0\0CA",r10
	call	_function_203_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2922 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2922 then goto _Label_2920		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2920
!	jmp	_Label_2921
_Label_2921:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2924
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
!   _temp_2923 = _temp_2924		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2923  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2395,r13		! source line 2395
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2919 else goto _Label_2920
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2920
	jmp	_Label_2919
_Label_2919:
! THEN...
	mov	2396,r13		! source line 2396
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2396,r13		! source line 2396
	mov	"\0\0BR",r10
	jmp	_Label_2915
! END IF...
_Label_2920:
! ASSIGNMENT STATEMENT...
	mov	2398,r13		! source line 2398
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2399,r13		! source line 2399
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2913
_Label_2915:
! IF STATEMENT...
	mov	2403,r13		! source line 2403
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2926		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2926
!	jmp	_Label_2925
_Label_2925:
! THEN...
	mov	2404,r13		! source line 2404
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2926:
! SEND STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0SE",r10
!   _temp_2927 = &fileManagerLock
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
	mov	2409,r13		! source line 2409
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2932 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2933 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2932  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2928:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2933 then goto _Label_2931		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2931
_Label_2929:
	mov	2409,r13		! source line 2409
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0AS",r10
!   _temp_2934 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2934 [i ] into _temp_2935
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
!   fcb = _temp_2935		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2939 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2938 = *_temp_2939  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2938 != start then goto _Label_2937		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2937
!	jmp	_Label_2936
_Label_2936:
! THEN...
	mov	2412,r13		! source line 2412
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2940 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2943 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2942 = *_temp_2943  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2941 = _temp_2942 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2940 = _temp_2941  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0SE",r10
!   _temp_2944 = &fileManagerLock
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
	mov	2414,r13		! source line 2414
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2937:
!   Increment the FOR-LOOP index variable and jump back
_Label_2930:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2928
! END FOR
_Label_2931:
! WHILE STATEMENT...
	mov	2419,r13		! source line 2419
	mov	"\0\0WH",r10
_Label_2945:
	mov	2419,r13		! source line 2419
	mov	"\0\0SE",r10
!   _temp_2948 = &fcbFreeList
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
!   if result==true then goto _Label_2946 else goto _Label_2947
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2947
	jmp	_Label_2946
_Label_2946:
	mov	2419,r13		! source line 2419
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0SE",r10
!   _temp_2949 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2950 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2949  sizeInBytes=4
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
	jmp	_Label_2945
_Label_2947:
! ASSIGNMENT STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0AS",r10
	mov	2422,r13		! source line 2422
	mov	"\0\0SE",r10
!   _temp_2951 = &fcbFreeList
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
	mov	2425,r13		! source line 2425
	mov	"\0\0SE",r10
!   _temp_2952 = &fileManagerLock
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
	mov	2428,r13		! source line 2428
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2953 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2953 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2954 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2954 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2955 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2955 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2431,r13		! source line 2431
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2960 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2959 = *_temp_2960  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2959 < 0 then goto _Label_2958		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2958
	jmp	_Label_2956
_Label_2958:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2961 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2961 ) then goto _Label_2957		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2957
!	jmp	_Label_2956
_Label_2956:
! THEN...
	mov	2432,r13		! source line 2432
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2962 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2962  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2432,r13		! source line 2432
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2957:
! RETURN STATEMENT...
	mov	2434,r13		! source line 2434
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
	.word	_Label_2963
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2964
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2965
	.word	12
	.word	4
	.word	_Label_2966
	.word	-12
	.word	4
	.word	_Label_2967
	.word	-16
	.word	4
	.word	_Label_2968
	.word	-20
	.word	4
	.word	_Label_2969
	.word	-24
	.word	4
	.word	_Label_2970
	.word	-28
	.word	4
	.word	_Label_2971
	.word	-32
	.word	4
	.word	_Label_2972
	.word	-36
	.word	4
	.word	_Label_2973
	.word	-40
	.word	4
	.word	_Label_2974
	.word	-44
	.word	4
	.word	_Label_2975
	.word	-48
	.word	4
	.word	_Label_2976
	.word	-52
	.word	4
	.word	_Label_2977
	.word	-56
	.word	4
	.word	_Label_2978
	.word	-60
	.word	4
	.word	_Label_2979
	.word	-64
	.word	4
	.word	_Label_2980
	.word	-68
	.word	4
	.word	_Label_2981
	.word	-72
	.word	4
	.word	_Label_2982
	.word	-76
	.word	4
	.word	_Label_2983
	.word	-80
	.word	4
	.word	_Label_2984
	.word	-84
	.word	4
	.word	_Label_2985
	.word	-88
	.word	4
	.word	_Label_2986
	.word	-92
	.word	4
	.word	_Label_2987
	.word	-96
	.word	4
	.word	_Label_2988
	.word	-100
	.word	4
	.word	_Label_2989
	.word	-104
	.word	4
	.word	_Label_2990
	.word	-108
	.word	4
	.word	_Label_2991
	.word	-112
	.word	4
	.word	_Label_2992
	.word	-116
	.word	4
	.word	_Label_2993
	.word	-120
	.word	4
	.word	_Label_2994
	.word	-124
	.word	4
	.word	_Label_2995
	.word	-128
	.word	4
	.word	_Label_2996
	.word	-132
	.word	4
	.word	_Label_2997
	.word	-136
	.word	4
	.word	_Label_2998
	.word	-140
	.word	4
	.word	_Label_2999
	.word	-144
	.word	4
	.word	_Label_3000
	.word	-148
	.word	4
	.word	_Label_3001
	.word	-152
	.word	4
	.word	_Label_3002
	.word	-156
	.word	4
	.word	_Label_3003
	.word	-160
	.word	4
	.word	0
_Label_2963:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2964:
	.ascii	"Pself\0"
	.align
_Label_2965:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2962\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2960\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2959\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2955\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2997:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2998:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2999:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3000:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3001:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3002:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3003:
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
_Label_3639:
	push	r0
	sub	r1,1,r1
	bne	_Label_3639
	mov	2447,r13		! source line 2447
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0IF",r10
!   _temp_3006 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3006 then goto _Label_3005		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3005
!	jmp	_Label_3004
_Label_3004:
! THEN...
	mov	2450,r13		! source line 2450
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2450,r13		! source line 2450
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3005:
! SEND STATEMENT...
	mov	2452,r13		! source line 2452
	mov	"\0\0SE",r10
!   _temp_3007 = &fileManagerLock
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
	mov	2453,r13		! source line 2453
	mov	"\0\0SE",r10
!   _temp_3008 = &_P_Kernel_fileManager
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
	mov	2454,r13		! source line 2454
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3009 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3009  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3010 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3013 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3012 = *_temp_3013  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3011 = _temp_3012 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3010 = _temp_3011  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3017 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3016 = *_temp_3017  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3016 > 0 then goto _Label_3015		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3015
!	jmp	_Label_3014
_Label_3014:
! THEN...
	mov	2457,r13		! source line 2457
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0SE",r10
!   _temp_3018 = &openFileFreeList
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
	mov	2458,r13		! source line 2458
	mov	"\0\0SE",r10
!   _temp_3019 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3020 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3019  sizeInBytes=4
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
	mov	2459,r13		! source line 2459
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3021 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3024 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3023 = *_temp_3024  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3022 = _temp_3023 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3021 = _temp_3022  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3028 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3027 = *_temp_3028  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3027 > 0 then goto _Label_3026		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3026
!	jmp	_Label_3025
_Label_3025:
! THEN...
	mov	2461,r13		! source line 2461
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0SE",r10
!   _temp_3029 = &fcbFreeList
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
	mov	2462,r13		! source line 2462
	mov	"\0\0SE",r10
!   _temp_3030 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3031 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3030  sizeInBytes=4
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
_Label_3026:
! END IF...
_Label_3015:
! SEND STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0SE",r10
!   _temp_3032 = &fileManagerLock
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
	mov	2465,r13		! source line 2465
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
	.word	_Label_3033
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3034
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3035
	.word	12
	.word	4
	.word	_Label_3036
	.word	-12
	.word	4
	.word	_Label_3037
	.word	-16
	.word	4
	.word	_Label_3038
	.word	-20
	.word	4
	.word	_Label_3039
	.word	-24
	.word	4
	.word	_Label_3040
	.word	-28
	.word	4
	.word	_Label_3041
	.word	-32
	.word	4
	.word	_Label_3042
	.word	-36
	.word	4
	.word	_Label_3043
	.word	-40
	.word	4
	.word	_Label_3044
	.word	-44
	.word	4
	.word	_Label_3045
	.word	-48
	.word	4
	.word	_Label_3046
	.word	-52
	.word	4
	.word	_Label_3047
	.word	-56
	.word	4
	.word	_Label_3048
	.word	-60
	.word	4
	.word	_Label_3049
	.word	-64
	.word	4
	.word	_Label_3050
	.word	-68
	.word	4
	.word	_Label_3051
	.word	-72
	.word	4
	.word	_Label_3052
	.word	-76
	.word	4
	.word	_Label_3053
	.word	-80
	.word	4
	.word	_Label_3054
	.word	-84
	.word	4
	.word	_Label_3055
	.word	-88
	.word	4
	.word	_Label_3056
	.word	-92
	.word	4
	.word	_Label_3057
	.word	-96
	.word	4
	.word	_Label_3058
	.word	-100
	.word	4
	.word	_Label_3059
	.word	-104
	.word	4
	.word	0
_Label_3033:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3034:
	.ascii	"Pself\0"
	.align
_Label_3035:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3032\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3039:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_3021\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3058:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3059:
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
_Label_3640:
	push	r0
	sub	r1,1,r1
	bne	_Label_3640
	mov	2470,r13		! source line 2470
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3063 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3062 = *_temp_3063  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3062) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3064 = _temp_3062 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3064 ) then goto _Label_3061		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3061
!	jmp	_Label_3060
_Label_3060:
! THEN...
	mov	2476,r13		! source line 2476
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3069 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3068 = *_temp_3069  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3068) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3070 = _temp_3068 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3067 = *_temp_3070  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3067 >= 0 then goto _Label_3066		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3066
!	jmp	_Label_3065
_Label_3065:
! THEN...
	mov	2477,r13		! source line 2477
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3071 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3071  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2477,r13		! source line 2477
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3066:
! ASSIGNMENT STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3073 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3072 = *_temp_3073  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3072) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3074 = _temp_3072 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3074 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3078 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3077 = *_temp_3078  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3077) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3079 = _temp_3077 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3076 = *_temp_3079  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3082 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3081 = *_temp_3082  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3081) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3083 = _temp_3081 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3080 = *_temp_3083  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3075 = _temp_3076 + _temp_3080		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3086 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3085 = *_temp_3086  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3085) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3087 = _temp_3085 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3084 = *_temp_3087  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3088 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3075  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3084  sizeInBytes=4
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
_Label_3061:
! RETURN STATEMENT...
	mov	2475,r13		! source line 2475
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
	.word	_Label_3089
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3090
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3091
	.word	12
	.word	4
	.word	_Label_3092
	.word	-12
	.word	4
	.word	_Label_3093
	.word	-16
	.word	4
	.word	_Label_3094
	.word	-20
	.word	4
	.word	_Label_3095
	.word	-24
	.word	4
	.word	_Label_3096
	.word	-28
	.word	4
	.word	_Label_3097
	.word	-32
	.word	4
	.word	_Label_3098
	.word	-36
	.word	4
	.word	_Label_3099
	.word	-40
	.word	4
	.word	_Label_3100
	.word	-44
	.word	4
	.word	_Label_3101
	.word	-48
	.word	4
	.word	_Label_3102
	.word	-52
	.word	4
	.word	_Label_3103
	.word	-56
	.word	4
	.word	_Label_3104
	.word	-60
	.word	4
	.word	_Label_3105
	.word	-64
	.word	4
	.word	_Label_3106
	.word	-68
	.word	4
	.word	_Label_3107
	.word	-72
	.word	4
	.word	_Label_3108
	.word	-76
	.word	4
	.word	_Label_3109
	.word	-80
	.word	4
	.word	_Label_3110
	.word	-84
	.word	4
	.word	_Label_3111
	.word	-88
	.word	4
	.word	_Label_3112
	.word	-92
	.word	4
	.word	_Label_3113
	.word	-96
	.word	4
	.word	_Label_3114
	.word	-100
	.word	4
	.word	_Label_3115
	.word	-104
	.word	4
	.word	_Label_3116
	.word	-108
	.word	4
	.word	0
_Label_3089:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3090:
	.ascii	"Pself\0"
	.align
_Label_3091:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3092:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3093:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3083\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3082\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_3081\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3080\0"
	.align
_Label_3101:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3078\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3111:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3112:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3113:
	.byte	'?'
	.ascii	"_temp_3067\0"
	.align
_Label_3114:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3115:
	.byte	'?'
	.ascii	"_temp_3063\0"
	.align
_Label_3116:
	.byte	'?'
	.ascii	"_temp_3062\0"
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
_Label_3641:
	push	r0
	sub	r1,1,r1
	bne	_Label_3641
	mov	2489,r13		! source line 2489
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0SE",r10
!   _temp_3117 = &fileManagerLock
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
	mov	2505,r13		! source line 2505
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3123		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3123
!   _temp_3122 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3124
_Label_3123:
!   _temp_3122 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3124:
!   if _temp_3122 then goto _Label_3121 else goto _Label_3118
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3118
	jmp	_Label_3121
_Label_3121:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3127 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3126 = *_temp_3127  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3126 == 0 then goto _Label_3128		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3128
!   _temp_3125 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3129
_Label_3128:
!   _temp_3125 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3129:
!   if _temp_3125 then goto _Label_3120 else goto _Label_3118
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3118
	jmp	_Label_3120
_Label_3120:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3132 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3131 = *_temp_3132  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3131) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3133 = _temp_3131 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3130 = *_temp_3133  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3130 >= 0 then goto _Label_3119		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3119
!	jmp	_Label_3118
_Label_3118:
! THEN...
	mov	2506,r13		! source line 2506
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3134 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3134  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2506,r13		! source line 2506
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3119:
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3135 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3135  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0WH",r10
_Label_3136:
!   if numBytes <= 0 then goto _Label_3138		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3138
!	jmp	_Label_3137
_Label_3137:
	mov	2509,r13		! source line 2509
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2518,r13		! source line 2518
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
	mov	2519,r13		! source line 2519
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
	mov	2523,r13		! source line 2523
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3142 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3141 = *_temp_3142  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3141 == sector then goto _Label_3140		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3140
!	jmp	_Label_3139
_Label_3139:
! THEN...
	mov	2524,r13		! source line 2524
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3143) then goto _runtimeErrorNullPointer
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
	mov	2526,r13		! source line 2526
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3146 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3145 = *_temp_3146  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3144 = sector + _temp_3145		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3148 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3147 = *_temp_3148  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3149 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3144  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3147  sizeInBytes=4
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
	mov	2529,r13		! source line 2529
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3150 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3150 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3151 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3151 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3140:
! ASSIGNMENT STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3153 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3152 = *_temp_3153  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3152 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0AS",r10
!   _temp_3154 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3154  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2533,r13		! source line 2533
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
	mov	2537,r13		! source line 2537
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2540,r13		! source line 2540
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3136
_Label_3138:
! SEND STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0SE",r10
!   _temp_3155 = &fileManagerLock
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
	mov	2548,r13		! source line 2548
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
	.word	_Label_3156
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3157
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3158
	.word	12
	.word	4
	.word	_Label_3159
	.word	16
	.word	4
	.word	_Label_3160
	.word	20
	.word	4
	.word	_Label_3161
	.word	24
	.word	4
	.word	_Label_3162
	.word	-16
	.word	4
	.word	_Label_3163
	.word	-20
	.word	4
	.word	_Label_3164
	.word	-24
	.word	4
	.word	_Label_3165
	.word	-28
	.word	4
	.word	_Label_3166
	.word	-32
	.word	4
	.word	_Label_3167
	.word	-36
	.word	4
	.word	_Label_3168
	.word	-40
	.word	4
	.word	_Label_3169
	.word	-44
	.word	4
	.word	_Label_3170
	.word	-48
	.word	4
	.word	_Label_3171
	.word	-52
	.word	4
	.word	_Label_3172
	.word	-56
	.word	4
	.word	_Label_3173
	.word	-60
	.word	4
	.word	_Label_3174
	.word	-64
	.word	4
	.word	_Label_3175
	.word	-68
	.word	4
	.word	_Label_3176
	.word	-72
	.word	4
	.word	_Label_3177
	.word	-76
	.word	4
	.word	_Label_3178
	.word	-80
	.word	4
	.word	_Label_3179
	.word	-84
	.word	4
	.word	_Label_3180
	.word	-88
	.word	4
	.word	_Label_3181
	.word	-92
	.word	4
	.word	_Label_3182
	.word	-96
	.word	4
	.word	_Label_3183
	.word	-100
	.word	4
	.word	_Label_3184
	.word	-104
	.word	4
	.word	_Label_3185
	.word	-9
	.word	1
	.word	_Label_3186
	.word	-10
	.word	1
	.word	_Label_3187
	.word	-108
	.word	4
	.word	_Label_3188
	.word	-112
	.word	4
	.word	_Label_3189
	.word	-116
	.word	4
	.word	_Label_3190
	.word	-120
	.word	4
	.word	_Label_3191
	.word	-124
	.word	4
	.word	_Label_3192
	.word	-128
	.word	4
	.word	0
_Label_3156:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3157:
	.ascii	"Pself\0"
	.align
_Label_3158:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3159:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3160:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3161:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3155\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3154\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3153\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3152\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3151\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3149\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3148\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3147\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3146\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3145\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3141\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3132\0"
	.align
_Label_3181:
	.byte	'?'
	.ascii	"_temp_3131\0"
	.align
_Label_3182:
	.byte	'?'
	.ascii	"_temp_3130\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3184:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3185:
	.byte	'C'
	.ascii	"_temp_3125\0"
	.align
_Label_3186:
	.byte	'C'
	.ascii	"_temp_3122\0"
	.align
_Label_3187:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3188:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3189:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3190:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3191:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3192:
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
_Label_3642:
	push	r0
	sub	r1,1,r1
	bne	_Label_3642
	mov	2553,r13		! source line 2553
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0SE",r10
!   _temp_3193 = &fileManagerLock
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
	mov	2570,r13		! source line 2570
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3199		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3199
!   _temp_3198 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3200
_Label_3199:
!   _temp_3198 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3200:
!   if _temp_3198 then goto _Label_3197 else goto _Label_3194
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3194
	jmp	_Label_3197
_Label_3197:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3203 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3202 = *_temp_3203  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3202 == 0 then goto _Label_3204		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3204
!   _temp_3201 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3205
_Label_3204:
!   _temp_3201 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3205:
!   if _temp_3201 then goto _Label_3196 else goto _Label_3194
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3194
	jmp	_Label_3196
_Label_3196:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3208 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3207 = *_temp_3208  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3207) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3209 = _temp_3207 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3206 = *_temp_3209  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3206 >= 0 then goto _Label_3195		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3195
!	jmp	_Label_3194
_Label_3194:
! THEN...
	mov	2571,r13		! source line 2571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3210 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3210  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2571,r13		! source line 2571
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3195:
! ASSIGNMENT STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3211 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3211  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0WH",r10
_Label_3212:
!   if numBytes <= 0 then goto _Label_3214		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3214
!	jmp	_Label_3213
_Label_3213:
	mov	2574,r13		! source line 2574
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2583,r13		! source line 2583
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
	mov	2584,r13		! source line 2584
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
	mov	2588,r13		! source line 2588
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3218 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3217 = *_temp_3218  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3217 == sector then goto _Label_3216		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3216
!	jmp	_Label_3215
_Label_3215:
! THEN...
	mov	2590,r13		! source line 2590
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3219) then goto _runtimeErrorNullPointer
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
_Label_3216:
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3221 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3220 = *_temp_3221  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3220 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0AS",r10
!   _temp_3222 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3222  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2593,r13		! source line 2593
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3226 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3225 = *_temp_3226  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3225 != sector then goto _Label_3224		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3224
!	jmp	_Label_3223
_Label_3223:
	jmp	_Label_3227
_Label_3224:
! ELSE...
	mov	2596,r13		! source line 2596
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3230
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3230
	jmp	_Label_3229
_Label_3230:
!   if bytesToMove != 8192 then goto _Label_3229		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3229
!	jmp	_Label_3228
_Label_3228:
	jmp	_Label_3231
_Label_3229:
! ELSE...
	mov	2600,r13		! source line 2600
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3234 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3233 = *_temp_3234  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3232 = sector + _temp_3233		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3236 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3235 = *_temp_3236  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3237 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3232  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3235  sizeInBytes=4
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
_Label_3231:
! END IF...
_Label_3227:
! ASSIGNMENT STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3238 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3238 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3239 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3239 = 1  (sizeInBytes=1)
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
	mov	2609,r13		! source line 2609
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3212
_Label_3214:
! SEND STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0SE",r10
!   _temp_3240 = &fileManagerLock
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
	mov	2621,r13		! source line 2621
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
	.word	_Label_3241
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3242
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3243
	.word	12
	.word	4
	.word	_Label_3244
	.word	16
	.word	4
	.word	_Label_3245
	.word	20
	.word	4
	.word	_Label_3246
	.word	24
	.word	4
	.word	_Label_3247
	.word	-16
	.word	4
	.word	_Label_3248
	.word	-20
	.word	4
	.word	_Label_3249
	.word	-24
	.word	4
	.word	_Label_3250
	.word	-28
	.word	4
	.word	_Label_3251
	.word	-32
	.word	4
	.word	_Label_3252
	.word	-36
	.word	4
	.word	_Label_3253
	.word	-40
	.word	4
	.word	_Label_3254
	.word	-44
	.word	4
	.word	_Label_3255
	.word	-48
	.word	4
	.word	_Label_3256
	.word	-52
	.word	4
	.word	_Label_3257
	.word	-56
	.word	4
	.word	_Label_3258
	.word	-60
	.word	4
	.word	_Label_3259
	.word	-64
	.word	4
	.word	_Label_3260
	.word	-68
	.word	4
	.word	_Label_3261
	.word	-72
	.word	4
	.word	_Label_3262
	.word	-76
	.word	4
	.word	_Label_3263
	.word	-80
	.word	4
	.word	_Label_3264
	.word	-84
	.word	4
	.word	_Label_3265
	.word	-88
	.word	4
	.word	_Label_3266
	.word	-92
	.word	4
	.word	_Label_3267
	.word	-96
	.word	4
	.word	_Label_3268
	.word	-100
	.word	4
	.word	_Label_3269
	.word	-104
	.word	4
	.word	_Label_3270
	.word	-108
	.word	4
	.word	_Label_3271
	.word	-112
	.word	4
	.word	_Label_3272
	.word	-9
	.word	1
	.word	_Label_3273
	.word	-10
	.word	1
	.word	_Label_3274
	.word	-116
	.word	4
	.word	_Label_3275
	.word	-120
	.word	4
	.word	_Label_3276
	.word	-124
	.word	4
	.word	_Label_3277
	.word	-128
	.word	4
	.word	_Label_3278
	.word	-132
	.word	4
	.word	_Label_3279
	.word	-136
	.word	4
	.word	0
_Label_3241:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3242:
	.ascii	"Pself\0"
	.align
_Label_3243:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3244:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3245:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3246:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3247:
	.byte	'?'
	.ascii	"_temp_3240\0"
	.align
_Label_3248:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3249:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3250:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3251:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3252:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3253:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3209\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3208\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3272:
	.byte	'C'
	.ascii	"_temp_3201\0"
	.align
_Label_3273:
	.byte	'C'
	.ascii	"_temp_3198\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3275:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3276:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3277:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3278:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3279:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3280
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3280:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3281
	.word	_sourceFileName
	.word	356		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3281:
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
_Label_3643:
	push	r0
	sub	r1,1,r1
	bne	_Label_3643
	mov	2657,r13		! source line 2657
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0AS",r10
	mov	2659,r13		! source line 2659
	mov	"\0\0SE",r10
!   _temp_3282 = &_P_Kernel_frameManager
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
	mov	2660,r13		! source line 2660
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2662,r13		! source line 2662
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
	.word	_Label_3283
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3284
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3285
	.word	-12
	.word	4
	.word	0
_Label_3283:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3284:
	.ascii	"Pself\0"
	.align
_Label_3285:
	.byte	'?'
	.ascii	"_temp_3282\0"
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
_Label_3644:
	push	r0
	sub	r1,1,r1
	bne	_Label_3644
	mov	2667,r13		! source line 2667
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3286 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3286  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2668,r13		! source line 2668
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2669,r13		! source line 2669
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3287 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3287  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2670,r13		! source line 2670
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2671,r13		! source line 2671
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3288 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3288  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2672,r13		! source line 2672
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2673,r13		! source line 2673
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3289 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3289  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2674,r13		! source line 2674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2675,r13		! source line 2675
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3290 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3290  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2676,r13		! source line 2676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2677,r13		! source line 2677
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3291 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3291  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2678,r13		! source line 2678
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2679,r13		! source line 2679
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2680,r13		! source line 2680
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2680,r13		! source line 2680
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
	.word	_Label_3292
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3293
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3294
	.word	-12
	.word	4
	.word	_Label_3295
	.word	-16
	.word	4
	.word	_Label_3296
	.word	-20
	.word	4
	.word	_Label_3297
	.word	-24
	.word	4
	.word	_Label_3298
	.word	-28
	.word	4
	.word	_Label_3299
	.word	-32
	.word	4
	.word	0
_Label_3292:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3293:
	.ascii	"Pself\0"
	.align
_Label_3294:
	.byte	'?'
	.ascii	"_temp_3291\0"
	.align
_Label_3295:
	.byte	'?'
	.ascii	"_temp_3290\0"
	.align
_Label_3296:
	.byte	'?'
	.ascii	"_temp_3289\0"
	.align
_Label_3297:
	.byte	'?'
	.ascii	"_temp_3288\0"
	.align
_Label_3298:
	.byte	'?'
	.ascii	"_temp_3287\0"
	.align
_Label_3299:
	.byte	'?'
	.ascii	"_temp_3286\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3300
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3300:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3301
	.word	_sourceFileName
	.word	373		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3301:
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
_Label_3645:
	push	r0
	sub	r1,1,r1
	bne	_Label_3645
	mov	2691,r13		! source line 2691
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3302 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3302  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2692,r13		! source line 2692
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2693,r13		! source line 2693
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3303 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3303  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2694,r13		! source line 2694
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3305		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3305
!	jmp	_Label_3304
_Label_3304:
! THEN...
	mov	2696,r13		! source line 2696
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2696,r13		! source line 2696
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
	jmp	_Label_3306
_Label_3305:
! ELSE...
	mov	2698,r13		! source line 2698
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3307 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3307  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2698,r13		! source line 2698
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3306:
! RETURN STATEMENT...
	mov	2695,r13		! source line 2695
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
	.word	_Label_3308
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3309
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3310
	.word	-12
	.word	4
	.word	_Label_3311
	.word	-16
	.word	4
	.word	_Label_3312
	.word	-20
	.word	4
	.word	0
_Label_3308:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3309:
	.ascii	"Pself\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3307\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3302\0"
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
_Label_3646:
	push	r0
	sub	r1,1,r1
	bne	_Label_3646
	mov	2704,r13		! source line 2704
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0SE",r10
!   _temp_3313 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3314 = _temp_3313 + 4
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
	mov	2715,r13		! source line 2715
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2716,r13		! source line 2716
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
	mov	2717,r13		! source line 2717
	mov	"\0\0SE",r10
!   _temp_3315 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3316 = _temp_3315 + 4
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
	mov	2718,r13		! source line 2718
	mov	"\0\0RE",r10
	mov	2718,r13		! source line 2718
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3319 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3318  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3317  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3317  (sizeInBytes=1)
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
	.word	_Label_3320
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3321
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3322
	.word	12
	.word	4
	.word	_Label_3323
	.word	16
	.word	4
	.word	_Label_3324
	.word	-16
	.word	4
	.word	_Label_3325
	.word	-20
	.word	4
	.word	_Label_3326
	.word	-9
	.word	1
	.word	_Label_3327
	.word	-24
	.word	4
	.word	_Label_3328
	.word	-28
	.word	4
	.word	_Label_3329
	.word	-32
	.word	4
	.word	_Label_3330
	.word	-36
	.word	4
	.word	_Label_3331
	.word	-40
	.word	4
	.word	0
_Label_3320:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3321:
	.ascii	"Pself\0"
	.align
_Label_3322:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3323:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3319\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3318\0"
	.align
_Label_3326:
	.byte	'C'
	.ascii	"_temp_3317\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3316\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3315\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3314\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3313\0"
	.align
_Label_3331:
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
_Label_3647:
	push	r0
	sub	r1,1,r1
	bne	_Label_3647
	mov	2723,r13		! source line 2723
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0IF",r10
	mov	2728,r13		! source line 2728
	mov	"\0\0SE",r10
!   _temp_3335 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3336) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3335  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3334  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3334 then goto _Label_3333 else goto _Label_3332
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3332
	jmp	_Label_3333
_Label_3332:
! THEN...
	mov	2729,r13		! source line 2729
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3337 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3337  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2729,r13		! source line 2729
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3333:
! RETURN STATEMENT...
	mov	2731,r13		! source line 2731
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
	.word	_Label_3338
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3339
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3340
	.word	-16
	.word	4
	.word	_Label_3341
	.word	-20
	.word	4
	.word	_Label_3342
	.word	-24
	.word	4
	.word	_Label_3343
	.word	-9
	.word	1
	.word	_Label_3344
	.word	-28
	.word	4
	.word	0
_Label_3338:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3339:
	.ascii	"Pself\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3337\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3336\0"
	.align
_Label_3342:
	.byte	'?'
	.ascii	"_temp_3335\0"
	.align
_Label_3343:
	.byte	'C'
	.ascii	"_temp_3334\0"
	.align
_Label_3344:
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
_Label_3648:
	push	r0
	sub	r1,1,r1
	bne	_Label_3648
	mov	2736,r13		! source line 2736
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3348 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3347 = *_temp_3348  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3347) then goto _Label_3346
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3346
!	jmp	_Label_3345
_Label_3345:
! THEN...
	mov	2763,r13		! source line 2763
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3349 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3349  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2763,r13		! source line 2763
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3346:
! IF STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0IF",r10
	mov	2767,r13		! source line 2767
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3353) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3352  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3352 == 1112300152 then goto _Label_3351		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3351
!	jmp	_Label_3350
_Label_3350:
! THEN...
	mov	2768,r13		! source line 2768
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3354 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3354  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2768,r13		! source line 2768
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3351:
! ASSIGNMENT STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0AS",r10
	mov	2773,r13		! source line 2773
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3355) then goto _runtimeErrorNullPointer
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
	mov	2774,r13		! source line 2774
	mov	"\0\0AS",r10
	mov	2774,r13		! source line 2774
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3356) then goto _runtimeErrorNullPointer
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
	mov	2775,r13		! source line 2775
	mov	"\0\0AS",r10
	mov	2775,r13		! source line 2775
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3357) then goto _runtimeErrorNullPointer
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
	mov	2776,r13		! source line 2776
	mov	"\0\0AS",r10
	mov	2776,r13		! source line 2776
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3358) then goto _runtimeErrorNullPointer
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
	mov	2777,r13		! source line 2777
	mov	"\0\0AS",r10
	mov	2777,r13		! source line 2777
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3359) then goto _runtimeErrorNullPointer
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
	mov	2778,r13		! source line 2778
	mov	"\0\0AS",r10
	mov	2778,r13		! source line 2778
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3360) then goto _runtimeErrorNullPointer
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
	mov	2781,r13		! source line 2781
	mov	"\0\0IF",r10
!   _temp_3363 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3363) then goto _Label_3362
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3362
!	jmp	_Label_3361
_Label_3361:
! THEN...
	mov	2782,r13		! source line 2782
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3364 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3364  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2782,r13		! source line 2782
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2783,r13		! source line 2783
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3362:
! ASSIGNMENT STATEMENT...
	mov	2785,r13		! source line 2785
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
	mov	2789,r13		! source line 2789
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3366
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3366
!	jmp	_Label_3365
_Label_3365:
! THEN...
	mov	2790,r13		! source line 2790
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3367 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3367  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2790,r13		! source line 2790
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3366:
! IF STATEMENT...
	mov	2795,r13		! source line 2795
	mov	"\0\0IF",r10
!   _temp_3370 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3370) then goto _Label_3369
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3369
!	jmp	_Label_3368
_Label_3368:
! THEN...
	mov	2796,r13		! source line 2796
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3371 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3371  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2796,r13		! source line 2796
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2797,r13		! source line 2797
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3369:
! IF STATEMENT...
	mov	2799,r13		! source line 2799
	mov	"\0\0IF",r10
!   _temp_3374 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3374 then goto _Label_3373		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3373
!	jmp	_Label_3372
_Label_3372:
! THEN...
	mov	2800,r13		! source line 2800
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3375 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3375  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2800,r13		! source line 2800
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3373:
! ASSIGNMENT STATEMENT...
	mov	2803,r13		! source line 2803
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
	mov	2806,r13		! source line 2806
	mov	"\0\0IF",r10
!   _temp_3378 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3378) then goto _Label_3377
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3377
!	jmp	_Label_3376
_Label_3376:
! THEN...
	mov	2807,r13		! source line 2807
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3379 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3379  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2807,r13		! source line 2807
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3377:
! IF STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0IF",r10
!   _temp_3382 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3382 then goto _Label_3381		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3381
!	jmp	_Label_3380
_Label_3380:
! THEN...
	mov	2811,r13		! source line 2811
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3383 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3383  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2811,r13		! source line 2811
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3381:
! ASSIGNMENT STATEMENT...
	mov	2814,r13		! source line 2814
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
	mov	2817,r13		! source line 2817
	mov	"\0\0AS",r10
!   _temp_3386 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3385 = _temp_3386 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3384 = _temp_3385 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3384 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3388		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3388
!	jmp	_Label_3387
_Label_3387:
! THEN...
	mov	2833,r13		! source line 2833
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3389 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3389  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2833,r13		! source line 2833
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3390 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3390  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2834,r13		! source line 2834
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3391 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3391  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2835,r13		! source line 2835
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2836,r13		! source line 2836
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3388:
! SEND STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0SE",r10
!   _temp_3392 = &_P_Kernel_frameManager
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
	mov	2844,r13		! source line 2844
	mov	"\0\0IF",r10
	mov	2844,r13		! source line 2844
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3396) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3395  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3395 == 707406378 then goto _Label_3394		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3394
!	jmp	_Label_3393
_Label_3393:
! THEN...
	mov	2845,r13		! source line 2845
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3397 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3397  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2845,r13		! source line 2845
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2846,r13		! source line 2846
	mov	"\0\0SE",r10
!   _temp_3398 = &_P_Kernel_frameManager
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
	mov	2847,r13		! source line 2847
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3394:
! ASSIGNMENT STATEMENT...
	mov	2851,r13		! source line 2851
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
	mov	2852,r13		! source line 2852
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3403 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3404 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3403  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3399:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3404 then goto _Label_3402		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3402
_Label_3400:
	mov	2852,r13		! source line 2852
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2853,r13		! source line 2853
	mov	"\0\0AS",r10
	mov	2853,r13		! source line 2853
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
	mov	2856,r13		! source line 2856
	mov	"\0\0IF",r10
	mov	2856,r13		! source line 2856
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3408) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3407  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3407 then goto _Label_3406 else goto _Label_3405
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3405
	jmp	_Label_3406
_Label_3405:
! THEN...
	mov	2857,r13		! source line 2857
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3409 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3409  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2857,r13		! source line 2857
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2858,r13		! source line 2858
	mov	"\0\0SE",r10
!   _temp_3410 = &_P_Kernel_frameManager
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
	mov	2859,r13		! source line 2859
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3406:
! SEND STATEMENT...
	mov	2861,r13		! source line 2861
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
	mov	2862,r13		! source line 2862
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3401:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3399
! END FOR
_Label_3402:
! IF STATEMENT...
	mov	2866,r13		! source line 2866
	mov	"\0\0IF",r10
	mov	2866,r13		! source line 2866
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3414) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3413  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3413 == 707406378 then goto _Label_3412		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3412
!	jmp	_Label_3411
_Label_3411:
! THEN...
	mov	2867,r13		! source line 2867
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3415 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3415  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2867,r13		! source line 2867
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2868,r13		! source line 2868
	mov	"\0\0SE",r10
!   _temp_3416 = &_P_Kernel_frameManager
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
	mov	2869,r13		! source line 2869
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3412:
! FOR STATEMENT...
	mov	2873,r13		! source line 2873
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3421 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3422 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3421  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3417:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3422 then goto _Label_3420		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3420
_Label_3418:
	mov	2873,r13		! source line 2873
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2874,r13		! source line 2874
	mov	"\0\0AS",r10
	mov	2874,r13		! source line 2874
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
	mov	2877,r13		! source line 2877
	mov	"\0\0IF",r10
	mov	2877,r13		! source line 2877
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3426) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3425  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3425 then goto _Label_3424 else goto _Label_3423
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3423
	jmp	_Label_3424
_Label_3423:
! THEN...
	mov	2878,r13		! source line 2878
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3427 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3427  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2878,r13		! source line 2878
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2879,r13		! source line 2879
	mov	"\0\0SE",r10
!   _temp_3428 = &_P_Kernel_frameManager
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
	mov	2880,r13		! source line 2880
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3424:
! ASSIGNMENT STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3419:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3417
! END FOR
_Label_3420:
! IF STATEMENT...
	mov	2886,r13		! source line 2886
	mov	"\0\0IF",r10
	mov	2886,r13		! source line 2886
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3432) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3431  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3431 == 707406378 then goto _Label_3430		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3430
!	jmp	_Label_3429
_Label_3429:
! THEN...
	mov	2887,r13		! source line 2887
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3433 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3433  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2887,r13		! source line 2887
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2888,r13		! source line 2888
	mov	"\0\0SE",r10
!   _temp_3434 = &_P_Kernel_frameManager
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
	mov	2889,r13		! source line 2889
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3430:
! ASSIGNMENT STATEMENT...
	mov	2893,r13		! source line 2893
	mov	"\0\0AS",r10
	mov	2893,r13		! source line 2893
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
	mov	2897,r13		! source line 2897
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2900,r13		! source line 2900
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
	.word	_Label_3435
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3436
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3437
	.word	12
	.word	4
	.word	_Label_3438
	.word	-16
	.word	4
	.word	_Label_3439
	.word	-20
	.word	4
	.word	_Label_3440
	.word	-24
	.word	4
	.word	_Label_3441
	.word	-28
	.word	4
	.word	_Label_3442
	.word	-32
	.word	4
	.word	_Label_3443
	.word	-36
	.word	4
	.word	_Label_3444
	.word	-40
	.word	4
	.word	_Label_3445
	.word	-9
	.word	1
	.word	_Label_3446
	.word	-44
	.word	4
	.word	_Label_3447
	.word	-48
	.word	4
	.word	_Label_3448
	.word	-52
	.word	4
	.word	_Label_3449
	.word	-56
	.word	4
	.word	_Label_3450
	.word	-60
	.word	4
	.word	_Label_3451
	.word	-64
	.word	4
	.word	_Label_3452
	.word	-68
	.word	4
	.word	_Label_3453
	.word	-72
	.word	4
	.word	_Label_3454
	.word	-76
	.word	4
	.word	_Label_3455
	.word	-10
	.word	1
	.word	_Label_3456
	.word	-80
	.word	4
	.word	_Label_3457
	.word	-84
	.word	4
	.word	_Label_3458
	.word	-88
	.word	4
	.word	_Label_3459
	.word	-92
	.word	4
	.word	_Label_3460
	.word	-96
	.word	4
	.word	_Label_3461
	.word	-100
	.word	4
	.word	_Label_3462
	.word	-104
	.word	4
	.word	_Label_3463
	.word	-108
	.word	4
	.word	_Label_3464
	.word	-112
	.word	4
	.word	_Label_3465
	.word	-116
	.word	4
	.word	_Label_3466
	.word	-120
	.word	4
	.word	_Label_3467
	.word	-124
	.word	4
	.word	_Label_3468
	.word	-128
	.word	4
	.word	_Label_3469
	.word	-132
	.word	4
	.word	_Label_3470
	.word	-136
	.word	4
	.word	_Label_3471
	.word	-140
	.word	4
	.word	_Label_3472
	.word	-144
	.word	4
	.word	_Label_3473
	.word	-148
	.word	4
	.word	_Label_3474
	.word	-152
	.word	4
	.word	_Label_3475
	.word	-156
	.word	4
	.word	_Label_3476
	.word	-160
	.word	4
	.word	_Label_3477
	.word	-164
	.word	4
	.word	_Label_3478
	.word	-168
	.word	4
	.word	_Label_3479
	.word	-172
	.word	4
	.word	_Label_3480
	.word	-176
	.word	4
	.word	_Label_3481
	.word	-180
	.word	4
	.word	_Label_3482
	.word	-184
	.word	4
	.word	_Label_3483
	.word	-188
	.word	4
	.word	_Label_3484
	.word	-192
	.word	4
	.word	_Label_3485
	.word	-196
	.word	4
	.word	_Label_3486
	.word	-200
	.word	4
	.word	_Label_3487
	.word	-204
	.word	4
	.word	_Label_3488
	.word	-208
	.word	4
	.word	_Label_3489
	.word	-212
	.word	4
	.word	_Label_3490
	.word	-216
	.word	4
	.word	_Label_3491
	.word	-220
	.word	4
	.word	_Label_3492
	.word	-224
	.word	4
	.word	_Label_3493
	.word	-228
	.word	4
	.word	_Label_3494
	.word	-232
	.word	4
	.word	_Label_3495
	.word	-236
	.word	4
	.word	_Label_3496
	.word	-240
	.word	4
	.word	_Label_3497
	.word	-244
	.word	4
	.word	_Label_3498
	.word	-248
	.word	4
	.word	_Label_3499
	.word	-252
	.word	4
	.word	_Label_3500
	.word	-256
	.word	4
	.word	_Label_3501
	.word	-260
	.word	4
	.word	_Label_3502
	.word	-264
	.word	4
	.word	_Label_3503
	.word	-268
	.word	4
	.word	0
_Label_3435:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3436:
	.ascii	"Pself\0"
	.align
_Label_3437:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3438:
	.byte	'?'
	.ascii	"_temp_3434\0"
	.align
_Label_3439:
	.byte	'?'
	.ascii	"_temp_3433\0"
	.align
_Label_3440:
	.byte	'?'
	.ascii	"_temp_3432\0"
	.align
_Label_3441:
	.byte	'?'
	.ascii	"_temp_3431\0"
	.align
_Label_3442:
	.byte	'?'
	.ascii	"_temp_3428\0"
	.align
_Label_3443:
	.byte	'?'
	.ascii	"_temp_3427\0"
	.align
_Label_3444:
	.byte	'?'
	.ascii	"_temp_3426\0"
	.align
_Label_3445:
	.byte	'C'
	.ascii	"_temp_3425\0"
	.align
_Label_3446:
	.byte	'?'
	.ascii	"_temp_3422\0"
	.align
_Label_3447:
	.byte	'?'
	.ascii	"_temp_3421\0"
	.align
_Label_3448:
	.byte	'?'
	.ascii	"_temp_3416\0"
	.align
_Label_3449:
	.byte	'?'
	.ascii	"_temp_3415\0"
	.align
_Label_3450:
	.byte	'?'
	.ascii	"_temp_3414\0"
	.align
_Label_3451:
	.byte	'?'
	.ascii	"_temp_3413\0"
	.align
_Label_3452:
	.byte	'?'
	.ascii	"_temp_3410\0"
	.align
_Label_3453:
	.byte	'?'
	.ascii	"_temp_3409\0"
	.align
_Label_3454:
	.byte	'?'
	.ascii	"_temp_3408\0"
	.align
_Label_3455:
	.byte	'C'
	.ascii	"_temp_3407\0"
	.align
_Label_3456:
	.byte	'?'
	.ascii	"_temp_3404\0"
	.align
_Label_3457:
	.byte	'?'
	.ascii	"_temp_3403\0"
	.align
_Label_3458:
	.byte	'?'
	.ascii	"_temp_3398\0"
	.align
_Label_3459:
	.byte	'?'
	.ascii	"_temp_3397\0"
	.align
_Label_3460:
	.byte	'?'
	.ascii	"_temp_3396\0"
	.align
_Label_3461:
	.byte	'?'
	.ascii	"_temp_3395\0"
	.align
_Label_3462:
	.byte	'?'
	.ascii	"_temp_3392\0"
	.align
_Label_3463:
	.byte	'?'
	.ascii	"_temp_3391\0"
	.align
_Label_3464:
	.byte	'?'
	.ascii	"_temp_3390\0"
	.align
_Label_3465:
	.byte	'?'
	.ascii	"_temp_3389\0"
	.align
_Label_3466:
	.byte	'?'
	.ascii	"_temp_3386\0"
	.align
_Label_3467:
	.byte	'?'
	.ascii	"_temp_3385\0"
	.align
_Label_3468:
	.byte	'?'
	.ascii	"_temp_3384\0"
	.align
_Label_3469:
	.byte	'?'
	.ascii	"_temp_3383\0"
	.align
_Label_3470:
	.byte	'?'
	.ascii	"_temp_3382\0"
	.align
_Label_3471:
	.byte	'?'
	.ascii	"_temp_3379\0"
	.align
_Label_3472:
	.byte	'?'
	.ascii	"_temp_3378\0"
	.align
_Label_3473:
	.byte	'?'
	.ascii	"_temp_3375\0"
	.align
_Label_3474:
	.byte	'?'
	.ascii	"_temp_3374\0"
	.align
_Label_3475:
	.byte	'?'
	.ascii	"_temp_3371\0"
	.align
_Label_3476:
	.byte	'?'
	.ascii	"_temp_3370\0"
	.align
_Label_3477:
	.byte	'?'
	.ascii	"_temp_3367\0"
	.align
_Label_3478:
	.byte	'?'
	.ascii	"_temp_3364\0"
	.align
_Label_3479:
	.byte	'?'
	.ascii	"_temp_3363\0"
	.align
_Label_3480:
	.byte	'?'
	.ascii	"_temp_3360\0"
	.align
_Label_3481:
	.byte	'?'
	.ascii	"_temp_3359\0"
	.align
_Label_3482:
	.byte	'?'
	.ascii	"_temp_3358\0"
	.align
_Label_3483:
	.byte	'?'
	.ascii	"_temp_3357\0"
	.align
_Label_3484:
	.byte	'?'
	.ascii	"_temp_3356\0"
	.align
_Label_3485:
	.byte	'?'
	.ascii	"_temp_3355\0"
	.align
_Label_3486:
	.byte	'?'
	.ascii	"_temp_3354\0"
	.align
_Label_3487:
	.byte	'?'
	.ascii	"_temp_3353\0"
	.align
_Label_3488:
	.byte	'?'
	.ascii	"_temp_3352\0"
	.align
_Label_3489:
	.byte	'?'
	.ascii	"_temp_3349\0"
	.align
_Label_3490:
	.byte	'?'
	.ascii	"_temp_3348\0"
	.align
_Label_3491:
	.byte	'?'
	.ascii	"_temp_3347\0"
	.align
_Label_3492:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3493:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3494:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3495:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3496:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3497:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3498:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3499:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3500:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3501:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3502:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3503:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
