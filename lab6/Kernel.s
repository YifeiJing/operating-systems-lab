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
_StringConst_195:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_194:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_193:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_192:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_191:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_190:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_189:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_188:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_187:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_186:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_185:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_184:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_183:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_182:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_181:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_180:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_179:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_178:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_177:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_176:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_175:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_174:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_173:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_172:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_171:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_170:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_169:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_168:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_167:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_166:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_165:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_164:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_163:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_162:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_161:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_160:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_159:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_158:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_157:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_156:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_155:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_154:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_153:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_152:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_151:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_150:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_149:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_148:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_147:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_146:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_145:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_144:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_143:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_142:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
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
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_135:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_134:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_133:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_132:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_131:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_130:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_129:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_128:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_127:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_126:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_125:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_124:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_123:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_122:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_121:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_120:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_119:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_118:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_117:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_116:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_115:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_114:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_113:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_112:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_111:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_110:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_109:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_108:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_107:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_106:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_105:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_104:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_103:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_102:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_101:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_100:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_99:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_98:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_97:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_96:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_95:
	.word	10			! length
	.ascii	"Threadpool"
	.align
_StringConst_94:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_93:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_92:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_91:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_90:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_89:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_88:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_87:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_86:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_85:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_84:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_83:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_82:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_81:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_80:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_79:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_78:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_77:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_76:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_75:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_74:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_73:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_72:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_71:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_70:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_69:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_68:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_67:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_66:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_65:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_64:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_63:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_62:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_61:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_60:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_59:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_58:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_57:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_56:
	.word	33			! length
	.ascii	"Failed to open file: TestProgram1"
	.align
_StringConst_55:
	.word	12			! length
	.ascii	"TestProgram3"
	.align
_StringConst_54:
	.word	9			! length
	.ascii	"myProgram"
	.align
_StringConst_53:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_52:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_51:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_50:
	.word	24			! length
	.ascii	"Invoke System call Close"
	.align
_StringConst_49:
	.word	15			! length
	.ascii	"newCurrentPos: "
	.align
_StringConst_48:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_47:
	.word	23			! length
	.ascii	"Invoke System call Seek"
	.align
_StringConst_46:
	.word	8			! length
	.ascii	"buffer: "
	.align
_StringConst_45:
	.word	24			! length
	.ascii	"Invoke System call Write"
	.align
_StringConst_44:
	.word	8			! length
	.ascii	"buffer: "
	.align
_StringConst_43:
	.word	23			! length
	.ascii	"Invoke System call Read"
	.align
_StringConst_42:
	.word	10			! length
	.ascii	"filename: "
	.align
_StringConst_41:
	.word	23			! length
	.ascii	"Invoke System call Open"
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
	set	0x5e5560a2,r4		! myHashVal = 1582653602
	cmp	r3,r4
	be	_Label_205
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
_Label_205:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_206
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_206
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_206
_Label_206:
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
_Label_3302:
	push	r0
	sub	r1,1,r1
	bne	_Label_3302
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_207 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_207  sizeInBytes=4
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
_Label_3303:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3303
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_211 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_212 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_211  sizeInBytes=4
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
!   _temp_213 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_214 = _temp_213 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_214 = 3  (sizeInBytes=4)
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
_Label_3304:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3304
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_216 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_217 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_216  sizeInBytes=4
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
!   _temp_218 = _function_204_IdleFunction
	set	_function_204_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_219 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_218  sizeInBytes=4
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
	.word	_Label_220
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_221
	.word	-12
	.word	4
	.word	_Label_222
	.word	-16
	.word	4
	.word	_Label_223
	.word	-20
	.word	4
	.word	_Label_224
	.word	-24
	.word	4
	.word	_Label_225
	.word	-28
	.word	4
	.word	_Label_226
	.word	-32
	.word	4
	.word	_Label_227
	.word	-36
	.word	4
	.word	_Label_228
	.word	-40
	.word	4
	.word	_Label_229
	.word	-44
	.word	4
	.word	_Label_230
	.word	-48
	.word	4
	.word	_Label_231
	.word	-52
	.word	4
	.word	_Label_232
	.word	-56
	.word	4
	.word	_Label_233
	.word	-60
	.word	4
	.word	0
_Label_220:
	.ascii	"InitializeScheduler\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_204_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_204_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3305:
	push	r0
	sub	r1,1,r1
	bne	_Label_3305
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_234:
!	jmp	_Label_235
_Label_235:
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
!   _temp_239 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_237 else goto _Label_238
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_238
	jmp	_Label_237
_Label_237:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_240
_Label_238:
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
_Label_240:
! END WHILE...
	jmp	_Label_234
_Label_236:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_204_IdleFunction:
	.word	_sourceFileName
	.word	_Label_241
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_242
	.word	8
	.word	4
	.word	_Label_243
	.word	-12
	.word	4
	.word	_Label_244
	.word	-16
	.word	4
	.word	0
_Label_241:
	.ascii	"IdleFunction\0"
	.align
_Label_242:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_244:
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
_Label_3306:
	push	r0
	sub	r1,1,r1
	bne	_Label_3306
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
!   _temp_247 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_247 ) then goto _Label_246		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_246
!	jmp	_Label_245
_Label_245:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_249 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_249 [0 ] into _temp_250
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
!   _temp_248 = _temp_250		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_248  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_246:
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
!   _temp_251 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_251 = 3  (sizeInBytes=4)
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
_Label_252:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_256 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_255  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_255 then goto _Label_254 else goto _Label_253
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_253
	jmp	_Label_254
_Label_253:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_257 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_258 = &_P_Kernel_threadManager
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
	jmp	_Label_252
_Label_254:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_261 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_261 ) then goto _Label_260		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_260
!	jmp	_Label_259
_Label_259:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_263 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_263 [0 ] into _temp_264
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
!   _temp_262 = _temp_264		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_262  sizeInBytes=4
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
!   _temp_266 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_265 = *_temp_266  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_265) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_267 = _temp_265 + 32
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
_Label_260:
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
	.word	_Label_268
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_269
	.word	8
	.word	4
	.word	_Label_270
	.word	-16
	.word	4
	.word	_Label_271
	.word	-20
	.word	4
	.word	_Label_272
	.word	-24
	.word	4
	.word	_Label_273
	.word	-28
	.word	4
	.word	_Label_274
	.word	-32
	.word	4
	.word	_Label_275
	.word	-36
	.word	4
	.word	_Label_276
	.word	-40
	.word	4
	.word	_Label_277
	.word	-44
	.word	4
	.word	_Label_278
	.word	-48
	.word	4
	.word	_Label_279
	.word	-52
	.word	4
	.word	_Label_280
	.word	-9
	.word	1
	.word	_Label_281
	.word	-56
	.word	4
	.word	_Label_282
	.word	-60
	.word	4
	.word	_Label_283
	.word	-64
	.word	4
	.word	_Label_284
	.word	-68
	.word	4
	.word	_Label_285
	.word	-72
	.word	4
	.word	_Label_286
	.word	-76
	.word	4
	.word	_Label_287
	.word	-80
	.word	4
	.word	0
_Label_268:
	.ascii	"Run\0"
	.align
_Label_269:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_280:
	.byte	'C'
	.ascii	"_temp_255\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_286:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_287:
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
_Label_3307:
	push	r0
	sub	r1,1,r1
	bne	_Label_3307
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
!   _temp_288 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_289 = _function_203_ThreadPrintShort
	set	_function_203_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_290 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_289  sizeInBytes=4
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
	.word	_Label_291
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_292
	.word	-12
	.word	4
	.word	_Label_293
	.word	-16
	.word	4
	.word	_Label_294
	.word	-20
	.word	4
	.word	_Label_295
	.word	-24
	.word	4
	.word	0
_Label_291:
	.ascii	"PrintReadyList\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_295:
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
_Label_3308:
	push	r0
	sub	r1,1,r1
	bne	_Label_3308
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
!   _temp_296 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_296  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_298 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_297 = *_temp_298  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
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
!   _temp_299 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
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
	.word	_Label_300
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_301
	.word	-12
	.word	4
	.word	_Label_302
	.word	-16
	.word	4
	.word	_Label_303
	.word	-20
	.word	4
	.word	_Label_304
	.word	-24
	.word	4
	.word	_Label_305
	.word	-28
	.word	4
	.word	_Label_306
	.word	-32
	.word	4
	.word	0
_Label_300:
	.ascii	"ThreadStartMain\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_305:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_306:
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
_Label_3309:
	push	r0
	sub	r1,1,r1
	bne	_Label_3309
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
!   _temp_307 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_308 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
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
	.word	_Label_309
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_310
	.word	-12
	.word	4
	.word	_Label_311
	.word	-16
	.word	4
	.word	_Label_312
	.word	-20
	.word	4
	.word	0
_Label_309:
	.ascii	"ThreadFinish\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_312:
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
_Label_3310:
	push	r0
	sub	r1,1,r1
	bne	_Label_3310
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
!   _temp_313 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_315		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_315
!	jmp	_Label_314
_Label_314:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_316 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_316  sizeInBytes=4
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
!   _temp_318 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_317 = *_temp_318  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_315:
! CALL STATEMENT...
!   _temp_319 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
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
!   _temp_320 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_321 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
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
	.word	_Label_322
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_323
	.word	8
	.word	4
	.word	_Label_324
	.word	-12
	.word	4
	.word	_Label_325
	.word	-16
	.word	4
	.word	_Label_326
	.word	-20
	.word	4
	.word	_Label_327
	.word	-24
	.word	4
	.word	_Label_328
	.word	-28
	.word	4
	.word	_Label_329
	.word	-32
	.word	4
	.word	_Label_330
	.word	-36
	.word	4
	.word	_Label_331
	.word	-40
	.word	4
	.word	0
_Label_322:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_323:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_331:
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
_Label_3311:
	push	r0
	sub	r1,1,r1
	bne	_Label_3311
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
!   if newStatus != 1 then goto _Label_333		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_333
!	jmp	_Label_332
_Label_332:
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
	jmp	_Label_334
_Label_333:
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
_Label_334:
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
	.word	_Label_335
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_336
	.word	8
	.word	4
	.word	_Label_337
	.word	-12
	.word	4
	.word	0
_Label_335:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_336:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_337:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_203_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_203_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3312:
	push	r0
	sub	r1,1,r1
	bne	_Label_3312
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
!   if t == 0 then goto _Label_341		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_341
!   _temp_340 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_342
_Label_341:
!   _temp_340 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_342:
!   if _temp_340 then goto _Label_339 else goto _Label_338
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_338
	jmp	_Label_339
_Label_338:
! THEN...
	mov	650,r13		! source line 650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_343 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
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
_Label_339:
! CALL STATEMENT...
!   _temp_344 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
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
!   _temp_346 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_345 = *_temp_346  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_347 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
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
!   _temp_356 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_355 = *_temp_356  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_350
	cmp	r1,2
	be	_Label_351
	cmp	r1,3
	be	_Label_352
	cmp	r1,4
	be	_Label_353
	cmp	r1,5
	be	_Label_354
	jmp	_Label_348
! CASE 1...
_Label_350:
! CALL STATEMENT...
!   _temp_357 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_349
! CASE 2...
_Label_351:
! CALL STATEMENT...
!   _temp_358 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_349
! CASE 3...
_Label_352:
! CALL STATEMENT...
!   _temp_359 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_349
! CASE 4...
_Label_353:
! CALL STATEMENT...
!   _temp_360 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0BR",r10
	jmp	_Label_349
! CASE 5...
_Label_354:
! CALL STATEMENT...
!   _temp_361 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0BR",r10
	jmp	_Label_349
! DEFAULT CASE...
_Label_348:
! CALL STATEMENT...
!   _temp_362 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
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
_Label_349:
! CALL STATEMENT...
!   _temp_363 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_364 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_365 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
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
_RoutineDescriptor__function_203_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_366
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_367
	.word	8
	.word	4
	.word	_Label_368
	.word	-16
	.word	4
	.word	_Label_369
	.word	-20
	.word	4
	.word	_Label_370
	.word	-24
	.word	4
	.word	_Label_371
	.word	-28
	.word	4
	.word	_Label_372
	.word	-32
	.word	4
	.word	_Label_373
	.word	-36
	.word	4
	.word	_Label_374
	.word	-40
	.word	4
	.word	_Label_375
	.word	-44
	.word	4
	.word	_Label_376
	.word	-48
	.word	4
	.word	_Label_377
	.word	-52
	.word	4
	.word	_Label_378
	.word	-56
	.word	4
	.word	_Label_379
	.word	-60
	.word	4
	.word	_Label_380
	.word	-64
	.word	4
	.word	_Label_381
	.word	-68
	.word	4
	.word	_Label_382
	.word	-72
	.word	4
	.word	_Label_383
	.word	-76
	.word	4
	.word	_Label_384
	.word	-9
	.word	1
	.word	_Label_385
	.word	-80
	.word	4
	.word	0
_Label_366:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_367:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_384:
	.byte	'C'
	.ascii	"_temp_340\0"
	.align
_Label_385:
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
_Label_3313:
	push	r0
	sub	r1,1,r1
	bne	_Label_3313
	mov	992,r13		! source line 992
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! pcb
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_386 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: pcb = *_temp_386  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_388 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_387 = *_temp_388  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_387) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_389 = _temp_387 + 28
	load	[r14+-56],r1
	add	r1,28,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_389 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-48],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	997,r13		! source line 997
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_391 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_390 = *_temp_391  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_390) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_392 = _temp_390 + 24
	load	[r14+-44],r1
	add	r1,24,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_392 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_393 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_393 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_394 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_394 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1001,r13		! source line 1001
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1003,r13		! source line 1003
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_396 = pcb + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_395 = _temp_396		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_397 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_395  sizeInBytes=4
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
	mov	1004,r13		! source line 1004
	mov	"\0\0SE",r10
!   _temp_398 = &_P_Kernel_processManager
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
	mov	1005,r13		! source line 1005
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1005,r13		! source line 1005
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
	.word	_Label_399
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_400
	.word	8
	.word	4
	.word	_Label_401
	.word	-12
	.word	4
	.word	_Label_402
	.word	-16
	.word	4
	.word	_Label_403
	.word	-20
	.word	4
	.word	_Label_404
	.word	-24
	.word	4
	.word	_Label_405
	.word	-28
	.word	4
	.word	_Label_406
	.word	-32
	.word	4
	.word	_Label_407
	.word	-36
	.word	4
	.word	_Label_408
	.word	-40
	.word	4
	.word	_Label_409
	.word	-44
	.word	4
	.word	_Label_410
	.word	-48
	.word	4
	.word	_Label_411
	.word	-52
	.word	4
	.word	_Label_412
	.word	-56
	.word	4
	.word	_Label_413
	.word	-60
	.word	4
	.word	_Label_414
	.word	-64
	.word	4
	.word	_Label_415
	.word	-68
	.word	4
	.word	0
_Label_399:
	.ascii	"ProcessFinish\0"
	.align
_Label_400:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_414:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_415:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_202_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3314:
	push	r0
	sub	r1,1,r1
	bne	_Label_3314
	mov	1011,r13		! source line 1011
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_416 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_416  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1015,r13		! source line 1015
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1016,r13		! source line 1016
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_202_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_417
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_418
	.word	8
	.word	4
	.word	_Label_419
	.word	-12
	.word	4
	.word	0
_Label_417:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_418:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_416\0"
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
_Label_3315:
	push	r0
	sub	r1,1,r1
	bne	_Label_3315
	mov	1491,r13		! source line 1491
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1503,r13		! source line 1503
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
	mov	1504,r13		! source line 1504
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1504,r13		! source line 1504
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
	.word	_Label_420
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_420:
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
_Label_3316:
	push	r0
	sub	r1,1,r1
	bne	_Label_3316
	mov	1509,r13		! source line 1509
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1519,r13		! source line 1519
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1521,r13		! source line 1521
	mov	"\0\0IF",r10
!   _temp_424 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_425 = _temp_424 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_423 = *_temp_425  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_423 == 0 then goto _Label_422		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_422
!	jmp	_Label_421
_Label_421:
! THEN...
	mov	1522,r13		! source line 1522
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1522,r13		! source line 1522
	mov	"\0\0SE",r10
!   _temp_427 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_428 = _temp_427 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_426 = *_temp_428  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_426) then goto _runtimeErrorNullPointer
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
_Label_422:
! RETURN STATEMENT...
	mov	1521,r13		! source line 1521
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
	.word	_Label_429
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_430
	.word	-12
	.word	4
	.word	_Label_431
	.word	-16
	.word	4
	.word	_Label_432
	.word	-20
	.word	4
	.word	_Label_433
	.word	-24
	.word	4
	.word	_Label_434
	.word	-28
	.word	4
	.word	_Label_435
	.word	-32
	.word	4
	.word	0
_Label_429:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_423\0"
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
	mov	1528,r13		! source line 1528
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1537,r13		! source line 1537
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
	.word	_Label_436
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_436:
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
_Label_3317:
	push	r0
	sub	r1,1,r1
	bne	_Label_3317
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
!   _temp_437 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_437  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1549,r13		! source line 1549
	mov	"\0\0CA",r10
	call	_function_201_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_438
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_439
	.word	-12
	.word	4
	.word	0
_Label_438:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_437\0"
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
_Label_3318:
	push	r0
	sub	r1,1,r1
	bne	_Label_3318
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
!   _temp_440 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_440  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1561,r13		! source line 1561
	mov	"\0\0CA",r10
	call	_function_201_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_441
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_442
	.word	-12
	.word	4
	.word	0
_Label_441:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_440\0"
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
_Label_3319:
	push	r0
	sub	r1,1,r1
	bne	_Label_3319
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
!   _temp_443 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_443  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1573,r13		! source line 1573
	mov	"\0\0CA",r10
	call	_function_201_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_444
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_445
	.word	-12
	.word	4
	.word	0
_Label_444:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_443\0"
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
_Label_3320:
	push	r0
	sub	r1,1,r1
	bne	_Label_3320
	mov	1578,r13		! source line 1578
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1584,r13		! source line 1584
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_446 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_446  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1585,r13		! source line 1585
	mov	"\0\0CA",r10
	call	_function_201_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1585,r13		! source line 1585
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
	.word	_Label_447
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_448
	.word	-12
	.word	4
	.word	0
_Label_447:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_446\0"
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
_Label_3321:
	push	r0
	sub	r1,1,r1
	bne	_Label_3321
	mov	1590,r13		! source line 1590
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1596,r13		! source line 1596
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_449 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_449  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1597,r13		! source line 1597
	mov	"\0\0CA",r10
	call	_function_201_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1597,r13		! source line 1597
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
	.word	_Label_450
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_451
	.word	-12
	.word	4
	.word	0
_Label_450:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_449\0"
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
_Label_3322:
	push	r0
	sub	r1,1,r1
	bne	_Label_3322
	mov	1602,r13		! source line 1602
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1608,r13		! source line 1608
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_452 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_452  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1609,r13		! source line 1609
	mov	"\0\0CA",r10
	call	_function_201_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1609,r13		! source line 1609
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
	.word	_Label_453
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_454
	.word	-12
	.word	4
	.word	0
_Label_453:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_452\0"
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
_Label_3323:
	push	r0
	sub	r1,1,r1
	bne	_Label_3323
	mov	1614,r13		! source line 1614
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1620,r13		! source line 1620
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_455 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_455  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1621,r13		! source line 1621
	mov	"\0\0CA",r10
	call	_function_201_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1621,r13		! source line 1621
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
	.word	_Label_456
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_457
	.word	-12
	.word	4
	.word	0
_Label_456:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_201_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_201_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3324:
	push	r0
	sub	r1,1,r1
	bne	_Label_3324
	mov	1626,r13		! source line 1626
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_458 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_458  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1631,r13		! source line 1631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1632,r13		! source line 1632
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_459 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_459  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1633,r13		! source line 1633
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1636,r13		! source line 1636
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_463 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_462 = *_temp_463  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_462 == 0 then goto _Label_461		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_461
!	jmp	_Label_460
_Label_460:
! THEN...
	mov	1637,r13		! source line 1637
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1637,r13		! source line 1637
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_465 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_464 = *_temp_465  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_464) then goto _runtimeErrorNullPointer
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
	jmp	_Label_466
_Label_461:
! ELSE...
	mov	1639,r13		! source line 1639
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_467 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_467  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1639,r13		! source line 1639
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_466:
! SEND STATEMENT...
	mov	1641,r13		! source line 1641
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
	mov	1647,r13		! source line 1647
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1647,r13		! source line 1647
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_201_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_468
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_469
	.word	8
	.word	4
	.word	_Label_470
	.word	-12
	.word	4
	.word	_Label_471
	.word	-16
	.word	4
	.word	_Label_472
	.word	-20
	.word	4
	.word	_Label_473
	.word	-24
	.word	4
	.word	_Label_474
	.word	-28
	.word	4
	.word	_Label_475
	.word	-32
	.word	4
	.word	_Label_476
	.word	-36
	.word	4
	.word	0
_Label_468:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_469:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_458\0"
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
_Label_3325:
	push	r0
	sub	r1,1,r1
	bne	_Label_3325
	mov	1652,r13		! source line 1652
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1673,r13		! source line 1673
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3326
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_477
_Label_3326:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_477
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_477
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_491,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_491:
	jmp	_Label_483	! 1:	
	jmp	_Label_490	! 2:	
	jmp	_Label_480	! 3:	
	jmp	_Label_479	! 4:	
	jmp	_Label_482	! 5:	
	jmp	_Label_481	! 6:	
	jmp	_Label_484	! 7:	
	jmp	_Label_485	! 8:	
	jmp	_Label_486	! 9:	
	jmp	_Label_487	! 10:	
	jmp	_Label_488	! 11:	
	jmp	_Label_489	! 12:	
! CASE 4...
_Label_479:
! RETURN STATEMENT...
	mov	1675,r13		! source line 1675
	mov	"\0\0RE",r10
!   Call the function
	mov	1675,r13		! source line 1675
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_492  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_492  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_480:
! CALL STATEMENT...
!   Call the function
	mov	1677,r13		! source line 1677
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1678,r13		! source line 1678
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_481:
! RETURN STATEMENT...
	mov	1680,r13		! source line 1680
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1680,r13		! source line 1680
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_493  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_493  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_482:
! RETURN STATEMENT...
	mov	1682,r13		! source line 1682
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1682,r13		! source line 1682
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_494  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_494  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_483:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1684,r13		! source line 1684
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1685,r13		! source line 1685
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_484:
! RETURN STATEMENT...
	mov	1687,r13		! source line 1687
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1687,r13		! source line 1687
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_495  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_495  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_485:
! RETURN STATEMENT...
	mov	1689,r13		! source line 1689
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1689,r13		! source line 1689
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_496  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_496  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_486:
! RETURN STATEMENT...
	mov	1691,r13		! source line 1691
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
	mov	1691,r13		! source line 1691
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_497  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_497  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_487:
! RETURN STATEMENT...
	mov	1693,r13		! source line 1693
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
	mov	1693,r13		! source line 1693
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_498  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_498  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_488:
! RETURN STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1695,r13		! source line 1695
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_499  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_499  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_489:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1697,r13		! source line 1697
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_490:
! CALL STATEMENT...
!   Call the function
	mov	1700,r13		! source line 1700
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1701,r13		! source line 1701
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_477:
! CALL STATEMENT...
!   _temp_500 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_500  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1703,r13		! source line 1703
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1704,r13		! source line 1704
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1705,r13		! source line 1705
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_501 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_501  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1706,r13		! source line 1706
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_478:
! RETURN STATEMENT...
	mov	1708,r13		! source line 1708
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
	.word	_Label_502
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_503
	.word	8
	.word	4
	.word	_Label_504
	.word	12
	.word	4
	.word	_Label_505
	.word	16
	.word	4
	.word	_Label_506
	.word	20
	.word	4
	.word	_Label_507
	.word	24
	.word	4
	.word	_Label_508
	.word	-12
	.word	4
	.word	_Label_509
	.word	-16
	.word	4
	.word	_Label_510
	.word	-20
	.word	4
	.word	_Label_511
	.word	-24
	.word	4
	.word	_Label_512
	.word	-28
	.word	4
	.word	_Label_513
	.word	-32
	.word	4
	.word	_Label_514
	.word	-36
	.word	4
	.word	_Label_515
	.word	-40
	.word	4
	.word	_Label_516
	.word	-44
	.word	4
	.word	_Label_517
	.word	-48
	.word	4
	.word	0
_Label_502:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_503:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_504:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_505:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_506:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_507:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_492\0"
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
_Label_3327:
	push	r0
	sub	r1,1,r1
	bne	_Label_3327
	mov	1713,r13		! source line 1713
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1714,r13		! source line 1714
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1714,r13		! source line 1714
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
	.word	_Label_518
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_519
	.word	8
	.word	4
	.word	0
_Label_518:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_519:
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
_Label_3328:
	push	r0
	sub	r1,1,r1
	bne	_Label_3328
	mov	1719,r13		! source line 1719
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_520 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_520  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1720,r13		! source line 1720
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1720,r13		! source line 1720
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
	.word	_Label_521
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_522
	.word	-12
	.word	4
	.word	0
_Label_521:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_520\0"
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
_Label_3329:
	push	r0
	sub	r1,1,r1
	bne	_Label_3329
	mov	1725,r13		! source line 1725
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1726,r13		! source line 1726
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
	mov	1726,r13		! source line 1726
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
	.word	_Label_523
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_523:
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
_Label_3330:
	push	r0
	sub	r1,1,r1
	bne	_Label_3330
	mov	1731,r13		! source line 1731
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1738,r13		! source line 1738
	mov	"\0\0AS",r10
	mov	1738,r13		! source line 1738
	mov	"\0\0SE",r10
!   _temp_524 = &_P_Kernel_processManager
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
	mov	1739,r13		! source line 1739
	mov	"\0\0AS",r10
	mov	1739,r13		! source line 1739
	mov	"\0\0SE",r10
!   _temp_525 = &_P_Kernel_threadManager
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
	mov	1740,r13		! source line 1740
	mov	"\0\0AS",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_526 = childPCB + 24
	load	[r14+-172],r1
	add	r1,24,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_526 = childThread  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r14+-160],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1741,r13		! source line 1741
	mov	"\0\0AS",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_527 = childPCB + 16
	load	[r14+-172],r1
	add	r1,16,r1
	store	r1,[r14+-156]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_530 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-144]
!   Data Move: _temp_529 = *_temp_530  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_529) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_531 = _temp_529 + 12
	load	[r14+-148],r1
	add	r1,12,r1
	store	r1,[r14+-140]
