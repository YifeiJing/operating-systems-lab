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
_StringConst_196:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_195:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_194:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_193:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_192:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_191:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_190:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_189:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_188:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_187:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_186:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_185:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_184:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_183:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_182:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_181:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_180:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_179:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_178:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_177:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_176:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_175:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_174:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_173:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_172:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_171:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_170:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_169:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_168:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_167:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_166:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_165:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_164:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_163:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_162:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_161:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_160:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_159:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_158:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_157:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_156:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_155:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_154:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_153:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_152:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_151:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_150:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_149:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_148:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_147:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_146:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_145:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_144:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_143:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
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
	.word	9			! length
	.ascii	"         "
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
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_133:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_132:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_131:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_130:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_129:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_128:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_127:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_126:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_125:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_124:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_123:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_122:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_121:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_120:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_119:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_118:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_117:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
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
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_113:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_112:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_111:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_110:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_109:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_108:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_107:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_106:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_105:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_104:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_103:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_102:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_101:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_100:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_99:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_98:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_97:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_96:
	.word	10			! length
	.ascii	"Threadpool"
	.align
_StringConst_95:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_94:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_93:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_92:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_91:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_90:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_89:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_88:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_87:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_86:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_85:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_84:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_83:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_82:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_81:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_80:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_79:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_78:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_77:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_76:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_75:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_74:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_73:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_72:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_71:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_70:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_69:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_68:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_67:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_66:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_65:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_64:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_63:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_62:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_61:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_60:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_59:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_58:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_57:
	.word	33			! length
	.ascii	"Failed to open file: TestProgram1"
	.align
_StringConst_56:
	.word	12			! length
	.ascii	"TestProgram3"
	.align
_StringConst_55:
	.word	9			! length
	.ascii	"myProgram"
	.align
_StringConst_54:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_53:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_52:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_51:
	.word	24			! length
	.ascii	"Invoke System call Close"
	.align
_StringConst_50:
	.word	15			! length
	.ascii	"newCurrentPos: "
	.align
_StringConst_49:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_48:
	.word	23			! length
	.ascii	"Invoke System call Seek"
	.align
_StringConst_47:
	.word	8			! length
	.ascii	"buffer: "
	.align
_StringConst_46:
	.word	24			! length
	.ascii	"Invoke System call Write"
	.align
_StringConst_45:
	.word	8			! length
	.ascii	"buffer: "
	.align
_StringConst_44:
	.word	23			! length
	.ascii	"Invoke System call Read"
	.align
_StringConst_43:
	.word	10			! length
	.ascii	"filename: "
	.align
_StringConst_42:
	.word	23			! length
	.ascii	"Invoke System call Open"
	.align
_StringConst_41:
	.word	10			! length
	.ascii	"filename: "
	.align
_StringConst_40:
	.word	25			! length
	.ascii	"Invoke System call Create"
	.align
_StringConst_39:
	.word	21			! length
	.ascii	"Failed to open file: "
	.align
_StringConst_38:
	.word	39			! length
	.ascii	"Failed to get string from virtual space"
	.align
_StringConst_37:
	.word	26			! length
	.ascii	"Invoke System call Execute"
	.align
_StringConst_36:
	.word	24			! length
	.ascii	"Invoke System call Yield"
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
	be	_Label_206
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
_Label_206:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_207
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_207
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_207
_Label_207:
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
_Label_3305:
	push	r0
	sub	r1,1,r1
	bne	_Label_3305
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_208 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_208  sizeInBytes=4
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
_Label_3306:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3306
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_212 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_213 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_212  sizeInBytes=4
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
!   _temp_214 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_215 = _temp_214 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_215 = 3  (sizeInBytes=4)
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
_Label_3307:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3307
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_217 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_218 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_217  sizeInBytes=4
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
!   _temp_219 = _function_205_IdleFunction
	set	_function_205_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_220 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_219  sizeInBytes=4
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
	.word	_Label_221
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_222
	.word	-12
	.word	4
	.word	_Label_223
	.word	-16
	.word	4
	.word	_Label_224
	.word	-20
	.word	4
	.word	_Label_225
	.word	-24
	.word	4
	.word	_Label_226
	.word	-28
	.word	4
	.word	_Label_227
	.word	-32
	.word	4
	.word	_Label_228
	.word	-36
	.word	4
	.word	_Label_229
	.word	-40
	.word	4
	.word	_Label_230
	.word	-44
	.word	4
	.word	_Label_231
	.word	-48
	.word	4
	.word	_Label_232
	.word	-52
	.word	4
	.word	_Label_233
	.word	-56
	.word	4
	.word	_Label_234
	.word	-60
	.word	4
	.word	0
_Label_221:
	.ascii	"InitializeScheduler\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_205_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_205_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3308:
	push	r0
	sub	r1,1,r1
	bne	_Label_3308
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_235:
!	jmp	_Label_236
_Label_236:
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
!   _temp_240 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_238 else goto _Label_239
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_239
	jmp	_Label_238
_Label_238:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_241
_Label_239:
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
_Label_241:
! END WHILE...
	jmp	_Label_235
_Label_237:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_205_IdleFunction:
	.word	_sourceFileName
	.word	_Label_242
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_243
	.word	8
	.word	4
	.word	_Label_244
	.word	-12
	.word	4
	.word	_Label_245
	.word	-16
	.word	4
	.word	0
_Label_242:
	.ascii	"IdleFunction\0"
	.align
_Label_243:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_245:
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
_Label_3309:
	push	r0
	sub	r1,1,r1
	bne	_Label_3309
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
!   _temp_248 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_248 ) then goto _Label_247		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_247
!	jmp	_Label_246
_Label_246:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_250 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_250 [0 ] into _temp_251
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
!   _temp_249 = _temp_251		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_249  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_247:
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
!   _temp_252 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_252 = 3  (sizeInBytes=4)
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
_Label_253:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_257 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_256  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_256 then goto _Label_255 else goto _Label_254
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_254
	jmp	_Label_255
_Label_254:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_258 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_259 = &_P_Kernel_threadManager
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
	jmp	_Label_253
_Label_255:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_262 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_262 ) then goto _Label_261		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_261
!	jmp	_Label_260
_Label_260:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_264 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_264 [0 ] into _temp_265
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
!   _temp_263 = _temp_265		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_263  sizeInBytes=4
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
!   _temp_267 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_266 = *_temp_267  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_266) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_268 = _temp_266 + 32
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
_Label_261:
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
	.word	_Label_269
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_270
	.word	8
	.word	4
	.word	_Label_271
	.word	-16
	.word	4
	.word	_Label_272
	.word	-20
	.word	4
	.word	_Label_273
	.word	-24
	.word	4
	.word	_Label_274
	.word	-28
	.word	4
	.word	_Label_275
	.word	-32
	.word	4
	.word	_Label_276
	.word	-36
	.word	4
	.word	_Label_277
	.word	-40
	.word	4
	.word	_Label_278
	.word	-44
	.word	4
	.word	_Label_279
	.word	-48
	.word	4
	.word	_Label_280
	.word	-52
	.word	4
	.word	_Label_281
	.word	-9
	.word	1
	.word	_Label_282
	.word	-56
	.word	4
	.word	_Label_283
	.word	-60
	.word	4
	.word	_Label_284
	.word	-64
	.word	4
	.word	_Label_285
	.word	-68
	.word	4
	.word	_Label_286
	.word	-72
	.word	4
	.word	_Label_287
	.word	-76
	.word	4
	.word	_Label_288
	.word	-80
	.word	4
	.word	0
_Label_269:
	.ascii	"Run\0"
	.align
_Label_270:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_281:
	.byte	'C'
	.ascii	"_temp_256\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_287:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_288:
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
_Label_3310:
	push	r0
	sub	r1,1,r1
	bne	_Label_3310
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
!   _temp_289 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_289  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_290 = _function_204_ThreadPrintShort
	set	_function_204_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_291 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_290  sizeInBytes=4
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
	.word	_Label_292
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_293
	.word	-12
	.word	4
	.word	_Label_294
	.word	-16
	.word	4
	.word	_Label_295
	.word	-20
	.word	4
	.word	_Label_296
	.word	-24
	.word	4
	.word	0
_Label_292:
	.ascii	"PrintReadyList\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_296:
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
_Label_3311:
	push	r0
	sub	r1,1,r1
	bne	_Label_3311
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
!   _temp_297 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_297  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_299 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_298 = *_temp_299  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_298  sizeInBytes=4
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
!   _temp_300 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
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
	.word	_Label_301
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_302
	.word	-12
	.word	4
	.word	_Label_303
	.word	-16
	.word	4
	.word	_Label_304
	.word	-20
	.word	4
	.word	_Label_305
	.word	-24
	.word	4
	.word	_Label_306
	.word	-28
	.word	4
	.word	_Label_307
	.word	-32
	.word	4
	.word	0
_Label_301:
	.ascii	"ThreadStartMain\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_306:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_307:
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
_Label_3312:
	push	r0
	sub	r1,1,r1
	bne	_Label_3312
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
!   _temp_308 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_309 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
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
	.word	_Label_310
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_311
	.word	-12
	.word	4
	.word	_Label_312
	.word	-16
	.word	4
	.word	_Label_313
	.word	-20
	.word	4
	.word	0
_Label_310:
	.ascii	"ThreadFinish\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_313:
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
_Label_3313:
	push	r0
	sub	r1,1,r1
	bne	_Label_3313
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
!   _temp_314 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_314  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_316		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_316
!	jmp	_Label_315
_Label_315:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_317 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
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
!   _temp_319 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_318 = *_temp_319  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_318  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_316:
! CALL STATEMENT...
!   _temp_320 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
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
!   _temp_321 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_322 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
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
	.word	_Label_323
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_324
	.word	8
	.word	4
	.word	_Label_325
	.word	-12
	.word	4
	.word	_Label_326
	.word	-16
	.word	4
	.word	_Label_327
	.word	-20
	.word	4
	.word	_Label_328
	.word	-24
	.word	4
	.word	_Label_329
	.word	-28
	.word	4
	.word	_Label_330
	.word	-32
	.word	4
	.word	_Label_331
	.word	-36
	.word	4
	.word	_Label_332
	.word	-40
	.word	4
	.word	0
_Label_323:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_324:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_332:
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
_Label_3314:
	push	r0
	sub	r1,1,r1
	bne	_Label_3314
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
!   if newStatus != 1 then goto _Label_334		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_334
!	jmp	_Label_333
_Label_333:
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
	jmp	_Label_335
_Label_334:
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
_Label_335:
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
	.word	_Label_336
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_337
	.word	8
	.word	4
	.word	_Label_338
	.word	-12
	.word	4
	.word	0
_Label_336:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_337:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_338:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_204_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_204_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3315:
	push	r0
	sub	r1,1,r1
	bne	_Label_3315
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
!   if t == 0 then goto _Label_342		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_342
!   _temp_341 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_343
_Label_342:
!   _temp_341 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_343:
!   if _temp_341 then goto _Label_340 else goto _Label_339
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_339
	jmp	_Label_340
_Label_339:
! THEN...
	mov	650,r13		! source line 650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_344 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
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
_Label_340:
! CALL STATEMENT...
!   _temp_345 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
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
!   _temp_347 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_346 = *_temp_347  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_348 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
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
!   _temp_357 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_356 = *_temp_357  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_351
	cmp	r1,2
	be	_Label_352
	cmp	r1,3
	be	_Label_353
	cmp	r1,4
	be	_Label_354
	cmp	r1,5
	be	_Label_355
	jmp	_Label_349
! CASE 1...
_Label_351:
! CALL STATEMENT...
!   _temp_358 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_350
! CASE 2...
_Label_352:
! CALL STATEMENT...
!   _temp_359 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_350
! CASE 3...
_Label_353:
! CALL STATEMENT...
!   _temp_360 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_350
! CASE 4...
_Label_354:
! CALL STATEMENT...
!   _temp_361 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0BR",r10
	jmp	_Label_350
! CASE 5...
_Label_355:
! CALL STATEMENT...
!   _temp_362 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0BR",r10
	jmp	_Label_350
! DEFAULT CASE...
_Label_349:
! CALL STATEMENT...
!   _temp_363 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
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
_Label_350:
! CALL STATEMENT...
!   _temp_364 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_365 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_366 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
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
_RoutineDescriptor__function_204_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_367
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_368
	.word	8
	.word	4
	.word	_Label_369
	.word	-16
	.word	4
	.word	_Label_370
	.word	-20
	.word	4
	.word	_Label_371
	.word	-24
	.word	4
	.word	_Label_372
	.word	-28
	.word	4
	.word	_Label_373
	.word	-32
	.word	4
	.word	_Label_374
	.word	-36
	.word	4
	.word	_Label_375
	.word	-40
	.word	4
	.word	_Label_376
	.word	-44
	.word	4
	.word	_Label_377
	.word	-48
	.word	4
	.word	_Label_378
	.word	-52
	.word	4
	.word	_Label_379
	.word	-56
	.word	4
	.word	_Label_380
	.word	-60
	.word	4
	.word	_Label_381
	.word	-64
	.word	4
	.word	_Label_382
	.word	-68
	.word	4
	.word	_Label_383
	.word	-72
	.word	4
	.word	_Label_384
	.word	-76
	.word	4
	.word	_Label_385
	.word	-9
	.word	1
	.word	_Label_386
	.word	-80
	.word	4
	.word	0
_Label_367:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_368:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_385:
	.byte	'C'
	.ascii	"_temp_341\0"
	.align
_Label_386:
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
_Label_3316:
	push	r0
	sub	r1,1,r1
	bne	_Label_3316
	mov	992,r13		! source line 992
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! pcb
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_387 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: pcb = *_temp_387  (sizeInBytes=4)
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
!   _temp_389 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_388 = *_temp_389  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_388) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_390 = _temp_388 + 28
	load	[r14+-56],r1
	add	r1,28,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_390 = exitStatus  (sizeInBytes=4)
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
!   _temp_392 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_391 = *_temp_392  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_391) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_393 = _temp_391 + 24
	load	[r14+-44],r1
	add	r1,24,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_393 = 0  (sizeInBytes=4)
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
!   _temp_394 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_394 = 0  (sizeInBytes=4)
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
!   _temp_395 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_395 = 0  (sizeInBytes=1)
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
!   _temp_397 = pcb + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_396 = _temp_397		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_398 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_396  sizeInBytes=4
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
!   _temp_399 = &_P_Kernel_processManager
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
	.word	_Label_400
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_401
	.word	8
	.word	4
	.word	_Label_402
	.word	-12
	.word	4
	.word	_Label_403
	.word	-16
	.word	4
	.word	_Label_404
	.word	-20
	.word	4
	.word	_Label_405
	.word	-24
	.word	4
	.word	_Label_406
	.word	-28
	.word	4
	.word	_Label_407
	.word	-32
	.word	4
	.word	_Label_408
	.word	-36
	.word	4
	.word	_Label_409
	.word	-40
	.word	4
	.word	_Label_410
	.word	-44
	.word	4
	.word	_Label_411
	.word	-48
	.word	4
	.word	_Label_412
	.word	-52
	.word	4
	.word	_Label_413
	.word	-56
	.word	4
	.word	_Label_414
	.word	-60
	.word	4
	.word	_Label_415
	.word	-64
	.word	4
	.word	_Label_416
	.word	-68
	.word	4
	.word	0
_Label_400:
	.ascii	"ProcessFinish\0"
	.align
_Label_401:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_415:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_416:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_203_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_203_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3317:
	push	r0
	sub	r1,1,r1
	bne	_Label_3317
	mov	1011,r13		! source line 1011
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_417 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_417  sizeInBytes=4
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
_RoutineDescriptor__function_203_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_418
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_419
	.word	8
	.word	4
	.word	_Label_420
	.word	-12
	.word	4
	.word	0
_Label_418:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_419:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_417\0"
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
_Label_3318:
	push	r0
	sub	r1,1,r1
	bne	_Label_3318
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
	.word	_Label_421
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_421:
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
_Label_3319:
	push	r0
	sub	r1,1,r1
	bne	_Label_3319
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
!   _temp_425 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_426 = _temp_425 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_424 = *_temp_426  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_424 == 0 then goto _Label_423		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_423
!	jmp	_Label_422
_Label_422:
! THEN...
	mov	1522,r13		! source line 1522
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1522,r13		! source line 1522
	mov	"\0\0SE",r10
!   _temp_428 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_429 = _temp_428 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_427 = *_temp_429  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_427) then goto _runtimeErrorNullPointer
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
_Label_423:
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
	.word	_Label_430
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_431
	.word	-12
	.word	4
	.word	_Label_432
	.word	-16
	.word	4
	.word	_Label_433
	.word	-20
	.word	4
	.word	_Label_434
	.word	-24
	.word	4
	.word	_Label_435
	.word	-28
	.word	4
	.word	_Label_436
	.word	-32
	.word	4
	.word	0
_Label_430:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_424\0"
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
	.word	_Label_437
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_437:
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
_Label_3320:
	push	r0
	sub	r1,1,r1
	bne	_Label_3320
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
!   _temp_438 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1549,r13		! source line 1549
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
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
	.word	_Label_439
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_440
	.word	-12
	.word	4
	.word	0
_Label_439:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_438\0"
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
_Label_3321:
	push	r0
	sub	r1,1,r1
	bne	_Label_3321
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
!   _temp_441 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1561,r13		! source line 1561
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
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
	.word	_Label_442
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_443
	.word	-12
	.word	4
	.word	0
_Label_442:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_441\0"
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
_Label_3322:
	push	r0
	sub	r1,1,r1
	bne	_Label_3322
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
!   _temp_444 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1573,r13		! source line 1573
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
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
	.word	_Label_445
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_446
	.word	-12
	.word	4
	.word	0
_Label_445:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_444\0"
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
_Label_3323:
	push	r0
	sub	r1,1,r1
	bne	_Label_3323
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
!   _temp_447 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_447  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1585,r13		! source line 1585
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
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
	.word	_Label_448
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_449
	.word	-12
	.word	4
	.word	0
_Label_448:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_447\0"
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
_Label_3324:
	push	r0
	sub	r1,1,r1
	bne	_Label_3324
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
!   _temp_450 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_450  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1597,r13		! source line 1597
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
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
	.word	_Label_451
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_452
	.word	-12
	.word	4
	.word	0
_Label_451:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_450\0"
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
_Label_3325:
	push	r0
	sub	r1,1,r1
	bne	_Label_3325
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
!   _temp_453 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_453  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1609,r13		! source line 1609
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
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
	.word	_Label_454
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_455
	.word	-12
	.word	4
	.word	0
_Label_454:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_453\0"
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
_Label_3326:
	push	r0
	sub	r1,1,r1
	bne	_Label_3326
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
!   _temp_456 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_456  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1621,r13		! source line 1621
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
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
	.word	_Label_457
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_458
	.word	-12
	.word	4
	.word	0
_Label_457:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_202_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3327:
	push	r0
	sub	r1,1,r1
	bne	_Label_3327
	mov	1626,r13		! source line 1626
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_459 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_459  sizeInBytes=4
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
!   _temp_460 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_460  sizeInBytes=4
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
!   _temp_464 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_463 = *_temp_464  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_463 == 0 then goto _Label_462		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_462
!	jmp	_Label_461
_Label_461:
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
!   _temp_466 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_465 = *_temp_466  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_465) then goto _runtimeErrorNullPointer
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
	jmp	_Label_467
_Label_462:
! ELSE...
	mov	1639,r13		! source line 1639
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_468 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_468  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1639,r13		! source line 1639
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_467:
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
_RoutineDescriptor__function_202_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_469
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_470
	.word	8
	.word	4
	.word	_Label_471
	.word	-12
	.word	4
	.word	_Label_472
	.word	-16
	.word	4
	.word	_Label_473
	.word	-20
	.word	4
	.word	_Label_474
	.word	-24
	.word	4
	.word	_Label_475
	.word	-28
	.word	4
	.word	_Label_476
	.word	-32
	.word	4
	.word	_Label_477
	.word	-36
	.word	4
	.word	0
_Label_469:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_470:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_459\0"
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
_Label_3328:
	push	r0
	sub	r1,1,r1
	bne	_Label_3328
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
	be	_Label_3329
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_478
_Label_3329:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_478
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_478
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_492,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_492:
	jmp	_Label_484	! 1:	
	jmp	_Label_491	! 2:	
	jmp	_Label_481	! 3:	
	jmp	_Label_480	! 4:	
	jmp	_Label_483	! 5:	
	jmp	_Label_482	! 6:	
	jmp	_Label_485	! 7:	
	jmp	_Label_486	! 8:	
	jmp	_Label_487	! 9:	
	jmp	_Label_488	! 10:	
	jmp	_Label_489	! 11:	
	jmp	_Label_490	! 12:	
! CASE 4...
_Label_480:
! RETURN STATEMENT...
	mov	1675,r13		! source line 1675
	mov	"\0\0RE",r10
!   Call the function
	mov	1675,r13		! source line 1675
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_493  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_493  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_481:
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
_Label_482:
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
!   Retrieve Result: targetName=_temp_494  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_494  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_483:
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
!   Retrieve Result: targetName=_temp_495  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_495  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_484:
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
_Label_485:
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
!   Retrieve Result: targetName=_temp_496  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_496  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_486:
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
!   Retrieve Result: targetName=_temp_497  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_497  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_487:
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
!   Retrieve Result: targetName=_temp_498  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_498  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_488:
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
!   Retrieve Result: targetName=_temp_499  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_499  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_489:
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
!   Retrieve Result: targetName=_temp_500  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_500  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_490:
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
_Label_491:
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
_Label_478:
! CALL STATEMENT...
!   _temp_501 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_501  sizeInBytes=4
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
!   _temp_502 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_502  sizeInBytes=4
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
_Label_479:
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
	.word	_Label_503
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_504
	.word	8
	.word	4
	.word	_Label_505
	.word	12
	.word	4
	.word	_Label_506
	.word	16
	.word	4
	.word	_Label_507
	.word	20
	.word	4
	.word	_Label_508
	.word	24
	.word	4
	.word	_Label_509
	.word	-12
	.word	4
	.word	_Label_510
	.word	-16
	.word	4
	.word	_Label_511
	.word	-20
	.word	4
	.word	_Label_512
	.word	-24
	.word	4
	.word	_Label_513
	.word	-28
	.word	4
	.word	_Label_514
	.word	-32
	.word	4
	.word	_Label_515
	.word	-36
	.word	4
	.word	_Label_516
	.word	-40
	.word	4
	.word	_Label_517
	.word	-44
	.word	4
	.word	_Label_518
	.word	-48
	.word	4
	.word	0
_Label_503:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_504:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_505:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_506:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_507:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_508:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_493\0"
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
_Label_3330:
	push	r0
	sub	r1,1,r1
	bne	_Label_3330
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
	.word	_Label_519
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_520
	.word	8
	.word	4
	.word	0
_Label_519:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_520:
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
_Label_3331:
	push	r0
	sub	r1,1,r1
	bne	_Label_3331
	mov	1719,r13		! source line 1719
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_521 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_521  sizeInBytes=4
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
	.word	_Label_522
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_523
	.word	-12
	.word	4
	.word	0
_Label_522:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_521\0"
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
_Label_3332:
	push	r0
	sub	r1,1,r1
	bne	_Label_3332
	mov	1725,r13		! source line 1725
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_524 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_524  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1726,r13		! source line 1726
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1726,r13		! source line 1726
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
	.word	_Label_525
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_526
	.word	-12
	.word	4
	.word	0
_Label_525:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_524\0"
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
_Label_3333:
	push	r0
	sub	r1,1,r1
	bne	_Label_3333
	mov	1731,r13		! source line 1731
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1738,r13		! source line 1738
	mov	"\0\0AS",r10
	mov	1738,r13		! source line 1738
	mov	"\0\0SE",r10
!   _temp_527 = &_P_Kernel_processManager
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
!   _temp_528 = &_P_Kernel_threadManager
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
!   _temp_529 = childPCB + 24
	load	[r14+-172],r1
	add	r1,24,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_529 = childThread  (sizeInBytes=4)
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
!   _temp_530 = childPCB + 16
	load	[r14+-172],r1
	add	r1,16,r1
	store	r1,[r14+-156]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_533 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-144]
!   Data Move: _temp_532 = *_temp_533  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_532) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_534 = _temp_532 + 12
	load	[r14+-148],r1
	add	r1,12,r1
	store	r1,[r14+-140]