!   Data Move: _temp_528 = *_temp_531  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   Data Move: *_temp_527 = _temp_528  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r14+-156],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_532 = childThread + 68
	load	[r14+-176],r1
	add	r1,68,r1
	store	r1,[r14+-136]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_534 = childThread + 88
	load	[r14+-176],r1
	add	r1,88,r1
	store	r1,[r14+-128]
!   Move address of _temp_534 [999 ] into _temp_535
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
!   _temp_533 = _temp_535		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-132]
!   Data Move: *_temp_532 = _temp_533  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r14+-136],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1743,r13		! source line 1743
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_536 = childThread + 4160
	load	[r14+-176],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: *_temp_536 = childPCB  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r14+-120],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1744,r13		! source line 1744
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_537 = childThread + 76
	load	[r14+-176],r1
	add	r1,76,r1
	store	r1,[r14+-116]
!   Data Move: *_temp_537 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-116],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_539 = childThread + 4096
	load	[r14+-176],r1
	add	r1,4096,r1
	store	r1,[r14+-108]
!   Move address of _temp_539 [0 ] into _temp_540
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
!   _temp_538 = _temp_540		(4 bytes)
	load	[r14+-104],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_538  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1745,r13		! source line 1745
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1746,r13		! source line 1746
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	1747,r13		! source line 1747
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_542 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_541 = *_temp_542  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_541) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_543 = _temp_541 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   _temp_544 = _temp_543 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Data Move: tmp = *_temp_544  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-180]
! IF STATEMENT...
	mov	1748,r13		! source line 1748
	mov	"\0\0IF",r10
!   if tmp <= 0 then goto _Label_546		(int)
	load	[r14+-180],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_546
!	jmp	_Label_545
_Label_545:
! THEN...
	mov	1749,r13		! source line 1749
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_548 = childPCB + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_547 = _temp_548		(4 bytes)
	load	[r14+-80],r1
	store	r1,[r14+-84]
!   _temp_549 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_547  sizeInBytes=4
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
	mov	1750,r13		! source line 1750
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_554 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_555 = tmp - 1		(int)
	load	[r14+-180],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_554  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-184]
_Label_550:
!   Perform the FOR-LOOP termination test
!   if i > _temp_555 then goto _Label_553		
	load	[r14+-184],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_553
_Label_551:
	mov	1750,r13		! source line 1750
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_557 = childPCB + 32
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
!   Retrieve Result: targetName=_temp_556  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
	mov	1752,r13		! source line 1752
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_560 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_559 = *_temp_560  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_559) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_561 = _temp_559 + 32
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
!   Retrieve Result: targetName=_temp_558  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_556  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_558  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1751,r13		! source line 1751
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0IF",r10
	mov	1753,r13		! source line 1753
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_565 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_564 = *_temp_565  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_564) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_566 = _temp_564 + 32
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
!   if result==true then goto _Label_562 else goto _Label_563
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_563
	jmp	_Label_562
_Label_562:
! THEN...
	mov	1754,r13		! source line 1754
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1754,r13		! source line 1754
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_567 = childPCB + 32
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
	jmp	_Label_568
_Label_563:
! ELSE...
	mov	1756,r13		! source line 1756
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1756,r13		! source line 1756
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_569 = childPCB + 32
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
_Label_568:
!   Increment the FOR-LOOP index variable and jump back
_Label_552:
!   i = i + 1
	load	[r14+-184],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
	jmp	_Label_550
! END FOR
_Label_553:
! END IF...
_Label_546:
! ASSIGNMENT STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0AS",r10
!   Call the function
	mov	1760,r13		! source line 1760
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-188]
! SEND STATEMENT...
	mov	1761,r13		! source line 1761
	mov	"\0\0SE",r10
!   _temp_570 = _function_200_ResumeChildAfterFork
	set	_function_200_ResumeChildAfterFork,r1
	store	r1,[r14+-20]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_570  sizeInBytes=4
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
	mov	1762,r13		! source line 1762
	mov	"\0\0RE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_572 = childPCB + 12
	load	[r14+-172],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_571 = *_temp_572  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_571  (sizeInBytes=4)
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
	.word	_Label_573
	.word	0		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_574
	.word	-12
	.word	4
	.word	_Label_575
	.word	-16
	.word	4
	.word	_Label_576
	.word	-20
	.word	4
	.word	_Label_577
	.word	-24
	.word	4
	.word	_Label_578
	.word	-28
	.word	4
	.word	_Label_579
	.word	-32
	.word	4
	.word	_Label_580
	.word	-36
	.word	4
	.word	_Label_581
	.word	-40
	.word	4
	.word	_Label_582
	.word	-44
	.word	4
	.word	_Label_583
	.word	-48
	.word	4
	.word	_Label_584
	.word	-52
	.word	4
	.word	_Label_585
	.word	-56
	.word	4
	.word	_Label_586
	.word	-60
	.word	4
	.word	_Label_587
	.word	-64
	.word	4
	.word	_Label_588
	.word	-68
	.word	4
	.word	_Label_589
	.word	-72
	.word	4
	.word	_Label_590
	.word	-76
	.word	4
	.word	_Label_591
	.word	-80
	.word	4
	.word	_Label_592
	.word	-84
	.word	4
	.word	_Label_593
	.word	-88
	.word	4
	.word	_Label_594
	.word	-92
	.word	4
	.word	_Label_595
	.word	-96
	.word	4
	.word	_Label_596
	.word	-100
	.word	4
	.word	_Label_597
	.word	-104
	.word	4
	.word	_Label_598
	.word	-108
	.word	4
	.word	_Label_599
	.word	-112
	.word	4
	.word	_Label_600
	.word	-116
	.word	4
	.word	_Label_601
	.word	-120
	.word	4
	.word	_Label_602
	.word	-124
	.word	4
	.word	_Label_603
	.word	-128
	.word	4
	.word	_Label_604
	.word	-132
	.word	4
	.word	_Label_605
	.word	-136
	.word	4
	.word	_Label_606
	.word	-140
	.word	4
	.word	_Label_607
	.word	-144
	.word	4
	.word	_Label_608
	.word	-148
	.word	4
	.word	_Label_609
	.word	-152
	.word	4
	.word	_Label_610
	.word	-156
	.word	4
	.word	_Label_611
	.word	-160
	.word	4
	.word	_Label_612
	.word	-164
	.word	4
	.word	_Label_613
	.word	-168
	.word	4
	.word	_Label_614
	.word	-172
	.word	4
	.word	_Label_615
	.word	-176
	.word	4
	.word	_Label_616
	.word	-180
	.word	4
	.word	_Label_617
	.word	-184
	.word	4
	.word	_Label_618
	.word	-188
	.word	4
	.word	_Label_619
	.word	-192
	.word	4
	.word	0
_Label_573:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_614:
	.byte	'P'
	.ascii	"childPCB\0"
	.align
_Label_615:
	.byte	'P'
	.ascii	"childThread\0"
	.align
_Label_616:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_617:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_618:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_619:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_200_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_200_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_3331:
	push	r0
	sub	r1,1,r1
	bne	_Label_3331
	mov	1765,r13		! source line 1765
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1770,r13		! source line 1770
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1771,r13		! source line 1771
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_621 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_620 = *_temp_621  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_620) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_622 = _temp_620 + 32
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
!   _temp_624 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_624 [0 ] into _temp_625
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
!   _temp_623 = _temp_625		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_623  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1772,r13		! source line 1772
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1773,r13		! source line 1773
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_626 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_626 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1775,r13		! source line 1775
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_627 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_627 [14 ] into _temp_628
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
!   Data Move: initUserStackTop = *_temp_628  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1776,r13		! source line 1776
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_629 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_629 [999 ] into _temp_630
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
!   initSystemStackTop = _temp_630		(4 bytes)
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
	mov	1777,r13		! source line 1777
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1777,r13		! source line 1777
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_200_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_631
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_632
	.word	8
	.word	4
	.word	_Label_633
	.word	-12
	.word	4
	.word	_Label_634
	.word	-16
	.word	4
	.word	_Label_635
	.word	-20
	.word	4
	.word	_Label_636
	.word	-24
	.word	4
	.word	_Label_637
	.word	-28
	.word	4
	.word	_Label_638
	.word	-32
	.word	4
	.word	_Label_639
	.word	-36
	.word	4
	.word	_Label_640
	.word	-40
	.word	4
	.word	_Label_641
	.word	-44
	.word	4
	.word	_Label_642
	.word	-48
	.word	4
	.word	_Label_643
	.word	-52
	.word	4
	.word	_Label_644
	.word	-56
	.word	4
	.word	_Label_645
	.word	-60
	.word	4
	.word	_Label_646
	.word	-64
	.word	4
	.word	0
_Label_631:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_632:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_644:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_645:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_646:
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
_Label_3332:
	push	r0
	sub	r1,1,r1
	bne	_Label_3332
	mov	1782,r13		! source line 1782
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_651 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_652 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_651  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_647:
!   Perform the FOR-LOOP termination test
!   if i > _temp_652 then goto _Label_650		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_650
_Label_648:
	mov	1786,r13		! source line 1786
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0IF",r10
!   _temp_658 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_659 = _temp_658 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_659 [i ] into _temp_660
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   _temp_661 = _temp_660 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_657 = *_temp_661  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_657 != processID then goto _Label_654		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_654
!	jmp	_Label_656
_Label_656:
!   _temp_663 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_664 = _temp_663 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_664 [i ] into _temp_665
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_666 = _temp_665 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_662 = *_temp_666  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_669 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_668 = *_temp_669  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_668) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_670 = _temp_668 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_667 = *_temp_670  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_662 != _temp_667 then goto _Label_654		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_654
!	jmp	_Label_655
_Label_655:
!   _temp_672 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_673 = _temp_672 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_673 [i ] into _temp_674
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_675 = _temp_674 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_671 = *_temp_675  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_671 == 3 then goto _Label_654		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_654
!	jmp	_Label_653
_Label_653:
! THEN...
	mov	1788,r13		! source line 1788
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0AS",r10
	mov	1788,r13		! source line 1788
	mov	"\0\0SE",r10
!   _temp_677 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_678 = _temp_677 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_678 [i ] into _temp_679
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_676 = _temp_679		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_680 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_676  sizeInBytes=4
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
	mov	1789,r13		! source line 1789
	mov	"\0\0RE",r10
!   ReturnResult: childExitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_654:
!   Increment the FOR-LOOP index variable and jump back
_Label_649:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_647
! END FOR
_Label_650:
! RETURN STATEMENT...
	mov	1793,r13		! source line 1793
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
	.word	_Label_681
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_682
	.word	8
	.word	4
	.word	_Label_683
	.word	-12
	.word	4
	.word	_Label_684
	.word	-16
	.word	4
	.word	_Label_685
	.word	-20
	.word	4
	.word	_Label_686
	.word	-24
	.word	4
	.word	_Label_687
	.word	-28
	.word	4
	.word	_Label_688
	.word	-32
	.word	4
	.word	_Label_689
	.word	-36
	.word	4
	.word	_Label_690
	.word	-40
	.word	4
	.word	_Label_691
	.word	-44
	.word	4
	.word	_Label_692
	.word	-48
	.word	4
	.word	_Label_693
	.word	-52
	.word	4
	.word	_Label_694
	.word	-56
	.word	4
	.word	_Label_695
	.word	-60
	.word	4
	.word	_Label_696
	.word	-64
	.word	4
	.word	_Label_697
	.word	-68
	.word	4
	.word	_Label_698
	.word	-72
	.word	4
	.word	_Label_699
	.word	-76
	.word	4
	.word	_Label_700
	.word	-80
	.word	4
	.word	_Label_701
	.word	-84
	.word	4
	.word	_Label_702
	.word	-88
	.word	4
	.word	_Label_703
	.word	-92
	.word	4
	.word	_Label_704
	.word	-96
	.word	4
	.word	_Label_705
	.word	-100
	.word	4
	.word	_Label_706
	.word	-104
	.word	4
	.word	_Label_707
	.word	-108
	.word	4
	.word	_Label_708
	.word	-112
	.word	4
	.word	_Label_709
	.word	-116
	.word	4
	.word	_Label_710
	.word	-120
	.word	4
	.word	0
_Label_681:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_682:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_709:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_710:
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
_Label_3333:
	push	r0
	sub	r1,1,r1
	bne	_Label_3333
	mov	1798,r13		! source line 1798
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-264,r4
	mov	23,r3
_Label_3334:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3334
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1807,r13		! source line 1807
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-148]
! CALL STATEMENT...
!   _temp_712 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	1808,r13		! source line 1808
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0AS",r10
	mov	1809,r13		! source line 1809
	mov	"\0\0SE",r10
!   _temp_713 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-120]
!   _temp_714 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_716 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_715 = *_temp_716  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_715) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_717 = _temp_715 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_713  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_714  sizeInBytes=4
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
	mov	1810,r13		! source line 1810
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_719		(int)
	load	[r14+-268],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_719
!	jmp	_Label_718
_Label_718:
! THEN...
	mov	1811,r13		! source line 1811
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_720 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_720  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	1811,r13		! source line 1811
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_719:
! ASSIGNMENT STATEMENT...
	mov	1814,r13		! source line 1814
	mov	"\0\0AS",r10
	mov	1814,r13		! source line 1814
	mov	"\0\0SE",r10
!   _temp_721 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-96]
!   _temp_722 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_721  sizeInBytes=4
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
	mov	1815,r13		! source line 1815
	mov	"\0\0IF",r10
!   if fp == 0 then goto _Label_724		(int)
	load	[r14+-132],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_724
!	jmp	_Label_723
_Label_723:
! THEN...
	mov	1816,r13		! source line 1816
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0SE",r10
!   _temp_725 = &newAddrSpace
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
	mov	1817,r13		! source line 1817
	mov	"\0\0AS",r10
	mov	1817,r13		! source line 1817
	mov	"\0\0SE",r10
!   _temp_726 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-84]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_726  sizeInBytes=4
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
	mov	1818,r13		! source line 1818
	mov	"\0\0SE",r10
!   _temp_727 = &_P_Kernel_fileManager
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
	mov	1819,r13		! source line 1819
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_730 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_729 = *_temp_730  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_729) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_731 = _temp_729 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   _temp_728 = _temp_731		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-76]
!   _temp_732 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_728  sizeInBytes=4
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
	mov	1820,r13		! source line 1820
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_734 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_733 = *_temp_734  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_733) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_735 = _temp_733 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_735 = newAddrSpace  (sizeInBytes=92)
	add	r14,-264,r5
	load	[r14+-48],r4
	mov	23,r3
_Label_3335:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3335
! ASSIGNMENT STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0AS",r10
!   _temp_737 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-40]
!   _temp_738 = _temp_737 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_736 = *_temp_738  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initUserStackTop = _temp_736 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! ASSIGNMENT STATEMENT...
	mov	1822,r13		! source line 1822
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_739 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_739 [999 ] into _temp_740
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
!   initSystemStackTop = _temp_740		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-144]
! SEND STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0SE",r10
!   _temp_741 = &newAddrSpace
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
	mov	1824,r13		! source line 1824
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_742 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_742 = 1  (sizeInBytes=1)
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
	mov	1825,r13		! source line 1825
	mov	"\0\0CE",r10
	call	BecomeUserThread
	jmp	_Label_743
_Label_724:
! ELSE...
	mov	1827,r13		! source line 1827
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_744 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_744  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1827,r13		! source line 1827
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_745 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_745  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1829,r13		! source line 1829
	mov	"\0\0CA",r10
	call	_P_System_nl
! END IF...
_Label_743:
! RETURN STATEMENT...
	mov	1832,r13		! source line 1832
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
	.word	_Label_746
	.word	4		! total size of parameters
	.word	276		! frame size = 276
	.word	_Label_747
	.word	8
	.word	4
	.word	_Label_748
	.word	-12
	.word	4
	.word	_Label_749
	.word	-16
	.word	4
	.word	_Label_750
	.word	-20
	.word	4
	.word	_Label_751
	.word	-24
	.word	4
	.word	_Label_752
	.word	-28
	.word	4
	.word	_Label_753
	.word	-32
	.word	4
	.word	_Label_754
	.word	-36
	.word	4
	.word	_Label_755
	.word	-40
	.word	4
	.word	_Label_756
	.word	-44
	.word	4
	.word	_Label_757
	.word	-48
	.word	4
	.word	_Label_758
	.word	-52
	.word	4
	.word	_Label_759
	.word	-56
	.word	4
	.word	_Label_760
	.word	-60
	.word	4
	.word	_Label_761
	.word	-64
	.word	4
	.word	_Label_762
	.word	-68
	.word	4
	.word	_Label_763
	.word	-72
	.word	4
	.word	_Label_764
	.word	-76
	.word	4
	.word	_Label_765
	.word	-80
	.word	4
	.word	_Label_766
	.word	-84
	.word	4
	.word	_Label_767
	.word	-88
	.word	4
	.word	_Label_768
	.word	-92
	.word	4
	.word	_Label_769
	.word	-96
	.word	4
	.word	_Label_770
	.word	-100
	.word	4
	.word	_Label_771
	.word	-104
	.word	4
	.word	_Label_772
	.word	-108
	.word	4
	.word	_Label_773
	.word	-112
	.word	4
	.word	_Label_774
	.word	-116
	.word	4
	.word	_Label_775
	.word	-120
	.word	4
	.word	_Label_776
	.word	-124
	.word	4
	.word	_Label_777
	.word	-128
	.word	4
	.word	_Label_778
	.word	-132
	.word	4
	.word	_Label_779
	.word	-136
	.word	4
	.word	_Label_780
	.word	-140
	.word	4
	.word	_Label_781
	.word	-144
	.word	4
	.word	_Label_782
	.word	-148
	.word	4
	.word	_Label_783
	.word	-172
	.word	24
	.word	_Label_784
	.word	-264
	.word	92
	.word	_Label_785
	.word	-268
	.word	4
	.word	0
_Label_746:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_747:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_778:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_779:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_780:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_781:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_782:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_783:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_784:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_785:
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
_Label_3336:
	push	r0
	sub	r1,1,r1
	bne	_Label_3336
	mov	1837,r13		! source line 1837
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1840,r13		! source line 1840
	mov	"\0\0AS",r10
	mov	1840,r13		! source line 1840
	mov	"\0\0SE",r10
!   _temp_786 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_787 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_789 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_788 = *_temp_789  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_788) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_790 = _temp_788 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_786  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_787  sizeInBytes=4
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
!   _temp_791 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_791  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1841,r13		! source line 1841
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1842,r13		! source line 1842
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_792 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_792  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1843,r13		! source line 1843
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_793 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_793  sizeInBytes=4
	load	[r14+-12],r1
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
! RETURN STATEMENT...
	mov	1846,r13		! source line 1846
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
	.word	_Label_794
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_795
	.word	8
	.word	4
	.word	_Label_796
	.word	-12
	.word	4
	.word	_Label_797
	.word	-16
	.word	4
	.word	_Label_798
	.word	-20
	.word	4
	.word	_Label_799
	.word	-24
	.word	4
	.word	_Label_800
	.word	-28
	.word	4
	.word	_Label_801
	.word	-32
	.word	4
	.word	_Label_802
	.word	-36
	.word	4
	.word	_Label_803
	.word	-40
	.word	4
	.word	_Label_804
	.word	-64
	.word	24
	.word	_Label_805
	.word	-68
	.word	4
	.word	0
_Label_794:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_795:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_804:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_805:
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
_Label_3337:
	push	r0
	sub	r1,1,r1
	bne	_Label_3337
	mov	1851,r13		! source line 1851
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1855,r13		! source line 1855
	mov	"\0\0AS",r10
	mov	1855,r13		! source line 1855
	mov	"\0\0SE",r10
!   _temp_806 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_807 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_809 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_808 = *_temp_809  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_808) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_810 = _temp_808 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_806  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_807  sizeInBytes=4
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
!   _temp_811 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_811  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1856,r13		! source line 1856
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1857,r13		! source line 1857
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_812 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_812  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1858,r13		! source line 1858
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_813 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_813  sizeInBytes=4
	load	[r14+-12],r1
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
! RETURN STATEMENT...
	mov	1861,r13		! source line 1861
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
	.word	_Label_814
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_815
	.word	8
	.word	4
	.word	_Label_816
	.word	-12
	.word	4
	.word	_Label_817
	.word	-16
	.word	4
	.word	_Label_818
	.word	-20
	.word	4
	.word	_Label_819
	.word	-24
	.word	4
	.word	_Label_820
	.word	-28
	.word	4
	.word	_Label_821
	.word	-32
	.word	4
	.word	_Label_822
	.word	-36
	.word	4
	.word	_Label_823
	.word	-40
	.word	4
	.word	_Label_824
	.word	-64
	.word	24
	.word	_Label_825
	.word	-68
	.word	4
	.word	0
_Label_814:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_815:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_824:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_825:
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
_Label_3338:
	push	r0
	sub	r1,1,r1
	bne	_Label_3338
	mov	1866,r13		! source line 1866
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1870,r13		! source line 1870
	mov	"\0\0AS",r10
	mov	1870,r13		! source line 1870
	mov	"\0\0SE",r10
!   _temp_826 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_827 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_829 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_828 = *_temp_829  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_828) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_830 = _temp_828 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_826  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_827  sizeInBytes=4
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
!   _temp_831 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_831  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1871,r13		! source line 1871
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1872,r13		! source line 1872
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_832 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_832  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1873,r13		! source line 1873
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_833 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_833  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1874,r13		! source line 1874
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1875,r13		! source line 1875
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1876,r13		! source line 1876
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
	.word	_Label_834
	.word	12		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_835
	.word	8
	.word	4
	.word	_Label_836
	.word	12
	.word	4
	.word	_Label_837
	.word	16
	.word	4
	.word	_Label_838
	.word	-12
	.word	4
	.word	_Label_839
	.word	-16
	.word	4
	.word	_Label_840
	.word	-20
	.word	4
	.word	_Label_841
	.word	-24
	.word	4
	.word	_Label_842
	.word	-28
	.word	4
	.word	_Label_843
	.word	-32
	.word	4
	.word	_Label_844
	.word	-36
	.word	4
	.word	_Label_845
	.word	-40
	.word	4
	.word	_Label_846
	.word	-64
	.word	24
	.word	_Label_847
	.word	-68
	.word	4
	.word	0
_Label_834:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_835:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_836:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_837:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_846:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_847:
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
_Label_3339:
	push	r0
	sub	r1,1,r1
	bne	_Label_3339
	mov	1881,r13		! source line 1881
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0AS",r10
	mov	1885,r13		! source line 1885
	mov	"\0\0SE",r10
!   _temp_848 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_849 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_851 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_850 = *_temp_851  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_850) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_852 = _temp_850 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_848  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_849  sizeInBytes=4
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
!   _temp_853 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_853  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1886,r13		! source line 1886
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1887,r13		! source line 1887
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_854 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_854  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1888,r13		! source line 1888
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_855 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_855  sizeInBytes=4
	load	[r14+-12],r1
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
	.word	_Label_856
	.word	12		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_857
	.word	8
	.word	4
	.word	_Label_858
	.word	12
	.word	4
	.word	_Label_859
	.word	16
	.word	4
	.word	_Label_860
	.word	-12
	.word	4
	.word	_Label_861
	.word	-16
	.word	4
	.word	_Label_862
	.word	-20
	.word	4
	.word	_Label_863
	.word	-24
	.word	4
	.word	_Label_864
	.word	-28
	.word	4
	.word	_Label_865
	.word	-32
	.word	4
	.word	_Label_866
	.word	-36
	.word	4
	.word	_Label_867
	.word	-40
	.word	4
	.word	_Label_868
	.word	-64
	.word	24
	.word	_Label_869
	.word	-68
	.word	4
	.word	0
_Label_856:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_857:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_858:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_859:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_868:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_869:
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
_Label_3340:
	push	r0
	sub	r1,1,r1
	bne	_Label_3340
	mov	1896,r13		! source line 1896
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_870 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_870  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1899,r13		! source line 1899
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_871 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_871  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1900,r13		! source line 1900
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1902,r13		! source line 1902
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_872 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_872  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1903,r13		! source line 1903
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1904,r13		! source line 1904
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1905,r13		! source line 1905
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1906,r13		! source line 1906
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
	.word	_Label_873
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_874
	.word	8
	.word	4
	.word	_Label_875
	.word	12
	.word	4
	.word	_Label_876
	.word	-12
	.word	4
	.word	_Label_877
	.word	-16
	.word	4
	.word	_Label_878
	.word	-20
	.word	4
	.word	0
_Label_873:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_874:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_875:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_870\0"
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
_Label_3341:
	push	r0
	sub	r1,1,r1
	bne	_Label_3341
	mov	1911,r13		! source line 1911
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_879 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_879  sizeInBytes=4
	load	[r14+-16],r1
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
! CALL STATEMENT...
!   _temp_880 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_880  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1915,r13		! source line 1915
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1916,r13		! source line 1916
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1917,r13		! source line 1917
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1917,r13		! source line 1917
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
	.word	_Label_881
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_882
	.word	8
	.word	4
	.word	_Label_883
	.word	-12
	.word	4
	.word	_Label_884
	.word	-16
	.word	4
	.word	0
_Label_881:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_882:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_199_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_199_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3342:
	push	r0
	sub	r1,1,r1
	bne	_Label_3342
	mov	2508,r13		! source line 2508
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_885 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_885  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0AS",r10
!   _temp_886 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_886) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_888 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_888) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_887 = *_temp_888  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_886 = _temp_887  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0AS",r10
!   _temp_889 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_889) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_891 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_891) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_890 = *_temp_891  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_889 = _temp_890  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0AS",r10
!   _temp_892 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_892) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_894 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_894) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_893 = *_temp_894  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_892 = _temp_893  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_199_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_895
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_896
	.word	8
	.word	4
	.word	_Label_897
	.word	12
	.word	4
	.word	_Label_898
	.word	-16
	.word	4
	.word	_Label_899
	.word	-9
	.word	1
	.word	_Label_900
	.word	-20
	.word	4
	.word	_Label_901
	.word	-24
	.word	4
	.word	_Label_902
	.word	-10
	.word	1
	.word	_Label_903
	.word	-28
	.word	4
	.word	_Label_904
	.word	-32
	.word	4
	.word	_Label_905
	.word	-11
	.word	1
	.word	_Label_906
	.word	-36
	.word	4
	.word	_Label_907
	.word	-12
	.word	1
	.word	_Label_908
	.word	-40
	.word	4
	.word	_Label_909
	.word	-44
	.word	4
	.word	0
_Label_895:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_896:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_897:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_899:
	.byte	'C'
	.ascii	"_temp_893\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_902:
	.byte	'C'
	.ascii	"_temp_890\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_905:
	.byte	'C'
	.ascii	"_temp_887\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_907:
	.byte	'C'
	.ascii	"_temp_885\0"
	.align
_Label_908:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_909:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_198_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_198_printFCB,r1
	push	r1
	mov	3,r1
_Label_3343:
	push	r0
	sub	r1,1,r1
	bne	_Label_3343
	mov	2518,r13		! source line 2518
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_911 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_910 = *_temp_911  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_910  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2519,r13		! source line 2519
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2520,r13		! source line 2520
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2520,r13		! source line 2520
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_198_printFCB:
	.word	_sourceFileName
	.word	_Label_912
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_913
	.word	8
	.word	4
	.word	_Label_914
	.word	-12
	.word	4
	.word	_Label_915
	.word	-16
	.word	4
	.word	0
_Label_912:
	.ascii	"printFCB\0"
	.align
_Label_913:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_197_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_197_printOpen,r1
	push	r1
	mov	4,r1
_Label_3344:
	push	r0
	sub	r1,1,r1
	bne	_Label_3344
	mov	2523,r13		! source line 2523
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_916 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_916  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2524,r13		! source line 2524
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_917 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_917  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2525,r13		! source line 2525
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_918 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_918  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2526,r13		! source line 2526
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2527,r13		! source line 2527
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
	mov	2527,r13		! source line 2527
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_197_printOpen:
	.word	_sourceFileName
	.word	_Label_919
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_920
	.word	8
	.word	4
	.word	_Label_921
	.word	-12
	.word	4
	.word	_Label_922
	.word	-16
	.word	4
	.word	_Label_923
	.word	-20
	.word	4
	.word	0
_Label_919:
	.ascii	"printOpen\0"
	.align
_Label_920:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_916\0"
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
_Label_3345:
	push	r0
	sub	r1,1,r1
	bne	_Label_3345
	mov	2787,r13		! source line 2787
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2789,r13		! source line 2789
	mov	"\0\0AS",r10
	mov	2789,r13		! source line 2789
	mov	"\0\0SE",r10
!   _temp_924 = &_P_Kernel_threadManager
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
	mov	2790,r13		! source line 2790
	mov	"\0\0AS",r10
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_925 = myProgram + 72
	load	[r14+-28],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   _temp_926 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_925 = _temp_926  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0SE",r10
!   _temp_927 = _function_196_StartUserProcess
	set	_function_196_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_927  sizeInBytes=4
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
	mov	2791,r13		! source line 2791
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
	.word	_Label_928
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_929
	.word	-12
	.word	4
	.word	_Label_930
	.word	-16
	.word	4
	.word	_Label_931
	.word	-20
	.word	4
	.word	_Label_932
	.word	-24
	.word	4
	.word	_Label_933
	.word	-28
	.word	4
	.word	0
_Label_928:
	.ascii	"InitFirstProcess\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_933:
	.byte	'P'
	.ascii	"myProgram\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_196_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_196_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_3346:
	push	r0
	sub	r1,1,r1
	bne	_Label_3346
	mov	2794,r13		! source line 2794
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2801,r13		! source line 2801
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0AS",r10
	mov	2802,r13		! source line 2802
	mov	"\0\0SE",r10
!   _temp_934 = &_P_Kernel_processManager
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
	mov	2803,r13		! source line 2803
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_935 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_935 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2804,r13		! source line 2804
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_936 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_936 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2805,r13		! source line 2805
	mov	"\0\0AS",r10
	mov	2805,r13		! source line 2805
	mov	"\0\0SE",r10
!   _temp_937 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-60]
!   _temp_938 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_937  sizeInBytes=4
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
	mov	2806,r13		! source line 2806
	mov	"\0\0IF",r10
!   if fp == 0 then goto _Label_940		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_940
!	jmp	_Label_939
_Label_939:
! THEN...
	mov	2807,r13		! source line 2807
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0AS",r10
	mov	2807,r13		! source line 2807
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_942 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_941 = _temp_942		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_941  sizeInBytes=4
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
	mov	2808,r13		! source line 2808
	mov	"\0\0SE",r10
!   _temp_943 = &_P_Kernel_fileManager
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
	mov	2809,r13		! source line 2809
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_945 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_946 = _temp_945 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_944 = *_temp_946  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_944 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_947 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_947 [999 ] into _temp_948
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
!   initSystemStackTop = _temp_948		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	2811,r13		! source line 2811
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_949 = pcb + 32
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
	mov	2812,r13		! source line 2812
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_950 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_950 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2813,r13		! source line 2813
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	2813,r13		! source line 2813
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
	mov	2814,r13		! source line 2814
	mov	"\0\0CE",r10
	call	BecomeUserThread
	jmp	_Label_951
_Label_940:
! ELSE...
	mov	2816,r13		! source line 2816
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_952 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_952  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2816,r13		! source line 2816
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2817,r13		! source line 2817
	mov	"\0\0CA",r10
	call	_P_System_nl
! END IF...
_Label_951:
! RETURN STATEMENT...
	mov	2806,r13		! source line 2806
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_196_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_953
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_954
	.word	8
	.word	4
	.word	_Label_955
	.word	-12
	.word	4
	.word	_Label_956
	.word	-16
	.word	4
	.word	_Label_957
	.word	-20
	.word	4
	.word	_Label_958
	.word	-24
	.word	4
	.word	_Label_959
	.word	-28
	.word	4
	.word	_Label_960
	.word	-32
	.word	4
	.word	_Label_961
	.word	-36
	.word	4
	.word	_Label_962
	.word	-40
	.word	4
	.word	_Label_963
	.word	-44
	.word	4
	.word	_Label_964
	.word	-48
	.word	4
	.word	_Label_965
	.word	-52
	.word	4
	.word	_Label_966
	.word	-56
	.word	4
	.word	_Label_967
	.word	-60
	.word	4
	.word	_Label_968
	.word	-64
	.word	4
	.word	_Label_969
	.word	-68
	.word	4
	.word	_Label_970
	.word	-72
	.word	4
	.word	_Label_971
	.word	-76
	.word	4
	.word	_Label_972
	.word	-80
	.word	4
	.word	_Label_973
	.word	-84
	.word	4
	.word	_Label_974
	.word	-88
	.word	4
	.word	_Label_975
	.word	-92
	.word	4
	.word	_Label_976
	.word	-96
	.word	4
	.word	0
_Label_953:
	.ascii	"StartUserProcess\0"
	.align
_Label_954:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_971:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_972:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_973:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_974:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_975:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_976:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_977
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_977:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_978
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_978:
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
_Label_3347:
	push	r0
	sub	r1,1,r1
	bne	_Label_3347
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_980		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_980
!	jmp	_Label_979
_Label_979:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_981 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_981  sizeInBytes=4
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
_Label_980:
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
	.word	_Label_983
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_984
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_985
	.word	12
	.word	4
	.word	_Label_986
	.word	-12
	.word	4
	.word	_Label_987
	.word	-16
	.word	4
	.word	0
_Label_983:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_984:
	.ascii	"Pself\0"
	.align
_Label_985:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_981\0"
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
_Label_3348:
	push	r0
	sub	r1,1,r1
	bne	_Label_3348
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
!   if count != 2147483647 then goto _Label_989		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_989
!	jmp	_Label_988
_Label_988:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_990 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_990  sizeInBytes=4
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
_Label_989:
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
!   if count > 0 then goto _Label_992		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_992
!	jmp	_Label_991
_Label_991:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_993 = &waitingThreads
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
!   _temp_994 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_994 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_995 = &_P_Kernel_readyList
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
_Label_992:
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
	.word	_Label_996
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_997
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_998
	.word	-12
	.word	4
	.word	_Label_999
	.word	-16
	.word	4
	.word	_Label_1000
	.word	-20
	.word	4
	.word	_Label_1001
	.word	-24
	.word	4
	.word	_Label_1002
	.word	-28
	.word	4
	.word	_Label_1003
	.word	-32
	.word	4
	.word	0
_Label_996:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_997:
	.ascii	"Pself\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1002:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1003:
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
_Label_3349:
	push	r0
	sub	r1,1,r1
	bne	_Label_3349
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
!   if count != -2147483648 then goto _Label_1005		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1005
!	jmp	_Label_1004
_Label_1004:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1006 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1006  sizeInBytes=4
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
_Label_1005:
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
!   if count >= 0 then goto _Label_1008		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1008
!	jmp	_Label_1007
_Label_1007:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_1009 = &waitingThreads
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
_Label_1008:
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
	.word	_Label_1010
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1011
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1012
	.word	-12
	.word	4
	.word	_Label_1013
	.word	-16
	.word	4
	.word	_Label_1014
	.word	-20
	.word	4
	.word	0
_Label_1010:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1011:
	.ascii	"Pself\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1014:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1015
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1015:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1016
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1016:
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
_Label_3350:
	push	r0
	sub	r1,1,r1
	bne	_Label_3350
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
	.word	_Label_1018
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1019
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1020
	.word	-12
	.word	4
	.word	0
_Label_1018:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1019:
	.ascii	"Pself\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_1017\0"
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
_Label_3351:
	push	r0
	sub	r1,1,r1
	bne	_Label_3351
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1022		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1022
!	jmp	_Label_1021
_Label_1021:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1023 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1023  sizeInBytes=4
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
_Label_1022:
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
!   if heldBy == 0 then goto _Label_1027		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1027
!   _temp_1026 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1028
_Label_1027:
!   _temp_1026 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1028:
!   if _temp_1026 then goto _Label_1025 else goto _Label_1024
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1024
	jmp	_Label_1025
_Label_1024:
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
	jmp	_Label_1029
_Label_1025:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_1030 = &waitingThreads
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
_Label_1029:
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
	.word	_Label_1031
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1032
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1033
	.word	-16
	.word	4
	.word	_Label_1034
	.word	-9
	.word	1
	.word	_Label_1035
	.word	-20
	.word	4
	.word	_Label_1036
	.word	-24
	.word	4
	.word	0
_Label_1031:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1032:
	.ascii	"Pself\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1034:
	.byte	'C'
	.ascii	"_temp_1026\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1036:
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
_Label_3352:
	push	r0
	sub	r1,1,r1
	bne	_Label_3352
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1038		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1038
!	jmp	_Label_1037
_Label_1037:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1039 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1039  sizeInBytes=4
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
_Label_1038:
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
!   _temp_1040 = &waitingThreads
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
!   if t == 0 then goto _Label_1042		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1042
!	jmp	_Label_1041
_Label_1041:
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
!   _temp_1043 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1043 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_1044 = &_P_Kernel_readyList
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
	jmp	_Label_1045
_Label_1042:
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
_Label_1045:
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
	.word	_Label_1046
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1047
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1048
	.word	-12
	.word	4
	.word	_Label_1049
	.word	-16
	.word	4
	.word	_Label_1050
	.word	-20
	.word	4
	.word	_Label_1051
	.word	-24
	.word	4
	.word	_Label_1052
	.word	-28
	.word	4
	.word	_Label_1053
	.word	-32
	.word	4
	.word	0
_Label_1046:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1047:
	.ascii	"Pself\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1052:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1053:
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
_Label_3353:
	push	r0
	sub	r1,1,r1
	bne	_Label_3353
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1056		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1056
!	jmp	_Label_1055
_Label_1055:
!   _temp_1054 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1057
_Label_1056:
!   _temp_1054 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1057:
!   ReturnResult: _temp_1054  (sizeInBytes=1)
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
	.word	_Label_1058
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1059
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1060
	.word	-9
	.word	1
	.word	0
_Label_1058:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1059:
	.ascii	"Pself\0"
	.align
_Label_1060:
	.byte	'C'
	.ascii	"_temp_1054\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1061
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1061:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1062
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1062:
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
_Label_3354:
	push	r0
	sub	r1,1,r1
	bne	_Label_3354
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
	.word	_Label_1064
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1065
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1066
	.word	-12
	.word	4
	.word	0
_Label_1064:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1065:
	.ascii	"Pself\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1063\0"
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
_Label_3355:
	push	r0
	sub	r1,1,r1
	bne	_Label_3355
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
!   Retrieve Result: targetName=_temp_1069  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1069 then goto _Label_1068 else goto _Label_1067
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1067
	jmp	_Label_1068
_Label_1067:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1070 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1070  sizeInBytes=4
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
_Label_1068:
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
!   _temp_1071 = &waitingThreads
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
	.word	_Label_1072
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1073
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1074
	.word	12
	.word	4
	.word	_Label_1075
	.word	-16
	.word	4
	.word	_Label_1076
	.word	-20
	.word	4
	.word	_Label_1077
	.word	-9
	.word	1
	.word	_Label_1078
	.word	-24
	.word	4
	.word	0
_Label_1072:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1073:
	.ascii	"Pself\0"
	.align
_Label_1074:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1077:
	.byte	'C'
	.ascii	"_temp_1069\0"
	.align
_Label_1078:
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
_Label_3356:
	push	r0
	sub	r1,1,r1
	bne	_Label_3356
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
!   Retrieve Result: targetName=_temp_1081  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1081 then goto _Label_1080 else goto _Label_1079
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1079
	jmp	_Label_1080
_Label_1079:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1082 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1082  sizeInBytes=4
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
_Label_1080:
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
!   _temp_1083 = &waitingThreads
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
!   if t == 0 then goto _Label_1085		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1085
!	jmp	_Label_1084
_Label_1084:
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
!   _temp_1086 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1086 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_1087 = &_P_Kernel_readyList
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
_Label_1085:
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
	.word	_Label_1088
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1089
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1090
	.word	12
	.word	4
	.word	_Label_1091
	.word	-16
	.word	4
	.word	_Label_1092
	.word	-20
	.word	4
	.word	_Label_1093
	.word	-24
	.word	4
	.word	_Label_1094
	.word	-28
	.word	4
	.word	_Label_1095
	.word	-9
	.word	1
	.word	_Label_1096
	.word	-32
	.word	4
	.word	_Label_1097
	.word	-36
	.word	4
	.word	0
_Label_1088:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1089:
	.ascii	"Pself\0"
	.align
_Label_1090:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1095:
	.byte	'C'
	.ascii	"_temp_1081\0"
	.align
_Label_1096:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1097:
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
_Label_3357:
	push	r0
	sub	r1,1,r1
	bne	_Label_3357
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
!   Retrieve Result: targetName=_temp_1100  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1100 then goto _Label_1099 else goto _Label_1098
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1098
	jmp	_Label_1099
_Label_1098:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1101 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1101  sizeInBytes=4
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
_Label_1099:
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
_Label_1102:
!	jmp	_Label_1103
_Label_1103:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_1105 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1106
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1106
	jmp	_Label_1107
_Label_1106:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_1104
! END IF...
_Label_1107:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1108 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1108 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_1109 = &_P_Kernel_readyList
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
	jmp	_Label_1102
_Label_1104:
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
	.word	_Label_1110
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1111
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1112
	.word	12
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
	.word	-9
	.word	1
	.word	_Label_1118
	.word	-32
	.word	4
	.word	_Label_1119
	.word	-36
	.word	4
	.word	0
_Label_1110:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1111:
	.ascii	"Pself\0"
	.align
_Label_1112:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1117:
	.byte	'C'
	.ascii	"_temp_1100\0"
	.align
_Label_1118:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1119:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1120
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
_Label_1120:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1121
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1121:
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
_Label_3358:
	push	r0
	sub	r1,1,r1
	bne	_Label_3358
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
!   _temp_1122 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1122) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1122 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_1123 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1123 [0 ] into _temp_1124
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
!   Data Move: *_temp_1124 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1125 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1125 [999 ] into _temp_1126
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
!   Data Move: *_temp_1126 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1127 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1127 [999 ] into _temp_1128
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
!   stackTop = _temp_1128		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1129 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1131 = &_temp_1130
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1131 = _temp_1131 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1133:
!   Data Move: *_temp_1131 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1131 = _temp_1131 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1132 = _temp_1132 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1132) then goto _Label_1133
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1133
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1134 = &_temp_1130
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3359
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3359:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1129 = *_temp_1134  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3360:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3360
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
!   _temp_1135 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1137 = &_temp_1136
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1137 = _temp_1137 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1139:
!   Data Move: *_temp_1137 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1137 = _temp_1137 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1138 = _temp_1138 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1138) then goto _Label_1139
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1139
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1140 = &_temp_1136
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3361
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3361:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1135 = *_temp_1140  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3362:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3362
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
	.word	_Label_1141
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1142
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1143
	.word	12
	.word	4
	.word	_Label_1144
	.word	-12
	.word	4
	.word	_Label_1145
	.word	-16
	.word	4
	.word	_Label_1146
	.word	-20
	.word	4
	.word	_Label_1147
	.word	-84
	.word	64
	.word	_Label_1148
	.word	-88
	.word	4
	.word	_Label_1149
	.word	-92
	.word	4
	.word	_Label_1150
	.word	-96
	.word	4
	.word	_Label_1151
	.word	-100
	.word	4
	.word	_Label_1152
	.word	-156
	.word	56
	.word	_Label_1153
	.word	-160
	.word	4
	.word	_Label_1154
	.word	-164
	.word	4
	.word	_Label_1155
	.word	-168
	.word	4
	.word	_Label_1156
	.word	-172
	.word	4
	.word	_Label_1157
	.word	-176
	.word	4
	.word	_Label_1158
	.word	-180
	.word	4
	.word	_Label_1159
	.word	-184
	.word	4
	.word	_Label_1160
	.word	-188
	.word	4
	.word	0
_Label_1141:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1142:
	.ascii	"Pself\0"
	.align
_Label_1143:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1122\0"
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
_Label_3363:
	push	r0
	sub	r1,1,r1
	bne	_Label_3363
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
!   _temp_1161 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1161  (sizeInBytes=4)
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
!   _temp_1163 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1162  sizeInBytes=4
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
	.word	_Label_1164
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1165
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1166
	.word	12
	.word	4
	.word	_Label_1167
	.word	16
	.word	4
	.word	_Label_1168
	.word	-12
	.word	4
	.word	_Label_1169
	.word	-16
	.word	4
	.word	_Label_1170
	.word	-20
	.word	4
	.word	_Label_1171
	.word	-24
	.word	4
	.word	_Label_1172
	.word	-28
	.word	4
	.word	0
_Label_1164:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1165:
	.ascii	"Pself\0"
	.align
_Label_1166:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1167:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1171:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1172:
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
_Label_3364:
	push	r0
	sub	r1,1,r1
	bne	_Label_3364
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1175 == _P_Kernel_currentThread then goto _Label_1174		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1174
!	jmp	_Label_1173
_Label_1173:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1176 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1176  sizeInBytes=4
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
_Label_1174:
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
!   _temp_1177 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1179		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1179
!	jmp	_Label_1178
_Label_1178:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1181		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1181
!	jmp	_Label_1180
_Label_1180:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1182 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1182  sizeInBytes=4
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
_Label_1181:
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
!   _temp_1184 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1183  sizeInBytes=4
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
_Label_1179:
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
	.word	_Label_1185
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1186
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1187
	.word	-12
	.word	4
	.word	_Label_1188
	.word	-16
	.word	4
	.word	_Label_1189
	.word	-20
	.word	4
	.word	_Label_1190
	.word	-24
	.word	4
	.word	_Label_1191
	.word	-28
	.word	4
	.word	_Label_1192
	.word	-32
	.word	4
	.word	_Label_1193
	.word	-36
	.word	4
	.word	_Label_1194
	.word	-40
	.word	4
	.word	_Label_1195
	.word	-44
	.word	4
	.word	0
_Label_1185:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1186:
	.ascii	"Pself\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1193:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1194:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1195:
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
_Label_3365:
	push	r0
	sub	r1,1,r1
	bne	_Label_3365
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1197		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1197
!	jmp	_Label_1196
_Label_1196:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1198 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1198  sizeInBytes=4
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
_Label_1197:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1201 == _P_Kernel_currentThread then goto _Label_1200		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1200
!	jmp	_Label_1199
_Label_1199:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1202 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1202  sizeInBytes=4
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
_Label_1200:
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
!   _temp_1203 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1204
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1204
	jmp	_Label_1205
_Label_1204:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1206 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1206  sizeInBytes=4
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
_Label_1205:
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
	.word	_Label_1207
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1208
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1209
	.word	-12
	.word	4
	.word	_Label_1210
	.word	-16
	.word	4
	.word	_Label_1211
	.word	-20
	.word	4
	.word	_Label_1212
	.word	-24
	.word	4
	.word	_Label_1213
	.word	-28
	.word	4
	.word	_Label_1214
	.word	-32
	.word	4
	.word	0
_Label_1207:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1208:
	.ascii	"Pself\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1214:
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
_Label_3366:
	push	r0
	sub	r1,1,r1
	bne	_Label_3366
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_1218 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1218 [0 ] into _temp_1219
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
!   Data Move: _temp_1217 = *_temp_1219  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1217 == 606348324 then goto _Label_1216		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1216
!	jmp	_Label_1215
_Label_1215:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1220 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
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
	jmp	_Label_1221
_Label_1216:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_1225 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1225 [999 ] into _temp_1226
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
!   Data Move: _temp_1224 = *_temp_1226  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1224 == 606348324 then goto _Label_1223		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1223
!	jmp	_Label_1222
_Label_1222:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1227 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1227  sizeInBytes=4
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
_Label_1223:
! END IF...
_Label_1221:
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
	.word	_Label_1228
	.word	4		! total size of parameters
	.word	36		! frame size = 36
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
	.word	_Label_1236
	.word	-36
	.word	4
	.word	_Label_1237
	.word	-40
	.word	4
	.word	0
_Label_1228:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1229:
	.ascii	"Pself\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1217\0"
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
_Label_3367:
	push	r0
	sub	r1,1,r1
	bne	_Label_3367
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
!   _temp_1238 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1238  sizeInBytes=4
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
!   _temp_1239 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1239  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1240  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1241 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1241  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1242 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1242  sizeInBytes=4
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
!   _temp_1247 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1248 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1247  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1243:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1248 then goto _Label_1246		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1246
_Label_1244:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1249 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1249  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1250 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1250  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1251 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1251  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1253 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1253 [i ] into _temp_1254
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
!   Data Move: _temp_1252 = *_temp_1254  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1252  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1255 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1255  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1257 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1257 [i ] into _temp_1258
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
!   Data Move: _temp_1256 = *_temp_1258  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1256  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1259 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1259  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1245:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1243
! END FOR
_Label_1246:
! CALL STATEMENT...
!   _temp_1260 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-116]
!   _temp_1261 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1260  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1261  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1262 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-108]
!   _temp_1264 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1264 [0 ] into _temp_1265
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
!   _temp_1263 = _temp_1265		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1262  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1263  sizeInBytes=4
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
	be	_Label_1268
	cmp	r1,2
	be	_Label_1269
	cmp	r1,3
	be	_Label_1270
	cmp	r1,4
	be	_Label_1271
	cmp	r1,5
	be	_Label_1272
	jmp	_Label_1266
! CASE 1...
_Label_1268:
! CALL STATEMENT...
!   _temp_1273 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1273  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_1267
! CASE 2...
_Label_1269:
! CALL STATEMENT...
!   _temp_1274 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1274  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_1267
! CASE 3...
_Label_1270:
! CALL STATEMENT...
!   _temp_1275 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1275  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_1267
! CASE 4...
_Label_1271:
! CALL STATEMENT...
!   _temp_1276 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1276  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_1267
! CASE 5...
_Label_1272:
! CALL STATEMENT...
!   _temp_1277 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1277  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_1267
! DEFAULT CASE...
_Label_1266:
! CALL STATEMENT...
!   _temp_1278 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1278  sizeInBytes=4
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
_Label_1267:
! CALL STATEMENT...
!   _temp_1279 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1279  sizeInBytes=4
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
!   _temp_1280 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1280  sizeInBytes=4
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
!   _temp_1285 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1286 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1285  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1281:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1286 then goto _Label_1284		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1284
_Label_1282:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1287 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1287  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1288 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1288  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1289 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1289  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1291 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1291 [i ] into _temp_1292
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
!   Data Move: _temp_1290 = *_temp_1292  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1290  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1293 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1293  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1295 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1295 [i ] into _temp_1296
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
!   Data Move: _temp_1294 = *_temp_1296  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1294  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1297 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1283:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1281
! END FOR
_Label_1284:
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
	.word	_Label_1298
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1299
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1300
	.word	-12
	.word	4
	.word	_Label_1301
	.word	-16
	.word	4
	.word	_Label_1302
	.word	-20
	.word	4
	.word	_Label_1303
	.word	-24
	.word	4
	.word	_Label_1304
	.word	-28
	.word	4
	.word	_Label_1305
	.word	-32
	.word	4
	.word	_Label_1306
	.word	-36
	.word	4
	.word	_Label_1307
	.word	-40
	.word	4
	.word	_Label_1308
	.word	-44
	.word	4
	.word	_Label_1309
	.word	-48
	.word	4
	.word	_Label_1310
	.word	-52
	.word	4
	.word	_Label_1311
	.word	-56
	.word	4
	.word	_Label_1312
	.word	-60
	.word	4
	.word	_Label_1313
	.word	-64
	.word	4
	.word	_Label_1314
	.word	-68
	.word	4
	.word	_Label_1315
	.word	-72
	.word	4
	.word	_Label_1316
	.word	-76
	.word	4
	.word	_Label_1317
	.word	-80
	.word	4
	.word	_Label_1318
	.word	-84
	.word	4
	.word	_Label_1319
	.word	-88
	.word	4
	.word	_Label_1320
	.word	-92
	.word	4
	.word	_Label_1321
	.word	-96
	.word	4
	.word	_Label_1322
	.word	-100
	.word	4
	.word	_Label_1323
	.word	-104
	.word	4
	.word	_Label_1324
	.word	-108
	.word	4
	.word	_Label_1325
	.word	-112
	.word	4
	.word	_Label_1326
	.word	-116
	.word	4
	.word	_Label_1327
	.word	-120
	.word	4
	.word	_Label_1328
	.word	-124
	.word	4
	.word	_Label_1329
	.word	-128
	.word	4
	.word	_Label_1330
	.word	-132
	.word	4
	.word	_Label_1331
	.word	-136
	.word	4
	.word	_Label_1332
	.word	-140
	.word	4
	.word	_Label_1333
	.word	-144
	.word	4
	.word	_Label_1334
	.word	-148
	.word	4
	.word	_Label_1335
	.word	-152
	.word	4
	.word	_Label_1336
	.word	-156
	.word	4
	.word	_Label_1337
	.word	-160
	.word	4
	.word	_Label_1338
	.word	-164
	.word	4
	.word	_Label_1339
	.word	-168
	.word	4
	.word	_Label_1340
	.word	-172
	.word	4
	.word	_Label_1341
	.word	-176
	.word	4
	.word	_Label_1342
	.word	-180
	.word	4
	.word	_Label_1343
	.word	-184
	.word	4
	.word	_Label_1344
	.word	-188
	.word	4
	.word	_Label_1345
	.word	-192
	.word	4
	.word	_Label_1346
	.word	-196
	.word	4
	.word	0