!   Data Move: _temp_531 = *_temp_534  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   Data Move: *_temp_530 = _temp_531  (sizeInBytes=4)
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
!   _temp_535 = childThread + 68
	load	[r14+-176],r1
	add	r1,68,r1
	store	r1,[r14+-136]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_537 = childThread + 88
	load	[r14+-176],r1
	add	r1,88,r1
	store	r1,[r14+-128]
!   Move address of _temp_537 [999 ] into _temp_538
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
!   _temp_536 = _temp_538		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-132]
!   Data Move: *_temp_535 = _temp_536  (sizeInBytes=4)
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
!   _temp_539 = childThread + 4160
	load	[r14+-176],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: *_temp_539 = childPCB  (sizeInBytes=4)
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
!   _temp_540 = childThread + 76
	load	[r14+-176],r1
	add	r1,76,r1
	store	r1,[r14+-116]
!   Data Move: *_temp_540 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-116],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_542 = childThread + 4096
	load	[r14+-176],r1
	add	r1,4096,r1
	store	r1,[r14+-108]
!   Move address of _temp_542 [0 ] into _temp_543
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
!   _temp_541 = _temp_543		(4 bytes)
	load	[r14+-104],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_541  sizeInBytes=4
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
!   _temp_545 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_544 = *_temp_545  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_544) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_546 = _temp_544 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   _temp_547 = _temp_546 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Data Move: tmp = *_temp_547  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-180]
! IF STATEMENT...
	mov	1748,r13		! source line 1748
	mov	"\0\0IF",r10
!   if tmp <= 0 then goto _Label_549		(int)
	load	[r14+-180],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_549
!	jmp	_Label_548
_Label_548:
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
!   _temp_551 = childPCB + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_550 = _temp_551		(4 bytes)
	load	[r14+-80],r1
	store	r1,[r14+-84]
!   _temp_552 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_550  sizeInBytes=4
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
!   _temp_557 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_558 = tmp - 1		(int)
	load	[r14+-180],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_557  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-184]
_Label_553:
!   Perform the FOR-LOOP termination test
!   if i > _temp_558 then goto _Label_556		
	load	[r14+-184],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_556
_Label_554:
	mov	1750,r13		! source line 1750
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_560 = childPCB + 32
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
!   Retrieve Result: targetName=_temp_559  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
	mov	1752,r13		! source line 1752
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_563 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_562 = *_temp_563  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_562) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_564 = _temp_562 + 32
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
!   Retrieve Result: targetName=_temp_561  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_559  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_561  sizeInBytes=4
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
!   _temp_568 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_567 = *_temp_568  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_567) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_569 = _temp_567 + 32
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
!   if result==true then goto _Label_565 else goto _Label_566
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_566
	jmp	_Label_565
_Label_565:
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
!   _temp_570 = childPCB + 32
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
	jmp	_Label_571
_Label_566:
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
!   _temp_572 = childPCB + 32
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
_Label_571:
!   Increment the FOR-LOOP index variable and jump back
_Label_555:
!   i = i + 1
	load	[r14+-184],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
	jmp	_Label_553
! END FOR
_Label_556:
! END IF...
_Label_549:
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
!   _temp_573 = _function_201_ResumeChildAfterFork
	set	_function_201_ResumeChildAfterFork,r1
	store	r1,[r14+-20]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_573  sizeInBytes=4
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
!   _temp_575 = childPCB + 12
	load	[r14+-172],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_574 = *_temp_575  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_574  (sizeInBytes=4)
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
	.word	_Label_576
	.word	0		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_577
	.word	-12
	.word	4
	.word	_Label_578
	.word	-16
	.word	4
	.word	_Label_579
	.word	-20
	.word	4
	.word	_Label_580
	.word	-24
	.word	4
	.word	_Label_581
	.word	-28
	.word	4
	.word	_Label_582
	.word	-32
	.word	4
	.word	_Label_583
	.word	-36
	.word	4
	.word	_Label_584
	.word	-40
	.word	4
	.word	_Label_585
	.word	-44
	.word	4
	.word	_Label_586
	.word	-48
	.word	4
	.word	_Label_587
	.word	-52
	.word	4
	.word	_Label_588
	.word	-56
	.word	4
	.word	_Label_589
	.word	-60
	.word	4
	.word	_Label_590
	.word	-64
	.word	4
	.word	_Label_591
	.word	-68
	.word	4
	.word	_Label_592
	.word	-72
	.word	4
	.word	_Label_593
	.word	-76
	.word	4
	.word	_Label_594
	.word	-80
	.word	4
	.word	_Label_595
	.word	-84
	.word	4
	.word	_Label_596
	.word	-88
	.word	4
	.word	_Label_597
	.word	-92
	.word	4
	.word	_Label_598
	.word	-96
	.word	4
	.word	_Label_599
	.word	-100
	.word	4
	.word	_Label_600
	.word	-104
	.word	4
	.word	_Label_601
	.word	-108
	.word	4
	.word	_Label_602
	.word	-112
	.word	4
	.word	_Label_603
	.word	-116
	.word	4
	.word	_Label_604
	.word	-120
	.word	4
	.word	_Label_605
	.word	-124
	.word	4
	.word	_Label_606
	.word	-128
	.word	4
	.word	_Label_607
	.word	-132
	.word	4
	.word	_Label_608
	.word	-136
	.word	4
	.word	_Label_609
	.word	-140
	.word	4
	.word	_Label_610
	.word	-144
	.word	4
	.word	_Label_611
	.word	-148
	.word	4
	.word	_Label_612
	.word	-152
	.word	4
	.word	_Label_613
	.word	-156
	.word	4
	.word	_Label_614
	.word	-160
	.word	4
	.word	_Label_615
	.word	-164
	.word	4
	.word	_Label_616
	.word	-168
	.word	4
	.word	_Label_617
	.word	-172
	.word	4
	.word	_Label_618
	.word	-176
	.word	4
	.word	_Label_619
	.word	-180
	.word	4
	.word	_Label_620
	.word	-184
	.word	4
	.word	_Label_621
	.word	-188
	.word	4
	.word	_Label_622
	.word	-192
	.word	4
	.word	0
_Label_576:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_617:
	.byte	'P'
	.ascii	"childPCB\0"
	.align
_Label_618:
	.byte	'P'
	.ascii	"childThread\0"
	.align
_Label_619:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_620:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_621:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_622:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_201_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_201_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_3334:
	push	r0
	sub	r1,1,r1
	bne	_Label_3334
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
!   _temp_624 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_623 = *_temp_624  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_623) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_625 = _temp_623 + 32
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
!   _temp_627 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_627 [0 ] into _temp_628
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
!   _temp_626 = _temp_628		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_626  sizeInBytes=4
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
!   _temp_629 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_629 = 1  (sizeInBytes=1)
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
!   _temp_630 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_630 [14 ] into _temp_631
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
!   Data Move: initUserStackTop = *_temp_631  (sizeInBytes=4)
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
!   _temp_632 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_632 [999 ] into _temp_633
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
!   initSystemStackTop = _temp_633		(4 bytes)
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
_RoutineDescriptor__function_201_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_634
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_635
	.word	8
	.word	4
	.word	_Label_636
	.word	-12
	.word	4
	.word	_Label_637
	.word	-16
	.word	4
	.word	_Label_638
	.word	-20
	.word	4
	.word	_Label_639
	.word	-24
	.word	4
	.word	_Label_640
	.word	-28
	.word	4
	.word	_Label_641
	.word	-32
	.word	4
	.word	_Label_642
	.word	-36
	.word	4
	.word	_Label_643
	.word	-40
	.word	4
	.word	_Label_644
	.word	-44
	.word	4
	.word	_Label_645
	.word	-48
	.word	4
	.word	_Label_646
	.word	-52
	.word	4
	.word	_Label_647
	.word	-56
	.word	4
	.word	_Label_648
	.word	-60
	.word	4
	.word	_Label_649
	.word	-64
	.word	4
	.word	0
_Label_634:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_635:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_647:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_648:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_649:
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
_Label_3335:
	push	r0
	sub	r1,1,r1
	bne	_Label_3335
	mov	1782,r13		! source line 1782
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_654 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_655 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_654  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_650:
!   Perform the FOR-LOOP termination test
!   if i > _temp_655 then goto _Label_653		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_653
_Label_651:
	mov	1786,r13		! source line 1786
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0IF",r10
!   _temp_661 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_662 = _temp_661 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_662 [i ] into _temp_663
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
!   _temp_664 = _temp_663 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_660 = *_temp_664  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_660 != processID then goto _Label_657		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_657
!	jmp	_Label_659
_Label_659:
!   _temp_666 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_667 = _temp_666 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_667 [i ] into _temp_668
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
!   _temp_669 = _temp_668 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_665 = *_temp_669  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_672 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_671 = *_temp_672  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_671) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_673 = _temp_671 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_670 = *_temp_673  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_665 != _temp_670 then goto _Label_657		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_657
!	jmp	_Label_658
_Label_658:
!   _temp_675 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_676 = _temp_675 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_676 [i ] into _temp_677
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
!   _temp_678 = _temp_677 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_674 = *_temp_678  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_674 == 3 then goto _Label_657		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_657
!	jmp	_Label_656
_Label_656:
! THEN...
	mov	1788,r13		! source line 1788
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0AS",r10
	mov	1788,r13		! source line 1788
	mov	"\0\0SE",r10
!   _temp_680 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_681 = _temp_680 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_681 [i ] into _temp_682
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
!   _temp_679 = _temp_682		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_683 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_679  sizeInBytes=4
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
_Label_657:
!   Increment the FOR-LOOP index variable and jump back
_Label_652:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_650
! END FOR
_Label_653:
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
	.word	_Label_684
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_685
	.word	8
	.word	4
	.word	_Label_686
	.word	-12
	.word	4
	.word	_Label_687
	.word	-16
	.word	4
	.word	_Label_688
	.word	-20
	.word	4
	.word	_Label_689
	.word	-24
	.word	4
	.word	_Label_690
	.word	-28
	.word	4
	.word	_Label_691
	.word	-32
	.word	4
	.word	_Label_692
	.word	-36
	.word	4
	.word	_Label_693
	.word	-40
	.word	4
	.word	_Label_694
	.word	-44
	.word	4
	.word	_Label_695
	.word	-48
	.word	4
	.word	_Label_696
	.word	-52
	.word	4
	.word	_Label_697
	.word	-56
	.word	4
	.word	_Label_698
	.word	-60
	.word	4
	.word	_Label_699
	.word	-64
	.word	4
	.word	_Label_700
	.word	-68
	.word	4
	.word	_Label_701
	.word	-72
	.word	4
	.word	_Label_702
	.word	-76
	.word	4
	.word	_Label_703
	.word	-80
	.word	4
	.word	_Label_704
	.word	-84
	.word	4
	.word	_Label_705
	.word	-88
	.word	4
	.word	_Label_706
	.word	-92
	.word	4
	.word	_Label_707
	.word	-96
	.word	4
	.word	_Label_708
	.word	-100
	.word	4
	.word	_Label_709
	.word	-104
	.word	4
	.word	_Label_710
	.word	-108
	.word	4
	.word	_Label_711
	.word	-112
	.word	4
	.word	_Label_712
	.word	-116
	.word	4
	.word	_Label_713
	.word	-120
	.word	4
	.word	0
_Label_684:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_685:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_712:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_713:
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
_Label_3336:
	push	r0
	sub	r1,1,r1
	bne	_Label_3336
	mov	1798,r13		! source line 1798
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-264,r4
	mov	23,r3
_Label_3337:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3337
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
!   _temp_715 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_715  sizeInBytes=4
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
!   _temp_716 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-120]
!   _temp_717 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_719 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_718 = *_temp_719  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_718) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_720 = _temp_718 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_716  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_717  sizeInBytes=4
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
!   if tmp >= 0 then goto _Label_722		(int)
	load	[r14+-268],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_722
!	jmp	_Label_721
_Label_721:
! THEN...
	mov	1811,r13		! source line 1811
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_723 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_723  sizeInBytes=4
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
_Label_722:
! ASSIGNMENT STATEMENT...
	mov	1814,r13		! source line 1814
	mov	"\0\0AS",r10
	mov	1814,r13		! source line 1814
	mov	"\0\0SE",r10
!   _temp_724 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-96]
!   _temp_725 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_724  sizeInBytes=4
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
!   if fp == 0 then goto _Label_727		(int)
	load	[r14+-132],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_727
!	jmp	_Label_726
_Label_726:
! THEN...
	mov	1816,r13		! source line 1816
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0SE",r10
!   _temp_728 = &newAddrSpace
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
!   _temp_729 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-84]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_729  sizeInBytes=4
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
!   _temp_730 = &_P_Kernel_fileManager
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
!   _temp_733 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_732 = *_temp_733  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_732) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_734 = _temp_732 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   _temp_731 = _temp_734		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-76]
!   _temp_735 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_731  sizeInBytes=4
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
!   _temp_737 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_736 = *_temp_737  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_736) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_738 = _temp_736 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_738 = newAddrSpace  (sizeInBytes=92)
	add	r14,-264,r5
	load	[r14+-48],r4
	mov	23,r3
_Label_3338:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3338
! ASSIGNMENT STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0AS",r10
!   _temp_740 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-40]
!   _temp_741 = _temp_740 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_739 = *_temp_741  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initUserStackTop = _temp_739 * 8192		(int)
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
!   _temp_742 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_742 [999 ] into _temp_743
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
!   initSystemStackTop = _temp_743		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-144]
! SEND STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0SE",r10
!   _temp_744 = &newAddrSpace
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
!   _temp_745 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_745 = 1  (sizeInBytes=1)
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
	jmp	_Label_746
_Label_727:
! ELSE...
	mov	1827,r13		! source line 1827
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_747 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_747  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1827,r13		! source line 1827
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_748 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_748  sizeInBytes=4
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
_Label_746:
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
	.word	_Label_749
	.word	4		! total size of parameters
	.word	276		! frame size = 276
	.word	_Label_750
	.word	8
	.word	4
	.word	_Label_751
	.word	-12
	.word	4
	.word	_Label_752
	.word	-16
	.word	4
	.word	_Label_753
	.word	-20
	.word	4
	.word	_Label_754
	.word	-24
	.word	4
	.word	_Label_755
	.word	-28
	.word	4
	.word	_Label_756
	.word	-32
	.word	4
	.word	_Label_757
	.word	-36
	.word	4
	.word	_Label_758
	.word	-40
	.word	4
	.word	_Label_759
	.word	-44
	.word	4
	.word	_Label_760
	.word	-48
	.word	4
	.word	_Label_761
	.word	-52
	.word	4
	.word	_Label_762
	.word	-56
	.word	4
	.word	_Label_763
	.word	-60
	.word	4
	.word	_Label_764
	.word	-64
	.word	4
	.word	_Label_765
	.word	-68
	.word	4
	.word	_Label_766
	.word	-72
	.word	4
	.word	_Label_767
	.word	-76
	.word	4
	.word	_Label_768
	.word	-80
	.word	4
	.word	_Label_769
	.word	-84
	.word	4
	.word	_Label_770
	.word	-88
	.word	4
	.word	_Label_771
	.word	-92
	.word	4
	.word	_Label_772
	.word	-96
	.word	4
	.word	_Label_773
	.word	-100
	.word	4
	.word	_Label_774
	.word	-104
	.word	4
	.word	_Label_775
	.word	-108
	.word	4
	.word	_Label_776
	.word	-112
	.word	4
	.word	_Label_777
	.word	-116
	.word	4
	.word	_Label_778
	.word	-120
	.word	4
	.word	_Label_779
	.word	-124
	.word	4
	.word	_Label_780
	.word	-128
	.word	4
	.word	_Label_781
	.word	-132
	.word	4
	.word	_Label_782
	.word	-136
	.word	4
	.word	_Label_783
	.word	-140
	.word	4
	.word	_Label_784
	.word	-144
	.word	4
	.word	_Label_785
	.word	-148
	.word	4
	.word	_Label_786
	.word	-172
	.word	24
	.word	_Label_787
	.word	-264
	.word	92
	.word	_Label_788
	.word	-268
	.word	4
	.word	0
_Label_749:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_750:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_781:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_782:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_783:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_784:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_785:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_786:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_787:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_788:
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
_Label_3339:
	push	r0
	sub	r1,1,r1
	bne	_Label_3339
	mov	1837,r13		! source line 1837
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1840,r13		! source line 1840
	mov	"\0\0AS",r10
	mov	1840,r13		! source line 1840
	mov	"\0\0SE",r10
!   _temp_789 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_790 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_792 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_791 = *_temp_792  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_791) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_793 = _temp_791 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_789  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_790  sizeInBytes=4
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
!   _temp_794 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_794  sizeInBytes=4
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
!   _temp_795 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_795  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1843,r13		! source line 1843
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_796 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_796  sizeInBytes=4
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
	.word	_Label_797
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_798
	.word	8
	.word	4
	.word	_Label_799
	.word	-12
	.word	4
	.word	_Label_800
	.word	-16
	.word	4
	.word	_Label_801
	.word	-20
	.word	4
	.word	_Label_802
	.word	-24
	.word	4
	.word	_Label_803
	.word	-28
	.word	4
	.word	_Label_804
	.word	-32
	.word	4
	.word	_Label_805
	.word	-36
	.word	4
	.word	_Label_806
	.word	-40
	.word	4
	.word	_Label_807
	.word	-64
	.word	24
	.word	_Label_808
	.word	-68
	.word	4
	.word	0
_Label_797:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_798:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_807:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_808:
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
_Label_3340:
	push	r0
	sub	r1,1,r1
	bne	_Label_3340
	mov	1851,r13		! source line 1851
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1855,r13		! source line 1855
	mov	"\0\0AS",r10
	mov	1855,r13		! source line 1855
	mov	"\0\0SE",r10
!   _temp_809 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_810 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_812 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_811 = *_temp_812  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_811) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_813 = _temp_811 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_809  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_810  sizeInBytes=4
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
!   _temp_814 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_814  sizeInBytes=4
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
!   _temp_815 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_815  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1858,r13		! source line 1858
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_816 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_816  sizeInBytes=4
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
	.word	_Label_817
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_818
	.word	8
	.word	4
	.word	_Label_819
	.word	-12
	.word	4
	.word	_Label_820
	.word	-16
	.word	4
	.word	_Label_821
	.word	-20
	.word	4
	.word	_Label_822
	.word	-24
	.word	4
	.word	_Label_823
	.word	-28
	.word	4
	.word	_Label_824
	.word	-32
	.word	4
	.word	_Label_825
	.word	-36
	.word	4
	.word	_Label_826
	.word	-40
	.word	4
	.word	_Label_827
	.word	-64
	.word	24
	.word	_Label_828
	.word	-68
	.word	4
	.word	0
_Label_817:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_818:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_827:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_828:
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
_Label_3341:
	push	r0
	sub	r1,1,r1
	bne	_Label_3341
	mov	1866,r13		! source line 1866
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1870,r13		! source line 1870
	mov	"\0\0AS",r10
	mov	1870,r13		! source line 1870
	mov	"\0\0SE",r10
!   _temp_829 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_830 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_832 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_831 = *_temp_832  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_831) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_833 = _temp_831 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_829  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_830  sizeInBytes=4
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
!   _temp_834 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_834  sizeInBytes=4
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
!   _temp_835 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_835  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1873,r13		! source line 1873
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_836 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_836  sizeInBytes=4
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
	.word	_Label_837
	.word	12		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_838
	.word	8
	.word	4
	.word	_Label_839
	.word	12
	.word	4
	.word	_Label_840
	.word	16
	.word	4
	.word	_Label_841
	.word	-12
	.word	4
	.word	_Label_842
	.word	-16
	.word	4
	.word	_Label_843
	.word	-20
	.word	4
	.word	_Label_844
	.word	-24
	.word	4
	.word	_Label_845
	.word	-28
	.word	4
	.word	_Label_846
	.word	-32
	.word	4
	.word	_Label_847
	.word	-36
	.word	4
	.word	_Label_848
	.word	-40
	.word	4
	.word	_Label_849
	.word	-64
	.word	24
	.word	_Label_850
	.word	-68
	.word	4
	.word	0
_Label_837:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_838:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_839:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_840:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_849:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_850:
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
_Label_3342:
	push	r0
	sub	r1,1,r1
	bne	_Label_3342
	mov	1881,r13		! source line 1881
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0AS",r10
	mov	1885,r13		! source line 1885
	mov	"\0\0SE",r10
!   _temp_851 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_852 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_854 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_853 = *_temp_854  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_853) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_855 = _temp_853 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_851  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_852  sizeInBytes=4
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
!   _temp_856 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_856  sizeInBytes=4
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
!   _temp_857 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_857  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1888,r13		! source line 1888
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_858 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_858  sizeInBytes=4
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
	.word	_Label_859
	.word	12		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_860
	.word	8
	.word	4
	.word	_Label_861
	.word	12
	.word	4
	.word	_Label_862
	.word	16
	.word	4
	.word	_Label_863
	.word	-12
	.word	4
	.word	_Label_864
	.word	-16
	.word	4
	.word	_Label_865
	.word	-20
	.word	4
	.word	_Label_866
	.word	-24
	.word	4
	.word	_Label_867
	.word	-28
	.word	4
	.word	_Label_868
	.word	-32
	.word	4
	.word	_Label_869
	.word	-36
	.word	4
	.word	_Label_870
	.word	-40
	.word	4
	.word	_Label_871
	.word	-64
	.word	24
	.word	_Label_872
	.word	-68
	.word	4
	.word	0
_Label_859:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_860:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_861:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_862:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_871:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_872:
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
_Label_3343:
	push	r0
	sub	r1,1,r1
	bne	_Label_3343
	mov	1896,r13		! source line 1896
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_873 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_873  sizeInBytes=4
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
!   _temp_874 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_874  sizeInBytes=4
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
!   _temp_875 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_875  sizeInBytes=4
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
	.word	_Label_876
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_877
	.word	8
	.word	4
	.word	_Label_878
	.word	12
	.word	4
	.word	_Label_879
	.word	-12
	.word	4
	.word	_Label_880
	.word	-16
	.word	4
	.word	_Label_881
	.word	-20
	.word	4
	.word	0
_Label_876:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_877:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_878:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_873\0"
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
_Label_3344:
	push	r0
	sub	r1,1,r1
	bne	_Label_3344
	mov	1911,r13		! source line 1911
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_882 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_882  sizeInBytes=4
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
!   _temp_883 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_883  sizeInBytes=4
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
	.word	_Label_884
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_885
	.word	8
	.word	4
	.word	_Label_886
	.word	-12
	.word	4
	.word	_Label_887
	.word	-16
	.word	4
	.word	0
_Label_884:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_885:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_200_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_200_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3345:
	push	r0
	sub	r1,1,r1
	bne	_Label_3345
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
!   Data Move: _temp_888 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_888  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0AS",r10
!   _temp_889 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_889) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_891 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_891) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_890 = *_temp_891  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_889 = _temp_890  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0AS",r10
!   _temp_892 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_892) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_894 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_894) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_893 = *_temp_894  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_892 = _temp_893  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0AS",r10
!   _temp_895 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_895) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_897 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_897) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_896 = *_temp_897  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_895 = _temp_896  (sizeInBytes=1)
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
_RoutineDescriptor__function_200_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_898
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_899
	.word	8
	.word	4
	.word	_Label_900
	.word	12
	.word	4
	.word	_Label_901
	.word	-16
	.word	4
	.word	_Label_902
	.word	-9
	.word	1
	.word	_Label_903
	.word	-20
	.word	4
	.word	_Label_904
	.word	-24
	.word	4
	.word	_Label_905
	.word	-10
	.word	1
	.word	_Label_906
	.word	-28
	.word	4
	.word	_Label_907
	.word	-32
	.word	4
	.word	_Label_908
	.word	-11
	.word	1
	.word	_Label_909
	.word	-36
	.word	4
	.word	_Label_910
	.word	-12
	.word	1
	.word	_Label_911
	.word	-40
	.word	4
	.word	_Label_912
	.word	-44
	.word	4
	.word	0
_Label_898:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_899:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_900:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_902:
	.byte	'C'
	.ascii	"_temp_896\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_905:
	.byte	'C'
	.ascii	"_temp_893\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_908:
	.byte	'C'
	.ascii	"_temp_890\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_910:
	.byte	'C'
	.ascii	"_temp_888\0"
	.align
_Label_911:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_912:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_199_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_199_printFCB,r1
	push	r1
	mov	3,r1
_Label_3346:
	push	r0
	sub	r1,1,r1
	bne	_Label_3346
	mov	2518,r13		! source line 2518
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_914 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_913 = *_temp_914  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_913  sizeInBytes=4
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
_RoutineDescriptor__function_199_printFCB:
	.word	_sourceFileName
	.word	_Label_915
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_916
	.word	8
	.word	4
	.word	_Label_917
	.word	-12
	.word	4
	.word	_Label_918
	.word	-16
	.word	4
	.word	0