_Label_1298:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1299:
	.ascii	"Pself\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1345:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1346:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1347
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1347:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1348
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1348:
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
_Label_3368:
	push	r0
	sub	r1,1,r1
	bne	_Label_3368
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1349 = _StringConst_94
	set	_StringConst_94,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1349  sizeInBytes=4
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
!   _temp_1350 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1352 = &_temp_1351
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1352 = _temp_1352 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1354 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3369:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3369
!   _temp_1354 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1356:
!   Data Move: *_temp_1352 = _temp_1354  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3370:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3370
!   _temp_1352 = _temp_1352 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1353 = _temp_1353 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1353) then goto _Label_1356
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1356
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1357 = &_temp_1351
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3371
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3371:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1350 = *_temp_1357  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3372:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3372
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
!   _temp_1361 = &threadManagerLock
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
!   _temp_1362 = &aThreadBecomeFree
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
!   _temp_1367 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1368 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1367  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1363:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1368 then goto _Label_1366		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1366
_Label_1364:
	mov	702,r13		! source line 702
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0SE",r10
!   _temp_1369 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-48]
!   _temp_1370 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1370 [i ] into _temp_1371
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
!   Prepare Argument: offset=12  value=_temp_1369  sizeInBytes=4
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
!   _temp_1373 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1373 [i ] into _temp_1374
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
!   _temp_1372 = _temp_1374		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1375 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1372  sizeInBytes=4
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
!   _temp_1376 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1376 [i ] into _temp_1377
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
!   _temp_1378 = _temp_1377 + 76
	load	[r14+-16],r1
	add	r1,76,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1378 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-12],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1365:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1363
! END FOR
_Label_1366:
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
	.word	_Label_1379
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1380
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1381
	.word	-12
	.word	4
	.word	_Label_1382
	.word	-16
	.word	4
	.word	_Label_1383
	.word	-20
	.word	4
	.word	_Label_1384
	.word	-24
	.word	4
	.word	_Label_1385
	.word	-28
	.word	4
	.word	_Label_1386
	.word	-32
	.word	4
	.word	_Label_1387
	.word	-36
	.word	4
	.word	_Label_1388
	.word	-40
	.word	4
	.word	_Label_1389
	.word	-44
	.word	4
	.word	_Label_1390
	.word	-48
	.word	4
	.word	_Label_1391
	.word	-52
	.word	4
	.word	_Label_1392
	.word	-56
	.word	4
	.word	_Label_1393
	.word	-60
	.word	4
	.word	_Label_1394
	.word	-64
	.word	4
	.word	_Label_1395
	.word	-68
	.word	4
	.word	_Label_1396
	.word	-72
	.word	4
	.word	_Label_1397
	.word	-76
	.word	4
	.word	_Label_1398
	.word	-80
	.word	4
	.word	_Label_1399
	.word	-84
	.word	4
	.word	_Label_1400
	.word	-4248
	.word	4164
	.word	_Label_1401
	.word	-4252
	.word	4
	.word	_Label_1402
	.word	-4256
	.word	4
	.word	_Label_1403
	.word	-45900
	.word	41644
	.word	_Label_1404
	.word	-45904
	.word	4
	.word	_Label_1405
	.word	-45908
	.word	4
	.word	_Label_1406
	.word	-45912
	.word	4
	.word	0
_Label_1379:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1380:
	.ascii	"Pself\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1406:
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
_Label_3373:
	push	r0
	sub	r1,1,r1
	bne	_Label_3373
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
!   _temp_1407 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1407  sizeInBytes=4
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
!   _temp_1412 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1413 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1412  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1408:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1413 then goto _Label_1411		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1411
_Label_1409:
	mov	720,r13		! source line 720
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1414 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1414  sizeInBytes=4
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
!   _temp_1415 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1415  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1417 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1417 [i ] into _temp_1418
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
!   _temp_1416 = _temp_1418		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1416  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CA",r10
	call	_function_203_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1410:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1408
! END FOR
_Label_1411:
! CALL STATEMENT...
!   _temp_1419 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1419  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0SE",r10
!   _temp_1420 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1421 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1420  sizeInBytes=4
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
	.word	_Label_1422
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1423
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	0
_Label_1422:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1423:
	.ascii	"Pself\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1435:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1436:
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
_Label_3374:
	push	r0
	sub	r1,1,r1
	bne	_Label_3374
	mov	734,r13		! source line 734
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0SE",r10
!   _temp_1437 = &threadManagerLock
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
_Label_1438:
	mov	741,r13		! source line 741
	mov	"\0\0SE",r10
!   _temp_1441 = &freeList
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
!   if result==true then goto _Label_1439 else goto _Label_1440
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1440
	jmp	_Label_1439
_Label_1439:
	mov	741,r13		! source line 741
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0SE",r10
!   _temp_1442 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   _temp_1443 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1442  sizeInBytes=4
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
	jmp	_Label_1438
_Label_1440:
! ASSIGNMENT STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0AS",r10
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_1444 = &freeList
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
!   _temp_1445 = tmp + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1445 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1446) then goto _runtimeErrorNullPointer
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
!   _temp_1447 = &threadManagerLock
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
	.word	_Label_1448
	.word	4		! total size of parameters
	.word	44		! frame size = 44
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
	.word	-24
	.word	4
	.word	_Label_1454
	.word	-28
	.word	4
	.word	_Label_1455
	.word	-32
	.word	4
	.word	_Label_1456
	.word	-36
	.word	4
	.word	_Label_1457
	.word	-40
	.word	4
	.word	_Label_1458
	.word	-44
	.word	4
	.word	0
_Label_1448:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
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
	.ascii	"_temp_1446\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1458:
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
_Label_3375:
	push	r0
	sub	r1,1,r1
	bne	_Label_3375
	mov	753,r13		! source line 753
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0SE",r10
!   _temp_1459 = &threadManagerLock
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
!   _temp_1460 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1460 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0SE",r10
!   _temp_1461 = &freeList
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
!   if intIsZero (_temp_1462) then goto _runtimeErrorNullPointer
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
!   _temp_1463 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1464 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1463  sizeInBytes=4
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
!   _temp_1465 = &threadManagerLock
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
	.word	_Label_1466
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1467
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1468
	.word	12
	.word	4
	.word	_Label_1469
	.word	-12
	.word	4
	.word	_Label_1470
	.word	-16
	.word	4
	.word	_Label_1471
	.word	-20
	.word	4
	.word	_Label_1472
	.word	-24
	.word	4
	.word	_Label_1473
	.word	-28
	.word	4
	.word	_Label_1474
	.word	-32
	.word	4
	.word	_Label_1475
	.word	-36
	.word	4
	.word	0
_Label_1466:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1467:
	.ascii	"Pself\0"
	.align
_Label_1468:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1476
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1476:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1477
	.word	_sourceFileName
	.word	213		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1477:
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
_Label_3376:
	push	r0
	sub	r1,1,r1
	bne	_Label_3376
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
_Label_3377:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3377
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_1479 = &addrSpace
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
	.word	_Label_1480
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1481
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1482
	.word	-12
	.word	4
	.word	_Label_1483
	.word	-16
	.word	4
	.word	0
_Label_1480:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
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
_Label_3378:
	push	r0
	sub	r1,1,r1
	bne	_Label_3378
	mov	790,r13		! source line 790
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1484) then goto _runtimeErrorNullPointer
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
!   _temp_1485 = &addrSpace
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
!   _temp_1486 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1486  sizeInBytes=4
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
	call	_function_203_ThreadPrintShort
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
	.word	_Label_1487
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1488
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1489
	.word	-12
	.word	4
	.word	_Label_1490
	.word	-16
	.word	4
	.word	_Label_1491
	.word	-20
	.word	4
	.word	0
_Label_1487:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1488:
	.ascii	"Pself\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1484\0"
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
_Label_3379:
	push	r0
	sub	r1,1,r1
	bne	_Label_3379
	mov	813,r13		! source line 813
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1492 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1492  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1493  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1494 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1494  sizeInBytes=4
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
!   _temp_1495 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1495  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1497		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1497
!	jmp	_Label_1496
_Label_1496:
! THEN...
	mov	823,r13		! source line 823
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1498 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1498  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1499
_Label_1497:
! ELSE...
	mov	824,r13		! source line 824
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1501		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1501
!	jmp	_Label_1500
_Label_1500:
! THEN...
	mov	825,r13		! source line 825
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1502 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1502  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1503
_Label_1501:
! ELSE...
	mov	826,r13		! source line 826
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1505		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1505
!	jmp	_Label_1504
_Label_1504:
! THEN...
	mov	827,r13		! source line 827
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1506 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1506  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1507
_Label_1505:
! ELSE...
	mov	829,r13		! source line 829
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1508 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1508  sizeInBytes=4
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
_Label_1507:
! END IF...
_Label_1503:
! END IF...
_Label_1499:
! CALL STATEMENT...
!   _temp_1509 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1509  sizeInBytes=4
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
!   _temp_1510 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1510  sizeInBytes=4
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
	.word	_Label_1511
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1512
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1513
	.word	-12
	.word	4
	.word	_Label_1514
	.word	-16
	.word	4
	.word	_Label_1515
	.word	-20
	.word	4
	.word	_Label_1516
	.word	-24
	.word	4
	.word	_Label_1517
	.word	-28
	.word	4
	.word	_Label_1518
	.word	-32
	.word	4
	.word	_Label_1519
	.word	-36
	.word	4
	.word	_Label_1520
	.word	-40
	.word	4
	.word	_Label_1521
	.word	-44
	.word	4
	.word	_Label_1522
	.word	-48
	.word	4
	.word	0
_Label_1511:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1512:
	.ascii	"Pself\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1523
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
_Label_1523:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1524
	.word	_sourceFileName
	.word	233		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1524:
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
_Label_3380:
	push	r0
	sub	r1,1,r1
	bne	_Label_3380
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0AS",r10
!   _temp_1525 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1456]
!   NEW ARRAY Constructor...
!   _temp_1527 = &_temp_1526
	add	r14,-1452,r1
	store	r1,[r14+-208]
!   _temp_1527 = _temp_1527 + 4
	load	[r14+-208],r1
	add	r1,4,r1
	store	r1,[r14+-208]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1529 = zeros  (sizeInBytes=124)
	add	r14,-200,r4
	mov	31,r3
_Label_3381:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3381
!   _temp_1529 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-200]
	mov	10,r1
	store	r1,[r14+-204]
_Label_1531:
!   Data Move: *_temp_1527 = _temp_1529  (sizeInBytes=124)
	add	r14,-200,r5
	load	[r14+-208],r4
	mov	31,r3
_Label_3382:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3382
!   _temp_1527 = _temp_1527 + 124
	load	[r14+-208],r1
	add	r1,124,r1
	store	r1,[r14+-208]
!   _temp_1528 = _temp_1528 + -1
	load	[r14+-204],r1
	add	r1,-1,r1
	store	r1,[r14+-204]
!   if intNotZero (_temp_1528) then goto _Label_1531
	load	[r14+-204],r1
	cmp	r1,r0
	bne	_Label_1531
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1452]
!   _temp_1532 = &_temp_1526
	add	r14,-1452,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	load	[r14+-1456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3383
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3383:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1525 = *_temp_1532  (sizeInBytes=1244)
	load	[r14+-72],r5
	load	[r14+-1456],r4
	mov	311,r3
_Label_3384:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3384
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
!   _temp_1535 = &processManagerLock
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
!   _temp_1536 = &aProcessBecameFree
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
!   _temp_1539 = &aProcessDied
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
!   _temp_1544 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1545 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1544  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-1460]
_Label_1540:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1545 then goto _Label_1543		
	load	[r14+-1460],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1543
_Label_1541:
	mov	860,r13		! source line 860
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0SE",r10
!   _temp_1546 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1546 [i ] into _temp_1547
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
!   _temp_1549 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1549 [i ] into _temp_1550
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
!   _temp_1548 = _temp_1550		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1551 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1548  sizeInBytes=4
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
_Label_1542:
!   i = i + 1
	load	[r14+-1460],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1460]
	jmp	_Label_1540
! END FOR
_Label_1543:
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
	.word	_Label_1552
	.word	4		! total size of parameters
	.word	1460		! frame size = 1460
	.word	_Label_1553
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1554
	.word	-12
	.word	4
	.word	_Label_1555
	.word	-16
	.word	4
	.word	_Label_1556
	.word	-20
	.word	4
	.word	_Label_1557
	.word	-24
	.word	4
	.word	_Label_1558
	.word	-28
	.word	4
	.word	_Label_1559
	.word	-32
	.word	4
	.word	_Label_1560
	.word	-36
	.word	4
	.word	_Label_1561
	.word	-40
	.word	4
	.word	_Label_1562
	.word	-44
	.word	4
	.word	_Label_1563
	.word	-48
	.word	4
	.word	_Label_1564
	.word	-52
	.word	4
	.word	_Label_1565
	.word	-56
	.word	4
	.word	_Label_1566
	.word	-60
	.word	4
	.word	_Label_1567
	.word	-64
	.word	4
	.word	_Label_1568
	.word	-68
	.word	4
	.word	_Label_1569
	.word	-72
	.word	4
	.word	_Label_1570
	.word	-76
	.word	4
	.word	_Label_1571
	.word	-200
	.word	124
	.word	_Label_1572
	.word	-204
	.word	4
	.word	_Label_1573
	.word	-208
	.word	4
	.word	_Label_1574
	.word	-1452
	.word	1244
	.word	_Label_1575
	.word	-1456
	.word	4
	.word	_Label_1576
	.word	-1460
	.word	4
	.word	0
_Label_1552:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1553:
	.ascii	"Pself\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1576:
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
_Label_3385:
	push	r0
	sub	r1,1,r1
	bne	_Label_3385
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
!   _temp_1577 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1577  sizeInBytes=4
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
!   _temp_1582 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1583 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1582  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1578:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1583 then goto _Label_1581		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1581
_Label_1579:
	mov	877,r13		! source line 877
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1584 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1584  sizeInBytes=4
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
!   _temp_1585 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1585  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0SE",r10
!   _temp_1586 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1586 [i ] into _temp_1587
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
_Label_1580:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1578
! END FOR
_Label_1581:
! CALL STATEMENT...
!   _temp_1588 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1588  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0SE",r10
!   _temp_1589 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1590 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1589  sizeInBytes=4
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
	.word	_Label_1591
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1592
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1593
	.word	-12
	.word	4
	.word	_Label_1594
	.word	-16
	.word	4
	.word	_Label_1595
	.word	-20
	.word	4
	.word	_Label_1596
	.word	-24
	.word	4
	.word	_Label_1597
	.word	-28
	.word	4
	.word	_Label_1598
	.word	-32
	.word	4
	.word	_Label_1599
	.word	-36
	.word	4
	.word	_Label_1600
	.word	-40
	.word	4
	.word	_Label_1601
	.word	-44
	.word	4
	.word	_Label_1602
	.word	-48
	.word	4
	.word	_Label_1603
	.word	-52
	.word	4
	.word	_Label_1604
	.word	-56
	.word	4
	.word	0
_Label_1591:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1592:
	.ascii	"Pself\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1603:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1604:
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
_Label_3386:
	push	r0
	sub	r1,1,r1
	bne	_Label_3386
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
!   _temp_1605 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1605  sizeInBytes=4
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
!   _temp_1610 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1611 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1610  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1606:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1611 then goto _Label_1609		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1609
_Label_1607:
	mov	900,r13		! source line 900
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1612 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1612  sizeInBytes=4
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
!   _temp_1613 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1613 [i ] into _temp_1614
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
_Label_1608:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1606
! END FOR
_Label_1609:
! CALL STATEMENT...
!   _temp_1615 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1615  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_1616 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1617 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1616  sizeInBytes=4
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
	.word	_Label_1618
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1619
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1620
	.word	-12
	.word	4
	.word	_Label_1621
	.word	-16
	.word	4
	.word	_Label_1622
	.word	-20
	.word	4
	.word	_Label_1623
	.word	-24
	.word	4
	.word	_Label_1624
	.word	-28
	.word	4
	.word	_Label_1625
	.word	-32
	.word	4
	.word	_Label_1626
	.word	-36
	.word	4
	.word	_Label_1627
	.word	-40
	.word	4
	.word	_Label_1628
	.word	-44
	.word	4
	.word	_Label_1629
	.word	-48
	.word	4
	.word	_Label_1630
	.word	-52
	.word	4
	.word	0
_Label_1618:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1619:
	.ascii	"Pself\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1629:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1630:
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
_Label_3387:
	push	r0
	sub	r1,1,r1
	bne	_Label_3387
	mov	913,r13		! source line 913
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0SE",r10
!   _temp_1631 = &processManagerLock
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
!   if intIsZero (_temp_1632) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1633 = _temp_1632 + 1312
	load	[r14+-72],r1
	add	r1,1312,r1
	store	r1,[r14+-68]
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1636) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1637 = _temp_1636 + 1312
	load	[r14+-56],r1
	add	r1,1312,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1635 = *_temp_1637  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_1634 = _temp_1635 + 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Data Move: *_temp_1633 = _temp_1634  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r14+-68],r2
	store	r1,[r2]
! WHILE STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0WH",r10
_Label_1638:
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_1641 = &freeList
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
!   if result==true then goto _Label_1639 else goto _Label_1640
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1640
	jmp	_Label_1639
_Label_1639:
	mov	921,r13		! source line 921
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0SE",r10
!   _temp_1642 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-44]
!   _temp_1643 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1642  sizeInBytes=4
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
	jmp	_Label_1638
_Label_1640:
! ASSIGNMENT STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0AS",r10
	mov	924,r13		! source line 924
	mov	"\0\0SE",r10
!   _temp_1644 = &freeList
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
!   _temp_1645 = tmp + 20
	load	[r14+-80],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1645 = 1  (sizeInBytes=4)
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
!   _temp_1646 = tmp + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-28]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1648) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1649 = _temp_1648 + 1312
	load	[r14+-20],r1
	add	r1,1312,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1647 = *_temp_1649  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1646 = _temp_1647  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_1650 = &processManagerLock
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
	.word	_Label_1651
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_1652
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1653
	.word	-12
	.word	4
	.word	_Label_1654
	.word	-16
	.word	4
	.word	_Label_1655
	.word	-20
	.word	4
	.word	_Label_1656
	.word	-24
	.word	4
	.word	_Label_1657
	.word	-28
	.word	4
	.word	_Label_1658
	.word	-32
	.word	4
	.word	_Label_1659
	.word	-36
	.word	4
	.word	_Label_1660
	.word	-40
	.word	4
	.word	_Label_1661
	.word	-44
	.word	4
	.word	_Label_1662
	.word	-48
	.word	4
	.word	_Label_1663
	.word	-52
	.word	4
	.word	_Label_1664
	.word	-56
	.word	4
	.word	_Label_1665
	.word	-60
	.word	4
	.word	_Label_1666
	.word	-64
	.word	4
	.word	_Label_1667
	.word	-68
	.word	4
	.word	_Label_1668
	.word	-72
	.word	4
	.word	_Label_1669
	.word	-76
	.word	4
	.word	_Label_1670
	.word	-80
	.word	4
	.word	0
_Label_1651:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1652:
	.ascii	"Pself\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1670:
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
_Label_3388:
	push	r0
	sub	r1,1,r1
	bne	_Label_3388
	mov	934,r13		! source line 934
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	939,r13		! source line 939
	mov	"\0\0SE",r10
!   _temp_1671 = &processManagerLock
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
!   _temp_1672 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1672 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	941,r13		! source line 941
	mov	"\0\0SE",r10
!   _temp_1673 = &freeList
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
!   _temp_1674 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-24]
!   _temp_1675 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1674  sizeInBytes=4
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
!   if intIsZero (_temp_1676) then goto _runtimeErrorNullPointer
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
!   _temp_1677 = &processManagerLock
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
	.word	_Label_1678
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1679
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1680
	.word	12
	.word	4
	.word	_Label_1681
	.word	-12
	.word	4
	.word	_Label_1682
	.word	-16
	.word	4
	.word	_Label_1683
	.word	-20
	.word	4
	.word	_Label_1684
	.word	-24
	.word	4
	.word	_Label_1685
	.word	-28
	.word	4
	.word	_Label_1686
	.word	-32
	.word	4
	.word	_Label_1687
	.word	-36
	.word	4
	.word	0
_Label_1678:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1679:
	.ascii	"Pself\0"
	.align
_Label_1680:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1671\0"
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
	mov	45,r1
_Label_3389:
	push	r0
	sub	r1,1,r1
	bne	_Label_3389
	mov	948,r13		! source line 948
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! isZombie
!   isZombie = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
! SEND STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0SE",r10
!   _temp_1688 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-176]
!   Send message Lock
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1693 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-172]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1694 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-168]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1693  (sizeInBytes=4)
	load	[r14+-172],r1
	store	r1,[r14+-180]
_Label_1689:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1694 then goto _Label_1692		
	load	[r14+-180],r1
	load	[r14+-168],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1692
_Label_1690:
	mov	953,r13		! source line 953
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1698 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1697 = *_temp_1698  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   _temp_1700 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-152]
!   _temp_1701 = _temp_1700 + 4
	load	[r14+-152],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_1701 [i ] into _temp_1702
!     make sure index expr is >= 0
	load	[r14+-180],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   _temp_1703 = _temp_1702 + 16
	load	[r14+-144],r1
	add	r1,16,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1699 = *_temp_1703  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if _temp_1697 != _temp_1699 then goto _Label_1696		(int)
	load	[r14+-164],r1
	load	[r14+-156],r2
	cmp	r1,r2
	bne	_Label_1696
!	jmp	_Label_1695
_Label_1695:
! THEN...
	mov	955,r13		! source line 955
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0AS",r10
!   _temp_1704 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-136]
!   _temp_1705 = _temp_1704 + 4
	load	[r14+-136],r1
	add	r1,4,r1
	store	r1,[r14+-132]
!   Move address of _temp_1705 [i ] into _temp_1706
!     make sure index expr is >= 0
	load	[r14+-180],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-128]
!   _temp_1707 = _temp_1706 + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-124]
!   Data Move: *_temp_1707 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-124],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_1709 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-116]
!   _temp_1710 = _temp_1709 + 4
	load	[r14+-116],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_1710 [i ] into _temp_1711
!     make sure index expr is >= 0
	load	[r14+-180],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_1708 = _temp_1711		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-120]
!   _temp_1712 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_1708  sizeInBytes=4
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
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_1713 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-100]
!   _temp_1714 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_1713  sizeInBytes=4
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
	jmp	_Label_1715
_Label_1696:
! ELSE...
	mov	958,r13		! source line 958
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0IF",r10
!   if isZombie then goto _Label_1717 else goto _Label_1719
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1719
	jmp	_Label_1717
_Label_1719:
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1721 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1720 = *_temp_1721  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   _temp_1723 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_1724 = _temp_1723 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1724 [i ] into _temp_1725
!     make sure index expr is >= 0
	load	[r14+-180],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_1726 = _temp_1725 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1722 = *_temp_1726  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_1720 != _temp_1722 then goto _Label_1717		(int)
	load	[r14+-92],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bne	_Label_1717
!	jmp	_Label_1718
_Label_1718:
!   _temp_1728 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_1729 = _temp_1728 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1729 [i ] into _temp_1730
!     make sure index expr is >= 0
	load	[r14+-180],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_1731 = _temp_1730 + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1727 = *_temp_1731  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_1727 != 1 then goto _Label_1717		(int)
	load	[r14+-64],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1717
!	jmp	_Label_1716
_Label_1716:
! THEN...
	mov	959,r13		! source line 959
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0AS",r10
!   isZombie = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1732 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1732 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0SE",r10
!   _temp_1733 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   _temp_1734 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1733  sizeInBytes=4
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
_Label_1717:
! END IF...
_Label_1715:
!   Increment the FOR-LOOP index variable and jump back
_Label_1691:
!   i = i + 1
	load	[r14+-180],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-180]
	jmp	_Label_1689
! END FOR
_Label_1692:
! IF STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0IF",r10
!   if isZombie then goto _Label_1736 else goto _Label_1735
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1735
	jmp	_Label_1736
_Label_1735:
! THEN...
	mov	965,r13		! source line 965
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1737 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1737 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0SE",r10
!   _temp_1738 = &freeList
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
	mov	967,r13		! source line 967
	mov	"\0\0SE",r10
!   _temp_1739 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-24]
!   _temp_1740 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1739  sizeInBytes=4
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
_Label_1736:
! SEND STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0SE",r10
!   _temp_1741 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	969,r13		! source line 969
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_6:
	.word	_sourceFileName
	.word	_Label_1742
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1743
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1744
	.word	12
	.word	4
	.word	_Label_1745
	.word	-16
	.word	4
	.word	_Label_1746
	.word	-20
	.word	4
	.word	_Label_1747
	.word	-24
	.word	4
	.word	_Label_1748
	.word	-28
	.word	4
	.word	_Label_1749
	.word	-32
	.word	4
	.word	_Label_1750
	.word	-36
	.word	4
	.word	_Label_1751
	.word	-40
	.word	4
	.word	_Label_1752
	.word	-44
	.word	4
	.word	_Label_1753
	.word	-48
	.word	4
	.word	_Label_1754
	.word	-52
	.word	4
	.word	_Label_1755
	.word	-56
	.word	4
	.word	_Label_1756
	.word	-60
	.word	4
	.word	_Label_1757
	.word	-64
	.word	4
	.word	_Label_1758
	.word	-68
	.word	4
	.word	_Label_1759
	.word	-72
	.word	4
	.word	_Label_1760
	.word	-76
	.word	4
	.word	_Label_1761
	.word	-80
	.word	4
	.word	_Label_1762
	.word	-84
	.word	4
	.word	_Label_1763
	.word	-88
	.word	4
	.word	_Label_1764
	.word	-92
	.word	4
	.word	_Label_1765
	.word	-96
	.word	4
	.word	_Label_1766
	.word	-100
	.word	4
	.word	_Label_1767
	.word	-104
	.word	4
	.word	_Label_1768
	.word	-108
	.word	4
	.word	_Label_1769
	.word	-112
	.word	4
	.word	_Label_1770
	.word	-116
	.word	4
	.word	_Label_1771
	.word	-120
	.word	4
	.word	_Label_1772
	.word	-124
	.word	4
	.word	_Label_1773
	.word	-128
	.word	4
	.word	_Label_1774
	.word	-132
	.word	4
	.word	_Label_1775
	.word	-136
	.word	4
	.word	_Label_1776
	.word	-140
	.word	4
	.word	_Label_1777
	.word	-144
	.word	4
	.word	_Label_1778
	.word	-148
	.word	4
	.word	_Label_1779
	.word	-152
	.word	4
	.word	_Label_1780
	.word	-156
	.word	4
	.word	_Label_1781
	.word	-160
	.word	4
	.word	_Label_1782
	.word	-164
	.word	4
	.word	_Label_1783
	.word	-168
	.word	4
	.word	_Label_1784
	.word	-172
	.word	4
	.word	_Label_1785
	.word	-176
	.word	4
	.word	_Label_1786
	.word	-180
	.word	4
	.word	_Label_1787
	.word	-9
	.word	1
	.word	0
_Label_1742:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_1743:
	.ascii	"Pself\0"
	.align
_Label_1744:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1786:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1787:
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
_Label_3390:
	push	r0
	sub	r1,1,r1
	bne	_Label_3390
	mov	974,r13		! source line 974
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0SE",r10
!   _temp_1788 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	978,r13		! source line 978
	mov	"\0\0WH",r10
_Label_1789:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1793 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1792 = *_temp_1793  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_1792 == 2 then goto _Label_1791		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1791
!	jmp	_Label_1790
_Label_1790:
	mov	978,r13		! source line 978
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_1794 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   _temp_1795 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1794  sizeInBytes=4
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
	jmp	_Label_1789
_Label_1791:
! ASSIGNMENT STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1796 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exitStatus = *_temp_1796  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1797 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1797 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0SE",r10
!   _temp_1798 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
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
	mov	984,r13		! source line 984
	mov	"\0\0SE",r10
!   _temp_1799 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1800 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1799  sizeInBytes=4
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
	mov	985,r13		! source line 985
	mov	"\0\0SE",r10
!   _temp_1801 = &processManagerLock
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
	mov	986,r13		! source line 986
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
	.word	_Label_1802
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1803
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1804
	.word	12
	.word	4
	.word	_Label_1805
	.word	-12
	.word	4
	.word	_Label_1806
	.word	-16
	.word	4
	.word	_Label_1807
	.word	-20
	.word	4
	.word	_Label_1808
	.word	-24
	.word	4
	.word	_Label_1809
	.word	-28
	.word	4
	.word	_Label_1810
	.word	-32
	.word	4
	.word	_Label_1811
	.word	-36
	.word	4
	.word	_Label_1812
	.word	-40
	.word	4
	.word	_Label_1813
	.word	-44
	.word	4
	.word	_Label_1814
	.word	-48
	.word	4
	.word	_Label_1815
	.word	-52
	.word	4
	.word	_Label_1816
	.word	-56
	.word	4
	.word	0
_Label_1802:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_1803:
	.ascii	"Pself\0"
	.align
_Label_1804:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1816:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1817
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1817:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1818
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1818:
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
_Label_3391:
	push	r0
	sub	r1,1,r1
	bne	_Label_3391
	mov	1025,r13		! source line 1025
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1819 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1819  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1031,r13		! source line 1031
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1032,r13		! source line 1032
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
	mov	1033,r13		! source line 1033
	mov	"\0\0SE",r10
!   _temp_1821 = &framesInUse
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
	mov	1034,r13		! source line 1034
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1035,r13		! source line 1035
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
	mov	1036,r13		! source line 1036
	mov	"\0\0SE",r10
!   _temp_1823 = &frameManagerLock
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
	mov	1037,r13		! source line 1037
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
	mov	1038,r13		! source line 1038
	mov	"\0\0SE",r10
!   _temp_1825 = &newFramesAvailable
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
	mov	1044,r13		! source line 1044
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1830 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1831 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1830  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1826:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1831 then goto _Label_1829		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1829
_Label_1827:
	mov	1044,r13		! source line 1044
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1834 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1834) then goto _Label_1833
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1833
!	jmp	_Label_1832
_Label_1832:
! THEN...
	mov	1048,r13		! source line 1048
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1835 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1835  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1048,r13		! source line 1048
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1833:
!   Increment the FOR-LOOP index variable and jump back
_Label_1828:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1826
! END FOR
_Label_1829:
! RETURN STATEMENT...
	mov	1044,r13		! source line 1044
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
	.word	_Label_1836
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1837
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1838
	.word	-12
	.word	4
	.word	_Label_1839
	.word	-16
	.word	4
	.word	_Label_1840
	.word	-20
	.word	4
	.word	_Label_1841
	.word	-24
	.word	4
	.word	_Label_1842
	.word	-28
	.word	4
	.word	_Label_1843
	.word	-32
	.word	4
	.word	_Label_1844
	.word	-36
	.word	4
	.word	_Label_1845
	.word	-40
	.word	4
	.word	_Label_1846
	.word	-44
	.word	4
	.word	_Label_1847
	.word	-48
	.word	4
	.word	_Label_1848
	.word	-52
	.word	4
	.word	_Label_1849
	.word	-56
	.word	4
	.word	0
_Label_1836:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1837:
	.ascii	"Pself\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1849:
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
_Label_3392:
	push	r0
	sub	r1,1,r1
	bne	_Label_3392
	mov	1055,r13		! source line 1055
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_1850 = &frameManagerLock
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
!   _temp_1851 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1851  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1060,r13		! source line 1060
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1852 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1852  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1061,r13		! source line 1061
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1853 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1853  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1062,r13		! source line 1062
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1063,r13		! source line 1063
	mov	"\0\0SE",r10
!   _temp_1854 = &framesInUse
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
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_1855 = &frameManagerLock
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
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1856
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1857
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1858
	.word	-12
	.word	4
	.word	_Label_1859
	.word	-16
	.word	4
	.word	_Label_1860
	.word	-20
	.word	4
	.word	_Label_1861
	.word	-24
	.word	4
	.word	_Label_1862
	.word	-28
	.word	4
	.word	_Label_1863
	.word	-32
	.word	4
	.word	0
_Label_1856:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1857:
	.ascii	"Pself\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1850\0"
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
_Label_3393:
	push	r0
	sub	r1,1,r1
	bne	_Label_3393
	mov	1069,r13		! source line 1069
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0SE",r10
!   _temp_1864 = &frameManagerLock
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
	mov	1080,r13		! source line 1080
	mov	"\0\0WH",r10
_Label_1865:
!   if numberFreeFrames >= 1 then goto _Label_1867		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1867
!	jmp	_Label_1866
_Label_1866:
	mov	1080,r13		! source line 1080
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1081,r13		! source line 1081
	mov	"\0\0SE",r10
!   _temp_1868 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1869 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1868  sizeInBytes=4
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
	jmp	_Label_1865
_Label_1867:
! ASSIGNMENT STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0AS",r10
	mov	1085,r13		! source line 1085
	mov	"\0\0SE",r10
!   _temp_1870 = &framesInUse
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
	mov	1086,r13		! source line 1086
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
	mov	1089,r13		! source line 1089
	mov	"\0\0SE",r10
!   _temp_1871 = &frameManagerLock
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
	mov	1092,r13		! source line 1092
	mov	"\0\0AS",r10
!   _temp_1872 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1872		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1094,r13		! source line 1094
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
	.word	_Label_1873
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1874
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1875
	.word	-12
	.word	4
	.word	_Label_1876
	.word	-16
	.word	4
	.word	_Label_1877
	.word	-20
	.word	4
	.word	_Label_1878
	.word	-24
	.word	4
	.word	_Label_1879
	.word	-28
	.word	4
	.word	_Label_1880
	.word	-32
	.word	4
	.word	_Label_1881
	.word	-36
	.word	4
	.word	_Label_1882
	.word	-40
	.word	4
	.word	0
_Label_1873:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1874:
	.ascii	"Pself\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1881:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1882:
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
_Label_3394:
	push	r0
	sub	r1,1,r1
	bne	_Label_3394
	mov	1099,r13		! source line 1099
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0SE",r10
!   _temp_1883 = &frameManagerLock
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
	mov	1102,r13		! source line 1102
	mov	"\0\0WH",r10
_Label_1884:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_1886		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1886
!	jmp	_Label_1885
_Label_1885:
	mov	1102,r13		! source line 1102
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0SE",r10
!   _temp_1887 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1888 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1887  sizeInBytes=4
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
	jmp	_Label_1884
_Label_1886:
! FOR STATEMENT...
	mov	1105,r13		! source line 1105
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1893 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1894 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1893  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1889:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1894 then goto _Label_1892		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1892
_Label_1890:
	mov	1105,r13		! source line 1105
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0AS",r10
	mov	1106,r13		! source line 1106
	mov	"\0\0SE",r10
!   _temp_1895 = &framesInUse
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
	mov	1107,r13		! source line 1107
	mov	"\0\0AS",r10
!   _temp_1896 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1896		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1108,r13		! source line 1108
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
_Label_1891:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1889
! END FOR
_Label_1892:
! ASSIGNMENT STATEMENT...
	mov	1110,r13		! source line 1110
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
	mov	1111,r13		! source line 1111
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1897 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1897 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0SE",r10
!   _temp_1898 = &frameManagerLock
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
	mov	1112,r13		! source line 1112
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
	.word	_Label_1899
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1900
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1901
	.word	12
	.word	4
	.word	_Label_1902
	.word	16
	.word	4
	.word	_Label_1903
	.word	-12
	.word	4
	.word	_Label_1904
	.word	-16
	.word	4
	.word	_Label_1905
	.word	-20
	.word	4
	.word	_Label_1906
	.word	-24
	.word	4
	.word	_Label_1907
	.word	-28
	.word	4
	.word	_Label_1908
	.word	-32
	.word	4
	.word	_Label_1909
	.word	-36
	.word	4
	.word	_Label_1910
	.word	-40
	.word	4
	.word	_Label_1911
	.word	-44
	.word	4
	.word	_Label_1912
	.word	-48
	.word	4
	.word	_Label_1913
	.word	-52
	.word	4
	.word	_Label_1914
	.word	-56
	.word	4
	.word	0
_Label_1899:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1900:
	.ascii	"Pself\0"
	.align
_Label_1901:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1902:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
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
	.ascii	"_temp_1888\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1912:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1913:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1914:
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
_Label_3395:
	push	r0
	sub	r1,1,r1
	bne	_Label_3395
	mov	1117,r13		! source line 1117
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1119,r13		! source line 1119
	mov	"\0\0SE",r10
!   _temp_1915 = &frameManagerLock
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
	mov	1120,r13		! source line 1120
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1920 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1923 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1922 = *_temp_1923  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1921 = _temp_1922 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1920  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_1916:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1921 then goto _Label_1919		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1919
_Label_1917:
	mov	1120,r13		! source line 1120
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1121,r13		! source line 1121
	mov	"\0\0AS",r10
	mov	1121,r13		! source line 1121
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
	mov	1122,r13		! source line 1122
	mov	"\0\0AS",r10
!   _temp_1924 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1924 div 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1123,r13		! source line 1123
	mov	"\0\0SE",r10
!   _temp_1925 = &framesInUse
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
_Label_1918:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1916
! END FOR
_Label_1919:
! ASSIGNMENT STATEMENT...
	mov	1125,r13		! source line 1125
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1927 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1926 = *_temp_1927  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1926		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1928 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1928 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_1929 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1930 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1929  sizeInBytes=4
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
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_1931 = &frameManagerLock
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
	mov	1128,r13		! source line 1128
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
	.word	_Label_1932
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1933
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1934
	.word	12
	.word	4
	.word	_Label_1935
	.word	-12
	.word	4
	.word	_Label_1936
	.word	-16
	.word	4
	.word	_Label_1937
	.word	-20
	.word	4
	.word	_Label_1938
	.word	-24
	.word	4
	.word	_Label_1939
	.word	-28
	.word	4
	.word	_Label_1940
	.word	-32
	.word	4
	.word	_Label_1941
	.word	-36
	.word	4
	.word	_Label_1942
	.word	-40
	.word	4
	.word	_Label_1943
	.word	-44
	.word	4
	.word	_Label_1944
	.word	-48
	.word	4
	.word	_Label_1945
	.word	-52
	.word	4
	.word	_Label_1946
	.word	-56
	.word	4
	.word	_Label_1947
	.word	-60
	.word	4
	.word	_Label_1948
	.word	-64
	.word	4
	.word	_Label_1949
	.word	-68
	.word	4
	.word	_Label_1950
	.word	-72
	.word	4
	.word	0
_Label_1932:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1933:
	.ascii	"Pself\0"
	.align
_Label_1934:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1948:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1949:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1950:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1951
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
_Label_1951:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1952
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1952:
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
_Label_3396:
	push	r0
	sub	r1,1,r1
	bne	_Label_3396
	mov	1139,r13		! source line 1139
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1143,r13		! source line 1143
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0AS",r10
!   _temp_1953 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1955 = &_temp_1954
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1955 = _temp_1955 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1957:
!   Data Move: *_temp_1955 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1955 = _temp_1955 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1956 = _temp_1956 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1956) then goto _Label_1957
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1957
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1958 = &_temp_1954
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3397
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3397:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1953 = *_temp_1958  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3398:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3398
! RETURN STATEMENT...
	mov	1144,r13		! source line 1144
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
	.word	_Label_1959
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1960
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1961
	.word	-12
	.word	4
	.word	_Label_1962
	.word	-16
	.word	4
	.word	_Label_1963
	.word	-20
	.word	4
	.word	_Label_1964
	.word	-104
	.word	84
	.word	_Label_1965
	.word	-108
	.word	4
	.word	0
_Label_1959:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1960:
	.ascii	"Pself\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1953\0"
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
_Label_3399:
	push	r0
	sub	r1,1,r1
	bne	_Label_3399
	mov	1149,r13		! source line 1149
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1966 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1966  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1154,r13		! source line 1154
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1967 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1967  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1155,r13		! source line 1155
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1972 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1973 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1972  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1968:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1973 then goto _Label_1971		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1971
_Label_1969:
	mov	1156,r13		! source line 1156
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1974 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1974  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1157,r13		! source line 1157
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1976 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1976 [i ] into _temp_1977
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
!   _temp_1975 = _temp_1977		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1975  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1158,r13		! source line 1158
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1978 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1978  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1159,r13		! source line 1159
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1980 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1980 [i ] into _temp_1981
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
!   Data Move: _temp_1979 = *_temp_1981  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1979  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1160,r13		! source line 1160
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1982 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1982  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1161,r13		! source line 1161
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1983 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1983  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1162,r13		! source line 1162
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1984 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1984  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1163,r13		! source line 1163
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1986) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1985  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1985  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1164,r13		! source line 1164
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1987 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1987  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1165,r13		! source line 1165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0IF",r10
	mov	1166,r13		! source line 1166
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1991) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1990  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1990) then goto _Label_1989
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1989
!	jmp	_Label_1988
_Label_1988:
! THEN...
	mov	1167,r13		! source line 1167
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1993) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1992  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1992  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1167,r13		! source line 1167
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1994
_Label_1989:
! ELSE...
	mov	1169,r13		! source line 1169
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1995 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1995  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1169,r13		! source line 1169
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1994:
! CALL STATEMENT...
!   _temp_1996 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1996  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1171,r13		! source line 1171
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0IF",r10
	mov	1172,r13		! source line 1172
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1999) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1997 else goto _Label_1998
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1998
	jmp	_Label_1997
_Label_1997:
! THEN...
	mov	1173,r13		! source line 1173
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2000 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2000  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1173,r13		! source line 1173
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2001
_Label_1998:
! ELSE...
	mov	1175,r13		! source line 1175
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2002 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2002  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1175,r13		! source line 1175
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2001:
! CALL STATEMENT...
!   _temp_2003 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2003  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1177,r13		! source line 1177
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0IF",r10
	mov	1178,r13		! source line 1178
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2006) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2004 else goto _Label_2005
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2005
	jmp	_Label_2004
_Label_2004:
! THEN...
	mov	1179,r13		! source line 1179
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2007 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2007  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1179,r13		! source line 1179
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2008
_Label_2005:
! ELSE...
	mov	1181,r13		! source line 1181
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2009 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2009  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1181,r13		! source line 1181
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2008:
! CALL STATEMENT...
!   _temp_2010 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2010  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1183,r13		! source line 1183
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0IF",r10
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2013) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2011 else goto _Label_2012
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2012
	jmp	_Label_2011
_Label_2011:
! THEN...
	mov	1185,r13		! source line 1185
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2014 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2014  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1185,r13		! source line 1185
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2015
_Label_2012:
! ELSE...
	mov	1187,r13		! source line 1187
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2016 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2016  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1187,r13		! source line 1187
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2015:
! CALL STATEMENT...
!   _temp_2017 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2017  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1189,r13		! source line 1189
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0IF",r10
	mov	1190,r13		! source line 1190
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2020) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2018 else goto _Label_2019
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2019
	jmp	_Label_2018
_Label_2018:
! THEN...
	mov	1191,r13		! source line 1191
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2021 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2021  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1191,r13		! source line 1191
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2022
_Label_2019:
! ELSE...
	mov	1193,r13		! source line 1193
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2023 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2023  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1193,r13		! source line 1193
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2022:
! CALL STATEMENT...
!   Call the function
	mov	1195,r13		! source line 1195
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1970:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1968
! END FOR
_Label_1971:
! RETURN STATEMENT...
	mov	1156,r13		! source line 1156
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
	.word	_Label_2024
	.word	4		! total size of parameters
	.word	168		! frame size = 168
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
	.word	_Label_2039
	.word	-64
	.word	4
	.word	_Label_2040
	.word	-68
	.word	4
	.word	_Label_2041
	.word	-72
	.word	4
	.word	_Label_2042
	.word	-76
	.word	4
	.word	_Label_2043
	.word	-80
	.word	4
	.word	_Label_2044
	.word	-84
	.word	4
	.word	_Label_2045
	.word	-88
	.word	4
	.word	_Label_2046
	.word	-92
	.word	4
	.word	_Label_2047
	.word	-96
	.word	4
	.word	_Label_2048
	.word	-100
	.word	4
	.word	_Label_2049
	.word	-104
	.word	4
	.word	_Label_2050
	.word	-108
	.word	4
	.word	_Label_2051
	.word	-112
	.word	4
	.word	_Label_2052
	.word	-116
	.word	4
	.word	_Label_2053
	.word	-120
	.word	4
	.word	_Label_2054
	.word	-124
	.word	4
	.word	_Label_2055
	.word	-128
	.word	4
	.word	_Label_2056
	.word	-132
	.word	4
	.word	_Label_2057
	.word	-136
	.word	4
	.word	_Label_2058
	.word	-140
	.word	4
	.word	_Label_2059
	.word	-144
	.word	4
	.word	_Label_2060
	.word	-148
	.word	4
	.word	_Label_2061
	.word	-152
	.word	4
	.word	_Label_2062
	.word	-156
	.word	4
	.word	_Label_2063
	.word	-160
	.word	4
	.word	_Label_2064
	.word	-164
	.word	4
	.word	_Label_2065
	.word	-168
	.word	4
	.word	0
_Label_2024:
	.ascii	"AddrSpace"
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
	.ascii	"_temp_2021\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_2059:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_2065:
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
_Label_3400:
	push	r0
	sub	r1,1,r1
	bne	_Label_3400
	mov	1201,r13		! source line 1201
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1206,r13		! source line 1206
	mov	"\0\0RE",r10
!   _temp_2068 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2068 [entry ] into _temp_2069
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
!   Data Move: _temp_2067 = *_temp_2069  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2066 = _temp_2067 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2066  (sizeInBytes=4)
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
	.word	_Label_2070
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2071
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2072
	.word	12
	.word	4
	.word	_Label_2073
	.word	-12
	.word	4
	.word	_Label_2074
	.word	-16
	.word	4
	.word	_Label_2075
	.word	-20
	.word	4
	.word	_Label_2076
	.word	-24
	.word	4
	.word	0
_Label_2070:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2071:
	.ascii	"Pself\0"
	.align
_Label_2072:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2066\0"
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
_Label_3401:
	push	r0
	sub	r1,1,r1
	bne	_Label_3401
	mov	1211,r13		! source line 1211
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1215,r13		! source line 1215
	mov	"\0\0RE",r10
!   _temp_2079 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2079 [entry ] into _temp_2080
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
!   Data Move: _temp_2078 = *_temp_2080  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2077 = _temp_2078 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2077  (sizeInBytes=4)
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
	.word	_Label_2081
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2082
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2083
	.word	12
	.word	4
	.word	_Label_2084
	.word	-12
	.word	4
	.word	_Label_2085
	.word	-16
	.word	4
	.word	_Label_2086
	.word	-20
	.word	4
	.word	_Label_2087
	.word	-24
	.word	4
	.word	0
_Label_2081:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2082:
	.ascii	"Pself\0"
	.align
_Label_2083:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2077\0"
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
_Label_3402:
	push	r0
	sub	r1,1,r1
	bne	_Label_3402
	mov	1220,r13		! source line 1220
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1225,r13		! source line 1225
	mov	"\0\0AS",r10
!   _temp_2088 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2088 [entry ] into _temp_2089
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
!   _temp_2093 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2093 [entry ] into _temp_2094
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
!   Data Move: _temp_2092 = *_temp_2094  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2091 = _temp_2092 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2090 = _temp_2091 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2089 = _temp_2090  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1225,r13		! source line 1225
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
	.word	_Label_2095
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2096
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2097
	.word	12
	.word	4
	.word	_Label_2098
	.word	16
	.word	4
	.word	_Label_2099
	.word	-12
	.word	4
	.word	_Label_2100
	.word	-16
	.word	4
	.word	_Label_2101
	.word	-20
	.word	4
	.word	_Label_2102
	.word	-24
	.word	4
	.word	_Label_2103
	.word	-28
	.word	4
	.word	_Label_2104
	.word	-32
	.word	4
	.word	_Label_2105
	.word	-36
	.word	4
	.word	0
_Label_2095:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2096:
	.ascii	"Pself\0"
	.align
_Label_2097:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2098:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2088\0"
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
_Label_3403:
	push	r0
	sub	r1,1,r1
	bne	_Label_3403
	mov	1230,r13		! source line 1230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0RE",r10
!   _temp_2109 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2109 [entry ] into _temp_2110
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
!   Data Move: _temp_2108 = *_temp_2110  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2107 = _temp_2108 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2107) then goto _Label_2111
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2111
!   _temp_2106 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2112
_Label_2111:
!   _temp_2106 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2112:
!   ReturnResult: _temp_2106  (sizeInBytes=1)
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
	.word	_Label_2113
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2114
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2115
	.word	12
	.word	4
	.word	_Label_2116
	.word	-16
	.word	4
	.word	_Label_2117
	.word	-20
	.word	4
	.word	_Label_2118
	.word	-24
	.word	4
	.word	_Label_2119
	.word	-28
	.word	4
	.word	_Label_2120
	.word	-9
	.word	1
	.word	0
_Label_2113:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2114:
	.ascii	"Pself\0"
	.align
_Label_2115:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2120:
	.byte	'C'
	.ascii	"_temp_2106\0"
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
_Label_3404:
	push	r0
	sub	r1,1,r1
	bne	_Label_3404
	mov	1239,r13		! source line 1239
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1243,r13		! source line 1243
	mov	"\0\0RE",r10
!   _temp_2124 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2124 [entry ] into _temp_2125
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
!   Data Move: _temp_2123 = *_temp_2125  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2122 = _temp_2123 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2122) then goto _Label_2126
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2126
!   _temp_2121 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2127
_Label_2126:
!   _temp_2121 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2127:
!   ReturnResult: _temp_2121  (sizeInBytes=1)
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
	.word	_Label_2128
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2129
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2130
	.word	12
	.word	4
	.word	_Label_2131
	.word	-16
	.word	4
	.word	_Label_2132
	.word	-20
	.word	4
	.word	_Label_2133
	.word	-24
	.word	4
	.word	_Label_2134
	.word	-28
	.word	4
	.word	_Label_2135
	.word	-9
	.word	1
	.word	0
_Label_2128:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2129:
	.ascii	"Pself\0"
	.align
_Label_2130:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2135:
	.byte	'C'
	.ascii	"_temp_2121\0"
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
_Label_3405:
	push	r0
	sub	r1,1,r1
	bne	_Label_3405
	mov	1248,r13		! source line 1248
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0RE",r10
!   _temp_2139 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2139 [entry ] into _temp_2140
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
!   Data Move: _temp_2138 = *_temp_2140  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2137 = _temp_2138 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2137) then goto _Label_2141
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2141
!   _temp_2136 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2142
_Label_2141:
!   _temp_2136 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2142:
!   ReturnResult: _temp_2136  (sizeInBytes=1)
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
	.word	_Label_2143
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2144
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2145
	.word	12
	.word	4
	.word	_Label_2146
	.word	-16
	.word	4
	.word	_Label_2147
	.word	-20
	.word	4
	.word	_Label_2148
	.word	-24
	.word	4
	.word	_Label_2149
	.word	-28
	.word	4
	.word	_Label_2150
	.word	-9
	.word	1
	.word	0
_Label_2143:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2144:
	.ascii	"Pself\0"
	.align
_Label_2145:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2150:
	.byte	'C'
	.ascii	"_temp_2136\0"
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
_Label_3406:
	push	r0
	sub	r1,1,r1
	bne	_Label_3406
	mov	1257,r13		! source line 1257
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1261,r13		! source line 1261
	mov	"\0\0RE",r10
!   _temp_2154 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2154 [entry ] into _temp_2155
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
!   Data Move: _temp_2153 = *_temp_2155  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2152 = _temp_2153 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2152) then goto _Label_2156
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2156
!   _temp_2151 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2157
_Label_2156:
!   _temp_2151 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2157:
!   ReturnResult: _temp_2151  (sizeInBytes=1)
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
	.word	_Label_2158
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2159
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2160
	.word	12
	.word	4
	.word	_Label_2161
	.word	-16
	.word	4
	.word	_Label_2162
	.word	-20
	.word	4
	.word	_Label_2163
	.word	-24
	.word	4
	.word	_Label_2164
	.word	-28
	.word	4
	.word	_Label_2165
	.word	-9
	.word	1
	.word	0
_Label_2158:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2159:
	.ascii	"Pself\0"
	.align
_Label_2160:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2165:
	.byte	'C'
	.ascii	"_temp_2151\0"
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
_Label_3407:
	push	r0
	sub	r1,1,r1
	bne	_Label_3407
	mov	1266,r13		! source line 1266
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1270,r13		! source line 1270
	mov	"\0\0AS",r10