_Label_915:
	.ascii	"printFCB\0"
	.align
_Label_916:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_198_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_198_printOpen,r1
	push	r1
	mov	4,r1
_Label_3347:
	push	r0
	sub	r1,1,r1
	bne	_Label_3347
	mov	2523,r13		! source line 2523
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_919 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_919  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2524,r13		! source line 2524
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_920 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_920  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2525,r13		! source line 2525
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_921 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_921  sizeInBytes=4
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
_RoutineDescriptor__function_198_printOpen:
	.word	_sourceFileName
	.word	_Label_922
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_923
	.word	8
	.word	4
	.word	_Label_924
	.word	-12
	.word	4
	.word	_Label_925
	.word	-16
	.word	4
	.word	_Label_926
	.word	-20
	.word	4
	.word	0
_Label_922:
	.ascii	"printOpen\0"
	.align
_Label_923:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_919\0"
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
_Label_3348:
	push	r0
	sub	r1,1,r1
	bne	_Label_3348
	mov	2787,r13		! source line 2787
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2789,r13		! source line 2789
	mov	"\0\0AS",r10
	mov	2789,r13		! source line 2789
	mov	"\0\0SE",r10
!   _temp_927 = &_P_Kernel_threadManager
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
!   _temp_928 = myProgram + 72
	load	[r14+-28],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   _temp_929 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_928 = _temp_929  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0SE",r10
!   _temp_930 = _function_197_StartUserProcess
	set	_function_197_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_930  sizeInBytes=4
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
	.word	_Label_931
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_932
	.word	-12
	.word	4
	.word	_Label_933
	.word	-16
	.word	4
	.word	_Label_934
	.word	-20
	.word	4
	.word	_Label_935
	.word	-24
	.word	4
	.word	_Label_936
	.word	-28
	.word	4
	.word	0
_Label_931:
	.ascii	"InitFirstProcess\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_936:
	.byte	'P'
	.ascii	"myProgram\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_197_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_197_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_3349:
	push	r0
	sub	r1,1,r1
	bne	_Label_3349
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
!   _temp_937 = &_P_Kernel_processManager
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
!   _temp_938 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_938 = _P_Kernel_currentThread  (sizeInBytes=4)
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
!   _temp_939 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_939 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2805,r13		! source line 2805
	mov	"\0\0AS",r10
	mov	2805,r13		! source line 2805
	mov	"\0\0SE",r10
!   _temp_940 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-60]
!   _temp_941 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_940  sizeInBytes=4
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
!   if fp == 0 then goto _Label_943		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_943
!	jmp	_Label_942
_Label_942:
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
!   _temp_945 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_944 = _temp_945		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_944  sizeInBytes=4
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
!   _temp_946 = &_P_Kernel_fileManager
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
!   _temp_948 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_949 = _temp_948 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_947 = *_temp_949  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_947 * 8192		(int)
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
!   _temp_950 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_950 [999 ] into _temp_951
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
!   initSystemStackTop = _temp_951		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	2811,r13		! source line 2811
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_952 = pcb + 32
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
!   _temp_953 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_953 = 1  (sizeInBytes=1)
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
	jmp	_Label_954
_Label_943:
! ELSE...
	mov	2816,r13		! source line 2816
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_955 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_955  sizeInBytes=4
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
_Label_954:
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
_RoutineDescriptor__function_197_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_956
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_957
	.word	8
	.word	4
	.word	_Label_958
	.word	-12
	.word	4
	.word	_Label_959
	.word	-16
	.word	4
	.word	_Label_960
	.word	-20
	.word	4
	.word	_Label_961
	.word	-24
	.word	4
	.word	_Label_962
	.word	-28
	.word	4
	.word	_Label_963
	.word	-32
	.word	4
	.word	_Label_964
	.word	-36
	.word	4
	.word	_Label_965
	.word	-40
	.word	4
	.word	_Label_966
	.word	-44
	.word	4
	.word	_Label_967
	.word	-48
	.word	4
	.word	_Label_968
	.word	-52
	.word	4
	.word	_Label_969
	.word	-56
	.word	4
	.word	_Label_970
	.word	-60
	.word	4
	.word	_Label_971
	.word	-64
	.word	4
	.word	_Label_972
	.word	-68
	.word	4
	.word	_Label_973
	.word	-72
	.word	4
	.word	_Label_974
	.word	-76
	.word	4
	.word	_Label_975
	.word	-80
	.word	4
	.word	_Label_976
	.word	-84
	.word	4
	.word	_Label_977
	.word	-88
	.word	4
	.word	_Label_978
	.word	-92
	.word	4
	.word	_Label_979
	.word	-96
	.word	4
	.word	0
_Label_956:
	.ascii	"StartUserProcess\0"
	.align
_Label_957:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_974:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_975:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_976:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_977:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_978:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_979:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_980
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_980:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_981
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_981:
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
_Label_3350:
	push	r0
	sub	r1,1,r1
	bne	_Label_3350
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_983		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_983
!	jmp	_Label_982
_Label_982:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_984 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_984  sizeInBytes=4
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
_Label_983:
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
	.word	_Label_986
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_987
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_988
	.word	12
	.word	4
	.word	_Label_989
	.word	-12
	.word	4
	.word	_Label_990
	.word	-16
	.word	4
	.word	0
_Label_986:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_987:
	.ascii	"Pself\0"
	.align
_Label_988:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_984\0"
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
_Label_3351:
	push	r0
	sub	r1,1,r1
	bne	_Label_3351
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
!   if count != 2147483647 then goto _Label_992		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_992
!	jmp	_Label_991
_Label_991:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_993 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_993  sizeInBytes=4
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
_Label_992:
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
!   if count > 0 then goto _Label_995		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_995
!	jmp	_Label_994
_Label_994:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_996 = &waitingThreads
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
!   _temp_997 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_997 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_998 = &_P_Kernel_readyList
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
_Label_995:
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
	.word	_Label_999
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1000
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1001
	.word	-12
	.word	4
	.word	_Label_1002
	.word	-16
	.word	4
	.word	_Label_1003
	.word	-20
	.word	4
	.word	_Label_1004
	.word	-24
	.word	4
	.word	_Label_1005
	.word	-28
	.word	4
	.word	_Label_1006
	.word	-32
	.word	4
	.word	0
_Label_999:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1000:
	.ascii	"Pself\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1005:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1006:
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
_Label_3352:
	push	r0
	sub	r1,1,r1
	bne	_Label_3352
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
!   if count != -2147483648 then goto _Label_1008		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1008
!	jmp	_Label_1007
_Label_1007:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1009 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1009  sizeInBytes=4
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
_Label_1008:
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
!   if count >= 0 then goto _Label_1011		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1011
!	jmp	_Label_1010
_Label_1010:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_1012 = &waitingThreads
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
_Label_1011:
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
	.word	_Label_1013
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1014
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1015
	.word	-12
	.word	4
	.word	_Label_1016
	.word	-16
	.word	4
	.word	_Label_1017
	.word	-20
	.word	4
	.word	0
_Label_1013:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1014:
	.ascii	"Pself\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1017:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1018
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1018:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1019
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1019:
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
_Label_3353:
	push	r0
	sub	r1,1,r1
	bne	_Label_3353
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
	.word	_Label_1021
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1022
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1023
	.word	-12
	.word	4
	.word	0
_Label_1021:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1022:
	.ascii	"Pself\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_1020\0"
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
_Label_3354:
	push	r0
	sub	r1,1,r1
	bne	_Label_3354
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1025		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1025
!	jmp	_Label_1024
_Label_1024:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1026 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1026  sizeInBytes=4
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
_Label_1025:
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
!   if heldBy == 0 then goto _Label_1030		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1030
!   _temp_1029 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1031
_Label_1030:
!   _temp_1029 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1031:
!   if _temp_1029 then goto _Label_1028 else goto _Label_1027
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1027
	jmp	_Label_1028
_Label_1027:
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
	jmp	_Label_1032
_Label_1028:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_1033 = &waitingThreads
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
_Label_1032:
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
	.word	_Label_1034
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1035
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1036
	.word	-16
	.word	4
	.word	_Label_1037
	.word	-9
	.word	1
	.word	_Label_1038
	.word	-20
	.word	4
	.word	_Label_1039
	.word	-24
	.word	4
	.word	0
_Label_1034:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1035:
	.ascii	"Pself\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1037:
	.byte	'C'
	.ascii	"_temp_1029\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1039:
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
_Label_3355:
	push	r0
	sub	r1,1,r1
	bne	_Label_3355
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1041		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1041
!	jmp	_Label_1040
_Label_1040:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1042 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1042  sizeInBytes=4
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
_Label_1041:
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
!   _temp_1043 = &waitingThreads
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
!   if t == 0 then goto _Label_1045		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1045
!	jmp	_Label_1044
_Label_1044:
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
!   _temp_1046 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1046 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_1047 = &_P_Kernel_readyList
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
	jmp	_Label_1048
_Label_1045:
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
_Label_1048:
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
	.word	_Label_1049
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1050
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1051
	.word	-12
	.word	4
	.word	_Label_1052
	.word	-16
	.word	4
	.word	_Label_1053
	.word	-20
	.word	4
	.word	_Label_1054
	.word	-24
	.word	4
	.word	_Label_1055
	.word	-28
	.word	4
	.word	_Label_1056
	.word	-32
	.word	4
	.word	0
_Label_1049:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1050:
	.ascii	"Pself\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1055:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1056:
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
_Label_3356:
	push	r0
	sub	r1,1,r1
	bne	_Label_3356
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1059		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1059
!	jmp	_Label_1058
_Label_1058:
!   _temp_1057 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1060
_Label_1059:
!   _temp_1057 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1060:
!   ReturnResult: _temp_1057  (sizeInBytes=1)
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
	.word	_Label_1061
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1062
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1063
	.word	-9
	.word	1
	.word	0
_Label_1061:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1062:
	.ascii	"Pself\0"
	.align
_Label_1063:
	.byte	'C'
	.ascii	"_temp_1057\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1064
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1064:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1065
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1065:
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
_Label_3357:
	push	r0
	sub	r1,1,r1
	bne	_Label_3357
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
	.word	_Label_1067
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1068
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1069
	.word	-12
	.word	4
	.word	0
_Label_1067:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1068:
	.ascii	"Pself\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1066\0"
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
_Label_3358:
	push	r0
	sub	r1,1,r1
	bne	_Label_3358
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
!   Retrieve Result: targetName=_temp_1072  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1072 then goto _Label_1071 else goto _Label_1070
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1070
	jmp	_Label_1071
_Label_1070:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1073 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1073  sizeInBytes=4
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
_Label_1071:
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
!   _temp_1074 = &waitingThreads
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
	.word	_Label_1075
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1076
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1077
	.word	12
	.word	4
	.word	_Label_1078
	.word	-16
	.word	4
	.word	_Label_1079
	.word	-20
	.word	4
	.word	_Label_1080
	.word	-9
	.word	1
	.word	_Label_1081
	.word	-24
	.word	4
	.word	0
_Label_1075:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1076:
	.ascii	"Pself\0"
	.align
_Label_1077:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1080:
	.byte	'C'
	.ascii	"_temp_1072\0"
	.align
_Label_1081:
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
_Label_3359:
	push	r0
	sub	r1,1,r1
	bne	_Label_3359
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
!   Retrieve Result: targetName=_temp_1084  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1084 then goto _Label_1083 else goto _Label_1082
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1082
	jmp	_Label_1083
_Label_1082:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1085 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1085  sizeInBytes=4
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
_Label_1083:
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
!   _temp_1086 = &waitingThreads
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
!   if t == 0 then goto _Label_1088		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1088
!	jmp	_Label_1087
_Label_1087:
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
!   _temp_1089 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1089 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_1090 = &_P_Kernel_readyList
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
_Label_1088:
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
	.word	_Label_1091
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1092
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1093
	.word	12
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
	.word	_Label_1098
	.word	-9
	.word	1
	.word	_Label_1099
	.word	-32
	.word	4
	.word	_Label_1100
	.word	-36
	.word	4
	.word	0
_Label_1091:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1092:
	.ascii	"Pself\0"
	.align
_Label_1093:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1098:
	.byte	'C'
	.ascii	"_temp_1084\0"
	.align
_Label_1099:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1100:
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
_Label_3360:
	push	r0
	sub	r1,1,r1
	bne	_Label_3360
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
!   Retrieve Result: targetName=_temp_1103  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1103 then goto _Label_1102 else goto _Label_1101
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1101
	jmp	_Label_1102
_Label_1101:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1104 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1104  sizeInBytes=4
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
_Label_1102:
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
_Label_1105:
!	jmp	_Label_1106
_Label_1106:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_1108 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1109
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1109
	jmp	_Label_1110
_Label_1109:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_1107
! END IF...
_Label_1110:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1111 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1111 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_1112 = &_P_Kernel_readyList
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
	jmp	_Label_1105
_Label_1107:
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
	.word	_Label_1113
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1114
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1115
	.word	12
	.word	4
	.word	_Label_1116
	.word	-16
	.word	4
	.word	_Label_1117
	.word	-20
	.word	4
	.word	_Label_1118
	.word	-24
	.word	4
	.word	_Label_1119
	.word	-28
	.word	4
	.word	_Label_1120
	.word	-9
	.word	1
	.word	_Label_1121
	.word	-32
	.word	4
	.word	_Label_1122
	.word	-36
	.word	4
	.word	0
_Label_1113:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1114:
	.ascii	"Pself\0"
	.align
_Label_1115:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1120:
	.byte	'C'
	.ascii	"_temp_1103\0"
	.align
_Label_1121:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1122:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1123
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
_Label_1123:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1124
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1124:
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
_Label_3361:
	push	r0
	sub	r1,1,r1
	bne	_Label_3361
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
!   _temp_1125 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1125) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1125 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_1126 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1126 [0 ] into _temp_1127
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
!   Data Move: *_temp_1127 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1128 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1128 [999 ] into _temp_1129
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
!   Data Move: *_temp_1129 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1130 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1130 [999 ] into _temp_1131
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
!   stackTop = _temp_1131		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1132 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1134 = &_temp_1133
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1134 = _temp_1134 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1136:
!   Data Move: *_temp_1134 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1134 = _temp_1134 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1135 = _temp_1135 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1135) then goto _Label_1136
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1136
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1137 = &_temp_1133
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3362
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3362:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1132 = *_temp_1137  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3363:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3363
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
!   _temp_1138 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1140 = &_temp_1139
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1140 = _temp_1140 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1142:
!   Data Move: *_temp_1140 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1140 = _temp_1140 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1141 = _temp_1141 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1141) then goto _Label_1142
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1142
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1143 = &_temp_1139
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3364
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3364:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1138 = *_temp_1143  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3365:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3365
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
	.word	_Label_1144
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1145
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1146
	.word	12
	.word	4
	.word	_Label_1147
	.word	-12
	.word	4
	.word	_Label_1148
	.word	-16
	.word	4
	.word	_Label_1149
	.word	-20
	.word	4
	.word	_Label_1150
	.word	-84
	.word	64
	.word	_Label_1151
	.word	-88
	.word	4
	.word	_Label_1152
	.word	-92
	.word	4
	.word	_Label_1153
	.word	-96
	.word	4
	.word	_Label_1154
	.word	-100
	.word	4
	.word	_Label_1155
	.word	-156
	.word	56
	.word	_Label_1156
	.word	-160
	.word	4
	.word	_Label_1157
	.word	-164
	.word	4
	.word	_Label_1158
	.word	-168
	.word	4
	.word	_Label_1159
	.word	-172
	.word	4
	.word	_Label_1160
	.word	-176
	.word	4
	.word	_Label_1161
	.word	-180
	.word	4
	.word	_Label_1162
	.word	-184
	.word	4
	.word	_Label_1163
	.word	-188
	.word	4
	.word	0
_Label_1144:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1145:
	.ascii	"Pself\0"
	.align
_Label_1146:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1125\0"
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
_Label_3366:
	push	r0
	sub	r1,1,r1
	bne	_Label_3366
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
!   _temp_1164 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1164  (sizeInBytes=4)
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
!   _temp_1166 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1165  sizeInBytes=4
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
	.word	_Label_1167
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1168
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1169
	.word	12
	.word	4
	.word	_Label_1170
	.word	16
	.word	4
	.word	_Label_1171
	.word	-12
	.word	4
	.word	_Label_1172
	.word	-16
	.word	4
	.word	_Label_1173
	.word	-20
	.word	4
	.word	_Label_1174
	.word	-24
	.word	4
	.word	_Label_1175
	.word	-28
	.word	4
	.word	0
_Label_1167:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1168:
	.ascii	"Pself\0"
	.align
_Label_1169:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1170:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1174:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1175:
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
_Label_3367:
	push	r0
	sub	r1,1,r1
	bne	_Label_3367
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1178 == _P_Kernel_currentThread then goto _Label_1177		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1177
!	jmp	_Label_1176
_Label_1176:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1179 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1179  sizeInBytes=4
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
_Label_1177:
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
!   _temp_1180 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1182		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1182
!	jmp	_Label_1181
_Label_1181:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1184		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1184
!	jmp	_Label_1183
_Label_1183:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1185 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1185  sizeInBytes=4
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
_Label_1184:
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
!   _temp_1187 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1186  sizeInBytes=4
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
_Label_1182:
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
	.word	_Label_1188
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1189
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1190
	.word	-12
	.word	4
	.word	_Label_1191
	.word	-16
	.word	4
	.word	_Label_1192
	.word	-20
	.word	4
	.word	_Label_1193
	.word	-24
	.word	4
	.word	_Label_1194
	.word	-28
	.word	4
	.word	_Label_1195
	.word	-32
	.word	4
	.word	_Label_1196
	.word	-36
	.word	4
	.word	_Label_1197
	.word	-40
	.word	4
	.word	_Label_1198
	.word	-44
	.word	4
	.word	0
_Label_1188:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1189:
	.ascii	"Pself\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1196:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1197:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1198:
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
_Label_3368:
	push	r0
	sub	r1,1,r1
	bne	_Label_3368
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1200		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1200
!	jmp	_Label_1199
_Label_1199:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1201 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1201  sizeInBytes=4
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
_Label_1200:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1204 == _P_Kernel_currentThread then goto _Label_1203		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1203
!	jmp	_Label_1202
_Label_1202:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1205 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1205  sizeInBytes=4
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
_Label_1203:
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
!   _temp_1206 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1207
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1207
	jmp	_Label_1208
_Label_1207:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1209 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1209  sizeInBytes=4
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
_Label_1208:
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
	.word	_Label_1210
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1211
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1212
	.word	-12
	.word	4
	.word	_Label_1213
	.word	-16
	.word	4
	.word	_Label_1214
	.word	-20
	.word	4
	.word	_Label_1215
	.word	-24
	.word	4
	.word	_Label_1216
	.word	-28
	.word	4
	.word	_Label_1217
	.word	-32
	.word	4
	.word	0
_Label_1210:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1211:
	.ascii	"Pself\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1209\0"
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
	.ascii	"_temp_1201\0"
	.align
_Label_1217:
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
_Label_3369:
	push	r0
	sub	r1,1,r1
	bne	_Label_3369
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_1221 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1221 [0 ] into _temp_1222
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
!   Data Move: _temp_1220 = *_temp_1222  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1220 == 606348324 then goto _Label_1219		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1219
!	jmp	_Label_1218
_Label_1218:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1223 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1223  sizeInBytes=4
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
	jmp	_Label_1224
_Label_1219:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_1228 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1228 [999 ] into _temp_1229
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
!   Data Move: _temp_1227 = *_temp_1229  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1227 == 606348324 then goto _Label_1226		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1226
!	jmp	_Label_1225
_Label_1225:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1230 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1230  sizeInBytes=4
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
_Label_1226:
! END IF...
_Label_1224:
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
	.word	_Label_1231
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1232
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1233
	.word	-12
	.word	4
	.word	_Label_1234
	.word	-16
	.word	4
	.word	_Label_1235
	.word	-20
	.word	4
	.word	_Label_1236
	.word	-24
	.word	4
	.word	_Label_1237
	.word	-28
	.word	4
	.word	_Label_1238
	.word	-32
	.word	4
	.word	_Label_1239
	.word	-36
	.word	4
	.word	_Label_1240
	.word	-40
	.word	4
	.word	0
_Label_1231:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1232:
	.ascii	"Pself\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1220\0"
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
_Label_3370:
	push	r0
	sub	r1,1,r1
	bne	_Label_3370
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
!   _temp_1241 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1241  sizeInBytes=4
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
!   _temp_1242 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1242  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1243  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1244 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1244  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1245 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1245  sizeInBytes=4
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
!   _temp_1250 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1251 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1250  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1246:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1251 then goto _Label_1249		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1249
_Label_1247:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1252 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1252  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1253 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1253  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1254 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1254  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1256 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1256 [i ] into _temp_1257
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
!   Data Move: _temp_1255 = *_temp_1257  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1255  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1258 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1258  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1260 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1260 [i ] into _temp_1261
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
!   Data Move: _temp_1259 = *_temp_1261  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1259  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1262 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1262  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1248:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1246
! END FOR
_Label_1249:
! CALL STATEMENT...
!   _temp_1263 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-116]
!   _temp_1264 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1263  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1264  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1265 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-108]
!   _temp_1267 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1267 [0 ] into _temp_1268
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
!   _temp_1266 = _temp_1268		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1265  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1266  sizeInBytes=4
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
	be	_Label_1271
	cmp	r1,2
	be	_Label_1272
	cmp	r1,3
	be	_Label_1273
	cmp	r1,4
	be	_Label_1274
	cmp	r1,5
	be	_Label_1275
	jmp	_Label_1269
! CASE 1...
_Label_1271:
! CALL STATEMENT...
!   _temp_1276 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1276  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_1270
! CASE 2...
_Label_1272:
! CALL STATEMENT...
!   _temp_1277 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1277  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_1270
! CASE 3...
_Label_1273:
! CALL STATEMENT...
!   _temp_1278 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1278  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_1270
! CASE 4...
_Label_1274:
! CALL STATEMENT...
!   _temp_1279 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1279  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_1270
! CASE 5...
_Label_1275:
! CALL STATEMENT...
!   _temp_1280 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1280  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_1270
! DEFAULT CASE...
_Label_1269:
! CALL STATEMENT...
!   _temp_1281 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1281  sizeInBytes=4
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
_Label_1270:
! CALL STATEMENT...
!   _temp_1282 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1282  sizeInBytes=4
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
!   _temp_1283 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1283  sizeInBytes=4
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
!   _temp_1288 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1289 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1288  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1284:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1289 then goto _Label_1287		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1287
_Label_1285:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1290 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1290  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1291 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1291  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1292 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1292  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1294 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1294 [i ] into _temp_1295
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
!   Data Move: _temp_1293 = *_temp_1295  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1293  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1296 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1296  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1298 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1298 [i ] into _temp_1299
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
!   Data Move: _temp_1297 = *_temp_1299  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1300 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1300  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1286:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1284
! END FOR
_Label_1287:
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
	.word	_Label_1301
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1302
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1303
	.word	-12
	.word	4
	.word	_Label_1304
	.word	-16
	.word	4
	.word	_Label_1305
	.word	-20
	.word	4
	.word	_Label_1306
	.word	-24
	.word	4
	.word	_Label_1307
	.word	-28
	.word	4
	.word	_Label_1308
	.word	-32
	.word	4
	.word	_Label_1309
	.word	-36
	.word	4
	.word	_Label_1310
	.word	-40
	.word	4
	.word	_Label_1311
	.word	-44
	.word	4
	.word	_Label_1312
	.word	-48
	.word	4
	.word	_Label_1313
	.word	-52
	.word	4
	.word	_Label_1314
	.word	-56
	.word	4
	.word	_Label_1315
	.word	-60
	.word	4
	.word	_Label_1316
	.word	-64
	.word	4
	.word	_Label_1317
	.word	-68
	.word	4
	.word	_Label_1318
	.word	-72
	.word	4
	.word	_Label_1319
	.word	-76
	.word	4
	.word	_Label_1320
	.word	-80
	.word	4
	.word	_Label_1321
	.word	-84
	.word	4
	.word	_Label_1322
	.word	-88
	.word	4
	.word	_Label_1323
	.word	-92
	.word	4
	.word	_Label_1324
	.word	-96
	.word	4
	.word	_Label_1325
	.word	-100
	.word	4
	.word	_Label_1326
	.word	-104
	.word	4
	.word	_Label_1327
	.word	-108
	.word	4
	.word	_Label_1328
	.word	-112
	.word	4
	.word	_Label_1329
	.word	-116
	.word	4
	.word	_Label_1330
	.word	-120
	.word	4
	.word	_Label_1331
	.word	-124
	.word	4
	.word	_Label_1332
	.word	-128
	.word	4
	.word	_Label_1333
	.word	-132
	.word	4
	.word	_Label_1334
	.word	-136
	.word	4
	.word	_Label_1335
	.word	-140
	.word	4
	.word	_Label_1336
	.word	-144
	.word	4
	.word	_Label_1337
	.word	-148
	.word	4
	.word	_Label_1338
	.word	-152
	.word	4
	.word	_Label_1339
	.word	-156
	.word	4
	.word	_Label_1340
	.word	-160
	.word	4
	.word	_Label_1341
	.word	-164
	.word	4
	.word	_Label_1342
	.word	-168
	.word	4
	.word	_Label_1343
	.word	-172
	.word	4
	.word	_Label_1344
	.word	-176
	.word	4
	.word	_Label_1345
	.word	-180
	.word	4
	.word	_Label_1346
	.word	-184
	.word	4
	.word	_Label_1347
	.word	-188
	.word	4
	.word	_Label_1348
	.word	-192
	.word	4
	.word	_Label_1349
	.word	-196
	.word	4
	.word	0