!   _temp_2166 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2166 [entry ] into _temp_2167
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
!   _temp_2170 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2170 [entry ] into _temp_2171
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
!   Data Move: _temp_2169 = *_temp_2171  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2168 = _temp_2169 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2167 = _temp_2168  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1270,r13		! source line 1270
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
	.word	_Label_2172
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2173
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2174
	.word	12
	.word	4
	.word	_Label_2175
	.word	-12
	.word	4
	.word	_Label_2176
	.word	-16
	.word	4
	.word	_Label_2177
	.word	-20
	.word	4
	.word	_Label_2178
	.word	-24
	.word	4
	.word	_Label_2179
	.word	-28
	.word	4
	.word	_Label_2180
	.word	-32
	.word	4
	.word	0
_Label_2172:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2173:
	.ascii	"Pself\0"
	.align
_Label_2174:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2166\0"
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
_Label_3408:
	push	r0
	sub	r1,1,r1
	bne	_Label_3408
	mov	1275,r13		! source line 1275
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1279,r13		! source line 1279
	mov	"\0\0AS",r10
!   _temp_2181 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2181 [entry ] into _temp_2182
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
!   _temp_2185 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2185 [entry ] into _temp_2186
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
!   Data Move: _temp_2184 = *_temp_2186  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2183 = _temp_2184 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2182 = _temp_2183  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1279,r13		! source line 1279
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
	.word	_Label_2187
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2188
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2189
	.word	12
	.word	4
	.word	_Label_2190
	.word	-12
	.word	4
	.word	_Label_2191
	.word	-16
	.word	4
	.word	_Label_2192
	.word	-20
	.word	4
	.word	_Label_2193
	.word	-24
	.word	4
	.word	_Label_2194
	.word	-28
	.word	4
	.word	_Label_2195
	.word	-32
	.word	4
	.word	0
_Label_2187:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2188:
	.ascii	"Pself\0"
	.align
_Label_2189:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2181\0"
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
_Label_3409:
	push	r0
	sub	r1,1,r1
	bne	_Label_3409
	mov	1284,r13		! source line 1284
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0AS",r10
!   _temp_2196 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2196 [entry ] into _temp_2197
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
!   _temp_2200 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2200 [entry ] into _temp_2201
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
!   Data Move: _temp_2199 = *_temp_2201  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2198 = _temp_2199 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2197 = _temp_2198  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1288,r13		! source line 1288
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
	.word	_Label_2202
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2203
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2204
	.word	12
	.word	4
	.word	_Label_2205
	.word	-12
	.word	4
	.word	_Label_2206
	.word	-16
	.word	4
	.word	_Label_2207
	.word	-20
	.word	4
	.word	_Label_2208
	.word	-24
	.word	4
	.word	_Label_2209
	.word	-28
	.word	4
	.word	_Label_2210
	.word	-32
	.word	4
	.word	0
_Label_2202:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2203:
	.ascii	"Pself\0"
	.align
_Label_2204:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2196\0"
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
_Label_3410:
	push	r0
	sub	r1,1,r1
	bne	_Label_3410
	mov	1293,r13		! source line 1293
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0AS",r10
!   _temp_2211 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2211 [entry ] into _temp_2212
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
!   _temp_2215 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2215 [entry ] into _temp_2216
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
!   Data Move: _temp_2214 = *_temp_2216  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2213 = _temp_2214 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2212 = _temp_2213  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1297,r13		! source line 1297
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
	.word	_Label_2217
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2218
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2219
	.word	12
	.word	4
	.word	_Label_2220
	.word	-12
	.word	4
	.word	_Label_2221
	.word	-16
	.word	4
	.word	_Label_2222
	.word	-20
	.word	4
	.word	_Label_2223
	.word	-24
	.word	4
	.word	_Label_2224
	.word	-28
	.word	4
	.word	_Label_2225
	.word	-32
	.word	4
	.word	0
_Label_2217:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2218:
	.ascii	"Pself\0"
	.align
_Label_2219:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2211\0"
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
_Label_3411:
	push	r0
	sub	r1,1,r1
	bne	_Label_3411
	mov	1302,r13		! source line 1302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1306,r13		! source line 1306
	mov	"\0\0AS",r10
!   _temp_2226 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2226 [entry ] into _temp_2227
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
!   _temp_2230 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2230 [entry ] into _temp_2231
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
!   Data Move: _temp_2229 = *_temp_2231  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2228 = _temp_2229 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2227 = _temp_2228  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1306,r13		! source line 1306
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
	.word	_Label_2232
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2233
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2234
	.word	12
	.word	4
	.word	_Label_2235
	.word	-12
	.word	4
	.word	_Label_2236
	.word	-16
	.word	4
	.word	_Label_2237
	.word	-20
	.word	4
	.word	_Label_2238
	.word	-24
	.word	4
	.word	_Label_2239
	.word	-28
	.word	4
	.word	_Label_2240
	.word	-32
	.word	4
	.word	0
_Label_2232:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2233:
	.ascii	"Pself\0"
	.align
_Label_2234:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2226\0"
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
_Label_3412:
	push	r0
	sub	r1,1,r1
	bne	_Label_3412
	mov	1311,r13		! source line 1311
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0AS",r10
!   _temp_2241 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2241 [entry ] into _temp_2242
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
!   _temp_2245 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2245 [entry ] into _temp_2246
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
!   Data Move: _temp_2244 = *_temp_2246  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2243 = _temp_2244 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2242 = _temp_2243  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1315,r13		! source line 1315
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
	.word	_Label_2247
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2248
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2249
	.word	12
	.word	4
	.word	_Label_2250
	.word	-12
	.word	4
	.word	_Label_2251
	.word	-16
	.word	4
	.word	_Label_2252
	.word	-20
	.word	4
	.word	_Label_2253
	.word	-24
	.word	4
	.word	_Label_2254
	.word	-28
	.word	4
	.word	_Label_2255
	.word	-32
	.word	4
	.word	0
_Label_2247:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2248:
	.ascii	"Pself\0"
	.align
_Label_2249:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2241\0"
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
_Label_3413:
	push	r0
	sub	r1,1,r1
	bne	_Label_3413
	mov	1320,r13		! source line 1320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1324,r13		! source line 1324
	mov	"\0\0AS",r10
!   _temp_2256 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2256 [entry ] into _temp_2257
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
!   _temp_2260 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2260 [entry ] into _temp_2261
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
!   Data Move: _temp_2259 = *_temp_2261  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2258 = _temp_2259 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2257 = _temp_2258  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1324,r13		! source line 1324
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
	.word	_Label_2262
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2263
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2264
	.word	12
	.word	4
	.word	_Label_2265
	.word	-12
	.word	4
	.word	_Label_2266
	.word	-16
	.word	4
	.word	_Label_2267
	.word	-20
	.word	4
	.word	_Label_2268
	.word	-24
	.word	4
	.word	_Label_2269
	.word	-28
	.word	4
	.word	_Label_2270
	.word	-32
	.word	4
	.word	0
_Label_2262:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2263:
	.ascii	"Pself\0"
	.align
_Label_2264:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2256\0"
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
_Label_3414:
	push	r0
	sub	r1,1,r1
	bne	_Label_3414
	mov	1329,r13		! source line 1329
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1333,r13		! source line 1333
	mov	"\0\0AS",r10
!   _temp_2271 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2271 [entry ] into _temp_2272
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
!   _temp_2275 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2275 [entry ] into _temp_2276
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
!   Data Move: _temp_2274 = *_temp_2276  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2273 = _temp_2274 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2272 = _temp_2273  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1333,r13		! source line 1333
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
	.word	_Label_2277
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2278
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2279
	.word	12
	.word	4
	.word	_Label_2280
	.word	-12
	.word	4
	.word	_Label_2281
	.word	-16
	.word	4
	.word	_Label_2282
	.word	-20
	.word	4
	.word	_Label_2283
	.word	-24
	.word	4
	.word	_Label_2284
	.word	-28
	.word	4
	.word	_Label_2285
	.word	-32
	.word	4
	.word	0
_Label_2277:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2278:
	.ascii	"Pself\0"
	.align
_Label_2279:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2271\0"
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
_Label_3415:
	push	r0
	sub	r1,1,r1
	bne	_Label_3415
	mov	1338,r13		! source line 1338
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2287 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2287 [0 ] into _temp_2288
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
!   _temp_2286 = _temp_2288		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2289 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2286  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2289  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1344,r13		! source line 1344
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1344,r13		! source line 1344
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
	.word	_Label_2290
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2291
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2292
	.word	-12
	.word	4
	.word	_Label_2293
	.word	-16
	.word	4
	.word	_Label_2294
	.word	-20
	.word	4
	.word	_Label_2295
	.word	-24
	.word	4
	.word	0
_Label_2290:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2291:
	.ascii	"Pself\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2286\0"
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
_Label_3416:
	push	r0
	sub	r1,1,r1
	bne	_Label_3416
	mov	1349,r13		! source line 1349
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1364,r13		! source line 1364
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2296
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2296
	jmp	_Label_2297
_Label_2296:
! THEN...
	mov	1365,r13		! source line 1365
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2298
_Label_2297:
! ELSE...
	mov	1366,r13		! source line 1366
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2300		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2300
!	jmp	_Label_2299
_Label_2299:
! THEN...
	mov	1367,r13		! source line 1367
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2300:
! END IF...
_Label_2298:
! ASSIGNMENT STATEMENT...
	mov	1369,r13		! source line 1369
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
	mov	1370,r13		! source line 1370
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
	mov	1373,r13		! source line 1373
	mov	"\0\0WH",r10
_Label_2301:
!	jmp	_Label_2302
_Label_2302:
	mov	1373,r13		! source line 1373
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2305		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2305
!	jmp	_Label_2304
_Label_2304:
! THEN...
	mov	1375,r13		! source line 1375
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2306 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2306  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1375,r13		! source line 1375
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2305:
! IF STATEMENT...
	mov	1378,r13		! source line 1378
	mov	"\0\0IF",r10
	mov	1378,r13		! source line 1378
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2310) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2309  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2309 then goto _Label_2308 else goto _Label_2307
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2307
	jmp	_Label_2308
_Label_2307:
! THEN...
	mov	1379,r13		! source line 1379
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2311 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2311  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1379,r13		! source line 1379
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1380,r13		! source line 1380
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2308:
! ASSIGNMENT STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0AS",r10
	mov	1382,r13		! source line 1382
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2313) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2312  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2312 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0WH",r10
_Label_2314:
!   if offset >= 8192 then goto _Label_2316		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2316
!	jmp	_Label_2315
_Label_2315:
	mov	1384,r13		! source line 1384
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2317 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2317  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1389,r13		! source line 1389
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1391,r13		! source line 1391
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2319		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2319
!	jmp	_Label_2318
_Label_2318:
! THEN...
	mov	1393,r13		! source line 1393
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2319:
! END WHILE...
	jmp	_Label_2314
_Label_2316:
! ASSIGNMENT STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2301
_Label_2303:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2320
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2321
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2322
	.word	12
	.word	4
	.word	_Label_2323
	.word	16
	.word	4
	.word	_Label_2324
	.word	20
	.word	4
	.word	_Label_2325
	.word	-9
	.word	1
	.word	_Label_2326
	.word	-16
	.word	4
	.word	_Label_2327
	.word	-20
	.word	4
	.word	_Label_2328
	.word	-24
	.word	4
	.word	_Label_2329
	.word	-28
	.word	4
	.word	_Label_2330
	.word	-10
	.word	1
	.word	_Label_2331
	.word	-32
	.word	4
	.word	_Label_2332
	.word	-36
	.word	4
	.word	_Label_2333
	.word	-40
	.word	4
	.word	_Label_2334
	.word	-44
	.word	4
	.word	_Label_2335
	.word	-48
	.word	4
	.word	0
_Label_2320:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2321:
	.ascii	"Pself\0"
	.align
_Label_2322:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2323:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2324:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2325:
	.byte	'C'
	.ascii	"_temp_2317\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2330:
	.byte	'C'
	.ascii	"_temp_2309\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2332:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2333:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2334:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2335:
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
_Label_3417:
	push	r0
	sub	r1,1,r1
	bne	_Label_3417
	mov	1403,r13		! source line 1403
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2336
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2336
	jmp	_Label_2337
_Label_2336:
! THEN...
	mov	1415,r13		! source line 1415
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2338
_Label_2337:
! ELSE...
	mov	1416,r13		! source line 1416
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2340		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2340
!	jmp	_Label_2339
_Label_2339:
! THEN...
	mov	1417,r13		! source line 1417
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2340:
! END IF...
_Label_2338:
! ASSIGNMENT STATEMENT...
	mov	1419,r13		! source line 1419
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
	mov	1420,r13		! source line 1420
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
	mov	1421,r13		! source line 1421
	mov	"\0\0WH",r10
_Label_2341:
!	jmp	_Label_2342
_Label_2342:
	mov	1421,r13		! source line 1421
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2347		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2347
	jmp	_Label_2344
_Label_2347:
	mov	1423,r13		! source line 1423
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2349) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2348  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2348 then goto _Label_2346 else goto _Label_2344
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2344
	jmp	_Label_2346
_Label_2346:
	mov	1424,r13		! source line 1424
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2351) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2350  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2350 then goto _Label_2345 else goto _Label_2344
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2344
	jmp	_Label_2345
_Label_2344:
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
_Label_2345:
! ASSIGNMENT STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0AS",r10
	mov	1427,r13		! source line 1427
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2353) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2352  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2352 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0WH",r10
_Label_2354:
!   if offset >= 8192 then goto _Label_2356		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2356
!	jmp	_Label_2355
_Label_2355:
	mov	1428,r13		! source line 1428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2357 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2357  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2359		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2359
!	jmp	_Label_2358
_Label_2358:
! THEN...
	mov	1435,r13		! source line 1435
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2359:
! END WHILE...
	jmp	_Label_2354
_Label_2356:
! ASSIGNMENT STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2341
_Label_2343:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2360
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2361
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2362
	.word	12
	.word	4
	.word	_Label_2363
	.word	16
	.word	4
	.word	_Label_2364
	.word	20
	.word	4
	.word	_Label_2365
	.word	-9
	.word	1
	.word	_Label_2366
	.word	-16
	.word	4
	.word	_Label_2367
	.word	-20
	.word	4
	.word	_Label_2368
	.word	-24
	.word	4
	.word	_Label_2369
	.word	-10
	.word	1
	.word	_Label_2370
	.word	-28
	.word	4
	.word	_Label_2371
	.word	-11
	.word	1
	.word	_Label_2372
	.word	-32
	.word	4
	.word	_Label_2373
	.word	-36
	.word	4
	.word	_Label_2374
	.word	-40
	.word	4
	.word	_Label_2375
	.word	-44
	.word	4
	.word	0
_Label_2360:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2361:
	.ascii	"Pself\0"
	.align
_Label_2362:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2363:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2364:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2365:
	.byte	'C'
	.ascii	"_temp_2357\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2369:
	.byte	'C'
	.ascii	"_temp_2350\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2371:
	.byte	'C'
	.ascii	"_temp_2348\0"
	.align
_Label_2372:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2373:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2374:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2375:
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
_Label_3418:
	push	r0
	sub	r1,1,r1
	bne	_Label_3418
	mov	1445,r13		! source line 1445
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0IF",r10
	mov	1469,r13		! source line 1469
	mov	"\0\0SE",r10
!   _temp_2379 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2380) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2379  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2378  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2378 >= 4 then goto _Label_2377		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2377
!	jmp	_Label_2376
_Label_2376:
! THEN...
	mov	1472,r13		! source line 1472
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1472,r13		! source line 1472
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2377:
! IF STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2382		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2382
!	jmp	_Label_2381
_Label_2381:
! THEN...
	mov	1477,r13		! source line 1477
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2382:
! ASSIGNMENT STATEMENT...
	mov	1480,r13		! source line 1480
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
	mov	1482,r13		! source line 1482
	mov	"\0\0RE",r10
	mov	1482,r13		! source line 1482
	mov	"\0\0SE",r10
!   _temp_2385 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2384 = _temp_2385 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2386 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2387) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2384  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2386  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2383  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2383  (sizeInBytes=4)
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
	.word	_Label_2388
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2389
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2390
	.word	12
	.word	4
	.word	_Label_2391
	.word	16
	.word	4
	.word	_Label_2392
	.word	20
	.word	4
	.word	_Label_2393
	.word	-12
	.word	4
	.word	_Label_2394
	.word	-16
	.word	4
	.word	_Label_2395
	.word	-20
	.word	4
	.word	_Label_2396
	.word	-24
	.word	4
	.word	_Label_2397
	.word	-28
	.word	4
	.word	_Label_2398
	.word	-32
	.word	4
	.word	_Label_2399
	.word	-36
	.word	4
	.word	_Label_2400
	.word	-40
	.word	4
	.word	_Label_2401
	.word	-44
	.word	4
	.word	0
_Label_2388:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2389:
	.ascii	"Pself\0"
	.align
_Label_2390:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2391:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2392:
	.byte	'I'
	.ascii	"maxSize\0"
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
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2401:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2402
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2402:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2403
	.word	_sourceFileName
	.word	308		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2403:
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
_Label_3419:
	push	r0
	sub	r1,1,r1
	bne	_Label_3419
	mov	1944,r13		! source line 1944
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2404 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2404  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1945,r13		! source line 1945
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	1948,r13		! source line 1948
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1950,r13		! source line 1950
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1952,r13		! source line 1952
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
	mov	1953,r13		! source line 1953
	mov	"\0\0SE",r10
!   _temp_2406 = &semUsedInSynchMethods
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
	mov	1954,r13		! source line 1954
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
	mov	1955,r13		! source line 1955
	mov	"\0\0SE",r10
!   _temp_2408 = &diskBusy
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
	mov	1955,r13		! source line 1955
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
	.word	_Label_2409
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2410
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2411
	.word	-12
	.word	4
	.word	_Label_2412
	.word	-16
	.word	4
	.word	_Label_2413
	.word	-20
	.word	4
	.word	_Label_2414
	.word	-24
	.word	4
	.word	_Label_2415
	.word	-28
	.word	4
	.word	0
_Label_2409:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2410:
	.ascii	"Pself\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2404\0"
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
_Label_3420:
	push	r0
	sub	r1,1,r1
	bne	_Label_3420
	mov	1960,r13		! source line 1960
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0SE",r10
!   _temp_2416 = &diskBusy
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
	mov	1974,r13		! source line 1974
	mov	"\0\0WH",r10
_Label_2417:
!	jmp	_Label_2418
_Label_2418:
	mov	1974,r13		! source line 1974
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0SE",r10
!   _temp_2420 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2421) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2420  sizeInBytes=4
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
	mov	1978,r13		! source line 1978
	mov	"\0\0SE",r10
!   _temp_2422 = &semUsedInSynchMethods
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
	mov	1981,r13		! source line 1981
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2431 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2425
	cmp	r1,2
	be	_Label_2426
	cmp	r1,3
	be	_Label_2427
	cmp	r1,4
	be	_Label_2428
	cmp	r1,5
	be	_Label_2429
	cmp	r1,6
	be	_Label_2430
	jmp	_Label_2423
! CASE 1...
_Label_2425:
! SEND STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0SE",r10
!   _temp_2432 = &diskBusy
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
	mov	1984,r13		! source line 1984
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2426:
! CALL STATEMENT...
!   _temp_2433 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2433  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1986,r13		! source line 1986
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2427:
! CALL STATEMENT...
!   _temp_2434 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2434  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1988,r13		! source line 1988
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2428:
! CALL STATEMENT...
!   _temp_2435 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2435  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1990,r13		! source line 1990
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2429:
! BREAK STATEMENT...
	mov	1994,r13		! source line 1994
	mov	"\0\0BR",r10
	jmp	_Label_2424
! CASE 6...
_Label_2430:
! CALL STATEMENT...
!   _temp_2436 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2436  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1996,r13		! source line 1996
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2423:
! CALL STATEMENT...
!   _temp_2437 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2437  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1998,r13		! source line 1998
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2424:
! END WHILE...
	jmp	_Label_2417
_Label_2419:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2438
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2439
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2440
	.word	12
	.word	4
	.word	_Label_2441
	.word	16
	.word	4
	.word	_Label_2442
	.word	20
	.word	4
	.word	_Label_2443
	.word	-12
	.word	4
	.word	_Label_2444
	.word	-16
	.word	4
	.word	_Label_2445
	.word	-20
	.word	4
	.word	_Label_2446
	.word	-24
	.word	4
	.word	_Label_2447
	.word	-28
	.word	4
	.word	_Label_2448
	.word	-32
	.word	4
	.word	_Label_2449
	.word	-36
	.word	4
	.word	_Label_2450
	.word	-40
	.word	4
	.word	_Label_2451
	.word	-44
	.word	4
	.word	_Label_2452
	.word	-48
	.word	4
	.word	_Label_2453
	.word	-52
	.word	4
	.word	0
_Label_2438:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2439:
	.ascii	"Pself\0"
	.align
_Label_2440:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2441:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2442:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2416\0"
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
	mov	2007,r13		! source line 2007
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2025,r13		! source line 2025
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
	mov	2026,r13		! source line 2026
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
	mov	2027,r13		! source line 2027
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
	mov	2028,r13		! source line 2028
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
	mov	2028,r13		! source line 2028
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
	.word	_Label_2454
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2455
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2456
	.word	12
	.word	4
	.word	_Label_2457
	.word	16
	.word	4
	.word	_Label_2458
	.word	20
	.word	4
	.word	_Label_2459
	.word	24
	.word	4
	.word	0
_Label_2454:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2455:
	.ascii	"Pself\0"
	.align
_Label_2456:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2457:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2458:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2459:
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
_Label_3421:
	push	r0
	sub	r1,1,r1
	bne	_Label_3421
	mov	2033,r13		! source line 2033
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0SE",r10
!   _temp_2460 = &diskBusy
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
	mov	2046,r13		! source line 2046
	mov	"\0\0WH",r10
_Label_2461:
!	jmp	_Label_2462
_Label_2462:
	mov	2046,r13		! source line 2046
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0SE",r10
!   _temp_2464 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2465) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2464  sizeInBytes=4
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
	mov	2049,r13		! source line 2049
	mov	"\0\0SE",r10
!   _temp_2466 = &semUsedInSynchMethods
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
	mov	2052,r13		! source line 2052
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2475 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2469
	cmp	r1,2
	be	_Label_2470
	cmp	r1,3
	be	_Label_2471
	cmp	r1,4
	be	_Label_2472
	cmp	r1,5
	be	_Label_2473
	cmp	r1,6
	be	_Label_2474
	jmp	_Label_2467
! CASE 1...
_Label_2469:
! SEND STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0SE",r10
!   _temp_2476 = &diskBusy
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
	mov	2055,r13		! source line 2055
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2470:
! CALL STATEMENT...
!   _temp_2477 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2477  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2057,r13		! source line 2057
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2471:
! CALL STATEMENT...
!   _temp_2478 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2478  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2059,r13		! source line 2059
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2472:
! CALL STATEMENT...
!   _temp_2479 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2479  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2061,r13		! source line 2061
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2473:
! BREAK STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0BR",r10
	jmp	_Label_2468
! CASE 6...
_Label_2474:
! CALL STATEMENT...
!   _temp_2480 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2480  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2067,r13		! source line 2067
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2467:
! CALL STATEMENT...
!   _temp_2481 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2481  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2069,r13		! source line 2069
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2468:
! END WHILE...
	jmp	_Label_2461
_Label_2463:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2482
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2483
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2484
	.word	12
	.word	4
	.word	_Label_2485
	.word	16
	.word	4
	.word	_Label_2486
	.word	20
	.word	4
	.word	_Label_2487
	.word	-12
	.word	4
	.word	_Label_2488
	.word	-16
	.word	4
	.word	_Label_2489
	.word	-20
	.word	4
	.word	_Label_2490
	.word	-24
	.word	4
	.word	_Label_2491
	.word	-28
	.word	4
	.word	_Label_2492
	.word	-32
	.word	4
	.word	_Label_2493
	.word	-36
	.word	4
	.word	_Label_2494
	.word	-40
	.word	4
	.word	_Label_2495
	.word	-44
	.word	4
	.word	_Label_2496
	.word	-48
	.word	4
	.word	_Label_2497
	.word	-52
	.word	4
	.word	0
_Label_2482:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2483:
	.ascii	"Pself\0"
	.align
_Label_2484:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2485:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2486:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2460\0"
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
	mov	2078,r13		! source line 2078
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2095,r13		! source line 2095
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
	mov	2096,r13		! source line 2096
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
	mov	2097,r13		! source line 2097
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
	mov	2098,r13		! source line 2098
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
	mov	2098,r13		! source line 2098
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
	.word	_Label_2498
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2499
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2500
	.word	12
	.word	4
	.word	_Label_2501
	.word	16
	.word	4
	.word	_Label_2502
	.word	20
	.word	4
	.word	_Label_2503
	.word	24
	.word	4
	.word	0
_Label_2498:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2499:
	.ascii	"Pself\0"
	.align
_Label_2500:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2501:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2502:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2503:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2504
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
_Label_2504:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2505
	.word	_sourceFileName
	.word	331		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2505:
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
_Label_3422:
	push	r0
	sub	r1,1,r1
	bne	_Label_3422
	mov	2109,r13		! source line 2109
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2506 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2506  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2116,r13		! source line 2116
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2117,r13		! source line 2117
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
	mov	2118,r13		! source line 2118
	mov	"\0\0SE",r10
!   _temp_2508 = &fileManagerLock
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
	mov	2121,r13		! source line 2121
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
	mov	2122,r13		! source line 2122
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
	mov	2123,r13		! source line 2123
	mov	"\0\0SE",r10
!   _temp_2511 = &anFCBBecameFree
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
	mov	2124,r13		! source line 2124
	mov	"\0\0AS",r10
!   _temp_2512 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2514 = &_temp_2513
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2514 = _temp_2514 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2516 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3423:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3423
!   _temp_2516 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2518:
!   Data Move: *_temp_2514 = _temp_2516  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3424:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3424
!   _temp_2514 = _temp_2514 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2515 = _temp_2515 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2515) then goto _Label_2518
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2518
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2519 = &_temp_2513
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3425
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3425:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2512 = *_temp_2519  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3426:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3426
! FOR STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2524 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2525 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2524  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2520:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2525 then goto _Label_2523		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2523
_Label_2521:
	mov	2126,r13		! source line 2126
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0AS",r10
!   _temp_2526 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2526 [i ] into _temp_2527
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
!   _temp_2528 = _temp_2527 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2528 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0SE",r10
!   _temp_2529 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2529 [i ] into _temp_2530
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
	mov	2129,r13		! source line 2129
	mov	"\0\0SE",r10
!   _temp_2532 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2532 [i ] into _temp_2533
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
!   _temp_2531 = _temp_2533		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2534 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2531  sizeInBytes=4
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
_Label_2522:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2520
! END FOR
_Label_2523:
! ASSIGNMENT STATEMENT...
	mov	2133,r13		! source line 2133
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
	mov	2134,r13		! source line 2134
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
	mov	2135,r13		! source line 2135
	mov	"\0\0SE",r10