_Label_1301:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1302:
	.ascii	"Pself\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1348:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1349:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1350
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1350:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1351
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1351:
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
_Label_3371:
	push	r0
	sub	r1,1,r1
	bne	_Label_3371
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1352 = _StringConst_95
	set	_StringConst_95,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1352  sizeInBytes=4
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
!   _temp_1353 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1355 = &_temp_1354
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1355 = _temp_1355 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1357 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3372:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3372
!   _temp_1357 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1359:
!   Data Move: *_temp_1355 = _temp_1357  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3373:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3373
!   _temp_1355 = _temp_1355 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1356 = _temp_1356 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1356) then goto _Label_1359
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1359
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1360 = &_temp_1354
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3374
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3374:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1353 = *_temp_1360  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3375:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3375
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
!   _temp_1364 = &threadManagerLock
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
!   _temp_1365 = &aThreadBecomeFree
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
!   _temp_1370 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1371 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1370  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1366:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1371 then goto _Label_1369		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1369
_Label_1367:
	mov	702,r13		! source line 702
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0SE",r10
!   _temp_1372 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-48]
!   _temp_1373 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1373 [i ] into _temp_1374
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
!   Prepare Argument: offset=12  value=_temp_1372  sizeInBytes=4
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
!   _temp_1376 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1376 [i ] into _temp_1377
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
!   _temp_1375 = _temp_1377		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1378 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1375  sizeInBytes=4
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
!   _temp_1379 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1379 [i ] into _temp_1380
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
!   _temp_1381 = _temp_1380 + 76
	load	[r14+-16],r1
	add	r1,76,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1381 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-12],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1368:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1366
! END FOR
_Label_1369:
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
	.word	_Label_1382
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1383
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1384
	.word	-12
	.word	4
	.word	_Label_1385
	.word	-16
	.word	4
	.word	_Label_1386
	.word	-20
	.word	4
	.word	_Label_1387
	.word	-24
	.word	4
	.word	_Label_1388
	.word	-28
	.word	4
	.word	_Label_1389
	.word	-32
	.word	4
	.word	_Label_1390
	.word	-36
	.word	4
	.word	_Label_1391
	.word	-40
	.word	4
	.word	_Label_1392
	.word	-44
	.word	4
	.word	_Label_1393
	.word	-48
	.word	4
	.word	_Label_1394
	.word	-52
	.word	4
	.word	_Label_1395
	.word	-56
	.word	4
	.word	_Label_1396
	.word	-60
	.word	4
	.word	_Label_1397
	.word	-64
	.word	4
	.word	_Label_1398
	.word	-68
	.word	4
	.word	_Label_1399
	.word	-72
	.word	4
	.word	_Label_1400
	.word	-76
	.word	4
	.word	_Label_1401
	.word	-80
	.word	4
	.word	_Label_1402
	.word	-84
	.word	4
	.word	_Label_1403
	.word	-4248
	.word	4164
	.word	_Label_1404
	.word	-4252
	.word	4
	.word	_Label_1405
	.word	-4256
	.word	4
	.word	_Label_1406
	.word	-45900
	.word	41644
	.word	_Label_1407
	.word	-45904
	.word	4
	.word	_Label_1408
	.word	-45908
	.word	4
	.word	_Label_1409
	.word	-45912
	.word	4
	.word	0
_Label_1382:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1383:
	.ascii	"Pself\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1409:
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
_Label_3376:
	push	r0
	sub	r1,1,r1
	bne	_Label_3376
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
!   _temp_1410 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1410  sizeInBytes=4
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
!   _temp_1415 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1416 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1415  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1411:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1416 then goto _Label_1414		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1414
_Label_1412:
	mov	720,r13		! source line 720
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1417 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1417  sizeInBytes=4
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
!   _temp_1418 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1418  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1420 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1420 [i ] into _temp_1421
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
!   _temp_1419 = _temp_1421		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1419  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CA",r10
	call	_function_204_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1413:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1411
! END FOR
_Label_1414:
! CALL STATEMENT...
!   _temp_1422 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1422  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0SE",r10
!   _temp_1423 = _function_203_PrintObjectAddr
	set	_function_203_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1424 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1423  sizeInBytes=4
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
	.word	_Label_1425
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1426
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1427
	.word	-12
	.word	4
	.word	_Label_1428
	.word	-16
	.word	4
	.word	_Label_1429
	.word	-20
	.word	4
	.word	_Label_1430
	.word	-24
	.word	4
	.word	_Label_1431
	.word	-28
	.word	4
	.word	_Label_1432
	.word	-32
	.word	4
	.word	_Label_1433
	.word	-36
	.word	4
	.word	_Label_1434
	.word	-40
	.word	4
	.word	_Label_1435
	.word	-44
	.word	4
	.word	_Label_1436
	.word	-48
	.word	4
	.word	_Label_1437
	.word	-52
	.word	4
	.word	_Label_1438
	.word	-56
	.word	4
	.word	_Label_1439
	.word	-60
	.word	4
	.word	0
_Label_1425:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1426:
	.ascii	"Pself\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1438:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1439:
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
_Label_3377:
	push	r0
	sub	r1,1,r1
	bne	_Label_3377
	mov	734,r13		! source line 734
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0SE",r10
!   _temp_1440 = &threadManagerLock
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
_Label_1441:
	mov	741,r13		! source line 741
	mov	"\0\0SE",r10
!   _temp_1444 = &freeList
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
!   if result==true then goto _Label_1442 else goto _Label_1443
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1443
	jmp	_Label_1442
_Label_1442:
	mov	741,r13		! source line 741
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0SE",r10
!   _temp_1445 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   _temp_1446 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1445  sizeInBytes=4
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
	jmp	_Label_1441
_Label_1443:
! ASSIGNMENT STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0AS",r10
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_1447 = &freeList
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
!   _temp_1448 = tmp + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1448 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1449) then goto _runtimeErrorNullPointer
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
!   _temp_1450 = &threadManagerLock
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
	.word	_Label_1451
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1452
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1453
	.word	-12
	.word	4
	.word	_Label_1454
	.word	-16
	.word	4
	.word	_Label_1455
	.word	-20
	.word	4
	.word	_Label_1456
	.word	-24
	.word	4
	.word	_Label_1457
	.word	-28
	.word	4
	.word	_Label_1458
	.word	-32
	.word	4
	.word	_Label_1459
	.word	-36
	.word	4
	.word	_Label_1460
	.word	-40
	.word	4
	.word	_Label_1461
	.word	-44
	.word	4
	.word	0
_Label_1451:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1452:
	.ascii	"Pself\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1461:
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
_Label_3378:
	push	r0
	sub	r1,1,r1
	bne	_Label_3378
	mov	753,r13		! source line 753
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0SE",r10
!   _temp_1462 = &threadManagerLock
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
!   _temp_1463 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1463 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0SE",r10
!   _temp_1464 = &freeList
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
!   if intIsZero (_temp_1465) then goto _runtimeErrorNullPointer
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
!   _temp_1466 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1467 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1466  sizeInBytes=4
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
!   _temp_1468 = &threadManagerLock
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
	.word	_Label_1469
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1470
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1471
	.word	12
	.word	4
	.word	_Label_1472
	.word	-12
	.word	4
	.word	_Label_1473
	.word	-16
	.word	4
	.word	_Label_1474
	.word	-20
	.word	4
	.word	_Label_1475
	.word	-24
	.word	4
	.word	_Label_1476
	.word	-28
	.word	4
	.word	_Label_1477
	.word	-32
	.word	4
	.word	_Label_1478
	.word	-36
	.word	4
	.word	0
_Label_1469:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1470:
	.ascii	"Pself\0"
	.align
_Label_1471:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1479
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1479:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1480
	.word	_sourceFileName
	.word	213		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1480:
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
_Label_3379:
	push	r0
	sub	r1,1,r1
	bne	_Label_3379
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
_Label_3380:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3380
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_1482 = &addrSpace
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
	.word	_Label_1483
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1484
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1485
	.word	-12
	.word	4
	.word	_Label_1486
	.word	-16
	.word	4
	.word	0
_Label_1483:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1484:
	.ascii	"Pself\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1481\0"
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
_Label_3381:
	push	r0
	sub	r1,1,r1
	bne	_Label_3381
	mov	790,r13		! source line 790
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1487) then goto _runtimeErrorNullPointer
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
!   _temp_1488 = &addrSpace
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
!   _temp_1489 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1489  sizeInBytes=4
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
	call	_function_204_ThreadPrintShort
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
	.word	_Label_1490
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1491
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1492
	.word	-12
	.word	4
	.word	_Label_1493
	.word	-16
	.word	4
	.word	_Label_1494
	.word	-20
	.word	4
	.word	0
_Label_1490:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1491:
	.ascii	"Pself\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1487\0"
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
_Label_3382:
	push	r0
	sub	r1,1,r1
	bne	_Label_3382
	mov	813,r13		! source line 813
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1495 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1495  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1496  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1497 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1497  sizeInBytes=4
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
!   _temp_1498 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1498  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1500		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1500
!	jmp	_Label_1499
_Label_1499:
! THEN...
	mov	823,r13		! source line 823
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1501 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1501  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1502
_Label_1500:
! ELSE...
	mov	824,r13		! source line 824
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1504		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1504
!	jmp	_Label_1503
_Label_1503:
! THEN...
	mov	825,r13		! source line 825
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1505 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1505  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1506
_Label_1504:
! ELSE...
	mov	826,r13		! source line 826
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1508		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1508
!	jmp	_Label_1507
_Label_1507:
! THEN...
	mov	827,r13		! source line 827
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1509 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1509  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1510
_Label_1508:
! ELSE...
	mov	829,r13		! source line 829
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1511 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1511  sizeInBytes=4
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
_Label_1510:
! END IF...
_Label_1506:
! END IF...
_Label_1502:
! CALL STATEMENT...
!   _temp_1512 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1512  sizeInBytes=4
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
!   _temp_1513 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1513  sizeInBytes=4
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
	.word	_Label_1514
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1515
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1516
	.word	-12
	.word	4
	.word	_Label_1517
	.word	-16
	.word	4
	.word	_Label_1518
	.word	-20
	.word	4
	.word	_Label_1519
	.word	-24
	.word	4
	.word	_Label_1520
	.word	-28
	.word	4
	.word	_Label_1521
	.word	-32
	.word	4
	.word	_Label_1522
	.word	-36
	.word	4
	.word	_Label_1523
	.word	-40
	.word	4
	.word	_Label_1524
	.word	-44
	.word	4
	.word	_Label_1525
	.word	-48
	.word	4
	.word	0
_Label_1514:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1515:
	.ascii	"Pself\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1526
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
_Label_1526:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1527
	.word	_sourceFileName
	.word	233		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1527:
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
_Label_3383:
	push	r0
	sub	r1,1,r1
	bne	_Label_3383
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0AS",r10
!   _temp_1528 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1456]
!   NEW ARRAY Constructor...
!   _temp_1530 = &_temp_1529
	add	r14,-1452,r1
	store	r1,[r14+-208]
!   _temp_1530 = _temp_1530 + 4
	load	[r14+-208],r1
	add	r1,4,r1
	store	r1,[r14+-208]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1532 = zeros  (sizeInBytes=124)
	add	r14,-200,r4
	mov	31,r3
_Label_3384:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3384
!   _temp_1532 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-200]
	mov	10,r1
	store	r1,[r14+-204]
_Label_1534:
!   Data Move: *_temp_1530 = _temp_1532  (sizeInBytes=124)
	add	r14,-200,r5
	load	[r14+-208],r4
	mov	31,r3
_Label_3385:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3385
!   _temp_1530 = _temp_1530 + 124
	load	[r14+-208],r1
	add	r1,124,r1
	store	r1,[r14+-208]
!   _temp_1531 = _temp_1531 + -1
	load	[r14+-204],r1
	add	r1,-1,r1
	store	r1,[r14+-204]
!   if intNotZero (_temp_1531) then goto _Label_1534
	load	[r14+-204],r1
	cmp	r1,r0
	bne	_Label_1534
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1452]
!   _temp_1535 = &_temp_1529
	add	r14,-1452,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	load	[r14+-1456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3386
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3386:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1528 = *_temp_1535  (sizeInBytes=1244)
	load	[r14+-72],r5
	load	[r14+-1456],r4
	mov	311,r3
_Label_3387:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3387
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
!   _temp_1538 = &processManagerLock
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
!   _temp_1539 = &aProcessBecameFree
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
!   _temp_1542 = &aProcessDied
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
!   _temp_1547 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1548 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1547  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-1460]
_Label_1543:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1548 then goto _Label_1546		
	load	[r14+-1460],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1546
_Label_1544:
	mov	860,r13		! source line 860
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0SE",r10
!   _temp_1549 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1549 [i ] into _temp_1550
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
!   _temp_1552 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1552 [i ] into _temp_1553
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
!   _temp_1551 = _temp_1553		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1554 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1551  sizeInBytes=4
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
_Label_1545:
!   i = i + 1
	load	[r14+-1460],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1460]
	jmp	_Label_1543
! END FOR
_Label_1546:
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
	.word	_Label_1555
	.word	4		! total size of parameters
	.word	1460		! frame size = 1460
	.word	_Label_1556
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	-200
	.word	124
	.word	_Label_1575
	.word	-204
	.word	4
	.word	_Label_1576
	.word	-208
	.word	4
	.word	_Label_1577
	.word	-1452
	.word	1244
	.word	_Label_1578
	.word	-1456
	.word	4
	.word	_Label_1579
	.word	-1460
	.word	4
	.word	0
_Label_1555:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1556:
	.ascii	"Pself\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1579:
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
_Label_3388:
	push	r0
	sub	r1,1,r1
	bne	_Label_3388
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
!   _temp_1580 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1580  sizeInBytes=4
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
!   _temp_1585 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1586 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1585  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1581:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1586 then goto _Label_1584		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1584
_Label_1582:
	mov	877,r13		! source line 877
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1587 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1587  sizeInBytes=4
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
!   _temp_1588 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1588  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0SE",r10
!   _temp_1589 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1589 [i ] into _temp_1590
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
_Label_1583:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1581
! END FOR
_Label_1584:
! CALL STATEMENT...
!   _temp_1591 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1591  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0SE",r10
!   _temp_1592 = _function_203_PrintObjectAddr
	set	_function_203_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1593 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1592  sizeInBytes=4
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
	.word	_Label_1594
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1595
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1596
	.word	-12
	.word	4
	.word	_Label_1597
	.word	-16
	.word	4
	.word	_Label_1598
	.word	-20
	.word	4
	.word	_Label_1599
	.word	-24
	.word	4
	.word	_Label_1600
	.word	-28
	.word	4
	.word	_Label_1601
	.word	-32
	.word	4
	.word	_Label_1602
	.word	-36
	.word	4
	.word	_Label_1603
	.word	-40
	.word	4
	.word	_Label_1604
	.word	-44
	.word	4
	.word	_Label_1605
	.word	-48
	.word	4
	.word	_Label_1606
	.word	-52
	.word	4
	.word	_Label_1607
	.word	-56
	.word	4
	.word	0
_Label_1594:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1595:
	.ascii	"Pself\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1606:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1607:
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
_Label_3389:
	push	r0
	sub	r1,1,r1
	bne	_Label_3389
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
!   _temp_1608 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1608  sizeInBytes=4
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
!   _temp_1613 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1614 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1613  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1609:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1614 then goto _Label_1612		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1612
_Label_1610:
	mov	900,r13		! source line 900
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1615 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1615  sizeInBytes=4
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
!   _temp_1616 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1616 [i ] into _temp_1617
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
_Label_1611:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1609
! END FOR
_Label_1612:
! CALL STATEMENT...
!   _temp_1618 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1618  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_1619 = _function_203_PrintObjectAddr
	set	_function_203_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1620 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1619  sizeInBytes=4
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
	.word	_Label_1621
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1622
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1623
	.word	-12
	.word	4
	.word	_Label_1624
	.word	-16
	.word	4
	.word	_Label_1625
	.word	-20
	.word	4
	.word	_Label_1626
	.word	-24
	.word	4
	.word	_Label_1627
	.word	-28
	.word	4
	.word	_Label_1628
	.word	-32
	.word	4
	.word	_Label_1629
	.word	-36
	.word	4
	.word	_Label_1630
	.word	-40
	.word	4
	.word	_Label_1631
	.word	-44
	.word	4
	.word	_Label_1632
	.word	-48
	.word	4
	.word	_Label_1633
	.word	-52
	.word	4
	.word	0
_Label_1621:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1622:
	.ascii	"Pself\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1632:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1633:
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
_Label_3390:
	push	r0
	sub	r1,1,r1
	bne	_Label_3390
	mov	913,r13		! source line 913
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0SE",r10
!   _temp_1634 = &processManagerLock
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
!   if intIsZero (_temp_1635) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1636 = _temp_1635 + 1312
	load	[r14+-72],r1
	add	r1,1312,r1
	store	r1,[r14+-68]
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1639) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1640 = _temp_1639 + 1312
	load	[r14+-56],r1
	add	r1,1312,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1638 = *_temp_1640  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_1637 = _temp_1638 + 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Data Move: *_temp_1636 = _temp_1637  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r14+-68],r2
	store	r1,[r2]
! WHILE STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0WH",r10
_Label_1641:
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_1644 = &freeList
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
!   if result==true then goto _Label_1642 else goto _Label_1643
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1643
	jmp	_Label_1642
_Label_1642:
	mov	921,r13		! source line 921
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0SE",r10
!   _temp_1645 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-44]
!   _temp_1646 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1645  sizeInBytes=4
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
	jmp	_Label_1641
_Label_1643:
! ASSIGNMENT STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0AS",r10
	mov	924,r13		! source line 924
	mov	"\0\0SE",r10
!   _temp_1647 = &freeList
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
!   _temp_1648 = tmp + 20
	load	[r14+-80],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1648 = 1  (sizeInBytes=4)
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
!   _temp_1649 = tmp + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-28]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1651) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1652 = _temp_1651 + 1312
	load	[r14+-20],r1
	add	r1,1312,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1650 = *_temp_1652  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1649 = _temp_1650  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_1653 = &processManagerLock
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
	.word	_Label_1654
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_1655
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1656
	.word	-12
	.word	4
	.word	_Label_1657
	.word	-16
	.word	4
	.word	_Label_1658
	.word	-20
	.word	4
	.word	_Label_1659
	.word	-24
	.word	4
	.word	_Label_1660
	.word	-28
	.word	4
	.word	_Label_1661
	.word	-32
	.word	4
	.word	_Label_1662
	.word	-36
	.word	4
	.word	_Label_1663
	.word	-40
	.word	4
	.word	_Label_1664
	.word	-44
	.word	4
	.word	_Label_1665
	.word	-48
	.word	4
	.word	_Label_1666
	.word	-52
	.word	4
	.word	_Label_1667
	.word	-56
	.word	4
	.word	_Label_1668
	.word	-60
	.word	4
	.word	_Label_1669
	.word	-64
	.word	4
	.word	_Label_1670
	.word	-68
	.word	4
	.word	_Label_1671
	.word	-72
	.word	4
	.word	_Label_1672
	.word	-76
	.word	4
	.word	_Label_1673
	.word	-80
	.word	4
	.word	0
_Label_1654:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1655:
	.ascii	"Pself\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1673:
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
_Label_3391:
	push	r0
	sub	r1,1,r1
	bne	_Label_3391
	mov	934,r13		! source line 934
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	939,r13		! source line 939
	mov	"\0\0SE",r10
!   _temp_1674 = &processManagerLock
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
!   _temp_1675 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1675 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	941,r13		! source line 941
	mov	"\0\0SE",r10
!   _temp_1676 = &freeList
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
!   _temp_1677 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-24]
!   _temp_1678 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1677  sizeInBytes=4
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
!   if intIsZero (_temp_1679) then goto _runtimeErrorNullPointer
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
!   _temp_1680 = &processManagerLock
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
	.word	_Label_1681
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1682
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1683
	.word	12
	.word	4
	.word	_Label_1684
	.word	-12
	.word	4
	.word	_Label_1685
	.word	-16
	.word	4
	.word	_Label_1686
	.word	-20
	.word	4
	.word	_Label_1687
	.word	-24
	.word	4
	.word	_Label_1688
	.word	-28
	.word	4
	.word	_Label_1689
	.word	-32
	.word	4
	.word	_Label_1690
	.word	-36
	.word	4
	.word	0
_Label_1681:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1682:
	.ascii	"Pself\0"
	.align
_Label_1683:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1674\0"
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
_Label_3392:
	push	r0
	sub	r1,1,r1
	bne	_Label_3392
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
!   _temp_1691 = &processManagerLock
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
!   _temp_1696 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-172]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1697 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-168]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1696  (sizeInBytes=4)
	load	[r14+-172],r1
	store	r1,[r14+-180]
_Label_1692:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1697 then goto _Label_1695		
	load	[r14+-180],r1
	load	[r14+-168],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1695
_Label_1693:
	mov	953,r13		! source line 953
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1701 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1700 = *_temp_1701  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   _temp_1703 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-152]
!   _temp_1704 = _temp_1703 + 4
	load	[r14+-152],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_1704 [i ] into _temp_1705
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
!   _temp_1706 = _temp_1705 + 16
	load	[r14+-144],r1
	add	r1,16,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1702 = *_temp_1706  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if _temp_1700 != _temp_1702 then goto _Label_1699		(int)
	load	[r14+-164],r1
	load	[r14+-156],r2
	cmp	r1,r2
	bne	_Label_1699
!	jmp	_Label_1698
_Label_1698:
! THEN...
	mov	955,r13		! source line 955
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0AS",r10
!   _temp_1707 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-136]
!   _temp_1708 = _temp_1707 + 4
	load	[r14+-136],r1
	add	r1,4,r1
	store	r1,[r14+-132]
!   Move address of _temp_1708 [i ] into _temp_1709
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
!   _temp_1710 = _temp_1709 + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-124]
!   Data Move: *_temp_1710 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-124],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_1712 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-116]
!   _temp_1713 = _temp_1712 + 4
	load	[r14+-116],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_1713 [i ] into _temp_1714
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
!   _temp_1711 = _temp_1714		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-120]
!   _temp_1715 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_1711  sizeInBytes=4
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
!   _temp_1716 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-100]
!   _temp_1717 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_1716  sizeInBytes=4
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
	jmp	_Label_1718
_Label_1699:
! ELSE...
	mov	958,r13		! source line 958
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0IF",r10
!   if isZombie then goto _Label_1720 else goto _Label_1722
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1722
	jmp	_Label_1720
_Label_1722:
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1724 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1723 = *_temp_1724  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   _temp_1726 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_1727 = _temp_1726 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1727 [i ] into _temp_1728
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
!   _temp_1729 = _temp_1728 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1725 = *_temp_1729  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_1723 != _temp_1725 then goto _Label_1720		(int)
	load	[r14+-92],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bne	_Label_1720
!	jmp	_Label_1721
_Label_1721:
!   _temp_1731 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_1732 = _temp_1731 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1732 [i ] into _temp_1733
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
!   _temp_1734 = _temp_1733 + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1730 = *_temp_1734  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_1730 != 1 then goto _Label_1720		(int)
	load	[r14+-64],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1720
!	jmp	_Label_1719
_Label_1719:
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
!   _temp_1735 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1735 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0SE",r10
!   _temp_1736 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   _temp_1737 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1736  sizeInBytes=4
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
_Label_1720:
! END IF...
_Label_1718:
!   Increment the FOR-LOOP index variable and jump back
_Label_1694:
!   i = i + 1
	load	[r14+-180],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-180]
	jmp	_Label_1692
! END FOR
_Label_1695:
! IF STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0IF",r10
!   if isZombie then goto _Label_1739 else goto _Label_1738
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1738
	jmp	_Label_1739
_Label_1738:
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
!   _temp_1740 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1740 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0SE",r10
!   _temp_1741 = &freeList
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
!   _temp_1742 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-24]
!   _temp_1743 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1742  sizeInBytes=4
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
_Label_1739:
! SEND STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0SE",r10
!   _temp_1744 = &processManagerLock
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
	.word	_Label_1745
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1746
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1747
	.word	12
	.word	4
	.word	_Label_1748
	.word	-16
	.word	4
	.word	_Label_1749
	.word	-20
	.word	4
	.word	_Label_1750
	.word	-24
	.word	4
	.word	_Label_1751
	.word	-28
	.word	4
	.word	_Label_1752
	.word	-32
	.word	4
	.word	_Label_1753
	.word	-36
	.word	4
	.word	_Label_1754
	.word	-40
	.word	4
	.word	_Label_1755
	.word	-44
	.word	4
	.word	_Label_1756
	.word	-48
	.word	4
	.word	_Label_1757
	.word	-52
	.word	4
	.word	_Label_1758
	.word	-56
	.word	4
	.word	_Label_1759
	.word	-60
	.word	4
	.word	_Label_1760
	.word	-64
	.word	4
	.word	_Label_1761
	.word	-68
	.word	4
	.word	_Label_1762
	.word	-72
	.word	4
	.word	_Label_1763
	.word	-76
	.word	4
	.word	_Label_1764
	.word	-80
	.word	4
	.word	_Label_1765
	.word	-84
	.word	4
	.word	_Label_1766
	.word	-88
	.word	4
	.word	_Label_1767
	.word	-92
	.word	4
	.word	_Label_1768
	.word	-96
	.word	4
	.word	_Label_1769
	.word	-100
	.word	4
	.word	_Label_1770
	.word	-104
	.word	4
	.word	_Label_1771
	.word	-108
	.word	4
	.word	_Label_1772
	.word	-112
	.word	4
	.word	_Label_1773
	.word	-116
	.word	4
	.word	_Label_1774
	.word	-120
	.word	4
	.word	_Label_1775
	.word	-124
	.word	4
	.word	_Label_1776
	.word	-128
	.word	4
	.word	_Label_1777
	.word	-132
	.word	4
	.word	_Label_1778
	.word	-136
	.word	4
	.word	_Label_1779
	.word	-140
	.word	4
	.word	_Label_1780
	.word	-144
	.word	4
	.word	_Label_1781
	.word	-148
	.word	4
	.word	_Label_1782
	.word	-152
	.word	4
	.word	_Label_1783
	.word	-156
	.word	4
	.word	_Label_1784
	.word	-160
	.word	4
	.word	_Label_1785
	.word	-164
	.word	4
	.word	_Label_1786
	.word	-168
	.word	4
	.word	_Label_1787
	.word	-172
	.word	4
	.word	_Label_1788
	.word	-176
	.word	4
	.word	_Label_1789
	.word	-180
	.word	4
	.word	_Label_1790
	.word	-9
	.word	1
	.word	0
_Label_1745:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_1746:
	.ascii	"Pself\0"
	.align
_Label_1747:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1789:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1790:
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
_Label_3393:
	push	r0
	sub	r1,1,r1
	bne	_Label_3393
	mov	974,r13		! source line 974
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0SE",r10
!   _temp_1791 = &processManagerLock
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
_Label_1792:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1796 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1795 = *_temp_1796  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_1795 == 2 then goto _Label_1794		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1794
!	jmp	_Label_1793
_Label_1793:
	mov	978,r13		! source line 978
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_1797 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   _temp_1798 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1797  sizeInBytes=4
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
	jmp	_Label_1792
_Label_1794:
! ASSIGNMENT STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1799 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exitStatus = *_temp_1799  (sizeInBytes=4)
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
!   _temp_1800 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1800 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0SE",r10
!   _temp_1801 = &freeList
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
!   _temp_1802 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1803 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1802  sizeInBytes=4
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
!   _temp_1804 = &processManagerLock
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
	.word	_Label_1805
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1806
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1807
	.word	12
	.word	4
	.word	_Label_1808
	.word	-12
	.word	4
	.word	_Label_1809
	.word	-16
	.word	4
	.word	_Label_1810
	.word	-20
	.word	4
	.word	_Label_1811
	.word	-24
	.word	4
	.word	_Label_1812
	.word	-28
	.word	4
	.word	_Label_1813
	.word	-32
	.word	4
	.word	_Label_1814
	.word	-36
	.word	4
	.word	_Label_1815
	.word	-40
	.word	4
	.word	_Label_1816
	.word	-44
	.word	4
	.word	_Label_1817
	.word	-48
	.word	4
	.word	_Label_1818
	.word	-52
	.word	4
	.word	_Label_1819
	.word	-56
	.word	4
	.word	0
_Label_1805:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_1806:
	.ascii	"Pself\0"
	.align
_Label_1807:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1819:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1820
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1820:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1821
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1821:
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
_Label_3394:
	push	r0
	sub	r1,1,r1
	bne	_Label_3394
	mov	1025,r13		! source line 1025
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1822 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1822  sizeInBytes=4
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
!   _temp_1824 = &framesInUse
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
!   _temp_1826 = &frameManagerLock
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
!   _temp_1828 = &newFramesAvailable
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
!   _temp_1833 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1834 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1833  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1829:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1834 then goto _Label_1832		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1832
_Label_1830:
	mov	1044,r13		! source line 1044
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1837 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1837) then goto _Label_1836
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1836
!	jmp	_Label_1835
_Label_1835:
! THEN...
	mov	1048,r13		! source line 1048
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1838 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1838  sizeInBytes=4
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
_Label_1836:
!   Increment the FOR-LOOP index variable and jump back
_Label_1831:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1829
! END FOR
_Label_1832:
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
	.word	_Label_1839
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1840
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1841
	.word	-12
	.word	4
	.word	_Label_1842
	.word	-16
	.word	4
	.word	_Label_1843
	.word	-20
	.word	4
	.word	_Label_1844
	.word	-24
	.word	4
	.word	_Label_1845
	.word	-28
	.word	4
	.word	_Label_1846
	.word	-32
	.word	4
	.word	_Label_1847
	.word	-36
	.word	4
	.word	_Label_1848
	.word	-40
	.word	4
	.word	_Label_1849
	.word	-44
	.word	4
	.word	_Label_1850
	.word	-48
	.word	4
	.word	_Label_1851
	.word	-52
	.word	4
	.word	_Label_1852
	.word	-56
	.word	4
	.word	0
_Label_1839:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1840:
	.ascii	"Pself\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1852:
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
_Label_3395:
	push	r0
	sub	r1,1,r1
	bne	_Label_3395
	mov	1055,r13		! source line 1055
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_1853 = &frameManagerLock
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
!   _temp_1854 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1854  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1060,r13		! source line 1060
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1855 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1855  sizeInBytes=4
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
!   _temp_1856 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1856  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1062,r13		! source line 1062
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1063,r13		! source line 1063
	mov	"\0\0SE",r10
!   _temp_1857 = &framesInUse
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
!   _temp_1858 = &frameManagerLock
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
	.word	_Label_1859
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1860
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1861
	.word	-12
	.word	4
	.word	_Label_1862
	.word	-16
	.word	4
	.word	_Label_1863
	.word	-20
	.word	4
	.word	_Label_1864
	.word	-24
	.word	4
	.word	_Label_1865
	.word	-28
	.word	4
	.word	_Label_1866
	.word	-32
	.word	4
	.word	0
_Label_1859:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1860:
	.ascii	"Pself\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1853\0"
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
_Label_3396:
	push	r0
	sub	r1,1,r1
	bne	_Label_3396
	mov	1069,r13		! source line 1069
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0SE",r10
!   _temp_1867 = &frameManagerLock
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
_Label_1868:
!   if numberFreeFrames >= 1 then goto _Label_1870		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1870
!	jmp	_Label_1869
_Label_1869:
	mov	1080,r13		! source line 1080
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1081,r13		! source line 1081
	mov	"\0\0SE",r10
!   _temp_1871 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1872 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1871  sizeInBytes=4
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
	jmp	_Label_1868
_Label_1870:
! ASSIGNMENT STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0AS",r10
	mov	1085,r13		! source line 1085
	mov	"\0\0SE",r10
!   _temp_1873 = &framesInUse
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
!   _temp_1874 = &frameManagerLock
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
!   _temp_1875 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1875		(int)
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
	.word	_Label_1876
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1877
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1878
	.word	-12
	.word	4
	.word	_Label_1879
	.word	-16
	.word	4
	.word	_Label_1880
	.word	-20
	.word	4
	.word	_Label_1881
	.word	-24
	.word	4
	.word	_Label_1882
	.word	-28
	.word	4
	.word	_Label_1883
	.word	-32
	.word	4
	.word	_Label_1884
	.word	-36
	.word	4
	.word	_Label_1885
	.word	-40
	.word	4
	.word	0
_Label_1876:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1877:
	.ascii	"Pself\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1884:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1885:
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
_Label_3397:
	push	r0
	sub	r1,1,r1
	bne	_Label_3397
	mov	1099,r13		! source line 1099
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0SE",r10
!   _temp_1886 = &frameManagerLock
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
_Label_1887:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_1889		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1889
!	jmp	_Label_1888
_Label_1888:
	mov	1102,r13		! source line 1102
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0SE",r10
!   _temp_1890 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1891 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1890  sizeInBytes=4
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
	jmp	_Label_1887
_Label_1889:
! FOR STATEMENT...
	mov	1105,r13		! source line 1105
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1896 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1897 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1896  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1892:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1897 then goto _Label_1895		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1895
_Label_1893:
	mov	1105,r13		! source line 1105
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0AS",r10
	mov	1106,r13		! source line 1106
	mov	"\0\0SE",r10
!   _temp_1898 = &framesInUse
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
!   _temp_1899 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1899		(int)
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
_Label_1894:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1892
! END FOR
_Label_1895:
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
!   _temp_1900 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1900 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0SE",r10
!   _temp_1901 = &frameManagerLock
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
	.word	_Label_1902
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1903
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1904
	.word	12
	.word	4
	.word	_Label_1905
	.word	16
	.word	4
	.word	_Label_1906
	.word	-12
	.word	4
	.word	_Label_1907
	.word	-16
	.word	4
	.word	_Label_1908
	.word	-20
	.word	4
	.word	_Label_1909
	.word	-24
	.word	4
	.word	_Label_1910
	.word	-28
	.word	4
	.word	_Label_1911
	.word	-32
	.word	4
	.word	_Label_1912
	.word	-36
	.word	4
	.word	_Label_1913
	.word	-40
	.word	4
	.word	_Label_1914
	.word	-44
	.word	4
	.word	_Label_1915
	.word	-48
	.word	4
	.word	_Label_1916
	.word	-52
	.word	4
	.word	_Label_1917
	.word	-56
	.word	4
	.word	0
_Label_1902:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1903:
	.ascii	"Pself\0"
	.align
_Label_1904:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1905:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1915:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1916:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1917:
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
_Label_3398:
	push	r0
	sub	r1,1,r1
	bne	_Label_3398
	mov	1117,r13		! source line 1117
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1119,r13		! source line 1119
	mov	"\0\0SE",r10
!   _temp_1918 = &frameManagerLock
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
!   _temp_1923 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1926 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1925 = *_temp_1926  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1924 = _temp_1925 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1923  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_1919:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1924 then goto _Label_1922		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1922
_Label_1920:
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
!   _temp_1927 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1927 div 8192		(int)
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
!   _temp_1928 = &framesInUse
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
_Label_1921:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1919
! END FOR
_Label_1922:
! ASSIGNMENT STATEMENT...
	mov	1125,r13		! source line 1125
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1930 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1929 = *_temp_1930  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1929		(int)
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
!   _temp_1931 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1931 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_1932 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1933 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1932  sizeInBytes=4
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
!   _temp_1934 = &frameManagerLock
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
	.word	_Label_1935
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1936
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1937
	.word	12
	.word	4
	.word	_Label_1938
	.word	-12
	.word	4
	.word	_Label_1939
	.word	-16
	.word	4
	.word	_Label_1940
	.word	-20
	.word	4
	.word	_Label_1941
	.word	-24
	.word	4
	.word	_Label_1942
	.word	-28
	.word	4
	.word	_Label_1943
	.word	-32
	.word	4
	.word	_Label_1944
	.word	-36
	.word	4
	.word	_Label_1945
	.word	-40
	.word	4
	.word	_Label_1946
	.word	-44
	.word	4
	.word	_Label_1947
	.word	-48
	.word	4
	.word	_Label_1948
	.word	-52
	.word	4
	.word	_Label_1949
	.word	-56
	.word	4
	.word	_Label_1950
	.word	-60
	.word	4
	.word	_Label_1951
	.word	-64
	.word	4
	.word	_Label_1952
	.word	-68
	.word	4
	.word	_Label_1953
	.word	-72
	.word	4
	.word	0
_Label_1935:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1936:
	.ascii	"Pself\0"
	.align
_Label_1937:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1951:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1952:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1953:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1954
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
_Label_1954:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1955
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1955:
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
_Label_3399:
	push	r0
	sub	r1,1,r1
	bne	_Label_3399
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
!   _temp_1956 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1958 = &_temp_1957
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1958 = _temp_1958 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1960:
!   Data Move: *_temp_1958 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1958 = _temp_1958 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1959 = _temp_1959 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1959) then goto _Label_1960
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1960
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1961 = &_temp_1957
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3400
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3400:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1956 = *_temp_1961  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3401:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3401
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
	.word	_Label_1962
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1963
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1964
	.word	-12
	.word	4
	.word	_Label_1965
	.word	-16
	.word	4
	.word	_Label_1966
	.word	-20
	.word	4
	.word	_Label_1967
	.word	-104
	.word	84
	.word	_Label_1968
	.word	-108
	.word	4
	.word	0
_Label_1962:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1963:
	.ascii	"Pself\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1956\0"
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
_Label_3402:
	push	r0
	sub	r1,1,r1
	bne	_Label_3402
	mov	1149,r13		! source line 1149
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1969 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1969  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1154,r13		! source line 1154
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1970 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1970  sizeInBytes=4
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
!   _temp_1975 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1976 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1975  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1971:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1976 then goto _Label_1974		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1974
_Label_1972:
	mov	1156,r13		! source line 1156
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1977 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1977  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1157,r13		! source line 1157
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1979 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1979 [i ] into _temp_1980
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
!   _temp_1978 = _temp_1980		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1978  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1158,r13		! source line 1158
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1981 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1981  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1159,r13		! source line 1159
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1983 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1983 [i ] into _temp_1984
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
!   Data Move: _temp_1982 = *_temp_1984  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1982  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1160,r13		! source line 1160
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1985 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1985  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1161,r13		! source line 1161
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1986 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1986  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1162,r13		! source line 1162
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1987 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1987  sizeInBytes=4
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
!   if intIsZero (_temp_1989) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1988  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1988  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1164,r13		! source line 1164
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1990 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1990  sizeInBytes=4
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
!   if intIsZero (_temp_1994) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1993  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1993) then goto _Label_1992
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1992
!	jmp	_Label_1991
_Label_1991:
! THEN...
	mov	1167,r13		! source line 1167
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1996) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1995  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1995  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1167,r13		! source line 1167
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1997
_Label_1992:
! ELSE...
	mov	1169,r13		! source line 1169
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1998 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1998  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1169,r13		! source line 1169
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1997:
! CALL STATEMENT...
!   _temp_1999 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1999  sizeInBytes=4
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
!   if intIsZero (_temp_2002) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2000 else goto _Label_2001
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2001
	jmp	_Label_2000
_Label_2000:
! THEN...
	mov	1173,r13		! source line 1173
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2003 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2003  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1173,r13		! source line 1173
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2004
_Label_2001:
! ELSE...
	mov	1175,r13		! source line 1175
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2005 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2005  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1175,r13		! source line 1175
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2004:
! CALL STATEMENT...
!   _temp_2006 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2006  sizeInBytes=4
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
!   if intIsZero (_temp_2009) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2007 else goto _Label_2008
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2008
	jmp	_Label_2007
_Label_2007:
! THEN...
	mov	1179,r13		! source line 1179
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2010 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2010  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1179,r13		! source line 1179
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2011
_Label_2008:
! ELSE...
	mov	1181,r13		! source line 1181
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2012 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2012  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1181,r13		! source line 1181
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2011:
! CALL STATEMENT...
!   _temp_2013 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2013  sizeInBytes=4
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
!   if intIsZero (_temp_2016) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2014 else goto _Label_2015
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2015
	jmp	_Label_2014
_Label_2014:
! THEN...
	mov	1185,r13		! source line 1185
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2017 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2017  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1185,r13		! source line 1185
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2018
_Label_2015:
! ELSE...
	mov	1187,r13		! source line 1187
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2019 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2019  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1187,r13		! source line 1187
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2018:
! CALL STATEMENT...
!   _temp_2020 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2020  sizeInBytes=4
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
!   if intIsZero (_temp_2023) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2021 else goto _Label_2022
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2022
	jmp	_Label_2021
_Label_2021:
! THEN...
	mov	1191,r13		! source line 1191
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2024 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2024  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1191,r13		! source line 1191
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2025
_Label_2022:
! ELSE...
	mov	1193,r13		! source line 1193
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2026 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2026  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1193,r13		! source line 1193
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2025:
! CALL STATEMENT...
!   Call the function
	mov	1195,r13		! source line 1195
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1973:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1971
! END FOR
_Label_1974:
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
	.word	_Label_2027
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2028
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2029
	.word	-12
	.word	4
	.word	_Label_2030
	.word	-16
	.word	4
	.word	_Label_2031
	.word	-20
	.word	4
	.word	_Label_2032
	.word	-24
	.word	4
	.word	_Label_2033
	.word	-28
	.word	4
	.word	_Label_2034
	.word	-32
	.word	4
	.word	_Label_2035
	.word	-36
	.word	4
	.word	_Label_2036
	.word	-40
	.word	4
	.word	_Label_2037
	.word	-44
	.word	4
	.word	_Label_2038
	.word	-48
	.word	4
	.word	_Label_2039
	.word	-52
	.word	4
	.word	_Label_2040
	.word	-56
	.word	4
	.word	_Label_2041
	.word	-60
	.word	4
	.word	_Label_2042
	.word	-64
	.word	4
	.word	_Label_2043
	.word	-68
	.word	4
	.word	_Label_2044
	.word	-72
	.word	4
	.word	_Label_2045
	.word	-76
	.word	4
	.word	_Label_2046
	.word	-80
	.word	4
	.word	_Label_2047
	.word	-84
	.word	4
	.word	_Label_2048
	.word	-88
	.word	4
	.word	_Label_2049
	.word	-92
	.word	4
	.word	_Label_2050
	.word	-96
	.word	4
	.word	_Label_2051
	.word	-100
	.word	4
	.word	_Label_2052
	.word	-104
	.word	4
	.word	_Label_2053
	.word	-108
	.word	4
	.word	_Label_2054
	.word	-112
	.word	4
	.word	_Label_2055
	.word	-116
	.word	4
	.word	_Label_2056
	.word	-120
	.word	4
	.word	_Label_2057
	.word	-124
	.word	4
	.word	_Label_2058
	.word	-128
	.word	4
	.word	_Label_2059
	.word	-132
	.word	4
	.word	_Label_2060
	.word	-136
	.word	4
	.word	_Label_2061
	.word	-140
	.word	4
	.word	_Label_2062
	.word	-144
	.word	4
	.word	_Label_2063
	.word	-148
	.word	4
	.word	_Label_2064
	.word	-152
	.word	4
	.word	_Label_2065
	.word	-156
	.word	4
	.word	_Label_2066
	.word	-160
	.word	4
	.word	_Label_2067
	.word	-164
	.word	4
	.word	_Label_2068
	.word	-168
	.word	4
	.word	0
_Label_2027:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2028:
	.ascii	"Pself\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_2059:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_2068:
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
_Label_3403:
	push	r0
	sub	r1,1,r1
	bne	_Label_3403
	mov	1201,r13		! source line 1201
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1206,r13		! source line 1206
	mov	"\0\0RE",r10
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
!   _temp_2069 = _temp_2070 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2069  (sizeInBytes=4)
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
	.word	_Label_2073
	.word	8		! total size of parameters
	.word	16		! frame size = 16
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
	.word	0
_Label_2073:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
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
_Label_3404:
	push	r0
	sub	r1,1,r1
	bne	_Label_3404
	mov	1211,r13		! source line 1211
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1215,r13		! source line 1215
	mov	"\0\0RE",r10
!   _temp_2082 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2082 [entry ] into _temp_2083
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
!   Data Move: _temp_2081 = *_temp_2083  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2080 = _temp_2081 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2080  (sizeInBytes=4)
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
	.word	_Label_2084
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2085
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2086
	.word	12
	.word	4
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
	.word	0
_Label_2084:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2085:
	.ascii	"Pself\0"
	.align
_Label_2086:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2080\0"
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
_Label_3405:
	push	r0
	sub	r1,1,r1
	bne	_Label_3405
	mov	1220,r13		! source line 1220
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1225,r13		! source line 1225
	mov	"\0\0AS",r10
!   _temp_2091 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2091 [entry ] into _temp_2092
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
!   _temp_2096 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2096 [entry ] into _temp_2097
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
!   Data Move: _temp_2095 = *_temp_2097  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2094 = _temp_2095 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2093 = _temp_2094 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2092 = _temp_2093  (sizeInBytes=4)
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
	.word	_Label_2098
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2099
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2100
	.word	12
	.word	4
	.word	_Label_2101
	.word	16
	.word	4
	.word	_Label_2102
	.word	-12
	.word	4
	.word	_Label_2103
	.word	-16
	.word	4
	.word	_Label_2104
	.word	-20
	.word	4
	.word	_Label_2105
	.word	-24
	.word	4
	.word	_Label_2106
	.word	-28
	.word	4
	.word	_Label_2107
	.word	-32
	.word	4
	.word	_Label_2108
	.word	-36
	.word	4
	.word	0
_Label_2098:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2099:
	.ascii	"Pself\0"
	.align
_Label_2100:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2101:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2091\0"
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
_Label_3406:
	push	r0
	sub	r1,1,r1
	bne	_Label_3406
	mov	1230,r13		! source line 1230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0RE",r10
!   _temp_2112 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2112 [entry ] into _temp_2113
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
!   Data Move: _temp_2111 = *_temp_2113  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2110 = _temp_2111 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2110) then goto _Label_2114
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2114
!   _temp_2109 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2115
_Label_2114:
!   _temp_2109 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2115:
!   ReturnResult: _temp_2109  (sizeInBytes=1)
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
	.word	_Label_2116
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2117
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2118
	.word	12
	.word	4
	.word	_Label_2119
	.word	-16
	.word	4
	.word	_Label_2120
	.word	-20
	.word	4
	.word	_Label_2121
	.word	-24
	.word	4
	.word	_Label_2122
	.word	-28
	.word	4
	.word	_Label_2123
	.word	-9
	.word	1
	.word	0
_Label_2116:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2117:
	.ascii	"Pself\0"
	.align
_Label_2118:
	.byte	'I'
	.ascii	"entry\0"
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
	.byte	'C'
	.ascii	"_temp_2109\0"
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
_Label_3407:
	push	r0
	sub	r1,1,r1
	bne	_Label_3407
	mov	1239,r13		! source line 1239
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1243,r13		! source line 1243
	mov	"\0\0RE",r10
!   _temp_2127 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2127 [entry ] into _temp_2128
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
!   Data Move: _temp_2126 = *_temp_2128  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2125 = _temp_2126 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2125) then goto _Label_2129
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2129
!   _temp_2124 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2130
_Label_2129:
!   _temp_2124 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2130:
!   ReturnResult: _temp_2124  (sizeInBytes=1)
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
	.word	_Label_2131
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2132
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2133
	.word	12
	.word	4
	.word	_Label_2134
	.word	-16
	.word	4
	.word	_Label_2135
	.word	-20
	.word	4
	.word	_Label_2136
	.word	-24
	.word	4
	.word	_Label_2137
	.word	-28
	.word	4
	.word	_Label_2138
	.word	-9
	.word	1
	.word	0