!   _temp_2537 = &anOpenFileBecameFree
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
	mov	2136,r13		! source line 2136
	mov	"\0\0AS",r10
!   _temp_2538 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2540 = &_temp_2539
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2540 = _temp_2540 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2542 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3427:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3427
!   _temp_2542 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2544:
!   Data Move: *_temp_2540 = _temp_2542  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3428:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3428
!   _temp_2540 = _temp_2540 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2541 = _temp_2541 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2541) then goto _Label_2544
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2544
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2545 = &_temp_2539
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3429
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3429:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2538 = *_temp_2545  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3430:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3430
! FOR STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2550 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2551 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2550  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2546:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2551 then goto _Label_2549		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2549
_Label_2547:
	mov	2138,r13		! source line 2138
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0AS",r10
!   _temp_2552 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2552 [i ] into _temp_2553
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
!   _temp_2554 = _temp_2553 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2554 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0SE",r10
!   _temp_2556 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2556 [i ] into _temp_2557
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
!   _temp_2555 = _temp_2557		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2558 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2555  sizeInBytes=4
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
_Label_2548:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2546
! END FOR
_Label_2549:
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3431:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3431
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0AS",r10
!   _temp_2560 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2561 = _temp_2560 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2561 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2150,r13		! source line 2150
	mov	"\0\0AS",r10
	mov	2150,r13		! source line 2150
	mov	"\0\0SE",r10
!   _temp_2562 = &_P_Kernel_frameManager
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
	mov	2151,r13		! source line 2151
	mov	"\0\0SE",r10
!   _temp_2563 = &_P_Kernel_diskDriver
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
	mov	2151,r13		! source line 2151
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
	.word	_Label_2564
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2565
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	-100
	.word	28
	.word	_Label_2583
	.word	-104
	.word	4
	.word	_Label_2584
	.word	-108
	.word	4
	.word	_Label_2585
	.word	-392
	.word	284
	.word	_Label_2586
	.word	-396
	.word	4
	.word	_Label_2587
	.word	-400
	.word	4
	.word	_Label_2588
	.word	-404
	.word	4
	.word	_Label_2589
	.word	-408
	.word	4
	.word	_Label_2590
	.word	-412
	.word	4
	.word	_Label_2591
	.word	-416
	.word	4
	.word	_Label_2592
	.word	-420
	.word	4
	.word	_Label_2593
	.word	-424
	.word	4
	.word	_Label_2594
	.word	-428
	.word	4
	.word	_Label_2595
	.word	-432
	.word	4
	.word	_Label_2596
	.word	-436
	.word	4
	.word	_Label_2597
	.word	-440
	.word	4
	.word	_Label_2598
	.word	-444
	.word	4
	.word	_Label_2599
	.word	-448
	.word	4
	.word	_Label_2600
	.word	-452
	.word	4
	.word	_Label_2601
	.word	-456
	.word	4
	.word	_Label_2602
	.word	-460
	.word	4
	.word	_Label_2603
	.word	-500
	.word	40
	.word	_Label_2604
	.word	-504
	.word	4
	.word	_Label_2605
	.word	-508
	.word	4
	.word	_Label_2606
	.word	-912
	.word	404
	.word	_Label_2607
	.word	-916
	.word	4
	.word	_Label_2608
	.word	-920
	.word	4
	.word	_Label_2609
	.word	-924
	.word	4
	.word	_Label_2610
	.word	-928
	.word	4
	.word	_Label_2611
	.word	-932
	.word	4
	.word	_Label_2612
	.word	-936
	.word	4
	.word	_Label_2613
	.word	-940
	.word	4
	.word	_Label_2614
	.word	-944
	.word	4
	.word	0
_Label_2564:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2565:
	.ascii	"Pself\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2614:
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
_Label_3432:
	push	r0
	sub	r1,1,r1
	bne	_Label_3432
	mov	2158,r13		! source line 2158
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0SE",r10
!   _temp_2615 = &fileManagerLock
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
!   _temp_2616 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2616  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2161,r13		! source line 2161
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2621 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2622 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2621  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2617:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2622 then goto _Label_2620		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2620
_Label_2618:
	mov	2162,r13		! source line 2162
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2623 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2623  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2163,r13		! source line 2163
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2164,r13		! source line 2164
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2624 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2624  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2165,r13		! source line 2165
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0SE",r10
!   _temp_2625 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2625 [i ] into _temp_2626
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
_Label_2619:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2617
! END FOR
_Label_2620:
! CALL STATEMENT...
!   _temp_2627 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2627  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2168,r13		! source line 2168
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0SE",r10
!   _temp_2628 = _function_198_printFCB
	set	_function_198_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2629 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2628  sizeInBytes=4
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
	mov	2170,r13		! source line 2170
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2630 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2630  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2171,r13		! source line 2171
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2635 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2636 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2635  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2631:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2636 then goto _Label_2634		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2634
_Label_2632:
	mov	2172,r13		! source line 2172
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2637 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2637  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2173,r13		! source line 2173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2174,r13		! source line 2174
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2638 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2638  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2175,r13		! source line 2175
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2640 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2640 [i ] into _temp_2641
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
!   _temp_2639 = _temp_2641		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2639  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2176,r13		! source line 2176
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2642 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2642  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2177,r13		! source line 2177
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0SE",r10
!   _temp_2643 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2643 [i ] into _temp_2644
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
_Label_2633:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2631
! END FOR
_Label_2634:
! CALL STATEMENT...
!   _temp_2645 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2645  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2180,r13		! source line 2180
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2181,r13		! source line 2181
	mov	"\0\0SE",r10
!   _temp_2646 = _function_197_printOpen
	set	_function_197_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2647 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2646  sizeInBytes=4
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
	mov	2182,r13		! source line 2182
	mov	"\0\0SE",r10
!   _temp_2648 = &fileManagerLock
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
	mov	2182,r13		! source line 2182
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
	.word	_Label_2649
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2650
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2651
	.word	-12
	.word	4
	.word	_Label_2652
	.word	-16
	.word	4
	.word	_Label_2653
	.word	-20
	.word	4
	.word	_Label_2654
	.word	-24
	.word	4
	.word	_Label_2655
	.word	-28
	.word	4
	.word	_Label_2656
	.word	-32
	.word	4
	.word	_Label_2657
	.word	-36
	.word	4
	.word	_Label_2658
	.word	-40
	.word	4
	.word	_Label_2659
	.word	-44
	.word	4
	.word	_Label_2660
	.word	-48
	.word	4
	.word	_Label_2661
	.word	-52
	.word	4
	.word	_Label_2662
	.word	-56
	.word	4
	.word	_Label_2663
	.word	-60
	.word	4
	.word	_Label_2664
	.word	-64
	.word	4
	.word	_Label_2665
	.word	-68
	.word	4
	.word	_Label_2666
	.word	-72
	.word	4
	.word	_Label_2667
	.word	-76
	.word	4
	.word	_Label_2668
	.word	-80
	.word	4
	.word	_Label_2669
	.word	-84
	.word	4
	.word	_Label_2670
	.word	-88
	.word	4
	.word	_Label_2671
	.word	-92
	.word	4
	.word	_Label_2672
	.word	-96
	.word	4
	.word	_Label_2673
	.word	-100
	.word	4
	.word	_Label_2674
	.word	-104
	.word	4
	.word	_Label_2675
	.word	-108
	.word	4
	.word	_Label_2676
	.word	-112
	.word	4
	.word	_Label_2677
	.word	-116
	.word	4
	.word	0
_Label_2649:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2650:
	.ascii	"Pself\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2677:
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
_Label_3433:
	push	r0
	sub	r1,1,r1
	bne	_Label_3433
	mov	2187,r13		! source line 2187
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0AS",r10
	mov	2203,r13		! source line 2203
	mov	"\0\0SE",r10
!   _temp_2678 = &_P_Kernel_fileManager
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
	mov	2204,r13		! source line 2204
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2679
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2679
	jmp	_Label_2680
_Label_2679:
! THEN...
	mov	2205,r13		! source line 2205
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2680:
! SEND STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0SE",r10
!   _temp_2681 = &fileManagerLock
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
	mov	2210,r13		! source line 2210
	mov	"\0\0WH",r10
_Label_2682:
	mov	2210,r13		! source line 2210
	mov	"\0\0SE",r10
!   _temp_2685 = &openFileFreeList
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
!   if result==true then goto _Label_2683 else goto _Label_2684
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2684
	jmp	_Label_2683
_Label_2683:
	mov	2210,r13		! source line 2210
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0SE",r10
!   _temp_2686 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2687 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2686  sizeInBytes=4
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
	jmp	_Label_2682
_Label_2684:
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
	mov	2213,r13		! source line 2213
	mov	"\0\0SE",r10
!   _temp_2688 = &openFileFreeList
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
	mov	2216,r13		! source line 2216
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2689 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2689 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2690 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2690 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2691 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2691 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0SE",r10
!   _temp_2692 = &fileManagerLock
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
	mov	2223,r13		! source line 2223
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
	.word	_Label_2693
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2694
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2695
	.word	12
	.word	4
	.word	_Label_2696
	.word	-12
	.word	4
	.word	_Label_2697
	.word	-16
	.word	4
	.word	_Label_2698
	.word	-20
	.word	4
	.word	_Label_2699
	.word	-24
	.word	4
	.word	_Label_2700
	.word	-28
	.word	4
	.word	_Label_2701
	.word	-32
	.word	4
	.word	_Label_2702
	.word	-36
	.word	4
	.word	_Label_2703
	.word	-40
	.word	4
	.word	_Label_2704
	.word	-44
	.word	4
	.word	_Label_2705
	.word	-48
	.word	4
	.word	_Label_2706
	.word	-52
	.word	4
	.word	_Label_2707
	.word	-56
	.word	4
	.word	0
_Label_2693:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2694:
	.ascii	"Pself\0"
	.align
_Label_2695:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2706:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2707:
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
_Label_3434:
	push	r0
	sub	r1,1,r1
	bne	_Label_3434
	mov	2228,r13		! source line 2228
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2253,r13		! source line 2253
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2256,r13		! source line 2256
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
	mov	2257,r13		! source line 2257
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2709		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2709
!	jmp	_Label_2708
_Label_2708:
! THEN...
	mov	2259,r13		! source line 2259
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2710 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2710  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2259,r13		! source line 2259
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2709:
! ASSIGNMENT STATEMENT...
	mov	2263,r13		! source line 2263
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
	mov	2264,r13		! source line 2264
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2265,r13		! source line 2265
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
	mov	2266,r13		! source line 2266
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0WH",r10
_Label_2711:
!   if numFiles <= 0 then goto _Label_2713		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2713
!	jmp	_Label_2712
_Label_2712:
	mov	2269,r13		! source line 2269
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2714 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2714  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2270,r13		! source line 2270
	mov	"\0\0CA",r10
	call	_function_199_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2715 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2715  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2272,r13		! source line 2272
	mov	"\0\0CA",r10
	call	_function_199_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2273,r13		! source line 2273
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2716 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2716  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2274,r13		! source line 2274
	mov	"\0\0CA",r10
	call	_function_199_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2720 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2720 then goto _Label_2718		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2718
!	jmp	_Label_2719
_Label_2719:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2722
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
!   _temp_2721 = _temp_2722		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2721  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2277,r13		! source line 2277
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2717 else goto _Label_2718
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2718
	jmp	_Label_2717
_Label_2717:
! THEN...
	mov	2278,r13		! source line 2278
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0BR",r10
	jmp	_Label_2713
! END IF...
_Label_2718:
! ASSIGNMENT STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2281,r13		! source line 2281
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2711
_Label_2713:
! IF STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2724		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2724
!	jmp	_Label_2723
_Label_2723:
! THEN...
	mov	2286,r13		! source line 2286
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2724:
! SEND STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0SE",r10
!   _temp_2725 = &fileManagerLock
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
	mov	2291,r13		! source line 2291
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2730 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2731 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2730  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2726:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2731 then goto _Label_2729		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2729
_Label_2727:
	mov	2291,r13		! source line 2291
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0AS",r10
!   _temp_2732 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2732 [i ] into _temp_2733
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
!   fcb = _temp_2733		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2737 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2736 = *_temp_2737  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2736 != start then goto _Label_2735		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2735
!	jmp	_Label_2734
_Label_2734:
! THEN...
	mov	2294,r13		! source line 2294
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2738 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2741 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2740 = *_temp_2741  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2739 = _temp_2740 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2738 = _temp_2739  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0SE",r10
!   _temp_2742 = &fileManagerLock
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
	mov	2296,r13		! source line 2296
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2735:
!   Increment the FOR-LOOP index variable and jump back
_Label_2728:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2726
! END FOR
_Label_2729:
! WHILE STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0WH",r10
_Label_2743:
	mov	2301,r13		! source line 2301
	mov	"\0\0SE",r10
!   _temp_2746 = &fcbFreeList
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
!   if result==true then goto _Label_2744 else goto _Label_2745
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2745
	jmp	_Label_2744
_Label_2744:
	mov	2301,r13		! source line 2301
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0SE",r10
!   _temp_2747 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2748 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2747  sizeInBytes=4
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
	jmp	_Label_2743
_Label_2745:
! ASSIGNMENT STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0AS",r10
	mov	2304,r13		! source line 2304
	mov	"\0\0SE",r10
!   _temp_2749 = &fcbFreeList
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
	mov	2307,r13		! source line 2307
	mov	"\0\0SE",r10
!   _temp_2750 = &fileManagerLock
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
	mov	2310,r13		! source line 2310
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2751 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2751 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2311,r13		! source line 2311
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2752 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2752 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2753 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2753 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2313,r13		! source line 2313
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2758 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2757 = *_temp_2758  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2757 < 0 then goto _Label_2756		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2756
	jmp	_Label_2754
_Label_2756:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2759 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2759 ) then goto _Label_2755		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2755
!	jmp	_Label_2754
_Label_2754:
! THEN...
	mov	2314,r13		! source line 2314
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2760 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2760  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2314,r13		! source line 2314
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2755:
! RETURN STATEMENT...
	mov	2316,r13		! source line 2316
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
	.word	_Label_2761
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2762
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2763
	.word	12
	.word	4
	.word	_Label_2764
	.word	-12
	.word	4
	.word	_Label_2765
	.word	-16
	.word	4
	.word	_Label_2766
	.word	-20
	.word	4
	.word	_Label_2767
	.word	-24
	.word	4
	.word	_Label_2768
	.word	-28
	.word	4
	.word	_Label_2769
	.word	-32
	.word	4
	.word	_Label_2770
	.word	-36
	.word	4
	.word	_Label_2771
	.word	-40
	.word	4
	.word	_Label_2772
	.word	-44
	.word	4
	.word	_Label_2773
	.word	-48
	.word	4
	.word	_Label_2774
	.word	-52
	.word	4
	.word	_Label_2775
	.word	-56
	.word	4
	.word	_Label_2776
	.word	-60
	.word	4
	.word	_Label_2777
	.word	-64
	.word	4
	.word	_Label_2778
	.word	-68
	.word	4
	.word	_Label_2779
	.word	-72
	.word	4
	.word	_Label_2780
	.word	-76
	.word	4
	.word	_Label_2781
	.word	-80
	.word	4
	.word	_Label_2782
	.word	-84
	.word	4
	.word	_Label_2783
	.word	-88
	.word	4
	.word	_Label_2784
	.word	-92
	.word	4
	.word	_Label_2785
	.word	-96
	.word	4
	.word	_Label_2786
	.word	-100
	.word	4
	.word	_Label_2787
	.word	-104
	.word	4
	.word	_Label_2788
	.word	-108
	.word	4
	.word	_Label_2789
	.word	-112
	.word	4
	.word	_Label_2790
	.word	-116
	.word	4
	.word	_Label_2791
	.word	-120
	.word	4
	.word	_Label_2792
	.word	-124
	.word	4
	.word	_Label_2793
	.word	-128
	.word	4
	.word	_Label_2794
	.word	-132
	.word	4
	.word	_Label_2795
	.word	-136
	.word	4
	.word	_Label_2796
	.word	-140
	.word	4
	.word	_Label_2797
	.word	-144
	.word	4
	.word	_Label_2798
	.word	-148
	.word	4
	.word	_Label_2799
	.word	-152
	.word	4
	.word	_Label_2800
	.word	-156
	.word	4
	.word	_Label_2801
	.word	-160
	.word	4
	.word	0
_Label_2761:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2762:
	.ascii	"Pself\0"
	.align
_Label_2763:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2795:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2796:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2797:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2798:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2799:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2800:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2801:
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
_Label_3435:
	push	r0
	sub	r1,1,r1
	bne	_Label_3435
	mov	2329,r13		! source line 2329
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0IF",r10
!   _temp_2804 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2804 then goto _Label_2803		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2803
!	jmp	_Label_2802
_Label_2802:
! THEN...
	mov	2332,r13		! source line 2332
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2332,r13		! source line 2332
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2803:
! SEND STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0SE",r10
!   _temp_2805 = &fileManagerLock
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
	mov	2335,r13		! source line 2335
	mov	"\0\0SE",r10
!   _temp_2806 = &_P_Kernel_fileManager
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
	mov	2336,r13		! source line 2336
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2807 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2807  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2808 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2811 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2810 = *_temp_2811  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2809 = _temp_2810 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2808 = _temp_2809  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2815 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2814 = *_temp_2815  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2814 > 0 then goto _Label_2813		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2813
!	jmp	_Label_2812
_Label_2812:
! THEN...
	mov	2339,r13		! source line 2339
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0SE",r10
!   _temp_2816 = &openFileFreeList
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
	mov	2340,r13		! source line 2340
	mov	"\0\0SE",r10
!   _temp_2817 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2818 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2817  sizeInBytes=4
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
	mov	2341,r13		! source line 2341
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2819 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2822 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2821 = *_temp_2822  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2820 = _temp_2821 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2819 = _temp_2820  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2342,r13		! source line 2342
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2826 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2825 = *_temp_2826  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2825 > 0 then goto _Label_2824		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2824
!	jmp	_Label_2823
_Label_2823:
! THEN...
	mov	2343,r13		! source line 2343
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0SE",r10
!   _temp_2827 = &fcbFreeList
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
	mov	2344,r13		! source line 2344
	mov	"\0\0SE",r10
!   _temp_2828 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2829 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2828  sizeInBytes=4
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
_Label_2824:
! END IF...
_Label_2813:
! SEND STATEMENT...
	mov	2347,r13		! source line 2347
	mov	"\0\0SE",r10
!   _temp_2830 = &fileManagerLock
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
	mov	2347,r13		! source line 2347
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
	.word	_Label_2831
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2832
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2833
	.word	12
	.word	4
	.word	_Label_2834
	.word	-12
	.word	4
	.word	_Label_2835
	.word	-16
	.word	4
	.word	_Label_2836
	.word	-20
	.word	4
	.word	_Label_2837
	.word	-24
	.word	4
	.word	_Label_2838
	.word	-28
	.word	4
	.word	_Label_2839
	.word	-32
	.word	4
	.word	_Label_2840
	.word	-36
	.word	4
	.word	_Label_2841
	.word	-40
	.word	4
	.word	_Label_2842
	.word	-44
	.word	4
	.word	_Label_2843
	.word	-48
	.word	4
	.word	_Label_2844
	.word	-52
	.word	4
	.word	_Label_2845
	.word	-56
	.word	4
	.word	_Label_2846
	.word	-60
	.word	4
	.word	_Label_2847
	.word	-64
	.word	4
	.word	_Label_2848
	.word	-68
	.word	4
	.word	_Label_2849
	.word	-72
	.word	4
	.word	_Label_2850
	.word	-76
	.word	4
	.word	_Label_2851
	.word	-80
	.word	4
	.word	_Label_2852
	.word	-84
	.word	4
	.word	_Label_2853
	.word	-88
	.word	4
	.word	_Label_2854
	.word	-92
	.word	4
	.word	_Label_2855
	.word	-96
	.word	4
	.word	_Label_2856
	.word	-100
	.word	4
	.word	_Label_2857
	.word	-104
	.word	4
	.word	0
_Label_2831:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2832:
	.ascii	"Pself\0"
	.align
_Label_2833:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2857:
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
_Label_3436:
	push	r0
	sub	r1,1,r1
	bne	_Label_3436
	mov	2352,r13		! source line 2352
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2357,r13		! source line 2357
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2861 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2860 = *_temp_2861  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2860) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2862 = _temp_2860 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2862 ) then goto _Label_2859		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2859
!	jmp	_Label_2858
_Label_2858:
! THEN...
	mov	2358,r13		! source line 2358
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2358,r13		! source line 2358
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2867 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2866 = *_temp_2867  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2866) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2868 = _temp_2866 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2865 = *_temp_2868  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2865 >= 0 then goto _Label_2864		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2864
!	jmp	_Label_2863
_Label_2863:
! THEN...
	mov	2359,r13		! source line 2359
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2869 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2869  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2359,r13		! source line 2359
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2864:
! ASSIGNMENT STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2871 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2870 = *_temp_2871  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2870) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2872 = _temp_2870 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2872 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2876 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2875 = *_temp_2876  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2875) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2877 = _temp_2875 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2874 = *_temp_2877  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2880 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2879 = *_temp_2880  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2879) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2881 = _temp_2879 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2878 = *_temp_2881  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2873 = _temp_2874 + _temp_2878		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2884 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2883 = *_temp_2884  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2883) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2885 = _temp_2883 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2882 = *_temp_2885  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2886 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2873  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2882  sizeInBytes=4
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
_Label_2859:
! RETURN STATEMENT...
	mov	2357,r13		! source line 2357
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
	.word	_Label_2887
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2888
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2889
	.word	12
	.word	4
	.word	_Label_2890
	.word	-12
	.word	4
	.word	_Label_2891
	.word	-16
	.word	4
	.word	_Label_2892
	.word	-20
	.word	4
	.word	_Label_2893
	.word	-24
	.word	4
	.word	_Label_2894
	.word	-28
	.word	4
	.word	_Label_2895
	.word	-32
	.word	4
	.word	_Label_2896
	.word	-36
	.word	4
	.word	_Label_2897
	.word	-40
	.word	4
	.word	_Label_2898
	.word	-44
	.word	4
	.word	_Label_2899
	.word	-48
	.word	4
	.word	_Label_2900
	.word	-52
	.word	4
	.word	_Label_2901
	.word	-56
	.word	4
	.word	_Label_2902
	.word	-60
	.word	4
	.word	_Label_2903
	.word	-64
	.word	4
	.word	_Label_2904
	.word	-68
	.word	4
	.word	_Label_2905
	.word	-72
	.word	4
	.word	_Label_2906
	.word	-76
	.word	4
	.word	_Label_2907
	.word	-80
	.word	4
	.word	_Label_2908
	.word	-84
	.word	4
	.word	_Label_2909
	.word	-88
	.word	4
	.word	_Label_2910
	.word	-92
	.word	4
	.word	_Label_2911
	.word	-96
	.word	4
	.word	_Label_2912
	.word	-100
	.word	4
	.word	_Label_2913
	.word	-104
	.word	4
	.word	_Label_2914
	.word	-108
	.word	4
	.word	0
_Label_2887:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2888:
	.ascii	"Pself\0"
	.align
_Label_2889:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2897:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2860\0"
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
_Label_3437:
	push	r0
	sub	r1,1,r1
	bne	_Label_3437
	mov	2371,r13		! source line 2371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0SE",r10
!   _temp_2915 = &fileManagerLock
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
	mov	2387,r13		! source line 2387
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2921		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2921
!   _temp_2920 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2922
_Label_2921:
!   _temp_2920 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2922:
!   if _temp_2920 then goto _Label_2919 else goto _Label_2916
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2916
	jmp	_Label_2919
_Label_2919:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2925 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2924 = *_temp_2925  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2924 == 0 then goto _Label_2926		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2926
!   _temp_2923 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2927
_Label_2926:
!   _temp_2923 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2927:
!   if _temp_2923 then goto _Label_2918 else goto _Label_2916
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2916
	jmp	_Label_2918
_Label_2918:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2930 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2929 = *_temp_2930  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2929) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2931 = _temp_2929 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2928 = *_temp_2931  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2928 >= 0 then goto _Label_2917		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2917
!	jmp	_Label_2916
_Label_2916:
! THEN...
	mov	2388,r13		! source line 2388
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2932 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2932  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2388,r13		! source line 2388
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2917:
! ASSIGNMENT STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2933 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2933  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0WH",r10
_Label_2934:
!   if numBytes <= 0 then goto _Label_2936		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2936
!	jmp	_Label_2935
_Label_2935:
	mov	2391,r13		! source line 2391
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2400,r13		! source line 2400
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
	mov	2401,r13		! source line 2401
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
	mov	2405,r13		! source line 2405
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2940 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2939 = *_temp_2940  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2939 == sector then goto _Label_2938		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2938
!	jmp	_Label_2937
_Label_2937:
! THEN...
	mov	2406,r13		! source line 2406
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2941) then goto _runtimeErrorNullPointer
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
	mov	2408,r13		! source line 2408
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2944 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2943 = *_temp_2944  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2942 = sector + _temp_2943		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2946 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2945 = *_temp_2946  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2947 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2942  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2945  sizeInBytes=4
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
	mov	2411,r13		! source line 2411
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2948 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2948 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2949 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2949 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2938:
! ASSIGNMENT STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2951 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2950 = *_temp_2951  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2950 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0AS",r10
!   _temp_2952 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2952  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2415,r13		! source line 2415
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
	mov	2419,r13		! source line 2419
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2934
_Label_2936:
! SEND STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0SE",r10
!   _temp_2953 = &fileManagerLock
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
	mov	2430,r13		! source line 2430
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
	.word	_Label_2954
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2955
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2956
	.word	12
	.word	4
	.word	_Label_2957
	.word	16
	.word	4
	.word	_Label_2958
	.word	20
	.word	4
	.word	_Label_2959
	.word	24
	.word	4
	.word	_Label_2960
	.word	-16
	.word	4
	.word	_Label_2961
	.word	-20
	.word	4
	.word	_Label_2962
	.word	-24
	.word	4
	.word	_Label_2963
	.word	-28
	.word	4
	.word	_Label_2964
	.word	-32
	.word	4
	.word	_Label_2965
	.word	-36
	.word	4
	.word	_Label_2966
	.word	-40
	.word	4
	.word	_Label_2967
	.word	-44
	.word	4
	.word	_Label_2968
	.word	-48
	.word	4
	.word	_Label_2969
	.word	-52
	.word	4
	.word	_Label_2970
	.word	-56
	.word	4
	.word	_Label_2971
	.word	-60
	.word	4
	.word	_Label_2972
	.word	-64
	.word	4
	.word	_Label_2973
	.word	-68
	.word	4
	.word	_Label_2974
	.word	-72
	.word	4
	.word	_Label_2975
	.word	-76
	.word	4
	.word	_Label_2976
	.word	-80
	.word	4
	.word	_Label_2977
	.word	-84
	.word	4
	.word	_Label_2978
	.word	-88
	.word	4
	.word	_Label_2979
	.word	-92
	.word	4
	.word	_Label_2980
	.word	-96
	.word	4
	.word	_Label_2981
	.word	-100
	.word	4
	.word	_Label_2982
	.word	-104
	.word	4
	.word	_Label_2983
	.word	-9
	.word	1
	.word	_Label_2984
	.word	-10
	.word	1
	.word	_Label_2985
	.word	-108
	.word	4
	.word	_Label_2986
	.word	-112
	.word	4
	.word	_Label_2987
	.word	-116
	.word	4
	.word	_Label_2988
	.word	-120
	.word	4
	.word	_Label_2989
	.word	-124
	.word	4
	.word	_Label_2990
	.word	-128
	.word	4
	.word	0