_Label_2131:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2132:
	.ascii	"Pself\0"
	.align
_Label_2133:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2138:
	.byte	'C'
	.ascii	"_temp_2124\0"
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
_Label_3408:
	push	r0
	sub	r1,1,r1
	bne	_Label_3408
	mov	1248,r13		! source line 1248
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0RE",r10
!   _temp_2142 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2142 [entry ] into _temp_2143
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
!   Data Move: _temp_2141 = *_temp_2143  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2140 = _temp_2141 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2140) then goto _Label_2144
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2144
!   _temp_2139 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2145
_Label_2144:
!   _temp_2139 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2145:
!   ReturnResult: _temp_2139  (sizeInBytes=1)
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
	.word	_Label_2146
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2147
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2148
	.word	12
	.word	4
	.word	_Label_2149
	.word	-16
	.word	4
	.word	_Label_2150
	.word	-20
	.word	4
	.word	_Label_2151
	.word	-24
	.word	4
	.word	_Label_2152
	.word	-28
	.word	4
	.word	_Label_2153
	.word	-9
	.word	1
	.word	0
_Label_2146:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2147:
	.ascii	"Pself\0"
	.align
_Label_2148:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2153:
	.byte	'C'
	.ascii	"_temp_2139\0"
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
_Label_3409:
	push	r0
	sub	r1,1,r1
	bne	_Label_3409
	mov	1257,r13		! source line 1257
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1261,r13		! source line 1261
	mov	"\0\0RE",r10
!   _temp_2157 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2157 [entry ] into _temp_2158
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
!   Data Move: _temp_2156 = *_temp_2158  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2155 = _temp_2156 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2155) then goto _Label_2159
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2159
!   _temp_2154 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2160
_Label_2159:
!   _temp_2154 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2160:
!   ReturnResult: _temp_2154  (sizeInBytes=1)
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
	.word	_Label_2161
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2162
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2163
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_2161:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2162:
	.ascii	"Pself\0"
	.align
_Label_2163:
	.byte	'I'
	.ascii	"entry\0"
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
_Label_2168:
	.byte	'C'
	.ascii	"_temp_2154\0"
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
_Label_3410:
	push	r0
	sub	r1,1,r1
	bne	_Label_3410
	mov	1266,r13		! source line 1266
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1270,r13		! source line 1270
	mov	"\0\0AS",r10
!   _temp_2169 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2169 [entry ] into _temp_2170
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
!   _temp_2173 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2173 [entry ] into _temp_2174
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
!   Data Move: _temp_2172 = *_temp_2174  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2171 = _temp_2172 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2170 = _temp_2171  (sizeInBytes=4)
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
	.word	_Label_2175
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2176
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2177
	.word	12
	.word	4
	.word	_Label_2178
	.word	-12
	.word	4
	.word	_Label_2179
	.word	-16
	.word	4
	.word	_Label_2180
	.word	-20
	.word	4
	.word	_Label_2181
	.word	-24
	.word	4
	.word	_Label_2182
	.word	-28
	.word	4
	.word	_Label_2183
	.word	-32
	.word	4
	.word	0
_Label_2175:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2176:
	.ascii	"Pself\0"
	.align
_Label_2177:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2169\0"
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
_Label_3411:
	push	r0
	sub	r1,1,r1
	bne	_Label_3411
	mov	1275,r13		! source line 1275
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1279,r13		! source line 1279
	mov	"\0\0AS",r10
!   _temp_2184 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2184 [entry ] into _temp_2185
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
!   _temp_2188 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2188 [entry ] into _temp_2189
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
!   Data Move: _temp_2187 = *_temp_2189  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2186 = _temp_2187 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2185 = _temp_2186  (sizeInBytes=4)
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
	.word	_Label_2190
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2191
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2192
	.word	12
	.word	4
	.word	_Label_2193
	.word	-12
	.word	4
	.word	_Label_2194
	.word	-16
	.word	4
	.word	_Label_2195
	.word	-20
	.word	4
	.word	_Label_2196
	.word	-24
	.word	4
	.word	_Label_2197
	.word	-28
	.word	4
	.word	_Label_2198
	.word	-32
	.word	4
	.word	0
_Label_2190:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2191:
	.ascii	"Pself\0"
	.align
_Label_2192:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2184\0"
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
_Label_3412:
	push	r0
	sub	r1,1,r1
	bne	_Label_3412
	mov	1284,r13		! source line 1284
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0AS",r10
!   _temp_2199 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2199 [entry ] into _temp_2200
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
!   _temp_2203 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2203 [entry ] into _temp_2204
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
!   Data Move: _temp_2202 = *_temp_2204  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2201 = _temp_2202 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2200 = _temp_2201  (sizeInBytes=4)
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
	.word	_Label_2205
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2206
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2207
	.word	12
	.word	4
	.word	_Label_2208
	.word	-12
	.word	4
	.word	_Label_2209
	.word	-16
	.word	4
	.word	_Label_2210
	.word	-20
	.word	4
	.word	_Label_2211
	.word	-24
	.word	4
	.word	_Label_2212
	.word	-28
	.word	4
	.word	_Label_2213
	.word	-32
	.word	4
	.word	0
_Label_2205:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2206:
	.ascii	"Pself\0"
	.align
_Label_2207:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2199\0"
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
_Label_3413:
	push	r0
	sub	r1,1,r1
	bne	_Label_3413
	mov	1293,r13		! source line 1293
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0AS",r10
!   _temp_2214 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2214 [entry ] into _temp_2215
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
!   _temp_2218 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2218 [entry ] into _temp_2219
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
!   Data Move: _temp_2217 = *_temp_2219  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2216 = _temp_2217 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2215 = _temp_2216  (sizeInBytes=4)
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
	.word	_Label_2220
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2221
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2222
	.word	12
	.word	4
	.word	_Label_2223
	.word	-12
	.word	4
	.word	_Label_2224
	.word	-16
	.word	4
	.word	_Label_2225
	.word	-20
	.word	4
	.word	_Label_2226
	.word	-24
	.word	4
	.word	_Label_2227
	.word	-28
	.word	4
	.word	_Label_2228
	.word	-32
	.word	4
	.word	0
_Label_2220:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2221:
	.ascii	"Pself\0"
	.align
_Label_2222:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2214\0"
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
_Label_3414:
	push	r0
	sub	r1,1,r1
	bne	_Label_3414
	mov	1302,r13		! source line 1302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1306,r13		! source line 1306
	mov	"\0\0AS",r10
!   _temp_2229 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2229 [entry ] into _temp_2230
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
!   _temp_2233 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2233 [entry ] into _temp_2234
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
!   Data Move: _temp_2232 = *_temp_2234  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2231 = _temp_2232 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2230 = _temp_2231  (sizeInBytes=4)
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
	.word	_Label_2235
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2236
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2237
	.word	12
	.word	4
	.word	_Label_2238
	.word	-12
	.word	4
	.word	_Label_2239
	.word	-16
	.word	4
	.word	_Label_2240
	.word	-20
	.word	4
	.word	_Label_2241
	.word	-24
	.word	4
	.word	_Label_2242
	.word	-28
	.word	4
	.word	_Label_2243
	.word	-32
	.word	4
	.word	0
_Label_2235:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2236:
	.ascii	"Pself\0"
	.align
_Label_2237:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2234\0"
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
_Label_3415:
	push	r0
	sub	r1,1,r1
	bne	_Label_3415
	mov	1311,r13		! source line 1311
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0AS",r10
!   _temp_2244 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2244 [entry ] into _temp_2245
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
!   _temp_2248 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2248 [entry ] into _temp_2249
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
!   Data Move: _temp_2247 = *_temp_2249  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2246 = _temp_2247 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2245 = _temp_2246  (sizeInBytes=4)
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
	.word	_Label_2250
	.word	8		! total size of parameters
	.word	24		! frame size = 24
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
	.word	0
_Label_2250:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2251:
	.ascii	"Pself\0"
	.align
_Label_2252:
	.byte	'I'
	.ascii	"entry\0"
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
	.ascii	"_temp_2245\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2244\0"
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
_Label_3416:
	push	r0
	sub	r1,1,r1
	bne	_Label_3416
	mov	1320,r13		! source line 1320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1324,r13		! source line 1324
	mov	"\0\0AS",r10
!   _temp_2259 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2259 [entry ] into _temp_2260
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
!   _temp_2263 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2263 [entry ] into _temp_2264
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
!   Data Move: _temp_2262 = *_temp_2264  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2261 = _temp_2262 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2260 = _temp_2261  (sizeInBytes=4)
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
	.word	_Label_2265
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2266
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2267
	.word	12
	.word	4
	.word	_Label_2268
	.word	-12
	.word	4
	.word	_Label_2269
	.word	-16
	.word	4
	.word	_Label_2270
	.word	-20
	.word	4
	.word	_Label_2271
	.word	-24
	.word	4
	.word	_Label_2272
	.word	-28
	.word	4
	.word	_Label_2273
	.word	-32
	.word	4
	.word	0
_Label_2265:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2266:
	.ascii	"Pself\0"
	.align
_Label_2267:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2259\0"
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
_Label_3417:
	push	r0
	sub	r1,1,r1
	bne	_Label_3417
	mov	1329,r13		! source line 1329
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1333,r13		! source line 1333
	mov	"\0\0AS",r10
!   _temp_2274 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2274 [entry ] into _temp_2275
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
!   _temp_2278 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2278 [entry ] into _temp_2279
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
!   Data Move: _temp_2277 = *_temp_2279  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2276 = _temp_2277 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2275 = _temp_2276  (sizeInBytes=4)
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
	.word	_Label_2280
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2281
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2282
	.word	12
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
	.word	0
_Label_2280:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2281:
	.ascii	"Pself\0"
	.align
_Label_2282:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2274\0"
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
_Label_3418:
	push	r0
	sub	r1,1,r1
	bne	_Label_3418
	mov	1338,r13		! source line 1338
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2290 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2290 [0 ] into _temp_2291
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
!   _temp_2289 = _temp_2291		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2292 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2289  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2292  sizeInBytes=4
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
	.word	_Label_2293
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2294
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2295
	.word	-12
	.word	4
	.word	_Label_2296
	.word	-16
	.word	4
	.word	_Label_2297
	.word	-20
	.word	4
	.word	_Label_2298
	.word	-24
	.word	4
	.word	0
_Label_2293:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2294:
	.ascii	"Pself\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2289\0"
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
_Label_3419:
	push	r0
	sub	r1,1,r1
	bne	_Label_3419
	mov	1349,r13		! source line 1349
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1364,r13		! source line 1364
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2299
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2299
	jmp	_Label_2300
_Label_2299:
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
	jmp	_Label_2301
_Label_2300:
! ELSE...
	mov	1366,r13		! source line 1366
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2303		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2303
!	jmp	_Label_2302
_Label_2302:
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
_Label_2303:
! END IF...
_Label_2301:
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
_Label_2304:
!	jmp	_Label_2305
_Label_2305:
	mov	1373,r13		! source line 1373
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2308		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2308
!	jmp	_Label_2307
_Label_2307:
! THEN...
	mov	1375,r13		! source line 1375
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2309 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2309  sizeInBytes=4
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
_Label_2308:
! IF STATEMENT...
	mov	1378,r13		! source line 1378
	mov	"\0\0IF",r10
	mov	1378,r13		! source line 1378
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2313) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2312  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2312 then goto _Label_2311 else goto _Label_2310
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2310
	jmp	_Label_2311
_Label_2310:
! THEN...
	mov	1379,r13		! source line 1379
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2314 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2314  sizeInBytes=4
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
_Label_2311:
! ASSIGNMENT STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0AS",r10
	mov	1382,r13		! source line 1382
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2316) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2315  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2315 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0WH",r10
_Label_2317:
!   if offset >= 8192 then goto _Label_2319		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2319
!	jmp	_Label_2318
_Label_2318:
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
!   Data Move: _temp_2320 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2320  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2322		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2322
!	jmp	_Label_2321
_Label_2321:
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
_Label_2322:
! END WHILE...
	jmp	_Label_2317
_Label_2319:
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
	jmp	_Label_2304
_Label_2306:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2323
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2324
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2325
	.word	12
	.word	4
	.word	_Label_2326
	.word	16
	.word	4
	.word	_Label_2327
	.word	20
	.word	4
	.word	_Label_2328
	.word	-9
	.word	1
	.word	_Label_2329
	.word	-16
	.word	4
	.word	_Label_2330
	.word	-20
	.word	4
	.word	_Label_2331
	.word	-24
	.word	4
	.word	_Label_2332
	.word	-28
	.word	4
	.word	_Label_2333
	.word	-10
	.word	1
	.word	_Label_2334
	.word	-32
	.word	4
	.word	_Label_2335
	.word	-36
	.word	4
	.word	_Label_2336
	.word	-40
	.word	4
	.word	_Label_2337
	.word	-44
	.word	4
	.word	_Label_2338
	.word	-48
	.word	4
	.word	0
_Label_2323:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2324:
	.ascii	"Pself\0"
	.align
_Label_2325:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2326:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2327:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2328:
	.byte	'C'
	.ascii	"_temp_2320\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2333:
	.byte	'C'
	.ascii	"_temp_2312\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2335:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2336:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2337:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2338:
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
_Label_3420:
	push	r0
	sub	r1,1,r1
	bne	_Label_3420
	mov	1403,r13		! source line 1403
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2339
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2339
	jmp	_Label_2340
_Label_2339:
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
	jmp	_Label_2341
_Label_2340:
! ELSE...
	mov	1416,r13		! source line 1416
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2343		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2343
!	jmp	_Label_2342
_Label_2342:
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
_Label_2343:
! END IF...
_Label_2341:
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
_Label_2344:
!	jmp	_Label_2345
_Label_2345:
	mov	1421,r13		! source line 1421
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2350		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2350
	jmp	_Label_2347
_Label_2350:
	mov	1423,r13		! source line 1423
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2352) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2351  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2351 then goto _Label_2349 else goto _Label_2347
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2347
	jmp	_Label_2349
_Label_2349:
	mov	1424,r13		! source line 1424
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2354) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2353  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2353 then goto _Label_2348 else goto _Label_2347
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2347
	jmp	_Label_2348
_Label_2347:
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
_Label_2348:
! ASSIGNMENT STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0AS",r10
	mov	1427,r13		! source line 1427
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2356) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2355  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2355 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0WH",r10
_Label_2357:
!   if offset >= 8192 then goto _Label_2359		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2359
!	jmp	_Label_2358
_Label_2358:
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
!   Data Move: _temp_2360 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2360  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2362		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2362
!	jmp	_Label_2361
_Label_2361:
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
_Label_2362:
! END WHILE...
	jmp	_Label_2357
_Label_2359:
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
	jmp	_Label_2344
_Label_2346:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2363
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2364
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2365
	.word	12
	.word	4
	.word	_Label_2366
	.word	16
	.word	4
	.word	_Label_2367
	.word	20
	.word	4
	.word	_Label_2368
	.word	-9
	.word	1
	.word	_Label_2369
	.word	-16
	.word	4
	.word	_Label_2370
	.word	-20
	.word	4
	.word	_Label_2371
	.word	-24
	.word	4
	.word	_Label_2372
	.word	-10
	.word	1
	.word	_Label_2373
	.word	-28
	.word	4
	.word	_Label_2374
	.word	-11
	.word	1
	.word	_Label_2375
	.word	-32
	.word	4
	.word	_Label_2376
	.word	-36
	.word	4
	.word	_Label_2377
	.word	-40
	.word	4
	.word	_Label_2378
	.word	-44
	.word	4
	.word	0
_Label_2363:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2364:
	.ascii	"Pself\0"
	.align
_Label_2365:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2366:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2367:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2368:
	.byte	'C'
	.ascii	"_temp_2360\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2372:
	.byte	'C'
	.ascii	"_temp_2353\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2374:
	.byte	'C'
	.ascii	"_temp_2351\0"
	.align
_Label_2375:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2376:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2377:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2378:
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
_Label_3421:
	push	r0
	sub	r1,1,r1
	bne	_Label_3421
	mov	1445,r13		! source line 1445
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0IF",r10
	mov	1469,r13		! source line 1469
	mov	"\0\0SE",r10
!   _temp_2382 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2383) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2382  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2381  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2381 >= 4 then goto _Label_2380		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2380
!	jmp	_Label_2379
_Label_2379:
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
_Label_2380:
! IF STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2385		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2385
!	jmp	_Label_2384
_Label_2384:
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
_Label_2385:
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
!   _temp_2388 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2387 = _temp_2388 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2389 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2390) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2387  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2389  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2386  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2386  (sizeInBytes=4)
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
	.word	_Label_2391
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2392
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2393
	.word	12
	.word	4
	.word	_Label_2394
	.word	16
	.word	4
	.word	_Label_2395
	.word	20
	.word	4
	.word	_Label_2396
	.word	-12
	.word	4
	.word	_Label_2397
	.word	-16
	.word	4
	.word	_Label_2398
	.word	-20
	.word	4
	.word	_Label_2399
	.word	-24
	.word	4
	.word	_Label_2400
	.word	-28
	.word	4
	.word	_Label_2401
	.word	-32
	.word	4
	.word	_Label_2402
	.word	-36
	.word	4
	.word	_Label_2403
	.word	-40
	.word	4
	.word	_Label_2404
	.word	-44
	.word	4
	.word	0
_Label_2391:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2392:
	.ascii	"Pself\0"
	.align
_Label_2393:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2394:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2395:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2404:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2405
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2405:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2406
	.word	_sourceFileName
	.word	308		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2406:
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
_Label_3422:
	push	r0
	sub	r1,1,r1
	bne	_Label_3422
	mov	1944,r13		! source line 1944
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2407 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2407  sizeInBytes=4
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
!   _temp_2409 = &semUsedInSynchMethods
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
!   _temp_2411 = &diskBusy
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
	.word	_Label_2412
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2413
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2414
	.word	-12
	.word	4
	.word	_Label_2415
	.word	-16
	.word	4
	.word	_Label_2416
	.word	-20
	.word	4
	.word	_Label_2417
	.word	-24
	.word	4
	.word	_Label_2418
	.word	-28
	.word	4
	.word	0
_Label_2412:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2413:
	.ascii	"Pself\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2407\0"
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
_Label_3423:
	push	r0
	sub	r1,1,r1
	bne	_Label_3423
	mov	1960,r13		! source line 1960
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0SE",r10
!   _temp_2419 = &diskBusy
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
_Label_2420:
!	jmp	_Label_2421
_Label_2421:
	mov	1974,r13		! source line 1974
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0SE",r10
!   _temp_2423 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2424) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2423  sizeInBytes=4
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
!   _temp_2425 = &semUsedInSynchMethods
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
!   Data Move: _temp_2434 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2428
	cmp	r1,2
	be	_Label_2429
	cmp	r1,3
	be	_Label_2430
	cmp	r1,4
	be	_Label_2431
	cmp	r1,5
	be	_Label_2432
	cmp	r1,6
	be	_Label_2433
	jmp	_Label_2426
! CASE 1...
_Label_2428:
! SEND STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0SE",r10
!   _temp_2435 = &diskBusy
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
_Label_2429:
! CALL STATEMENT...
!   _temp_2436 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2436  sizeInBytes=4
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
_Label_2430:
! CALL STATEMENT...
!   _temp_2437 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2437  sizeInBytes=4
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
_Label_2431:
! CALL STATEMENT...
!   _temp_2438 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2438  sizeInBytes=4
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
_Label_2432:
! BREAK STATEMENT...
	mov	1994,r13		! source line 1994
	mov	"\0\0BR",r10
	jmp	_Label_2427
! CASE 6...
_Label_2433:
! CALL STATEMENT...
!   _temp_2439 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2439  sizeInBytes=4
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
_Label_2426:
! CALL STATEMENT...
!   _temp_2440 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2440  sizeInBytes=4
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
_Label_2427:
! END WHILE...
	jmp	_Label_2420
_Label_2422:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2441
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2442
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2443
	.word	12
	.word	4
	.word	_Label_2444
	.word	16
	.word	4
	.word	_Label_2445
	.word	20
	.word	4
	.word	_Label_2446
	.word	-12
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
	.word	0
_Label_2441:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2442:
	.ascii	"Pself\0"
	.align
_Label_2443:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2444:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2445:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2419\0"
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
	.word	_Label_2457
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2458
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2459
	.word	12
	.word	4
	.word	_Label_2460
	.word	16
	.word	4
	.word	_Label_2461
	.word	20
	.word	4
	.word	_Label_2462
	.word	24
	.word	4
	.word	0
_Label_2457:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2458:
	.ascii	"Pself\0"
	.align
_Label_2459:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2460:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2461:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2462:
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
_Label_3424:
	push	r0
	sub	r1,1,r1
	bne	_Label_3424
	mov	2033,r13		! source line 2033
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0SE",r10
!   _temp_2463 = &diskBusy
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
_Label_2464:
!	jmp	_Label_2465
_Label_2465:
	mov	2046,r13		! source line 2046
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0SE",r10
!   _temp_2467 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2468) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2467  sizeInBytes=4
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
!   _temp_2469 = &semUsedInSynchMethods
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
!   Data Move: _temp_2478 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2472
	cmp	r1,2
	be	_Label_2473
	cmp	r1,3
	be	_Label_2474
	cmp	r1,4
	be	_Label_2475
	cmp	r1,5
	be	_Label_2476
	cmp	r1,6
	be	_Label_2477
	jmp	_Label_2470
! CASE 1...
_Label_2472:
! SEND STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0SE",r10
!   _temp_2479 = &diskBusy
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
_Label_2473:
! CALL STATEMENT...
!   _temp_2480 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2480  sizeInBytes=4
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
_Label_2474:
! CALL STATEMENT...
!   _temp_2481 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2481  sizeInBytes=4
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
_Label_2475:
! CALL STATEMENT...
!   _temp_2482 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2482  sizeInBytes=4
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
_Label_2476:
! BREAK STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0BR",r10
	jmp	_Label_2471
! CASE 6...
_Label_2477:
! CALL STATEMENT...
!   _temp_2483 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2483  sizeInBytes=4
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
_Label_2470:
! CALL STATEMENT...
!   _temp_2484 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2484  sizeInBytes=4
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
_Label_2471:
! END WHILE...
	jmp	_Label_2464
_Label_2466:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2485
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2486
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2487
	.word	12
	.word	4
	.word	_Label_2488
	.word	16
	.word	4
	.word	_Label_2489
	.word	20
	.word	4
	.word	_Label_2490
	.word	-12
	.word	4
	.word	_Label_2491
	.word	-16
	.word	4
	.word	_Label_2492
	.word	-20
	.word	4
	.word	_Label_2493
	.word	-24
	.word	4
	.word	_Label_2494
	.word	-28
	.word	4
	.word	_Label_2495
	.word	-32
	.word	4
	.word	_Label_2496
	.word	-36
	.word	4
	.word	_Label_2497
	.word	-40
	.word	4
	.word	_Label_2498
	.word	-44
	.word	4
	.word	_Label_2499
	.word	-48
	.word	4
	.word	_Label_2500
	.word	-52
	.word	4
	.word	0
_Label_2485:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2486:
	.ascii	"Pself\0"
	.align
_Label_2487:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2488:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2489:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2463\0"
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
	.word	_Label_2501
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2502
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2503
	.word	12
	.word	4
	.word	_Label_2504
	.word	16
	.word	4
	.word	_Label_2505
	.word	20
	.word	4
	.word	_Label_2506
	.word	24
	.word	4
	.word	0
_Label_2501:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2502:
	.ascii	"Pself\0"
	.align