_Label_2954:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2955:
	.ascii	"Pself\0"
	.align
_Label_2956:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2957:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2958:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2959:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2983:
	.byte	'C'
	.ascii	"_temp_2923\0"
	.align
_Label_2984:
	.byte	'C'
	.ascii	"_temp_2920\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2986:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2987:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2988:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2989:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2990:
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
_Label_3438:
	push	r0
	sub	r1,1,r1
	bne	_Label_3438
	mov	2435,r13		! source line 2435
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0SE",r10
!   _temp_2991 = &fileManagerLock
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
	mov	2452,r13		! source line 2452
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2997		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2997
!   _temp_2996 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2998
_Label_2997:
!   _temp_2996 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2998:
!   if _temp_2996 then goto _Label_2995 else goto _Label_2992
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2992
	jmp	_Label_2995
_Label_2995:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3001 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3000 = *_temp_3001  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3000 == 0 then goto _Label_3002		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3002
!   _temp_2999 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3003
_Label_3002:
!   _temp_2999 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3003:
!   if _temp_2999 then goto _Label_2994 else goto _Label_2992
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2992
	jmp	_Label_2994
_Label_2994:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3006 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3005 = *_temp_3006  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3005) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3007 = _temp_3005 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3004 = *_temp_3007  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3004 >= 0 then goto _Label_2993		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2993
!	jmp	_Label_2992
_Label_2992:
! THEN...
	mov	2453,r13		! source line 2453
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3008 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3008  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2453,r13		! source line 2453
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2993:
! ASSIGNMENT STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3009 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3009  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0WH",r10
_Label_3010:
!   if numBytes <= 0 then goto _Label_3012		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3012
!	jmp	_Label_3011
_Label_3011:
	mov	2456,r13		! source line 2456
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2465,r13		! source line 2465
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
	mov	2466,r13		! source line 2466
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
	mov	2470,r13		! source line 2470
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3016 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3015 = *_temp_3016  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3015 == sector then goto _Label_3014		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3014
!	jmp	_Label_3013
_Label_3013:
! THEN...
	mov	2472,r13		! source line 2472
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3017) then goto _runtimeErrorNullPointer
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
_Label_3014:
! ASSIGNMENT STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3019 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3018 = *_temp_3019  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3018 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0AS",r10
!   _temp_3020 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3020  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2475,r13		! source line 2475
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3024 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3023 = *_temp_3024  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3023 != sector then goto _Label_3022		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3022
!	jmp	_Label_3021
_Label_3021:
	jmp	_Label_3025
_Label_3022:
! ELSE...
	mov	2478,r13		! source line 2478
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3028
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3028
	jmp	_Label_3027
_Label_3028:
!   if bytesToMove != 8192 then goto _Label_3027		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3027
!	jmp	_Label_3026
_Label_3026:
	jmp	_Label_3029
_Label_3027:
! ELSE...
	mov	2482,r13		! source line 2482
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3032 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3031 = *_temp_3032  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3030 = sector + _temp_3031		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3034 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3033 = *_temp_3034  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3035 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3030  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3033  sizeInBytes=4
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
_Label_3029:
! END IF...
_Label_3025:
! ASSIGNMENT STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3036 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3036 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2487,r13		! source line 2487
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3037 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3037 = 1  (sizeInBytes=1)
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
	mov	2491,r13		! source line 2491
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2492,r13		! source line 2492
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2493,r13		! source line 2493
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3010
_Label_3012:
! SEND STATEMENT...
	mov	2501,r13		! source line 2501
	mov	"\0\0SE",r10
!   _temp_3038 = &fileManagerLock
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
	mov	2503,r13		! source line 2503
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
	.word	_Label_3039
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3040
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3041
	.word	12
	.word	4
	.word	_Label_3042
	.word	16
	.word	4
	.word	_Label_3043
	.word	20
	.word	4
	.word	_Label_3044
	.word	24
	.word	4
	.word	_Label_3045
	.word	-16
	.word	4
	.word	_Label_3046
	.word	-20
	.word	4
	.word	_Label_3047
	.word	-24
	.word	4
	.word	_Label_3048
	.word	-28
	.word	4
	.word	_Label_3049
	.word	-32
	.word	4
	.word	_Label_3050
	.word	-36
	.word	4
	.word	_Label_3051
	.word	-40
	.word	4
	.word	_Label_3052
	.word	-44
	.word	4
	.word	_Label_3053
	.word	-48
	.word	4
	.word	_Label_3054
	.word	-52
	.word	4
	.word	_Label_3055
	.word	-56
	.word	4
	.word	_Label_3056
	.word	-60
	.word	4
	.word	_Label_3057
	.word	-64
	.word	4
	.word	_Label_3058
	.word	-68
	.word	4
	.word	_Label_3059
	.word	-72
	.word	4
	.word	_Label_3060
	.word	-76
	.word	4
	.word	_Label_3061
	.word	-80
	.word	4
	.word	_Label_3062
	.word	-84
	.word	4
	.word	_Label_3063
	.word	-88
	.word	4
	.word	_Label_3064
	.word	-92
	.word	4
	.word	_Label_3065
	.word	-96
	.word	4
	.word	_Label_3066
	.word	-100
	.word	4
	.word	_Label_3067
	.word	-104
	.word	4
	.word	_Label_3068
	.word	-108
	.word	4
	.word	_Label_3069
	.word	-112
	.word	4
	.word	_Label_3070
	.word	-9
	.word	1
	.word	_Label_3071
	.word	-10
	.word	1
	.word	_Label_3072
	.word	-116
	.word	4
	.word	_Label_3073
	.word	-120
	.word	4
	.word	_Label_3074
	.word	-124
	.word	4
	.word	_Label_3075
	.word	-128
	.word	4
	.word	_Label_3076
	.word	-132
	.word	4
	.word	_Label_3077
	.word	-136
	.word	4
	.word	0
_Label_3039:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3040:
	.ascii	"Pself\0"
	.align
_Label_3041:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3042:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3043:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3044:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_3036\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_3035\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_3034\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_3033\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_3032\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3058:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3059:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3060:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3062:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3069:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3070:
	.byte	'C'
	.ascii	"_temp_2999\0"
	.align
_Label_3071:
	.byte	'C'
	.ascii	"_temp_2996\0"
	.align
_Label_3072:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_3073:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3074:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3075:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3076:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3077:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3078
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3078:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3079
	.word	_sourceFileName
	.word	356		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3079:
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
_Label_3439:
	push	r0
	sub	r1,1,r1
	bne	_Label_3439
	mov	2539,r13		! source line 2539
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2540,r13		! source line 2540
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2541,r13		! source line 2541
	mov	"\0\0AS",r10
	mov	2541,r13		! source line 2541
	mov	"\0\0SE",r10
!   _temp_3080 = &_P_Kernel_frameManager
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
	mov	2542,r13		! source line 2542
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2543,r13		! source line 2543
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2544,r13		! source line 2544
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
	.word	_Label_3081
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3082
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3083
	.word	-12
	.word	4
	.word	0
_Label_3081:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3082:
	.ascii	"Pself\0"
	.align
_Label_3083:
	.byte	'?'
	.ascii	"_temp_3080\0"
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
_Label_3440:
	push	r0
	sub	r1,1,r1
	bne	_Label_3440
	mov	2549,r13		! source line 2549
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3084 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3084  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2550,r13		! source line 2550
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2551,r13		! source line 2551
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3085 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3085  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2552,r13		! source line 2552
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2553,r13		! source line 2553
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3086 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3086  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2554,r13		! source line 2554
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2555,r13		! source line 2555
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3087 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3087  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2556,r13		! source line 2556
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2557,r13		! source line 2557
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3088 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3088  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2558,r13		! source line 2558
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2559,r13		! source line 2559
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3089 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3089  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2560,r13		! source line 2560
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2561,r13		! source line 2561
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2562,r13		! source line 2562
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2562,r13		! source line 2562
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
	.word	_Label_3090
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3091
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	0
_Label_3090:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3091:
	.ascii	"Pself\0"
	.align
_Label_3092:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3093:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3098
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3098:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3099
	.word	_sourceFileName
	.word	373		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3099:
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
_Label_3441:
	push	r0
	sub	r1,1,r1
	bne	_Label_3441
	mov	2573,r13		! source line 2573
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3100 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3100  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2574,r13		! source line 2574
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2575,r13		! source line 2575
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3101 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3101  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2576,r13		! source line 2576
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3103		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3103
!	jmp	_Label_3102
_Label_3102:
! THEN...
	mov	2578,r13		! source line 2578
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2578,r13		! source line 2578
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
	jmp	_Label_3104
_Label_3103:
! ELSE...
	mov	2580,r13		! source line 2580
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3105 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3105  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2580,r13		! source line 2580
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3104:
! RETURN STATEMENT...
	mov	2577,r13		! source line 2577
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
	.word	_Label_3106
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3107
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3108
	.word	-12
	.word	4
	.word	_Label_3109
	.word	-16
	.word	4
	.word	_Label_3110
	.word	-20
	.word	4
	.word	0
_Label_3106:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3107:
	.ascii	"Pself\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3105\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3100\0"
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
_Label_3442:
	push	r0
	sub	r1,1,r1
	bne	_Label_3442
	mov	2586,r13		! source line 2586
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0SE",r10
!   _temp_3111 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3112 = _temp_3111 + 4
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
	mov	2597,r13		! source line 2597
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2598,r13		! source line 2598
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
	mov	2599,r13		! source line 2599
	mov	"\0\0SE",r10
!   _temp_3113 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3114 = _temp_3113 + 4
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
	mov	2600,r13		! source line 2600
	mov	"\0\0RE",r10
	mov	2600,r13		! source line 2600
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3117 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3116  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3115  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3115  (sizeInBytes=1)
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
	.word	_Label_3118
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3119
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3120
	.word	12
	.word	4
	.word	_Label_3121
	.word	16
	.word	4
	.word	_Label_3122
	.word	-16
	.word	4
	.word	_Label_3123
	.word	-20
	.word	4
	.word	_Label_3124
	.word	-9
	.word	1
	.word	_Label_3125
	.word	-24
	.word	4
	.word	_Label_3126
	.word	-28
	.word	4
	.word	_Label_3127
	.word	-32
	.word	4
	.word	_Label_3128
	.word	-36
	.word	4
	.word	_Label_3129
	.word	-40
	.word	4
	.word	0
_Label_3118:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3119:
	.ascii	"Pself\0"
	.align
_Label_3120:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3121:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3123:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3124:
	.byte	'C'
	.ascii	"_temp_3115\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3114\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3111\0"
	.align
_Label_3129:
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
_Label_3443:
	push	r0
	sub	r1,1,r1
	bne	_Label_3443
	mov	2605,r13		! source line 2605
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0IF",r10
	mov	2610,r13		! source line 2610
	mov	"\0\0SE",r10
!   _temp_3133 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3134) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3133  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3132  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3132 then goto _Label_3131 else goto _Label_3130
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3130
	jmp	_Label_3131
_Label_3130:
! THEN...
	mov	2611,r13		! source line 2611
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3135 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3135  sizeInBytes=4
	load	[r14+-16],r1
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
_Label_3131:
! RETURN STATEMENT...
	mov	2613,r13		! source line 2613
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
	.word	_Label_3136
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3137
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3138
	.word	-16
	.word	4
	.word	_Label_3139
	.word	-20
	.word	4
	.word	_Label_3140
	.word	-24
	.word	4
	.word	_Label_3141
	.word	-9
	.word	1
	.word	_Label_3142
	.word	-28
	.word	4
	.word	0
_Label_3136:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3137:
	.ascii	"Pself\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3141:
	.byte	'C'
	.ascii	"_temp_3132\0"
	.align
_Label_3142:
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
_Label_3444:
	push	r0
	sub	r1,1,r1
	bne	_Label_3444
	mov	2618,r13		! source line 2618
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3146 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3145 = *_temp_3146  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3145) then goto _Label_3144
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3144
!	jmp	_Label_3143
_Label_3143:
! THEN...
	mov	2645,r13		! source line 2645
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3147 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3147  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2645,r13		! source line 2645
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3144:
! IF STATEMENT...
	mov	2649,r13		! source line 2649
	mov	"\0\0IF",r10
	mov	2649,r13		! source line 2649
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3151) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3150  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3150 == 1112300152 then goto _Label_3149		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3149
!	jmp	_Label_3148
_Label_3148:
! THEN...
	mov	2650,r13		! source line 2650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3152 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3152  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2650,r13		! source line 2650
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3149:
! ASSIGNMENT STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0AS",r10
	mov	2655,r13		! source line 2655
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3153) then goto _runtimeErrorNullPointer
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
	mov	2656,r13		! source line 2656
	mov	"\0\0AS",r10
	mov	2656,r13		! source line 2656
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3154) then goto _runtimeErrorNullPointer
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
	mov	2657,r13		! source line 2657
	mov	"\0\0AS",r10
	mov	2657,r13		! source line 2657
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3155) then goto _runtimeErrorNullPointer
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
	mov	2658,r13		! source line 2658
	mov	"\0\0AS",r10
	mov	2658,r13		! source line 2658
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3156) then goto _runtimeErrorNullPointer
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
	mov	2659,r13		! source line 2659
	mov	"\0\0AS",r10
	mov	2659,r13		! source line 2659
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3157) then goto _runtimeErrorNullPointer
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
	mov	2660,r13		! source line 2660
	mov	"\0\0AS",r10
	mov	2660,r13		! source line 2660
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3158) then goto _runtimeErrorNullPointer
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
	mov	2663,r13		! source line 2663
	mov	"\0\0IF",r10
!   _temp_3161 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3161) then goto _Label_3160
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3160
!	jmp	_Label_3159
_Label_3159:
! THEN...
	mov	2664,r13		! source line 2664
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3162 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3162  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2664,r13		! source line 2664
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3160:
! ASSIGNMENT STATEMENT...
	mov	2667,r13		! source line 2667
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
	mov	2671,r13		! source line 2671
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3164
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3164
!	jmp	_Label_3163
_Label_3163:
! THEN...
	mov	2672,r13		! source line 2672
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3165 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3165  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2672,r13		! source line 2672
	mov	"\0\0CE",r10
	call	print
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
_Label_3164:
! IF STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0IF",r10
!   _temp_3168 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3168) then goto _Label_3167
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3167
!	jmp	_Label_3166
_Label_3166:
! THEN...
	mov	2678,r13		! source line 2678
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3169 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3169  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2678,r13		! source line 2678
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2679,r13		! source line 2679
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3167:
! IF STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0IF",r10
!   _temp_3172 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3172 then goto _Label_3171		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3171
!	jmp	_Label_3170
_Label_3170:
! THEN...
	mov	2682,r13		! source line 2682
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3173 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3173  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2682,r13		! source line 2682
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3171:
! ASSIGNMENT STATEMENT...
	mov	2685,r13		! source line 2685
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
	mov	2688,r13		! source line 2688
	mov	"\0\0IF",r10
!   _temp_3176 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3176) then goto _Label_3175
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3175
!	jmp	_Label_3174
_Label_3174:
! THEN...
	mov	2689,r13		! source line 2689
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3177 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3177  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2689,r13		! source line 2689
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2690,r13		! source line 2690
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3175:
! IF STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0IF",r10
!   _temp_3180 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3180 then goto _Label_3179		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3179
!	jmp	_Label_3178
_Label_3178:
! THEN...
	mov	2693,r13		! source line 2693
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3181 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3181  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2693,r13		! source line 2693
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3179:
! ASSIGNMENT STATEMENT...
	mov	2696,r13		! source line 2696
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
	mov	2699,r13		! source line 2699
	mov	"\0\0AS",r10
!   _temp_3184 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3183 = _temp_3184 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3182 = _temp_3183 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3182 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3186		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3186
!	jmp	_Label_3185
_Label_3185:
! THEN...
	mov	2715,r13		! source line 2715
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3187 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3187  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2715,r13		! source line 2715
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3188 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3188  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2716,r13		! source line 2716
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3189 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3189  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2717,r13		! source line 2717
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2718,r13		! source line 2718
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3186:
! SEND STATEMENT...
	mov	2720,r13		! source line 2720
	mov	"\0\0SE",r10
!   _temp_3190 = &_P_Kernel_frameManager
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
	mov	2726,r13		! source line 2726
	mov	"\0\0IF",r10
	mov	2726,r13		! source line 2726
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3194) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3193  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3193 == 707406378 then goto _Label_3192		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3192
!	jmp	_Label_3191
_Label_3191:
! THEN...
	mov	2727,r13		! source line 2727
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3195 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3195  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2727,r13		! source line 2727
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0SE",r10
!   _temp_3196 = &_P_Kernel_frameManager
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
	mov	2729,r13		! source line 2729
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3192:
! ASSIGNMENT STATEMENT...
	mov	2733,r13		! source line 2733
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
	mov	2734,r13		! source line 2734
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3201 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3202 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3201  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3197:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3202 then goto _Label_3200		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3200
_Label_3198:
	mov	2734,r13		! source line 2734
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2735,r13		! source line 2735
	mov	"\0\0AS",r10
	mov	2735,r13		! source line 2735
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
	mov	2738,r13		! source line 2738
	mov	"\0\0IF",r10
	mov	2738,r13		! source line 2738
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3206) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3205  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3205 then goto _Label_3204 else goto _Label_3203
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3203
	jmp	_Label_3204
_Label_3203:
! THEN...
	mov	2739,r13		! source line 2739
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3207 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3207  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2739,r13		! source line 2739
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0SE",r10
!   _temp_3208 = &_P_Kernel_frameManager
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
	mov	2741,r13		! source line 2741
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3204:
! SEND STATEMENT...
	mov	2743,r13		! source line 2743
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
	mov	2744,r13		! source line 2744
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3199:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3197
! END FOR
_Label_3200:
! IF STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0IF",r10
	mov	2748,r13		! source line 2748
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3212) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3211  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3211 == 707406378 then goto _Label_3210		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3210
!	jmp	_Label_3209
_Label_3209:
! THEN...
	mov	2749,r13		! source line 2749
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3213 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3213  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2749,r13		! source line 2749
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0SE",r10
!   _temp_3214 = &_P_Kernel_frameManager
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
	mov	2751,r13		! source line 2751
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3210:
! FOR STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3219 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3220 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3219  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3215:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3220 then goto _Label_3218		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3218
_Label_3216:
	mov	2755,r13		! source line 2755
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0AS",r10
	mov	2756,r13		! source line 2756
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
	mov	2759,r13		! source line 2759
	mov	"\0\0IF",r10
	mov	2759,r13		! source line 2759
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3224) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3223  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3223 then goto _Label_3222 else goto _Label_3221
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3221
	jmp	_Label_3222
_Label_3221:
! THEN...
	mov	2760,r13		! source line 2760
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3225 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3225  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2760,r13		! source line 2760
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2761,r13		! source line 2761
	mov	"\0\0SE",r10
!   _temp_3226 = &_P_Kernel_frameManager
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
	mov	2762,r13		! source line 2762
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3222:
! ASSIGNMENT STATEMENT...
	mov	2764,r13		! source line 2764
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3217:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3215
! END FOR
_Label_3218:
! IF STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0IF",r10
	mov	2768,r13		! source line 2768
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3230) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3229  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3229 == 707406378 then goto _Label_3228		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3228
!	jmp	_Label_3227
_Label_3227:
! THEN...
	mov	2769,r13		! source line 2769
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3231 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3231  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2769,r13		! source line 2769
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0SE",r10
!   _temp_3232 = &_P_Kernel_frameManager
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
	mov	2771,r13		! source line 2771
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3228:
! ASSIGNMENT STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0AS",r10
	mov	2775,r13		! source line 2775
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
	mov	2779,r13		! source line 2779
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2782,r13		! source line 2782
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
	.word	_Label_3233
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3234
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3235
	.word	12
	.word	4
	.word	_Label_3236
	.word	-16
	.word	4
	.word	_Label_3237
	.word	-20
	.word	4
	.word	_Label_3238
	.word	-24
	.word	4
	.word	_Label_3239
	.word	-28
	.word	4
	.word	_Label_3240
	.word	-32
	.word	4
	.word	_Label_3241
	.word	-36
	.word	4
	.word	_Label_3242
	.word	-40
	.word	4
	.word	_Label_3243
	.word	-9
	.word	1
	.word	_Label_3244
	.word	-44
	.word	4
	.word	_Label_3245
	.word	-48
	.word	4
	.word	_Label_3246
	.word	-52
	.word	4
	.word	_Label_3247
	.word	-56
	.word	4
	.word	_Label_3248
	.word	-60
	.word	4
	.word	_Label_3249
	.word	-64
	.word	4
	.word	_Label_3250
	.word	-68
	.word	4
	.word	_Label_3251
	.word	-72
	.word	4
	.word	_Label_3252
	.word	-76
	.word	4
	.word	_Label_3253
	.word	-10
	.word	1
	.word	_Label_3254
	.word	-80
	.word	4
	.word	_Label_3255
	.word	-84
	.word	4
	.word	_Label_3256
	.word	-88
	.word	4
	.word	_Label_3257
	.word	-92
	.word	4
	.word	_Label_3258
	.word	-96
	.word	4
	.word	_Label_3259
	.word	-100
	.word	4
	.word	_Label_3260
	.word	-104
	.word	4
	.word	_Label_3261
	.word	-108
	.word	4
	.word	_Label_3262
	.word	-112
	.word	4
	.word	_Label_3263
	.word	-116
	.word	4
	.word	_Label_3264
	.word	-120
	.word	4
	.word	_Label_3265
	.word	-124
	.word	4
	.word	_Label_3266
	.word	-128
	.word	4
	.word	_Label_3267
	.word	-132
	.word	4
	.word	_Label_3268
	.word	-136
	.word	4
	.word	_Label_3269
	.word	-140
	.word	4
	.word	_Label_3270
	.word	-144
	.word	4
	.word	_Label_3271
	.word	-148
	.word	4
	.word	_Label_3272
	.word	-152
	.word	4
	.word	_Label_3273
	.word	-156
	.word	4
	.word	_Label_3274
	.word	-160
	.word	4
	.word	_Label_3275
	.word	-164
	.word	4
	.word	_Label_3276
	.word	-168
	.word	4
	.word	_Label_3277
	.word	-172
	.word	4
	.word	_Label_3278
	.word	-176
	.word	4
	.word	_Label_3279
	.word	-180
	.word	4
	.word	_Label_3280
	.word	-184
	.word	4
	.word	_Label_3281
	.word	-188
	.word	4
	.word	_Label_3282
	.word	-192
	.word	4
	.word	_Label_3283
	.word	-196
	.word	4
	.word	_Label_3284
	.word	-200
	.word	4
	.word	_Label_3285
	.word	-204
	.word	4
	.word	_Label_3286
	.word	-208
	.word	4
	.word	_Label_3287
	.word	-212
	.word	4
	.word	_Label_3288
	.word	-216
	.word	4
	.word	_Label_3289
	.word	-220
	.word	4
	.word	_Label_3290
	.word	-224
	.word	4
	.word	_Label_3291
	.word	-228
	.word	4
	.word	_Label_3292
	.word	-232
	.word	4
	.word	_Label_3293
	.word	-236
	.word	4
	.word	_Label_3294
	.word	-240
	.word	4
	.word	_Label_3295
	.word	-244
	.word	4
	.word	_Label_3296
	.word	-248
	.word	4
	.word	_Label_3297
	.word	-252
	.word	4
	.word	_Label_3298
	.word	-256
	.word	4
	.word	_Label_3299
	.word	-260
	.word	4
	.word	_Label_3300
	.word	-264
	.word	4
	.word	_Label_3301
	.word	-268
	.word	4
	.word	0
_Label_3233:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3234:
	.ascii	"Pself\0"
	.align
_Label_3235:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3236:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3237:
	.byte	'?'
	.ascii	"_temp_3231\0"
	.align
_Label_3238:
	.byte	'?'
	.ascii	"_temp_3230\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3243:
	.byte	'C'
	.ascii	"_temp_3223\0"
	.align
_Label_3244:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3245:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3246:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3247:
	.byte	'?'
	.ascii	"_temp_3213\0"
	.align
_Label_3248:
	.byte	'?'
	.ascii	"_temp_3212\0"
	.align
_Label_3249:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3250:
	.byte	'?'
	.ascii	"_temp_3208\0"
	.align
_Label_3251:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3252:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3253:
	.byte	'C'
	.ascii	"_temp_3205\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3181\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3180\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3272:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3273:
	.byte	'?'
	.ascii	"_temp_3169\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3168\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3162\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3157\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3156\0"
	.align
_Label_3281:
	.byte	'?'
	.ascii	"_temp_3155\0"
	.align
_Label_3282:
	.byte	'?'
	.ascii	"_temp_3154\0"
	.align
_Label_3283:
	.byte	'?'
	.ascii	"_temp_3153\0"
	.align
_Label_3284:
	.byte	'?'
	.ascii	"_temp_3152\0"
	.align
_Label_3285:
	.byte	'?'
	.ascii	"_temp_3151\0"
	.align
_Label_3286:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3287:
	.byte	'?'
	.ascii	"_temp_3147\0"
	.align
_Label_3288:
	.byte	'?'
	.ascii	"_temp_3146\0"
	.align
_Label_3289:
	.byte	'?'
	.ascii	"_temp_3145\0"
	.align
_Label_3290:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3291:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3292:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3293:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3294:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3295:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3296:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3297:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3298:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3299:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3300:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3301:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