_Label_2503:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2504:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2505:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2506:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2507
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
_Label_2507:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2508
	.word	_sourceFileName
	.word	331		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2508:
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
_Label_3425:
	push	r0
	sub	r1,1,r1
	bne	_Label_3425
	mov	2109,r13		! source line 2109
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2509 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2509  sizeInBytes=4
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
!   _temp_2511 = &fileManagerLock
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
!   _temp_2514 = &anFCBBecameFree
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
!   _temp_2515 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2517 = &_temp_2516
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2517 = _temp_2517 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2519 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3426:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3426
!   _temp_2519 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2521:
!   Data Move: *_temp_2517 = _temp_2519  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3427:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3427
!   _temp_2517 = _temp_2517 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2518 = _temp_2518 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2518) then goto _Label_2521
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2521
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2522 = &_temp_2516
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3428
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3428:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2515 = *_temp_2522  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3429:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3429
! FOR STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2527 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2528 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2527  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2523:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2528 then goto _Label_2526		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2526
_Label_2524:
	mov	2126,r13		! source line 2126
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0AS",r10
!   _temp_2529 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2529 [i ] into _temp_2530
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
!   _temp_2531 = _temp_2530 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2531 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0SE",r10
!   _temp_2532 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2532 [i ] into _temp_2533
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
!   _temp_2535 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2535 [i ] into _temp_2536
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
!   _temp_2534 = _temp_2536		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2537 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2534  sizeInBytes=4
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
_Label_2525:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2523
! END FOR
_Label_2526:
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
!   _temp_2540 = &anOpenFileBecameFree
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
!   _temp_2541 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2543 = &_temp_2542
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2543 = _temp_2543 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2545 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3430:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3430
!   _temp_2545 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2547:
!   Data Move: *_temp_2543 = _temp_2545  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3431:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3431
!   _temp_2543 = _temp_2543 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2544 = _temp_2544 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2544) then goto _Label_2547
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2547
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2548 = &_temp_2542
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3432
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3432:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2541 = *_temp_2548  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3433:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3433
! FOR STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2553 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2554 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2553  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2549:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2554 then goto _Label_2552		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2552
_Label_2550:
	mov	2138,r13		! source line 2138
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0AS",r10
!   _temp_2555 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2555 [i ] into _temp_2556
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
!   _temp_2557 = _temp_2556 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2557 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0SE",r10
!   _temp_2559 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2559 [i ] into _temp_2560
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
!   _temp_2558 = _temp_2560		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2561 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2558  sizeInBytes=4
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
_Label_2551:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2549
! END FOR
_Label_2552:
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3434:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3434
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0AS",r10
!   _temp_2563 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2564 = _temp_2563 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2564 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2150,r13		! source line 2150
	mov	"\0\0AS",r10
	mov	2150,r13		! source line 2150
	mov	"\0\0SE",r10
!   _temp_2565 = &_P_Kernel_frameManager
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
!   _temp_2566 = &_P_Kernel_diskDriver
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
	.word	_Label_2567
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2568
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2569
	.word	-12
	.word	4
	.word	_Label_2570
	.word	-16
	.word	4
	.word	_Label_2571
	.word	-20
	.word	4
	.word	_Label_2572
	.word	-24
	.word	4
	.word	_Label_2573
	.word	-28
	.word	4
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
	.word	_Label_2578
	.word	-48
	.word	4
	.word	_Label_2579
	.word	-52
	.word	4
	.word	_Label_2580
	.word	-56
	.word	4
	.word	_Label_2581
	.word	-60
	.word	4
	.word	_Label_2582
	.word	-64
	.word	4
	.word	_Label_2583
	.word	-68
	.word	4
	.word	_Label_2584
	.word	-72
	.word	4
	.word	_Label_2585
	.word	-100
	.word	28
	.word	_Label_2586
	.word	-104
	.word	4
	.word	_Label_2587
	.word	-108
	.word	4
	.word	_Label_2588
	.word	-392
	.word	284
	.word	_Label_2589
	.word	-396
	.word	4
	.word	_Label_2590
	.word	-400
	.word	4
	.word	_Label_2591
	.word	-404
	.word	4
	.word	_Label_2592
	.word	-408
	.word	4
	.word	_Label_2593
	.word	-412
	.word	4
	.word	_Label_2594
	.word	-416
	.word	4
	.word	_Label_2595
	.word	-420
	.word	4
	.word	_Label_2596
	.word	-424
	.word	4
	.word	_Label_2597
	.word	-428
	.word	4
	.word	_Label_2598
	.word	-432
	.word	4
	.word	_Label_2599
	.word	-436
	.word	4
	.word	_Label_2600
	.word	-440
	.word	4
	.word	_Label_2601
	.word	-444
	.word	4
	.word	_Label_2602
	.word	-448
	.word	4
	.word	_Label_2603
	.word	-452
	.word	4
	.word	_Label_2604
	.word	-456
	.word	4
	.word	_Label_2605
	.word	-460
	.word	4
	.word	_Label_2606
	.word	-500
	.word	40
	.word	_Label_2607
	.word	-504
	.word	4
	.word	_Label_2608
	.word	-508
	.word	4
	.word	_Label_2609
	.word	-912
	.word	404
	.word	_Label_2610
	.word	-916
	.word	4
	.word	_Label_2611
	.word	-920
	.word	4
	.word	_Label_2612
	.word	-924
	.word	4
	.word	_Label_2613
	.word	-928
	.word	4
	.word	_Label_2614
	.word	-932
	.word	4
	.word	_Label_2615
	.word	-936
	.word	4
	.word	_Label_2616
	.word	-940
	.word	4
	.word	_Label_2617
	.word	-944
	.word	4
	.word	0
_Label_2567:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2568:
	.ascii	"Pself\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2617:
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
_Label_3435:
	push	r0
	sub	r1,1,r1
	bne	_Label_3435
	mov	2158,r13		! source line 2158
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0SE",r10
!   _temp_2618 = &fileManagerLock
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
!   _temp_2619 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2619  sizeInBytes=4
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
!   _temp_2624 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2625 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2624  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2620:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2625 then goto _Label_2623		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2623
_Label_2621:
	mov	2162,r13		! source line 2162
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2626 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2626  sizeInBytes=4
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
!   _temp_2627 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2627  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2165,r13		! source line 2165
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0SE",r10
!   _temp_2628 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2628 [i ] into _temp_2629
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
_Label_2622:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2620
! END FOR
_Label_2623:
! CALL STATEMENT...
!   _temp_2630 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2630  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2168,r13		! source line 2168
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0SE",r10
!   _temp_2631 = _function_199_printFCB
	set	_function_199_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2632 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2631  sizeInBytes=4
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
!   _temp_2633 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2633  sizeInBytes=4
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
!   _temp_2638 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2639 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2638  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2634:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2639 then goto _Label_2637		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2637
_Label_2635:
	mov	2172,r13		! source line 2172
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2640 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2640  sizeInBytes=4
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
!   _temp_2641 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2641  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2175,r13		! source line 2175
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2643 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2643 [i ] into _temp_2644
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
!   _temp_2642 = _temp_2644		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2642  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2176,r13		! source line 2176
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2645 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2645  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2177,r13		! source line 2177
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0SE",r10
!   _temp_2646 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2646 [i ] into _temp_2647
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
_Label_2636:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2634
! END FOR
_Label_2637:
! CALL STATEMENT...
!   _temp_2648 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2648  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2180,r13		! source line 2180
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2181,r13		! source line 2181
	mov	"\0\0SE",r10
!   _temp_2649 = _function_198_printOpen
	set	_function_198_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2650 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2649  sizeInBytes=4
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
!   _temp_2651 = &fileManagerLock
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
	.word	_Label_2652
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2653
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2654
	.word	-12
	.word	4
	.word	_Label_2655
	.word	-16
	.word	4
	.word	_Label_2656
	.word	-20
	.word	4
	.word	_Label_2657
	.word	-24
	.word	4
	.word	_Label_2658
	.word	-28
	.word	4
	.word	_Label_2659
	.word	-32
	.word	4
	.word	_Label_2660
	.word	-36
	.word	4
	.word	_Label_2661
	.word	-40
	.word	4
	.word	_Label_2662
	.word	-44
	.word	4
	.word	_Label_2663
	.word	-48
	.word	4
	.word	_Label_2664
	.word	-52
	.word	4
	.word	_Label_2665
	.word	-56
	.word	4
	.word	_Label_2666
	.word	-60
	.word	4
	.word	_Label_2667
	.word	-64
	.word	4
	.word	_Label_2668
	.word	-68
	.word	4
	.word	_Label_2669
	.word	-72
	.word	4
	.word	_Label_2670
	.word	-76
	.word	4
	.word	_Label_2671
	.word	-80
	.word	4
	.word	_Label_2672
	.word	-84
	.word	4
	.word	_Label_2673
	.word	-88
	.word	4
	.word	_Label_2674
	.word	-92
	.word	4
	.word	_Label_2675
	.word	-96
	.word	4
	.word	_Label_2676
	.word	-100
	.word	4
	.word	_Label_2677
	.word	-104
	.word	4
	.word	_Label_2678
	.word	-108
	.word	4
	.word	_Label_2679
	.word	-112
	.word	4
	.word	_Label_2680
	.word	-116
	.word	4
	.word	0
_Label_2652:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2653:
	.ascii	"Pself\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2680:
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
_Label_3436:
	push	r0
	sub	r1,1,r1
	bne	_Label_3436
	mov	2187,r13		! source line 2187
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0AS",r10
	mov	2203,r13		! source line 2203
	mov	"\0\0SE",r10
!   _temp_2681 = &_P_Kernel_fileManager
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
!   if intIsZero (fcb) then goto _Label_2682
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2682
	jmp	_Label_2683
_Label_2682:
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
_Label_2683:
! SEND STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0SE",r10
!   _temp_2684 = &fileManagerLock
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
_Label_2685:
	mov	2210,r13		! source line 2210
	mov	"\0\0SE",r10
!   _temp_2688 = &openFileFreeList
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
!   if result==true then goto _Label_2686 else goto _Label_2687
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2687
	jmp	_Label_2686
_Label_2686:
	mov	2210,r13		! source line 2210
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0SE",r10
!   _temp_2689 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2690 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2689  sizeInBytes=4
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
	jmp	_Label_2685
_Label_2687:
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
	mov	2213,r13		! source line 2213
	mov	"\0\0SE",r10
!   _temp_2691 = &openFileFreeList
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
!   _temp_2692 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2692 = fcb  (sizeInBytes=4)
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
!   _temp_2693 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2693 = 1  (sizeInBytes=4)
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
!   _temp_2694 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2694 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0SE",r10
!   _temp_2695 = &fileManagerLock
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
	.word	_Label_2696
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2697
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2698
	.word	12
	.word	4
	.word	_Label_2699
	.word	-12
	.word	4
	.word	_Label_2700
	.word	-16
	.word	4
	.word	_Label_2701
	.word	-20
	.word	4
	.word	_Label_2702
	.word	-24
	.word	4
	.word	_Label_2703
	.word	-28
	.word	4
	.word	_Label_2704
	.word	-32
	.word	4
	.word	_Label_2705
	.word	-36
	.word	4
	.word	_Label_2706
	.word	-40
	.word	4
	.word	_Label_2707
	.word	-44
	.word	4
	.word	_Label_2708
	.word	-48
	.word	4
	.word	_Label_2709
	.word	-52
	.word	4
	.word	_Label_2710
	.word	-56
	.word	4
	.word	0
_Label_2696:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2697:
	.ascii	"Pself\0"
	.align
_Label_2698:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2709:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2710:
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
_Label_3437:
	push	r0
	sub	r1,1,r1
	bne	_Label_3437
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
!   if i == 1937012066 then goto _Label_2712		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2712
!	jmp	_Label_2711
_Label_2711:
! THEN...
	mov	2259,r13		! source line 2259
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2713 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2713  sizeInBytes=4
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
_Label_2712:
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
_Label_2714:
!   if numFiles <= 0 then goto _Label_2716		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2716
!	jmp	_Label_2715
_Label_2715:
	mov	2269,r13		! source line 2269
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2717 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2717  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2270,r13		! source line 2270
	mov	"\0\0CA",r10
	call	_function_200_copyUnalignedWord
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
!   _temp_2718 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2718  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2272,r13		! source line 2272
	mov	"\0\0CA",r10
	call	_function_200_copyUnalignedWord
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
!   _temp_2719 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2719  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2274,r13		! source line 2274
	mov	"\0\0CA",r10
	call	_function_200_copyUnalignedWord
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
!   Data Move: _temp_2723 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2723 then goto _Label_2721		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2721
!	jmp	_Label_2722
_Label_2722:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2725
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
!   _temp_2724 = _temp_2725		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2724  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2277,r13		! source line 2277
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2720 else goto _Label_2721
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2721
	jmp	_Label_2720
_Label_2720:
! THEN...
	mov	2278,r13		! source line 2278
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0BR",r10
	jmp	_Label_2716
! END IF...
_Label_2721:
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
	jmp	_Label_2714
_Label_2716:
! IF STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2727		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2727
!	jmp	_Label_2726
_Label_2726:
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
_Label_2727:
! SEND STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0SE",r10
!   _temp_2728 = &fileManagerLock
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
!   _temp_2733 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2734 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2733  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2729:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2734 then goto _Label_2732		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2732
_Label_2730:
	mov	2291,r13		! source line 2291
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0AS",r10
!   _temp_2735 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2735 [i ] into _temp_2736
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
!   fcb = _temp_2736		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2740 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2739 = *_temp_2740  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2739 != start then goto _Label_2738		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2738
!	jmp	_Label_2737
_Label_2737:
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
!   _temp_2741 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2744 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2743 = *_temp_2744  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2742 = _temp_2743 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2741 = _temp_2742  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0SE",r10
!   _temp_2745 = &fileManagerLock
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
_Label_2738:
!   Increment the FOR-LOOP index variable and jump back
_Label_2731:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2729
! END FOR
_Label_2732:
! WHILE STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0WH",r10
_Label_2746:
	mov	2301,r13		! source line 2301
	mov	"\0\0SE",r10
!   _temp_2749 = &fcbFreeList
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
!   if result==true then goto _Label_2747 else goto _Label_2748
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2748
	jmp	_Label_2747
_Label_2747:
	mov	2301,r13		! source line 2301
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0SE",r10
!   _temp_2750 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2751 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2750  sizeInBytes=4
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
	jmp	_Label_2746
_Label_2748:
! ASSIGNMENT STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0AS",r10
	mov	2304,r13		! source line 2304
	mov	"\0\0SE",r10
!   _temp_2752 = &fcbFreeList
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
!   _temp_2753 = &fileManagerLock
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
!   _temp_2754 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2754 = start  (sizeInBytes=4)
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
!   _temp_2755 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2755 = fileLen  (sizeInBytes=4)
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
!   _temp_2756 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2756 = 1  (sizeInBytes=4)
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
!   _temp_2761 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2760 = *_temp_2761  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2760 < 0 then goto _Label_2759		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2759
	jmp	_Label_2757
_Label_2759:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2762 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2762 ) then goto _Label_2758		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2758
!	jmp	_Label_2757
_Label_2757:
! THEN...
	mov	2314,r13		! source line 2314
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2763 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2763  sizeInBytes=4
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
_Label_2758:
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
	.word	_Label_2764
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2765
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2766
	.word	12
	.word	4
	.word	_Label_2767
	.word	-12
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
	.word	-32
	.word	4
	.word	_Label_2773
	.word	-36
	.word	4
	.word	_Label_2774
	.word	-40
	.word	4
	.word	_Label_2775
	.word	-44
	.word	4
	.word	_Label_2776
	.word	-48
	.word	4
	.word	_Label_2777
	.word	-52
	.word	4
	.word	_Label_2778
	.word	-56
	.word	4
	.word	_Label_2779
	.word	-60
	.word	4
	.word	_Label_2780
	.word	-64
	.word	4
	.word	_Label_2781
	.word	-68
	.word	4
	.word	_Label_2782
	.word	-72
	.word	4
	.word	_Label_2783
	.word	-76
	.word	4
	.word	_Label_2784
	.word	-80
	.word	4
	.word	_Label_2785
	.word	-84
	.word	4
	.word	_Label_2786
	.word	-88
	.word	4
	.word	_Label_2787
	.word	-92
	.word	4
	.word	_Label_2788
	.word	-96
	.word	4
	.word	_Label_2789
	.word	-100
	.word	4
	.word	_Label_2790
	.word	-104
	.word	4
	.word	_Label_2791
	.word	-108
	.word	4
	.word	_Label_2792
	.word	-112
	.word	4
	.word	_Label_2793
	.word	-116
	.word	4
	.word	_Label_2794
	.word	-120
	.word	4
	.word	_Label_2795
	.word	-124
	.word	4
	.word	_Label_2796
	.word	-128
	.word	4
	.word	_Label_2797
	.word	-132
	.word	4
	.word	_Label_2798
	.word	-136
	.word	4
	.word	_Label_2799
	.word	-140
	.word	4
	.word	_Label_2800
	.word	-144
	.word	4
	.word	_Label_2801
	.word	-148
	.word	4
	.word	_Label_2802
	.word	-152
	.word	4
	.word	_Label_2803
	.word	-156
	.word	4
	.word	_Label_2804
	.word	-160
	.word	4
	.word	0
_Label_2764:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2765:
	.ascii	"Pself\0"
	.align
_Label_2766:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2763\0"
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
	.ascii	"_temp_2756\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2798:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2799:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2800:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2801:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2802:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2803:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2804:
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
_Label_3438:
	push	r0
	sub	r1,1,r1
	bne	_Label_3438
	mov	2329,r13		! source line 2329
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0IF",r10
!   _temp_2807 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2807 then goto _Label_2806		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2806
!	jmp	_Label_2805
_Label_2805:
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
_Label_2806:
! SEND STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0SE",r10
!   _temp_2808 = &fileManagerLock
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
!   _temp_2809 = &_P_Kernel_fileManager
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
!   _temp_2810 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2810  (sizeInBytes=4)
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
!   _temp_2811 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2814 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2813 = *_temp_2814  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2812 = _temp_2813 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2811 = _temp_2812  (sizeInBytes=4)
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
!   _temp_2818 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2817 = *_temp_2818  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2817 > 0 then goto _Label_2816		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2816
!	jmp	_Label_2815
_Label_2815:
! THEN...
	mov	2339,r13		! source line 2339
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0SE",r10
!   _temp_2819 = &openFileFreeList
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
!   _temp_2820 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2821 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2820  sizeInBytes=4
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
!   _temp_2822 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2825 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2824 = *_temp_2825  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2823 = _temp_2824 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2822 = _temp_2823  (sizeInBytes=4)
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
!   _temp_2829 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2828 = *_temp_2829  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2828 > 0 then goto _Label_2827		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2827
!	jmp	_Label_2826
_Label_2826:
! THEN...
	mov	2343,r13		! source line 2343
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0SE",r10
!   _temp_2830 = &fcbFreeList
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
!   _temp_2831 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2832 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2831  sizeInBytes=4
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
_Label_2827:
! END IF...
_Label_2816:
! SEND STATEMENT...
	mov	2347,r13		! source line 2347
	mov	"\0\0SE",r10
!   _temp_2833 = &fileManagerLock
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
	.word	_Label_2834
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2836
	.word	12
	.word	4
	.word	_Label_2837
	.word	-12
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
	.word	-32
	.word	4
	.word	_Label_2843
	.word	-36
	.word	4
	.word	_Label_2844
	.word	-40
	.word	4
	.word	_Label_2845
	.word	-44
	.word	4
	.word	_Label_2846
	.word	-48
	.word	4
	.word	_Label_2847
	.word	-52
	.word	4
	.word	_Label_2848
	.word	-56
	.word	4
	.word	_Label_2849
	.word	-60
	.word	4
	.word	_Label_2850
	.word	-64
	.word	4
	.word	_Label_2851
	.word	-68
	.word	4
	.word	_Label_2852
	.word	-72
	.word	4
	.word	_Label_2853
	.word	-76
	.word	4
	.word	_Label_2854
	.word	-80
	.word	4
	.word	_Label_2855
	.word	-84
	.word	4
	.word	_Label_2856
	.word	-88
	.word	4
	.word	_Label_2857
	.word	-92
	.word	4
	.word	_Label_2858
	.word	-96
	.word	4
	.word	_Label_2859
	.word	-100
	.word	4
	.word	_Label_2860
	.word	-104
	.word	4
	.word	0
_Label_2834:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2835:
	.ascii	"Pself\0"
	.align
_Label_2836:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2833\0"
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
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2860:
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
_Label_3439:
	push	r0
	sub	r1,1,r1
	bne	_Label_3439
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
!   _temp_2864 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2863 = *_temp_2864  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2863) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2865 = _temp_2863 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2865 ) then goto _Label_2862		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2862
!	jmp	_Label_2861
_Label_2861:
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
!   _temp_2870 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2869 = *_temp_2870  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2869) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2871 = _temp_2869 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2868 = *_temp_2871  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2868 >= 0 then goto _Label_2867		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2867
!	jmp	_Label_2866
_Label_2866:
! THEN...
	mov	2359,r13		! source line 2359
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2872 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2872  sizeInBytes=4
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
_Label_2867:
! ASSIGNMENT STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2874 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2873 = *_temp_2874  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2873) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2875 = _temp_2873 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2875 = 0  (sizeInBytes=1)
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
!   _temp_2879 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2878 = *_temp_2879  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2878) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2880 = _temp_2878 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2877 = *_temp_2880  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2883 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2882 = *_temp_2883  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2882) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2884 = _temp_2882 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2881 = *_temp_2884  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2876 = _temp_2877 + _temp_2881		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2887 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2886 = *_temp_2887  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2886) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2888 = _temp_2886 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2885 = *_temp_2888  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2889 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2876  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2885  sizeInBytes=4
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
_Label_2862:
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
	.word	_Label_2890
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2891
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2892
	.word	12
	.word	4
	.word	_Label_2893
	.word	-12
	.word	4
	.word	_Label_2894
	.word	-16
	.word	4
	.word	_Label_2895
	.word	-20
	.word	4
	.word	_Label_2896
	.word	-24
	.word	4
	.word	_Label_2897
	.word	-28
	.word	4
	.word	_Label_2898
	.word	-32
	.word	4
	.word	_Label_2899
	.word	-36
	.word	4
	.word	_Label_2900
	.word	-40
	.word	4
	.word	_Label_2901
	.word	-44
	.word	4
	.word	_Label_2902
	.word	-48
	.word	4
	.word	_Label_2903
	.word	-52
	.word	4
	.word	_Label_2904
	.word	-56
	.word	4
	.word	_Label_2905
	.word	-60
	.word	4
	.word	_Label_2906
	.word	-64
	.word	4
	.word	_Label_2907
	.word	-68
	.word	4
	.word	_Label_2908
	.word	-72
	.word	4
	.word	_Label_2909
	.word	-76
	.word	4
	.word	_Label_2910
	.word	-80
	.word	4
	.word	_Label_2911
	.word	-84
	.word	4
	.word	_Label_2912
	.word	-88
	.word	4
	.word	_Label_2913
	.word	-92
	.word	4
	.word	_Label_2914
	.word	-96
	.word	4
	.word	_Label_2915
	.word	-100
	.word	4
	.word	_Label_2916
	.word	-104
	.word	4
	.word	_Label_2917
	.word	-108
	.word	4
	.word	0
_Label_2890:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2891:
	.ascii	"Pself\0"
	.align
_Label_2892:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2897:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2863\0"
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
_Label_3440:
	push	r0
	sub	r1,1,r1
	bne	_Label_3440
	mov	2371,r13		! source line 2371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0SE",r10
!   _temp_2918 = &fileManagerLock
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
!   if open == 0 then goto _Label_2924		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2924
!   _temp_2923 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2925
_Label_2924:
!   _temp_2923 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2925:
!   if _temp_2923 then goto _Label_2922 else goto _Label_2919
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2919
	jmp	_Label_2922
_Label_2922:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2928 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2927 = *_temp_2928  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2927 == 0 then goto _Label_2929		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2929
!   _temp_2926 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2930
_Label_2929:
!   _temp_2926 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2930:
!   if _temp_2926 then goto _Label_2921 else goto _Label_2919
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2919
	jmp	_Label_2921
_Label_2921:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2933 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2932 = *_temp_2933  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2932) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2934 = _temp_2932 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2931 = *_temp_2934  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2931 >= 0 then goto _Label_2920		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2920
!	jmp	_Label_2919
_Label_2919:
! THEN...
	mov	2388,r13		! source line 2388
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2935 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2935  sizeInBytes=4
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
_Label_2920:
! ASSIGNMENT STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2936 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2936  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0WH",r10
_Label_2937:
!   if numBytes <= 0 then goto _Label_2939		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2939
!	jmp	_Label_2938
_Label_2938:
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
!   _temp_2943 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2942 = *_temp_2943  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2942 == sector then goto _Label_2941		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2941
!	jmp	_Label_2940
_Label_2940:
! THEN...
	mov	2406,r13		! source line 2406
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2944) then goto _runtimeErrorNullPointer
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
!   _temp_2947 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2946 = *_temp_2947  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2945 = sector + _temp_2946		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2949 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2948 = *_temp_2949  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2950 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2945  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2948  sizeInBytes=4
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
!   _temp_2951 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2951 = sector  (sizeInBytes=4)
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
!   _temp_2952 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2952 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2941:
! ASSIGNMENT STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2954 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2953 = *_temp_2954  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2953 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0AS",r10
!   _temp_2955 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2955  sizeInBytes=4
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
	jmp	_Label_2937
_Label_2939:
! SEND STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0SE",r10
!   _temp_2956 = &fileManagerLock
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
	.word	_Label_2957
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2958
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2959
	.word	12
	.word	4
	.word	_Label_2960
	.word	16
	.word	4
	.word	_Label_2961
	.word	20
	.word	4
	.word	_Label_2962
	.word	24
	.word	4
	.word	_Label_2963
	.word	-16
	.word	4
	.word	_Label_2964
	.word	-20
	.word	4
	.word	_Label_2965
	.word	-24
	.word	4
	.word	_Label_2966
	.word	-28
	.word	4
	.word	_Label_2967
	.word	-32
	.word	4
	.word	_Label_2968
	.word	-36
	.word	4
	.word	_Label_2969
	.word	-40
	.word	4
	.word	_Label_2970
	.word	-44
	.word	4
	.word	_Label_2971
	.word	-48
	.word	4
	.word	_Label_2972
	.word	-52
	.word	4
	.word	_Label_2973
	.word	-56
	.word	4
	.word	_Label_2974
	.word	-60
	.word	4
	.word	_Label_2975
	.word	-64
	.word	4
	.word	_Label_2976
	.word	-68
	.word	4
	.word	_Label_2977
	.word	-72
	.word	4
	.word	_Label_2978
	.word	-76
	.word	4
	.word	_Label_2979
	.word	-80
	.word	4
	.word	_Label_2980
	.word	-84
	.word	4
	.word	_Label_2981
	.word	-88
	.word	4
	.word	_Label_2982
	.word	-92
	.word	4
	.word	_Label_2983
	.word	-96
	.word	4
	.word	_Label_2984
	.word	-100
	.word	4
	.word	_Label_2985
	.word	-104
	.word	4
	.word	_Label_2986
	.word	-9
	.word	1
	.word	_Label_2987
	.word	-10
	.word	1
	.word	_Label_2988
	.word	-108
	.word	4
	.word	_Label_2989
	.word	-112
	.word	4
	.word	_Label_2990
	.word	-116
	.word	4
	.word	_Label_2991
	.word	-120
	.word	4
	.word	_Label_2992
	.word	-124
	.word	4
	.word	_Label_2993
	.word	-128
	.word	4
	.word	0
_Label_2957:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2958:
	.ascii	"Pself\0"
	.align
_Label_2959:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2960:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2961:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2962:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2956\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2955\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2986:
	.byte	'C'
	.ascii	"_temp_2926\0"
	.align
_Label_2987:
	.byte	'C'
	.ascii	"_temp_2923\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2989:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2990:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2991:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2992:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2993:
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
_Label_3441:
	push	r0
	sub	r1,1,r1
	bne	_Label_3441
	mov	2435,r13		! source line 2435
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0SE",r10
!   _temp_2994 = &fileManagerLock
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
!   if open == 0 then goto _Label_3000		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3000
!   _temp_2999 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3001
_Label_3000:
!   _temp_2999 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3001:
!   if _temp_2999 then goto _Label_2998 else goto _Label_2995
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2995
	jmp	_Label_2998
_Label_2998:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3004 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3003 = *_temp_3004  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3003 == 0 then goto _Label_3005		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3005
!   _temp_3002 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3006
_Label_3005:
!   _temp_3002 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3006:
!   if _temp_3002 then goto _Label_2997 else goto _Label_2995
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2995
	jmp	_Label_2997
_Label_2997:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3009 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3008 = *_temp_3009  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3008) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3010 = _temp_3008 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3007 = *_temp_3010  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3007 >= 0 then goto _Label_2996		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2996
!	jmp	_Label_2995
_Label_2995:
! THEN...
	mov	2453,r13		! source line 2453
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3011 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3011  sizeInBytes=4
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
_Label_2996:
! ASSIGNMENT STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3012 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3012  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0WH",r10
_Label_3013:
!   if numBytes <= 0 then goto _Label_3015		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3015
!	jmp	_Label_3014
_Label_3014:
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
!   _temp_3019 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3018 = *_temp_3019  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3018 == sector then goto _Label_3017		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3017
!	jmp	_Label_3016
_Label_3016:
! THEN...
	mov	2472,r13		! source line 2472
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3020) then goto _runtimeErrorNullPointer
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
_Label_3017:
! ASSIGNMENT STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3022 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3021 = *_temp_3022  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3021 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0AS",r10
!   _temp_3023 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3023  sizeInBytes=4
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
!   _temp_3027 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3026 = *_temp_3027  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3026 != sector then goto _Label_3025		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3025
!	jmp	_Label_3024
_Label_3024:
	jmp	_Label_3028
_Label_3025:
! ELSE...
	mov	2478,r13		! source line 2478
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3031
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3031
	jmp	_Label_3030
_Label_3031:
!   if bytesToMove != 8192 then goto _Label_3030		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3030
!	jmp	_Label_3029
_Label_3029:
	jmp	_Label_3032
_Label_3030:
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
!   _temp_3035 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3034 = *_temp_3035  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3033 = sector + _temp_3034		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3037 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3036 = *_temp_3037  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3038 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3033  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3036  sizeInBytes=4
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
_Label_3032:
! END IF...
_Label_3028:
! ASSIGNMENT STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3039 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3039 = sector  (sizeInBytes=4)
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
!   _temp_3040 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3040 = 1  (sizeInBytes=1)
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
	jmp	_Label_3013
_Label_3015:
! SEND STATEMENT...
	mov	2501,r13		! source line 2501
	mov	"\0\0SE",r10
!   _temp_3041 = &fileManagerLock
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
	.word	_Label_3042
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3043
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3044
	.word	12
	.word	4
	.word	_Label_3045
	.word	16
	.word	4
	.word	_Label_3046
	.word	20
	.word	4
	.word	_Label_3047
	.word	24
	.word	4
	.word	_Label_3048
	.word	-16
	.word	4
	.word	_Label_3049
	.word	-20
	.word	4
	.word	_Label_3050
	.word	-24
	.word	4
	.word	_Label_3051
	.word	-28
	.word	4
	.word	_Label_3052
	.word	-32
	.word	4
	.word	_Label_3053
	.word	-36
	.word	4
	.word	_Label_3054
	.word	-40
	.word	4
	.word	_Label_3055
	.word	-44
	.word	4
	.word	_Label_3056
	.word	-48
	.word	4
	.word	_Label_3057
	.word	-52
	.word	4
	.word	_Label_3058
	.word	-56
	.word	4
	.word	_Label_3059
	.word	-60
	.word	4
	.word	_Label_3060
	.word	-64
	.word	4
	.word	_Label_3061
	.word	-68
	.word	4
	.word	_Label_3062
	.word	-72
	.word	4
	.word	_Label_3063
	.word	-76
	.word	4
	.word	_Label_3064
	.word	-80
	.word	4
	.word	_Label_3065
	.word	-84
	.word	4
	.word	_Label_3066
	.word	-88
	.word	4
	.word	_Label_3067
	.word	-92
	.word	4
	.word	_Label_3068
	.word	-96
	.word	4
	.word	_Label_3069
	.word	-100
	.word	4
	.word	_Label_3070
	.word	-104
	.word	4
	.word	_Label_3071
	.word	-108
	.word	4
	.word	_Label_3072
	.word	-112
	.word	4
	.word	_Label_3073
	.word	-9
	.word	1
	.word	_Label_3074
	.word	-10
	.word	1
	.word	_Label_3075
	.word	-116
	.word	4
	.word	_Label_3076
	.word	-120
	.word	4
	.word	_Label_3077
	.word	-124
	.word	4
	.word	_Label_3078
	.word	-128
	.word	4
	.word	_Label_3079
	.word	-132
	.word	4
	.word	_Label_3080
	.word	-136
	.word	4
	.word	0
_Label_3042:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3043:
	.ascii	"Pself\0"
	.align
_Label_3044:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3045:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3046:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3047:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_3036\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3035\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_3034\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_3033\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3058:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3059:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3060:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_3021\0"
	.align
_Label_3062:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3069:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3070:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3071:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3072:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3073:
	.byte	'C'
	.ascii	"_temp_3002\0"
	.align
_Label_3074:
	.byte	'C'
	.ascii	"_temp_2999\0"
	.align
_Label_3075:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_3076:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3077:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3078:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3079:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3080:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3081
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3081:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3082
	.word	_sourceFileName
	.word	356		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3082:
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
_Label_3442:
	push	r0
	sub	r1,1,r1
	bne	_Label_3442
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
!   _temp_3083 = &_P_Kernel_frameManager
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
	.word	_Label_3084
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3085
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3086
	.word	-12
	.word	4
	.word	0
_Label_3084:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3085:
	.ascii	"Pself\0"
	.align
_Label_3086:
	.byte	'?'
	.ascii	"_temp_3083\0"
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
_Label_3443:
	push	r0
	sub	r1,1,r1
	bne	_Label_3443
	mov	2549,r13		! source line 2549
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3087 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3087  sizeInBytes=4
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
!   _temp_3088 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3088  sizeInBytes=4
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
!   _temp_3089 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3089  sizeInBytes=4
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
!   _temp_3090 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3090  sizeInBytes=4
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
!   _temp_3091 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3091  sizeInBytes=4
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
!   _temp_3092 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3092  sizeInBytes=4
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
	.word	_Label_3093
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3094
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3095
	.word	-12
	.word	4
	.word	_Label_3096
	.word	-16
	.word	4
	.word	_Label_3097
	.word	-20
	.word	4
	.word	_Label_3098
	.word	-24
	.word	4
	.word	_Label_3099
	.word	-28
	.word	4
	.word	_Label_3100
	.word	-32
	.word	4
	.word	0
_Label_3093:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3094:
	.ascii	"Pself\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3101
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3101:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3102
	.word	_sourceFileName
	.word	373		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3102:
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
_Label_3444:
	push	r0
	sub	r1,1,r1
	bne	_Label_3444
	mov	2573,r13		! source line 2573
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3103 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3103  sizeInBytes=4
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
!   _temp_3104 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3104  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2576,r13		! source line 2576
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3106		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3106
!	jmp	_Label_3105
_Label_3105:
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
	jmp	_Label_3107
_Label_3106:
! ELSE...
	mov	2580,r13		! source line 2580
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3108 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3108  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2580,r13		! source line 2580
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3107:
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
	.word	_Label_3109
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3110
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3111
	.word	-12
	.word	4
	.word	_Label_3112
	.word	-16
	.word	4
	.word	_Label_3113
	.word	-20
	.word	4
	.word	0
_Label_3109:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3110:
	.ascii	"Pself\0"
	.align
_Label_3111:
	.byte	'?'
	.ascii	"_temp_3108\0"
	.align
_Label_3112:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3113:
	.byte	'?'
	.ascii	"_temp_3103\0"
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
_Label_3445:
	push	r0
	sub	r1,1,r1
	bne	_Label_3445
	mov	2586,r13		! source line 2586
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0SE",r10
!   _temp_3114 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3115 = _temp_3114 + 4
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
!   _temp_3116 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3117 = _temp_3116 + 4
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
!   _temp_3120 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3119  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3118  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3118  (sizeInBytes=1)
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
	.word	_Label_3121
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3122
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3123
	.word	12
	.word	4
	.word	_Label_3124
	.word	16
	.word	4
	.word	_Label_3125
	.word	-16
	.word	4
	.word	_Label_3126
	.word	-20
	.word	4
	.word	_Label_3127
	.word	-9
	.word	1
	.word	_Label_3128
	.word	-24
	.word	4
	.word	_Label_3129
	.word	-28
	.word	4
	.word	_Label_3130
	.word	-32
	.word	4
	.word	_Label_3131
	.word	-36
	.word	4
	.word	_Label_3132
	.word	-40
	.word	4
	.word	0
_Label_3121:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3122:
	.ascii	"Pself\0"
	.align
_Label_3123:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3124:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3120\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
_Label_3127:
	.byte	'C'
	.ascii	"_temp_3118\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3129:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3130:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3114\0"
	.align
_Label_3132:
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
_Label_3446:
	push	r0
	sub	r1,1,r1
	bne	_Label_3446
	mov	2605,r13		! source line 2605
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0IF",r10
	mov	2610,r13		! source line 2610
	mov	"\0\0SE",r10
!   _temp_3136 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3137) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3136  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3135  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3135 then goto _Label_3134 else goto _Label_3133
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3133
	jmp	_Label_3134
_Label_3133:
! THEN...
	mov	2611,r13		! source line 2611
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3138 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3138  sizeInBytes=4
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
_Label_3134:
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
	.word	_Label_3139
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3140
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3141
	.word	-16
	.word	4
	.word	_Label_3142
	.word	-20
	.word	4
	.word	_Label_3143
	.word	-24
	.word	4
	.word	_Label_3144
	.word	-9
	.word	1
	.word	_Label_3145
	.word	-28
	.word	4
	.word	0
_Label_3139:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3140:
	.ascii	"Pself\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3144:
	.byte	'C'
	.ascii	"_temp_3135\0"
	.align
_Label_3145:
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
_Label_3447:
	push	r0
	sub	r1,1,r1
	bne	_Label_3447
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
!   _temp_3149 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3148 = *_temp_3149  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3148) then goto _Label_3147
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3147
!	jmp	_Label_3146
_Label_3146:
! THEN...
	mov	2645,r13		! source line 2645
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3150 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3150  sizeInBytes=4
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
_Label_3147:
! IF STATEMENT...
	mov	2649,r13		! source line 2649
	mov	"\0\0IF",r10
	mov	2649,r13		! source line 2649
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3154) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3153  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3153 == 1112300152 then goto _Label_3152		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3152
!	jmp	_Label_3151
_Label_3151:
! THEN...
	mov	2650,r13		! source line 2650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3155 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3155  sizeInBytes=4
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
_Label_3152:
! ASSIGNMENT STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0AS",r10
	mov	2655,r13		! source line 2655
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3156) then goto _runtimeErrorNullPointer
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
!   if intIsZero (_temp_3157) then goto _runtimeErrorNullPointer
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
!   if intIsZero (_temp_3158) then goto _runtimeErrorNullPointer
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
!   if intIsZero (_temp_3159) then goto _runtimeErrorNullPointer
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
!   if intIsZero (_temp_3160) then goto _runtimeErrorNullPointer
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
!   if intIsZero (_temp_3161) then goto _runtimeErrorNullPointer
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
!   _temp_3164 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3164) then goto _Label_3163
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3163
!	jmp	_Label_3162
_Label_3162:
! THEN...
	mov	2664,r13		! source line 2664
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3165 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3165  sizeInBytes=4
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
_Label_3163:
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
!   if intIsZero (textStart) then goto _Label_3167
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3167
!	jmp	_Label_3166
_Label_3166:
! THEN...
	mov	2672,r13		! source line 2672
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3168 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3168  sizeInBytes=4
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
_Label_3167:
! IF STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0IF",r10
!   _temp_3171 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3171) then goto _Label_3170
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3170
!	jmp	_Label_3169
_Label_3169:
! THEN...
	mov	2678,r13		! source line 2678
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3172 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3172  sizeInBytes=4
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
_Label_3170:
! IF STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0IF",r10
!   _temp_3175 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3175 then goto _Label_3174		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3174
!	jmp	_Label_3173
_Label_3173:
! THEN...
	mov	2682,r13		! source line 2682
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3176 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3176  sizeInBytes=4
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
_Label_3174:
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
!   _temp_3179 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3179) then goto _Label_3178
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3178
!	jmp	_Label_3177
_Label_3177:
! THEN...
	mov	2689,r13		! source line 2689
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3180 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3180  sizeInBytes=4
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
_Label_3178:
! IF STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0IF",r10
!   _temp_3183 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3183 then goto _Label_3182		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3182
!	jmp	_Label_3181
_Label_3181:
! THEN...
	mov	2693,r13		! source line 2693
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3184 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3184  sizeInBytes=4
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
_Label_3182:
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
!   _temp_3187 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3186 = _temp_3187 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3185 = _temp_3186 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3185 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3189		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3189
!	jmp	_Label_3188
_Label_3188:
! THEN...
	mov	2715,r13		! source line 2715
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3190 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3190  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2715,r13		! source line 2715
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3191 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3191  sizeInBytes=4
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
!   _temp_3192 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3192  sizeInBytes=4
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
_Label_3189:
! SEND STATEMENT...
	mov	2720,r13		! source line 2720
	mov	"\0\0SE",r10
!   _temp_3193 = &_P_Kernel_frameManager
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
!   if intIsZero (_temp_3197) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3196  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3196 == 707406378 then goto _Label_3195		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3195
!	jmp	_Label_3194
_Label_3194:
! THEN...
	mov	2727,r13		! source line 2727
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3198 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3198  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2727,r13		! source line 2727
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0SE",r10
!   _temp_3199 = &_P_Kernel_frameManager
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
_Label_3195:
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
!   _temp_3204 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3205 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3204  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3200:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3205 then goto _Label_3203		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3203
_Label_3201:
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
!   if intIsZero (_temp_3209) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3208  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3208 then goto _Label_3207 else goto _Label_3206
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3206
	jmp	_Label_3207
_Label_3206:
! THEN...
	mov	2739,r13		! source line 2739
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3210 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3210  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2739,r13		! source line 2739
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0SE",r10
!   _temp_3211 = &_P_Kernel_frameManager
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
_Label_3207:
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
_Label_3202:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3200
! END FOR
_Label_3203:
! IF STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0IF",r10
	mov	2748,r13		! source line 2748
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3215) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3214  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3214 == 707406378 then goto _Label_3213		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3213
!	jmp	_Label_3212
_Label_3212:
! THEN...
	mov	2749,r13		! source line 2749
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3216 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3216  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2749,r13		! source line 2749
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0SE",r10
!   _temp_3217 = &_P_Kernel_frameManager
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
_Label_3213:
! FOR STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3222 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3223 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3222  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3218:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3223 then goto _Label_3221		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3221
_Label_3219:
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
!   if intIsZero (_temp_3227) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3226  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3226 then goto _Label_3225 else goto _Label_3224
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3224
	jmp	_Label_3225
_Label_3224:
! THEN...
	mov	2760,r13		! source line 2760
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3228 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3228  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2760,r13		! source line 2760
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2761,r13		! source line 2761
	mov	"\0\0SE",r10
!   _temp_3229 = &_P_Kernel_frameManager
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
_Label_3225:
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
_Label_3220:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3218
! END FOR
_Label_3221:
! IF STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0IF",r10
	mov	2768,r13		! source line 2768
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3233) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3232  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3232 == 707406378 then goto _Label_3231		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3231
!	jmp	_Label_3230
_Label_3230:
! THEN...
	mov	2769,r13		! source line 2769
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3234 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3234  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2769,r13		! source line 2769
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0SE",r10
!   _temp_3235 = &_P_Kernel_frameManager
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
_Label_3231:
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
	.word	_Label_3236
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3237
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3238
	.word	12
	.word	4
	.word	_Label_3239
	.word	-16
	.word	4
	.word	_Label_3240
	.word	-20
	.word	4
	.word	_Label_3241
	.word	-24
	.word	4
	.word	_Label_3242
	.word	-28
	.word	4
	.word	_Label_3243
	.word	-32
	.word	4
	.word	_Label_3244
	.word	-36
	.word	4
	.word	_Label_3245
	.word	-40
	.word	4
	.word	_Label_3246
	.word	-9
	.word	1
	.word	_Label_3247
	.word	-44
	.word	4
	.word	_Label_3248
	.word	-48
	.word	4
	.word	_Label_3249
	.word	-52
	.word	4
	.word	_Label_3250
	.word	-56
	.word	4
	.word	_Label_3251
	.word	-60
	.word	4
	.word	_Label_3252
	.word	-64
	.word	4
	.word	_Label_3253
	.word	-68
	.word	4
	.word	_Label_3254
	.word	-72
	.word	4
	.word	_Label_3255
	.word	-76
	.word	4
	.word	_Label_3256
	.word	-10
	.word	1
	.word	_Label_3257
	.word	-80
	.word	4
	.word	_Label_3258
	.word	-84
	.word	4
	.word	_Label_3259
	.word	-88
	.word	4
	.word	_Label_3260
	.word	-92
	.word	4
	.word	_Label_3261
	.word	-96
	.word	4
	.word	_Label_3262
	.word	-100
	.word	4
	.word	_Label_3263
	.word	-104
	.word	4
	.word	_Label_3264
	.word	-108
	.word	4
	.word	_Label_3265
	.word	-112
	.word	4
	.word	_Label_3266
	.word	-116
	.word	4
	.word	_Label_3267
	.word	-120
	.word	4
	.word	_Label_3268
	.word	-124
	.word	4
	.word	_Label_3269
	.word	-128
	.word	4
	.word	_Label_3270
	.word	-132
	.word	4
	.word	_Label_3271
	.word	-136
	.word	4
	.word	_Label_3272
	.word	-140
	.word	4
	.word	_Label_3273
	.word	-144
	.word	4
	.word	_Label_3274
	.word	-148
	.word	4
	.word	_Label_3275
	.word	-152
	.word	4
	.word	_Label_3276
	.word	-156
	.word	4
	.word	_Label_3277
	.word	-160
	.word	4
	.word	_Label_3278
	.word	-164
	.word	4
	.word	_Label_3279
	.word	-168
	.word	4
	.word	_Label_3280
	.word	-172
	.word	4
	.word	_Label_3281
	.word	-176
	.word	4
	.word	_Label_3282
	.word	-180
	.word	4
	.word	_Label_3283
	.word	-184
	.word	4
	.word	_Label_3284
	.word	-188
	.word	4
	.word	_Label_3285
	.word	-192
	.word	4
	.word	_Label_3286
	.word	-196
	.word	4
	.word	_Label_3287
	.word	-200
	.word	4
	.word	_Label_3288
	.word	-204
	.word	4
	.word	_Label_3289
	.word	-208
	.word	4
	.word	_Label_3290
	.word	-212
	.word	4
	.word	_Label_3291
	.word	-216
	.word	4
	.word	_Label_3292
	.word	-220
	.word	4
	.word	_Label_3293
	.word	-224
	.word	4
	.word	_Label_3294
	.word	-228
	.word	4
	.word	_Label_3295
	.word	-232
	.word	4
	.word	_Label_3296
	.word	-236
	.word	4
	.word	_Label_3297
	.word	-240
	.word	4
	.word	_Label_3298
	.word	-244
	.word	4
	.word	_Label_3299
	.word	-248
	.word	4
	.word	_Label_3300
	.word	-252
	.word	4
	.word	_Label_3301
	.word	-256
	.word	4
	.word	_Label_3302
	.word	-260
	.word	4
	.word	_Label_3303
	.word	-264
	.word	4
	.word	_Label_3304
	.word	-268
	.word	4
	.word	0
_Label_3236:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3237:
	.ascii	"Pself\0"
	.align
_Label_3238:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3243:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3244:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3245:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3246:
	.byte	'C'
	.ascii	"_temp_3226\0"
	.align
_Label_3247:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3248:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3249:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3250:
	.byte	'?'
	.ascii	"_temp_3216\0"
	.align
_Label_3251:
	.byte	'?'
	.ascii	"_temp_3215\0"
	.align
_Label_3252:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3253:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3209\0"
	.align
_Label_3256:
	.byte	'C'
	.ascii	"_temp_3208\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3198\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3197\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3192\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3191\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3272:
	.byte	'?'
	.ascii	"_temp_3180\0"
	.align
_Label_3273:
	.byte	'?'
	.ascii	"_temp_3179\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3168\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3164\0"
	.align
_Label_3281:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3282:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3283:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3284:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3285:
	.byte	'?'
	.ascii	"_temp_3157\0"
	.align
_Label_3286:
	.byte	'?'
	.ascii	"_temp_3156\0"
	.align
_Label_3287:
	.byte	'?'
	.ascii	"_temp_3155\0"
	.align
_Label_3288:
	.byte	'?'
	.ascii	"_temp_3154\0"
	.align
_Label_3289:
	.byte	'?'
	.ascii	"_temp_3153\0"
	.align
_Label_3290:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3291:
	.byte	'?'
	.ascii	"_temp_3149\0"
	.align
_Label_3292:
	.byte	'?'
	.ascii	"_temp_3148\0"
	.align
_Label_3293:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3294:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3295:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3296:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3297:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3298:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3299:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3300:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3301:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3302:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3303:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3304:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
