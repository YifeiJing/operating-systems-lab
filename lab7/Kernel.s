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
	.word	38			! length
	.ascii	"This function should never be invoked!"
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
_Label_3362:
	push	r0
	sub	r1,1,r1
	bne	_Label_3362
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
_Label_3363:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3363
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
_Label_3364:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3364
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
_Label_3365:
	push	r0
	sub	r1,1,r1
	bne	_Label_3365
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
_Label_3366:
	push	r0
	sub	r1,1,r1
	bne	_Label_3366
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
_Label_3367:
	push	r0
	sub	r1,1,r1
	bne	_Label_3367
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
_Label_3368:
	push	r0
	sub	r1,1,r1
	bne	_Label_3368
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
_Label_3369:
	push	r0
	sub	r1,1,r1
	bne	_Label_3369
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
_Label_3370:
	push	r0
	sub	r1,1,r1
	bne	_Label_3370
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
_Label_3371:
	push	r0
	sub	r1,1,r1
	bne	_Label_3371
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
_Label_3372:
	push	r0
	sub	r1,1,r1
	bne	_Label_3372
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
_Label_3373:
	push	r0
	sub	r1,1,r1
	bne	_Label_3373
	mov	993,r13		! source line 993
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
	mov	997,r13		! source line 997
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
	mov	1000,r13		! source line 1000
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
	mov	1001,r13		! source line 1001
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
	mov	1005,r13		! source line 1005
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
_Label_3374:
	push	r0
	sub	r1,1,r1
	bne	_Label_3374
	mov	1012,r13		! source line 1012
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
_Label_3375:
	push	r0
	sub	r1,1,r1
	bne	_Label_3375
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
_Label_3376:
	push	r0
	sub	r1,1,r1
	bne	_Label_3376
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
	mov	1523,r13		! source line 1523
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1523,r13		! source line 1523
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
_Label_3377:
	push	r0
	sub	r1,1,r1
	bne	_Label_3377
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
!   _temp_438 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1550,r13		! source line 1550
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
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
_Label_3378:
	push	r0
	sub	r1,1,r1
	bne	_Label_3378
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
!   _temp_441 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1562,r13		! source line 1562
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
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
_Label_3379:
	push	r0
	sub	r1,1,r1
	bne	_Label_3379
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
!   _temp_444 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1574,r13		! source line 1574
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
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
_Label_3380:
	push	r0
	sub	r1,1,r1
	bne	_Label_3380
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
!   _temp_447 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_447  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1586,r13		! source line 1586
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
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
_Label_3381:
	push	r0
	sub	r1,1,r1
	bne	_Label_3381
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
!   _temp_450 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_450  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1598,r13		! source line 1598
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
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
_Label_3382:
	push	r0
	sub	r1,1,r1
	bne	_Label_3382
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
!   _temp_453 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_453  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1610,r13		! source line 1610
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
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
_Label_3383:
	push	r0
	sub	r1,1,r1
	bne	_Label_3383
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
!   _temp_456 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_456  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1622,r13		! source line 1622
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
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
_Label_3384:
	push	r0
	sub	r1,1,r1
	bne	_Label_3384
	mov	1627,r13		! source line 1627
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
!   _temp_460 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_460  sizeInBytes=4
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
	mov	1640,r13		! source line 1640
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_468 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_468  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1640,r13		! source line 1640
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_467:
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
_Label_3385:
	push	r0
	sub	r1,1,r1
	bne	_Label_3385
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
	be	_Label_3386
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_478
_Label_3386:
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
	mov	1676,r13		! source line 1676
	mov	"\0\0RE",r10
!   Call the function
	mov	1676,r13		! source line 1676
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
_Label_482:
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
	mov	1683,r13		! source line 1683
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1683,r13		! source line 1683
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
_Label_485:
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
	mov	1690,r13		! source line 1690
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1690,r13		! source line 1690
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
_Label_491:
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
_Label_478:
! CALL STATEMENT...
!   _temp_501 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_501  sizeInBytes=4
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
!   _temp_502 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_502  sizeInBytes=4
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
_Label_479:
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
_Label_3387:
	push	r0
	sub	r1,1,r1
	bne	_Label_3387
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
_Label_3388:
	push	r0
	sub	r1,1,r1
	bne	_Label_3388
	mov	1720,r13		! source line 1720
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
	mov	1,r1
_Label_3389:
	push	r0
	sub	r1,1,r1
	bne	_Label_3389
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
	.word	_Label_524
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_524:
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
_Label_3390:
	push	r0
	sub	r1,1,r1
	bne	_Label_3390
	mov	1732,r13		! source line 1732
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0AS",r10
	mov	1739,r13		! source line 1739
	mov	"\0\0SE",r10
!   _temp_525 = &_P_Kernel_processManager
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
!   _temp_526 = &_P_Kernel_threadManager
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
!   _temp_527 = childPCB + 24
	load	[r14+-172],r1
	add	r1,24,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_527 = childThread  (sizeInBytes=4)
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
!   _temp_528 = childPCB + 16
	load	[r14+-172],r1
	add	r1,16,r1
	store	r1,[r14+-156]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_531 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-144]
!   Data Move: _temp_530 = *_temp_531  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_530) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_532 = _temp_530 + 12
	load	[r14+-148],r1
	add	r1,12,r1
	store	r1,[r14+-140]
!   Data Move: _temp_529 = *_temp_532  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   Data Move: *_temp_528 = _temp_529  (sizeInBytes=4)
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
!   _temp_533 = childThread + 68
	load	[r14+-176],r1
	add	r1,68,r1
	store	r1,[r14+-136]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_535 = childThread + 88
	load	[r14+-176],r1
	add	r1,88,r1
	store	r1,[r14+-128]
!   Move address of _temp_535 [999 ] into _temp_536
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
!   _temp_534 = _temp_536		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-132]
!   Data Move: *_temp_533 = _temp_534  (sizeInBytes=4)
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
!   _temp_537 = childThread + 4160
	load	[r14+-176],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: *_temp_537 = childPCB  (sizeInBytes=4)
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
!   _temp_538 = childThread + 76
	load	[r14+-176],r1
	add	r1,76,r1
	store	r1,[r14+-116]
!   Data Move: *_temp_538 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-116],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_540 = childThread + 4096
	load	[r14+-176],r1
	add	r1,4096,r1
	store	r1,[r14+-108]
!   Move address of _temp_540 [0 ] into _temp_541
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
!   _temp_539 = _temp_541		(4 bytes)
	load	[r14+-104],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_539  sizeInBytes=4
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
!   _temp_543 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_542 = *_temp_543  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_542) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_544 = _temp_542 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   _temp_545 = _temp_544 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Data Move: tmp = *_temp_545  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-180]
! IF STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0IF",r10
!   if tmp <= 0 then goto _Label_547		(int)
	load	[r14+-180],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_547
!	jmp	_Label_546
_Label_546:
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
!   _temp_549 = childPCB + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_548 = _temp_549		(4 bytes)
	load	[r14+-80],r1
	store	r1,[r14+-84]
!   _temp_550 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_548  sizeInBytes=4
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
!   _temp_555 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_556 = tmp - 1		(int)
	load	[r14+-180],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_555  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-184]
_Label_551:
!   Perform the FOR-LOOP termination test
!   if i > _temp_556 then goto _Label_554		
	load	[r14+-184],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_554
_Label_552:
	mov	1751,r13		! source line 1751
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_558 = childPCB + 32
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
!   Retrieve Result: targetName=_temp_557  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
	mov	1753,r13		! source line 1753
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_561 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_560 = *_temp_561  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_560) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_562 = _temp_560 + 32
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
!   Retrieve Result: targetName=_temp_559  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_557  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_559  sizeInBytes=4
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
!   _temp_566 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_565 = *_temp_566  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_565) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_567 = _temp_565 + 32
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
!   if result==true then goto _Label_563 else goto _Label_564
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_564
	jmp	_Label_563
_Label_563:
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
!   _temp_568 = childPCB + 32
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
	jmp	_Label_569
_Label_564:
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
!   _temp_570 = childPCB + 32
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
_Label_569:
!   Increment the FOR-LOOP index variable and jump back
_Label_553:
!   i = i + 1
	load	[r14+-184],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
	jmp	_Label_551
! END FOR
_Label_554:
! END IF...
_Label_547:
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
!   _temp_571 = _function_201_ResumeChildAfterFork
	set	_function_201_ResumeChildAfterFork,r1
	store	r1,[r14+-20]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_571  sizeInBytes=4
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
!   _temp_573 = childPCB + 12
	load	[r14+-172],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_572 = *_temp_573  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_572  (sizeInBytes=4)
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
	.word	_Label_574
	.word	0		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_575
	.word	-12
	.word	4
	.word	_Label_576
	.word	-16
	.word	4
	.word	_Label_577
	.word	-20
	.word	4
	.word	_Label_578
	.word	-24
	.word	4
	.word	_Label_579
	.word	-28
	.word	4
	.word	_Label_580
	.word	-32
	.word	4
	.word	_Label_581
	.word	-36
	.word	4
	.word	_Label_582
	.word	-40
	.word	4
	.word	_Label_583
	.word	-44
	.word	4
	.word	_Label_584
	.word	-48
	.word	4
	.word	_Label_585
	.word	-52
	.word	4
	.word	_Label_586
	.word	-56
	.word	4
	.word	_Label_587
	.word	-60
	.word	4
	.word	_Label_588
	.word	-64
	.word	4
	.word	_Label_589
	.word	-68
	.word	4
	.word	_Label_590
	.word	-72
	.word	4
	.word	_Label_591
	.word	-76
	.word	4
	.word	_Label_592
	.word	-80
	.word	4
	.word	_Label_593
	.word	-84
	.word	4
	.word	_Label_594
	.word	-88
	.word	4
	.word	_Label_595
	.word	-92
	.word	4
	.word	_Label_596
	.word	-96
	.word	4
	.word	_Label_597
	.word	-100
	.word	4
	.word	_Label_598
	.word	-104
	.word	4
	.word	_Label_599
	.word	-108
	.word	4
	.word	_Label_600
	.word	-112
	.word	4
	.word	_Label_601
	.word	-116
	.word	4
	.word	_Label_602
	.word	-120
	.word	4
	.word	_Label_603
	.word	-124
	.word	4
	.word	_Label_604
	.word	-128
	.word	4
	.word	_Label_605
	.word	-132
	.word	4
	.word	_Label_606
	.word	-136
	.word	4
	.word	_Label_607
	.word	-140
	.word	4
	.word	_Label_608
	.word	-144
	.word	4
	.word	_Label_609
	.word	-148
	.word	4
	.word	_Label_610
	.word	-152
	.word	4
	.word	_Label_611
	.word	-156
	.word	4
	.word	_Label_612
	.word	-160
	.word	4
	.word	_Label_613
	.word	-164
	.word	4
	.word	_Label_614
	.word	-168
	.word	4
	.word	_Label_615
	.word	-172
	.word	4
	.word	_Label_616
	.word	-176
	.word	4
	.word	_Label_617
	.word	-180
	.word	4
	.word	_Label_618
	.word	-184
	.word	4
	.word	_Label_619
	.word	-188
	.word	4
	.word	_Label_620
	.word	-192
	.word	4
	.word	0
_Label_574:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_615:
	.byte	'P'
	.ascii	"childPCB\0"
	.align
_Label_616:
	.byte	'P'
	.ascii	"childThread\0"
	.align
_Label_617:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_618:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_619:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_620:
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
_Label_3391:
	push	r0
	sub	r1,1,r1
	bne	_Label_3391
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
!   _temp_622 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_621 = *_temp_622  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_621) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_623 = _temp_621 + 32
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
!   _temp_625 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_625 [0 ] into _temp_626
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
!   _temp_624 = _temp_626		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_624  sizeInBytes=4
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
!   _temp_627 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_627 = 1  (sizeInBytes=1)
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
!   _temp_628 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_628 [14 ] into _temp_629
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
!   Data Move: initUserStackTop = *_temp_629  (sizeInBytes=4)
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
!   _temp_630 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_630 [999 ] into _temp_631
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
!   initSystemStackTop = _temp_631		(4 bytes)
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
_RoutineDescriptor__function_201_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_632
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_633
	.word	8
	.word	4
	.word	_Label_634
	.word	-12
	.word	4
	.word	_Label_635
	.word	-16
	.word	4
	.word	_Label_636
	.word	-20
	.word	4
	.word	_Label_637
	.word	-24
	.word	4
	.word	_Label_638
	.word	-28
	.word	4
	.word	_Label_639
	.word	-32
	.word	4
	.word	_Label_640
	.word	-36
	.word	4
	.word	_Label_641
	.word	-40
	.word	4
	.word	_Label_642
	.word	-44
	.word	4
	.word	_Label_643
	.word	-48
	.word	4
	.word	_Label_644
	.word	-52
	.word	4
	.word	_Label_645
	.word	-56
	.word	4
	.word	_Label_646
	.word	-60
	.word	4
	.word	_Label_647
	.word	-64
	.word	4
	.word	0
_Label_632:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_633:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_645:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_646:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_647:
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
_Label_3392:
	push	r0
	sub	r1,1,r1
	bne	_Label_3392
	mov	1783,r13		! source line 1783
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_652 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_653 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_652  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_648:
!   Perform the FOR-LOOP termination test
!   if i > _temp_653 then goto _Label_651		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_651
_Label_649:
	mov	1787,r13		! source line 1787
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0IF",r10
!   _temp_659 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_660 = _temp_659 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_660 [i ] into _temp_661
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
!   _temp_662 = _temp_661 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_658 = *_temp_662  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_658 != processID then goto _Label_655		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_655
!	jmp	_Label_657
_Label_657:
!   _temp_664 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_665 = _temp_664 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_665 [i ] into _temp_666
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
!   _temp_667 = _temp_666 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_663 = *_temp_667  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_670 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_669 = *_temp_670  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_669) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_671 = _temp_669 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_668 = *_temp_671  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_663 != _temp_668 then goto _Label_655		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_655
!	jmp	_Label_656
_Label_656:
!   _temp_673 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_674 = _temp_673 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_674 [i ] into _temp_675
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
!   _temp_676 = _temp_675 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_672 = *_temp_676  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_672 == 3 then goto _Label_655		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_655
!	jmp	_Label_654
_Label_654:
! THEN...
	mov	1789,r13		! source line 1789
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0AS",r10
	mov	1789,r13		! source line 1789
	mov	"\0\0SE",r10
!   _temp_678 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_679 = _temp_678 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_679 [i ] into _temp_680
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
!   _temp_677 = _temp_680		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_681 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_677  sizeInBytes=4
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
_Label_655:
!   Increment the FOR-LOOP index variable and jump back
_Label_650:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_648
! END FOR
_Label_651:
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
	.word	_Label_682
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_683
	.word	8
	.word	4
	.word	_Label_684
	.word	-12
	.word	4
	.word	_Label_685
	.word	-16
	.word	4
	.word	_Label_686
	.word	-20
	.word	4
	.word	_Label_687
	.word	-24
	.word	4
	.word	_Label_688
	.word	-28
	.word	4
	.word	_Label_689
	.word	-32
	.word	4
	.word	_Label_690
	.word	-36
	.word	4
	.word	_Label_691
	.word	-40
	.word	4
	.word	_Label_692
	.word	-44
	.word	4
	.word	_Label_693
	.word	-48
	.word	4
	.word	_Label_694
	.word	-52
	.word	4
	.word	_Label_695
	.word	-56
	.word	4
	.word	_Label_696
	.word	-60
	.word	4
	.word	_Label_697
	.word	-64
	.word	4
	.word	_Label_698
	.word	-68
	.word	4
	.word	_Label_699
	.word	-72
	.word	4
	.word	_Label_700
	.word	-76
	.word	4
	.word	_Label_701
	.word	-80
	.word	4
	.word	_Label_702
	.word	-84
	.word	4
	.word	_Label_703
	.word	-88
	.word	4
	.word	_Label_704
	.word	-92
	.word	4
	.word	_Label_705
	.word	-96
	.word	4
	.word	_Label_706
	.word	-100
	.word	4
	.word	_Label_707
	.word	-104
	.word	4
	.word	_Label_708
	.word	-108
	.word	4
	.word	_Label_709
	.word	-112
	.word	4
	.word	_Label_710
	.word	-116
	.word	4
	.word	_Label_711
	.word	-120
	.word	4
	.word	0
_Label_682:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_683:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_710:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_711:
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
_Label_3393:
	push	r0
	sub	r1,1,r1
	bne	_Label_3393
	mov	1799,r13		! source line 1799
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-264,r4
	mov	23,r3
_Label_3394:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3394
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
!   _temp_713 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
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
!   _temp_714 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-120]
!   _temp_715 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_717 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_716 = *_temp_717  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_716) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_718 = _temp_716 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_714  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_715  sizeInBytes=4
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
!   if tmp >= 0 then goto _Label_720		(int)
	load	[r14+-268],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_720
!	jmp	_Label_719
_Label_719:
! THEN...
	mov	1812,r13		! source line 1812
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_721 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_721  sizeInBytes=4
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
_Label_720:
! ASSIGNMENT STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0AS",r10
	mov	1815,r13		! source line 1815
	mov	"\0\0SE",r10
!   _temp_722 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-96]
!   _temp_723 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_722  sizeInBytes=4
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
!   if fp == 0 then goto _Label_725		(int)
	load	[r14+-132],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_725
!	jmp	_Label_724
_Label_724:
! THEN...
	mov	1817,r13		! source line 1817
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0SE",r10
!   _temp_726 = &newAddrSpace
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
!   _temp_727 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-84]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_727  sizeInBytes=4
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
!   _temp_728 = &_P_Kernel_fileManager
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
!   _temp_731 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_730 = *_temp_731  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_730) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_732 = _temp_730 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   _temp_729 = _temp_732		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-76]
!   _temp_733 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_729  sizeInBytes=4
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
!   _temp_735 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_734 = *_temp_735  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_734) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_736 = _temp_734 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_736 = newAddrSpace  (sizeInBytes=92)
	add	r14,-264,r5
	load	[r14+-48],r4
	mov	23,r3
_Label_3395:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3395
! ASSIGNMENT STATEMENT...
	mov	1822,r13		! source line 1822
	mov	"\0\0AS",r10
!   _temp_738 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-40]
!   _temp_739 = _temp_738 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_737 = *_temp_739  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initUserStackTop = _temp_737 * 8192		(int)
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
!   _temp_740 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_740 [999 ] into _temp_741
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
!   initSystemStackTop = _temp_741		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-144]
! SEND STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0SE",r10
!   _temp_742 = &newAddrSpace
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
!   _temp_743 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_743 = 1  (sizeInBytes=1)
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
	jmp	_Label_744
_Label_725:
! ELSE...
	mov	1828,r13		! source line 1828
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_745 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_745  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_746 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_746  sizeInBytes=4
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
_Label_744:
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
	.word	_Label_747
	.word	4		! total size of parameters
	.word	276		! frame size = 276
	.word	_Label_748
	.word	8
	.word	4
	.word	_Label_749
	.word	-12
	.word	4
	.word	_Label_750
	.word	-16
	.word	4
	.word	_Label_751
	.word	-20
	.word	4
	.word	_Label_752
	.word	-24
	.word	4
	.word	_Label_753
	.word	-28
	.word	4
	.word	_Label_754
	.word	-32
	.word	4
	.word	_Label_755
	.word	-36
	.word	4
	.word	_Label_756
	.word	-40
	.word	4
	.word	_Label_757
	.word	-44
	.word	4
	.word	_Label_758
	.word	-48
	.word	4
	.word	_Label_759
	.word	-52
	.word	4
	.word	_Label_760
	.word	-56
	.word	4
	.word	_Label_761
	.word	-60
	.word	4
	.word	_Label_762
	.word	-64
	.word	4
	.word	_Label_763
	.word	-68
	.word	4
	.word	_Label_764
	.word	-72
	.word	4
	.word	_Label_765
	.word	-76
	.word	4
	.word	_Label_766
	.word	-80
	.word	4
	.word	_Label_767
	.word	-84
	.word	4
	.word	_Label_768
	.word	-88
	.word	4
	.word	_Label_769
	.word	-92
	.word	4
	.word	_Label_770
	.word	-96
	.word	4
	.word	_Label_771
	.word	-100
	.word	4
	.word	_Label_772
	.word	-104
	.word	4
	.word	_Label_773
	.word	-108
	.word	4
	.word	_Label_774
	.word	-112
	.word	4
	.word	_Label_775
	.word	-116
	.word	4
	.word	_Label_776
	.word	-120
	.word	4
	.word	_Label_777
	.word	-124
	.word	4
	.word	_Label_778
	.word	-128
	.word	4
	.word	_Label_779
	.word	-132
	.word	4
	.word	_Label_780
	.word	-136
	.word	4
	.word	_Label_781
	.word	-140
	.word	4
	.word	_Label_782
	.word	-144
	.word	4
	.word	_Label_783
	.word	-148
	.word	4
	.word	_Label_784
	.word	-172
	.word	24
	.word	_Label_785
	.word	-264
	.word	92
	.word	_Label_786
	.word	-268
	.word	4
	.word	0
_Label_747:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_748:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_718\0"
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
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_780:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_781:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_782:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_783:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_784:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_785:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_786:
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
_Label_3396:
	push	r0
	sub	r1,1,r1
	bne	_Label_3396
	mov	1838,r13		! source line 1838
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0AS",r10
	mov	1841,r13		! source line 1841
	mov	"\0\0SE",r10
!   _temp_787 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_788 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_790 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_789 = *_temp_790  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_789) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_791 = _temp_789 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_787  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_788  sizeInBytes=4
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
!   _temp_792 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_792  sizeInBytes=4
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
!   _temp_793 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_793  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1844,r13		! source line 1844
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_794 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_794  sizeInBytes=4
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
	.word	_Label_795
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_796
	.word	8
	.word	4
	.word	_Label_797
	.word	-12
	.word	4
	.word	_Label_798
	.word	-16
	.word	4
	.word	_Label_799
	.word	-20
	.word	4
	.word	_Label_800
	.word	-24
	.word	4
	.word	_Label_801
	.word	-28
	.word	4
	.word	_Label_802
	.word	-32
	.word	4
	.word	_Label_803
	.word	-36
	.word	4
	.word	_Label_804
	.word	-40
	.word	4
	.word	_Label_805
	.word	-64
	.word	24
	.word	_Label_806
	.word	-68
	.word	4
	.word	0
_Label_795:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_796:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_805:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_806:
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
_Label_3397:
	push	r0
	sub	r1,1,r1
	bne	_Label_3397
	mov	1852,r13		! source line 1852
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0AS",r10
	mov	1859,r13		! source line 1859
	mov	"\0\0SE",r10
!   _temp_807 = &kernelFileName
	add	r14,-112,r1
	store	r1,[r14+-88]
!   _temp_808 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_810 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_809 = *_temp_810  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_809) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_811 = _temp_809 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_807  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_808  sizeInBytes=4
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
!   if tmp >= 0 then goto _Label_813		(int)
	load	[r14+-116],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_813
!	jmp	_Label_812
_Label_812:
! THEN...
	mov	1861,r13		! source line 1861
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_814 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_814  sizeInBytes=4
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
_Label_813:
! FOR STATEMENT...
	mov	1866,r13		! source line 1866
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_819 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_820 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_819  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-120]
_Label_815:
!   Perform the FOR-LOOP termination test
!   if i > _temp_820 then goto _Label_818		
	load	[r14+-120],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_818
_Label_816:
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
!   _temp_825 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_824 = *_temp_825  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_824) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_826 = _temp_824 + 124
	load	[r14+-52],r1
	add	r1,124,r1
	store	r1,[r14+-44]
!   Move address of _temp_826 [i ] into _temp_827
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
!   Data Move: _temp_823 = *_temp_827  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_823) then goto _Label_821
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_821
	jmp	_Label_822
_Label_821:
! THEN...
	mov	1868,r13		! source line 1868
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1868,r13		! source line 1868
	mov	"\0\0BR",r10
	jmp	_Label_818
	jmp	_Label_828
_Label_822:
! ELSE...
	mov	1869,r13		! source line 1869
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1869,r13		! source line 1869
	mov	"\0\0IF",r10
!   if i != 9 then goto _Label_830		(int)
	load	[r14+-120],r1
	mov	9,r2
	cmp	r1,r2
	bne	_Label_830
!	jmp	_Label_829
_Label_829:
! THEN...
	mov	1870,r13		! source line 1870
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_831 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_831  sizeInBytes=4
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
_Label_830:
! END IF...
_Label_828:
!   Increment the FOR-LOOP index variable and jump back
_Label_817:
!   i = i + 1
	load	[r14+-120],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
	jmp	_Label_815
! END FOR
_Label_818:
! ASSIGNMENT STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0AS",r10
	mov	1876,r13		! source line 1876
	mov	"\0\0SE",r10
!   _temp_832 = &kernelFileName
	add	r14,-112,r1
	store	r1,[r14+-32]
!   _temp_833 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_832  sizeInBytes=4
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
!   if intIsZero (fp) then goto _Label_834
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_834
	jmp	_Label_835
_Label_834:
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
_Label_835:
! ASSIGNMENT STATEMENT...
	mov	1881,r13		! source line 1881
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_837 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_836 = *_temp_837  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_836) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_838 = _temp_836 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_838 [i ] into _temp_839
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
!   Data Move: *_temp_839 = fp  (sizeInBytes=4)
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
	.word	_Label_840
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_841
	.word	8
	.word	4
	.word	_Label_842
	.word	-12
	.word	4
	.word	_Label_843
	.word	-16
	.word	4
	.word	_Label_844
	.word	-20
	.word	4
	.word	_Label_845
	.word	-24
	.word	4
	.word	_Label_846
	.word	-28
	.word	4
	.word	_Label_847
	.word	-32
	.word	4
	.word	_Label_848
	.word	-36
	.word	4
	.word	_Label_849
	.word	-40
	.word	4
	.word	_Label_850
	.word	-44
	.word	4
	.word	_Label_851
	.word	-48
	.word	4
	.word	_Label_852
	.word	-52
	.word	4
	.word	_Label_853
	.word	-56
	.word	4
	.word	_Label_854
	.word	-60
	.word	4
	.word	_Label_855
	.word	-64
	.word	4
	.word	_Label_856
	.word	-68
	.word	4
	.word	_Label_857
	.word	-72
	.word	4
	.word	_Label_858
	.word	-76
	.word	4
	.word	_Label_859
	.word	-80
	.word	4
	.word	_Label_860
	.word	-84
	.word	4
	.word	_Label_861
	.word	-88
	.word	4
	.word	_Label_862
	.word	-112
	.word	24
	.word	_Label_863
	.word	-116
	.word	4
	.word	_Label_864
	.word	-120
	.word	4
	.word	_Label_865
	.word	-124
	.word	4
	.word	0
_Label_840:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_841:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_831\0"
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
	.ascii	"_temp_820\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_862:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_863:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_864:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_865:
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
	mov	19,r1
_Label_3398:
	push	r0
	sub	r1,1,r1
	bne	_Label_3398
	mov	1888,r13		! source line 1888
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0AS",r10
	mov	1892,r13		! source line 1892
	mov	"\0\0SE",r10
!   _temp_866 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_867 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_869 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_868 = *_temp_869  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_868) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_870 = _temp_868 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_866  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_867  sizeInBytes=4
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
!   _temp_871 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_871  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1893,r13		! source line 1893
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1894,r13		! source line 1894
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_872 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_872  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1895,r13		! source line 1895
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_873 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_873  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1896,r13		! source line 1896
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1897,r13		! source line 1897
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1898,r13		! source line 1898
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
	.word	_Label_874
	.word	12		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_875
	.word	8
	.word	4
	.word	_Label_876
	.word	12
	.word	4
	.word	_Label_877
	.word	16
	.word	4
	.word	_Label_878
	.word	-12
	.word	4
	.word	_Label_879
	.word	-16
	.word	4
	.word	_Label_880
	.word	-20
	.word	4
	.word	_Label_881
	.word	-24
	.word	4
	.word	_Label_882
	.word	-28
	.word	4
	.word	_Label_883
	.word	-32
	.word	4
	.word	_Label_884
	.word	-36
	.word	4
	.word	_Label_885
	.word	-40
	.word	4
	.word	_Label_886
	.word	-64
	.word	24
	.word	_Label_887
	.word	-68
	.word	4
	.word	0
_Label_874:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_875:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_876:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_877:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_886:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_887:
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
_Label_3399:
	push	r0
	sub	r1,1,r1
	bne	_Label_3399
	mov	1903,r13		! source line 1903
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1907,r13		! source line 1907
	mov	"\0\0AS",r10
	mov	1907,r13		! source line 1907
	mov	"\0\0SE",r10
!   _temp_888 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_889 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_891 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_890 = *_temp_891  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_890) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_892 = _temp_890 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_888  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_889  sizeInBytes=4
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
!   _temp_893 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_893  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1908,r13		! source line 1908
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1909,r13		! source line 1909
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_894 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_894  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1910,r13		! source line 1910
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_895 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_895  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1911,r13		! source line 1911
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1912,r13		! source line 1912
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1913,r13		! source line 1913
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
	.word	_Label_896
	.word	12		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_897
	.word	8
	.word	4
	.word	_Label_898
	.word	12
	.word	4
	.word	_Label_899
	.word	16
	.word	4
	.word	_Label_900
	.word	-12
	.word	4
	.word	_Label_901
	.word	-16
	.word	4
	.word	_Label_902
	.word	-20
	.word	4
	.word	_Label_903
	.word	-24
	.word	4
	.word	_Label_904
	.word	-28
	.word	4
	.word	_Label_905
	.word	-32
	.word	4
	.word	_Label_906
	.word	-36
	.word	4
	.word	_Label_907
	.word	-40
	.word	4
	.word	_Label_908
	.word	-64
	.word	24
	.word	_Label_909
	.word	-68
	.word	4
	.word	0
_Label_896:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_897:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_898:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_899:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_908:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_909:
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
_Label_3400:
	push	r0
	sub	r1,1,r1
	bne	_Label_3400
	mov	1918,r13		! source line 1918
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_910 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_910  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1920,r13		! source line 1920
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1921,r13		! source line 1921
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_911 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_911  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1922,r13		! source line 1922
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1923,r13		! source line 1923
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1924,r13		! source line 1924
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_912 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_912  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1925,r13		! source line 1925
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1926,r13		! source line 1926
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1927,r13		! source line 1927
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1928,r13		! source line 1928
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
	.word	_Label_913
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_914
	.word	8
	.word	4
	.word	_Label_915
	.word	12
	.word	4
	.word	_Label_916
	.word	-12
	.word	4
	.word	_Label_917
	.word	-16
	.word	4
	.word	_Label_918
	.word	-20
	.word	4
	.word	0
_Label_913:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_914:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_915:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_910\0"
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
_Label_3401:
	push	r0
	sub	r1,1,r1
	bne	_Label_3401
	mov	1933,r13		! source line 1933
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_919 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_919  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1935,r13		! source line 1935
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1936,r13		! source line 1936
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_920 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_920  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1937,r13		! source line 1937
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1938,r13		! source line 1938
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1939,r13		! source line 1939
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1939,r13		! source line 1939
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
	.word	_Label_921
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_922
	.word	8
	.word	4
	.word	_Label_923
	.word	-12
	.word	4
	.word	_Label_924
	.word	-16
	.word	4
	.word	0
_Label_921:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_922:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_919\0"
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
_Label_3402:
	push	r0
	sub	r1,1,r1
	bne	_Label_3402
	mov	2530,r13		! source line 2530
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2534,r13		! source line 2534
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_925 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_925  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0AS",r10
!   _temp_926 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_926) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_928 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_928) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_927 = *_temp_928  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_926 = _temp_927  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2536,r13		! source line 2536
	mov	"\0\0AS",r10
!   _temp_929 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_929) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_931 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_931) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_930 = *_temp_931  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_929 = _temp_930  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0AS",r10
!   _temp_932 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_932) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_934 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_934) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_933 = *_temp_934  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_932 = _temp_933  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2537,r13		! source line 2537
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
	.word	_Label_935
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_936
	.word	8
	.word	4
	.word	_Label_937
	.word	12
	.word	4
	.word	_Label_938
	.word	-16
	.word	4
	.word	_Label_939
	.word	-9
	.word	1
	.word	_Label_940
	.word	-20
	.word	4
	.word	_Label_941
	.word	-24
	.word	4
	.word	_Label_942
	.word	-10
	.word	1
	.word	_Label_943
	.word	-28
	.word	4
	.word	_Label_944
	.word	-32
	.word	4
	.word	_Label_945
	.word	-11
	.word	1
	.word	_Label_946
	.word	-36
	.word	4
	.word	_Label_947
	.word	-12
	.word	1
	.word	_Label_948
	.word	-40
	.word	4
	.word	_Label_949
	.word	-44
	.word	4
	.word	0
_Label_935:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_936:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_937:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_939:
	.byte	'C'
	.ascii	"_temp_933\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_942:
	.byte	'C'
	.ascii	"_temp_930\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_945:
	.byte	'C'
	.ascii	"_temp_927\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_947:
	.byte	'C'
	.ascii	"_temp_925\0"
	.align
_Label_948:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_949:
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
_Label_3403:
	push	r0
	sub	r1,1,r1
	bne	_Label_3403
	mov	2540,r13		! source line 2540
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_951 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_950 = *_temp_951  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_950  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2541,r13		! source line 2541
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2542,r13		! source line 2542
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2542,r13		! source line 2542
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
	.word	_Label_952
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_953
	.word	8
	.word	4
	.word	_Label_954
	.word	-12
	.word	4
	.word	_Label_955
	.word	-16
	.word	4
	.word	0
_Label_952:
	.ascii	"printFCB\0"
	.align
_Label_953:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_950\0"
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
_Label_3404:
	push	r0
	sub	r1,1,r1
	bne	_Label_3404
	mov	2545,r13		! source line 2545
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_956 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_956  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2546,r13		! source line 2546
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_957 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_957  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2547,r13		! source line 2547
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_958 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_958  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2548,r13		! source line 2548
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2549,r13		! source line 2549
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
	mov	2549,r13		! source line 2549
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
	.word	_Label_959
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_960
	.word	8
	.word	4
	.word	_Label_961
	.word	-12
	.word	4
	.word	_Label_962
	.word	-16
	.word	4
	.word	_Label_963
	.word	-20
	.word	4
	.word	0
_Label_959:
	.ascii	"printOpen\0"
	.align
_Label_960:
	.byte	'P'
	.ascii	"open\0"
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
_Label_3405:
	push	r0
	sub	r1,1,r1
	bne	_Label_3405
	mov	2809,r13		! source line 2809
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2811,r13		! source line 2811
	mov	"\0\0AS",r10
	mov	2811,r13		! source line 2811
	mov	"\0\0SE",r10
!   _temp_964 = &_P_Kernel_threadManager
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
	mov	2812,r13		! source line 2812
	mov	"\0\0AS",r10
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_965 = myProgram + 72
	load	[r14+-28],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   _temp_966 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_965 = _temp_966  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2813,r13		! source line 2813
	mov	"\0\0SE",r10
!   _temp_967 = _function_197_StartUserProcess
	set	_function_197_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_967  sizeInBytes=4
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
	mov	2813,r13		! source line 2813
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
	.word	_Label_968
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_969
	.word	-12
	.word	4
	.word	_Label_970
	.word	-16
	.word	4
	.word	_Label_971
	.word	-20
	.word	4
	.word	_Label_972
	.word	-24
	.word	4
	.word	_Label_973
	.word	-28
	.word	4
	.word	0
_Label_968:
	.ascii	"InitFirstProcess\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_973:
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
_Label_3406:
	push	r0
	sub	r1,1,r1
	bne	_Label_3406
	mov	2816,r13		! source line 2816
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2823,r13		! source line 2823
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	2824,r13		! source line 2824
	mov	"\0\0AS",r10
	mov	2824,r13		! source line 2824
	mov	"\0\0SE",r10
!   _temp_974 = &_P_Kernel_processManager
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
	mov	2825,r13		! source line 2825
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_975 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_975 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2826,r13		! source line 2826
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_976 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_976 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2827,r13		! source line 2827
	mov	"\0\0AS",r10
	mov	2827,r13		! source line 2827
	mov	"\0\0SE",r10
!   _temp_977 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-60]
!   _temp_978 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_977  sizeInBytes=4
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
	mov	2828,r13		! source line 2828
	mov	"\0\0IF",r10
!   if fp == 0 then goto _Label_980		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_980
!	jmp	_Label_979
_Label_979:
! THEN...
	mov	2829,r13		! source line 2829
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0AS",r10
	mov	2829,r13		! source line 2829
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_982 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_981 = _temp_982		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_981  sizeInBytes=4
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
	mov	2830,r13		! source line 2830
	mov	"\0\0SE",r10
!   _temp_983 = &_P_Kernel_fileManager
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
	mov	2831,r13		! source line 2831
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_985 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_986 = _temp_985 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_984 = *_temp_986  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_984 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_987 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_987 [999 ] into _temp_988
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
!   initSystemStackTop = _temp_988		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	2833,r13		! source line 2833
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_989 = pcb + 32
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
	mov	2834,r13		! source line 2834
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_990 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_990 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	2835,r13		! source line 2835
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
	mov	2836,r13		! source line 2836
	mov	"\0\0CE",r10
	call	BecomeUserThread
	jmp	_Label_991
_Label_980:
! ELSE...
	mov	2838,r13		! source line 2838
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_992 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_992  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2838,r13		! source line 2838
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2839,r13		! source line 2839
	mov	"\0\0CA",r10
	call	_P_System_nl
! END IF...
_Label_991:
! RETURN STATEMENT...
	mov	2828,r13		! source line 2828
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
	.word	_Label_993
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_994
	.word	8
	.word	4
	.word	_Label_995
	.word	-12
	.word	4
	.word	_Label_996
	.word	-16
	.word	4
	.word	_Label_997
	.word	-20
	.word	4
	.word	_Label_998
	.word	-24
	.word	4
	.word	_Label_999
	.word	-28
	.word	4
	.word	_Label_1000
	.word	-32
	.word	4
	.word	_Label_1001
	.word	-36
	.word	4
	.word	_Label_1002
	.word	-40
	.word	4
	.word	_Label_1003
	.word	-44
	.word	4
	.word	_Label_1004
	.word	-48
	.word	4
	.word	_Label_1005
	.word	-52
	.word	4
	.word	_Label_1006
	.word	-56
	.word	4
	.word	_Label_1007
	.word	-60
	.word	4
	.word	_Label_1008
	.word	-64
	.word	4
	.word	_Label_1009
	.word	-68
	.word	4
	.word	_Label_1010
	.word	-72
	.word	4
	.word	_Label_1011
	.word	-76
	.word	4
	.word	_Label_1012
	.word	-80
	.word	4
	.word	_Label_1013
	.word	-84
	.word	4
	.word	_Label_1014
	.word	-88
	.word	4
	.word	_Label_1015
	.word	-92
	.word	4
	.word	_Label_1016
	.word	-96
	.word	4
	.word	0
_Label_993:
	.ascii	"StartUserProcess\0"
	.align
_Label_994:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_1011:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_1012:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_1013:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_1014:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_1015:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_1016:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1017
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1017:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1018
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1018:
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
_Label_3407:
	push	r0
	sub	r1,1,r1
	bne	_Label_3407
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1020		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1020
!	jmp	_Label_1019
_Label_1019:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1021 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1021  sizeInBytes=4
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
_Label_1020:
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
	.word	_Label_1023
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1024
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1025
	.word	12
	.word	4
	.word	_Label_1026
	.word	-12
	.word	4
	.word	_Label_1027
	.word	-16
	.word	4
	.word	0
_Label_1023:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1024:
	.ascii	"Pself\0"
	.align
_Label_1025:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_1021\0"
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
_Label_3408:
	push	r0
	sub	r1,1,r1
	bne	_Label_3408
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
!   if count != 2147483647 then goto _Label_1029		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1029
!	jmp	_Label_1028
_Label_1028:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1030 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1030  sizeInBytes=4
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
_Label_1029:
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
!   if count > 0 then goto _Label_1032		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1032
!	jmp	_Label_1031
_Label_1031:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_1033 = &waitingThreads
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
!   _temp_1034 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1034 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_1035 = &_P_Kernel_readyList
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
_Label_1032:
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
	.word	_Label_1036
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1037
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1038
	.word	-12
	.word	4
	.word	_Label_1039
	.word	-16
	.word	4
	.word	_Label_1040
	.word	-20
	.word	4
	.word	_Label_1041
	.word	-24
	.word	4
	.word	_Label_1042
	.word	-28
	.word	4
	.word	_Label_1043
	.word	-32
	.word	4
	.word	0
_Label_1036:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1037:
	.ascii	"Pself\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1042:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1043:
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
_Label_3409:
	push	r0
	sub	r1,1,r1
	bne	_Label_3409
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
!   if count != -2147483648 then goto _Label_1045		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1045
!	jmp	_Label_1044
_Label_1044:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1046 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1046  sizeInBytes=4
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
_Label_1045:
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
!   if count >= 0 then goto _Label_1048		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1048
!	jmp	_Label_1047
_Label_1047:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_1049 = &waitingThreads
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
_Label_1048:
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
	.word	_Label_1050
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1051
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1052
	.word	-12
	.word	4
	.word	_Label_1053
	.word	-16
	.word	4
	.word	_Label_1054
	.word	-20
	.word	4
	.word	0
_Label_1050:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1051:
	.ascii	"Pself\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1054:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1055
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1055:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1056
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1056:
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
_Label_3410:
	push	r0
	sub	r1,1,r1
	bne	_Label_3410
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
	.word	_Label_1058
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1059
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1060
	.word	-12
	.word	4
	.word	0
_Label_1058:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1059:
	.ascii	"Pself\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1057\0"
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
_Label_3411:
	push	r0
	sub	r1,1,r1
	bne	_Label_3411
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1062		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1062
!	jmp	_Label_1061
_Label_1061:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1063 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1063  sizeInBytes=4
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
_Label_1062:
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
!   if heldBy == 0 then goto _Label_1067		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1067
!   _temp_1066 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1068
_Label_1067:
!   _temp_1066 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1068:
!   if _temp_1066 then goto _Label_1065 else goto _Label_1064
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1064
	jmp	_Label_1065
_Label_1064:
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
	jmp	_Label_1069
_Label_1065:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_1070 = &waitingThreads
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
_Label_1069:
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
	.word	_Label_1071
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1072
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1073
	.word	-16
	.word	4
	.word	_Label_1074
	.word	-9
	.word	1
	.word	_Label_1075
	.word	-20
	.word	4
	.word	_Label_1076
	.word	-24
	.word	4
	.word	0
_Label_1071:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1072:
	.ascii	"Pself\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1074:
	.byte	'C'
	.ascii	"_temp_1066\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1076:
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
_Label_3412:
	push	r0
	sub	r1,1,r1
	bne	_Label_3412
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1078		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1078
!	jmp	_Label_1077
_Label_1077:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1079 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1079  sizeInBytes=4
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
_Label_1078:
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
!   _temp_1080 = &waitingThreads
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
!   if t == 0 then goto _Label_1082		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1082
!	jmp	_Label_1081
_Label_1081:
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
!   _temp_1083 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1083 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_1084 = &_P_Kernel_readyList
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
	jmp	_Label_1085
_Label_1082:
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
_Label_1085:
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
	.word	_Label_1086
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1087
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1088
	.word	-12
	.word	4
	.word	_Label_1089
	.word	-16
	.word	4
	.word	_Label_1090
	.word	-20
	.word	4
	.word	_Label_1091
	.word	-24
	.word	4
	.word	_Label_1092
	.word	-28
	.word	4
	.word	_Label_1093
	.word	-32
	.word	4
	.word	0
_Label_1086:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1087:
	.ascii	"Pself\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1083\0"
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
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1093:
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
_Label_3413:
	push	r0
	sub	r1,1,r1
	bne	_Label_3413
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1096		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1096
!	jmp	_Label_1095
_Label_1095:
!   _temp_1094 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1097
_Label_1096:
!   _temp_1094 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1097:
!   ReturnResult: _temp_1094  (sizeInBytes=1)
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
	.word	_Label_1098
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1099
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1100
	.word	-9
	.word	1
	.word	0
_Label_1098:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1099:
	.ascii	"Pself\0"
	.align
_Label_1100:
	.byte	'C'
	.ascii	"_temp_1094\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1101
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1101:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1102
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1102:
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
_Label_3414:
	push	r0
	sub	r1,1,r1
	bne	_Label_3414
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
	.word	_Label_1104
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1105
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1106
	.word	-12
	.word	4
	.word	0
_Label_1104:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1105:
	.ascii	"Pself\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1103\0"
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
_Label_3415:
	push	r0
	sub	r1,1,r1
	bne	_Label_3415
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
!   Retrieve Result: targetName=_temp_1109  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1109 then goto _Label_1108 else goto _Label_1107
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1107
	jmp	_Label_1108
_Label_1107:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1110 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1110  sizeInBytes=4
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
_Label_1108:
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
!   _temp_1111 = &waitingThreads
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
	.word	_Label_1112
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1113
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1114
	.word	12
	.word	4
	.word	_Label_1115
	.word	-16
	.word	4
	.word	_Label_1116
	.word	-20
	.word	4
	.word	_Label_1117
	.word	-9
	.word	1
	.word	_Label_1118
	.word	-24
	.word	4
	.word	0
_Label_1112:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1113:
	.ascii	"Pself\0"
	.align
_Label_1114:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1117:
	.byte	'C'
	.ascii	"_temp_1109\0"
	.align
_Label_1118:
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
_Label_3416:
	push	r0
	sub	r1,1,r1
	bne	_Label_3416
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
!   Retrieve Result: targetName=_temp_1121  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1121 then goto _Label_1120 else goto _Label_1119
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1119
	jmp	_Label_1120
_Label_1119:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1122 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1122  sizeInBytes=4
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
_Label_1120:
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
!   _temp_1123 = &waitingThreads
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
!   if t == 0 then goto _Label_1125		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1125
!	jmp	_Label_1124
_Label_1124:
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
!   _temp_1126 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1126 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_1127 = &_P_Kernel_readyList
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
_Label_1125:
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
	.word	_Label_1128
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1129
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1130
	.word	12
	.word	4
	.word	_Label_1131
	.word	-16
	.word	4
	.word	_Label_1132
	.word	-20
	.word	4
	.word	_Label_1133
	.word	-24
	.word	4
	.word	_Label_1134
	.word	-28
	.word	4
	.word	_Label_1135
	.word	-9
	.word	1
	.word	_Label_1136
	.word	-32
	.word	4
	.word	_Label_1137
	.word	-36
	.word	4
	.word	0
_Label_1128:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1129:
	.ascii	"Pself\0"
	.align
_Label_1130:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1135:
	.byte	'C'
	.ascii	"_temp_1121\0"
	.align
_Label_1136:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1137:
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
_Label_3417:
	push	r0
	sub	r1,1,r1
	bne	_Label_3417
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
!   Retrieve Result: targetName=_temp_1140  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1140 then goto _Label_1139 else goto _Label_1138
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1138
	jmp	_Label_1139
_Label_1138:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1141 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1141  sizeInBytes=4
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
_Label_1139:
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
_Label_1142:
!	jmp	_Label_1143
_Label_1143:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_1145 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1146
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1146
	jmp	_Label_1147
_Label_1146:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_1144
! END IF...
_Label_1147:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1148 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1148 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_1149 = &_P_Kernel_readyList
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
	jmp	_Label_1142
_Label_1144:
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
	.word	_Label_1150
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1151
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1152
	.word	12
	.word	4
	.word	_Label_1153
	.word	-16
	.word	4
	.word	_Label_1154
	.word	-20
	.word	4
	.word	_Label_1155
	.word	-24
	.word	4
	.word	_Label_1156
	.word	-28
	.word	4
	.word	_Label_1157
	.word	-9
	.word	1
	.word	_Label_1158
	.word	-32
	.word	4
	.word	_Label_1159
	.word	-36
	.word	4
	.word	0
_Label_1150:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1151:
	.ascii	"Pself\0"
	.align
_Label_1152:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1157:
	.byte	'C'
	.ascii	"_temp_1140\0"
	.align
_Label_1158:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1159:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1160
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
_Label_1160:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1161
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1161:
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
_Label_3418:
	push	r0
	sub	r1,1,r1
	bne	_Label_3418
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
!   _temp_1162 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1162) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1162 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_1163 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1163 [0 ] into _temp_1164
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
!   Data Move: *_temp_1164 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1165 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1165 [999 ] into _temp_1166
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
!   Data Move: *_temp_1166 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1167 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1167 [999 ] into _temp_1168
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
!   stackTop = _temp_1168		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1169 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1171 = &_temp_1170
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1171 = _temp_1171 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1173:
!   Data Move: *_temp_1171 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1171 = _temp_1171 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1172 = _temp_1172 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1172) then goto _Label_1173
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1173
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1174 = &_temp_1170
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3419
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3419:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1169 = *_temp_1174  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3420:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3420
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
!   _temp_1175 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1177 = &_temp_1176
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1177 = _temp_1177 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1179:
!   Data Move: *_temp_1177 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1177 = _temp_1177 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1178 = _temp_1178 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1178) then goto _Label_1179
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1179
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1180 = &_temp_1176
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3421
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3421:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1175 = *_temp_1180  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3422:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3422
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
	.word	_Label_1181
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1182
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1183
	.word	12
	.word	4
	.word	_Label_1184
	.word	-12
	.word	4
	.word	_Label_1185
	.word	-16
	.word	4
	.word	_Label_1186
	.word	-20
	.word	4
	.word	_Label_1187
	.word	-84
	.word	64
	.word	_Label_1188
	.word	-88
	.word	4
	.word	_Label_1189
	.word	-92
	.word	4
	.word	_Label_1190
	.word	-96
	.word	4
	.word	_Label_1191
	.word	-100
	.word	4
	.word	_Label_1192
	.word	-156
	.word	56
	.word	_Label_1193
	.word	-160
	.word	4
	.word	_Label_1194
	.word	-164
	.word	4
	.word	_Label_1195
	.word	-168
	.word	4
	.word	_Label_1196
	.word	-172
	.word	4
	.word	_Label_1197
	.word	-176
	.word	4
	.word	_Label_1198
	.word	-180
	.word	4
	.word	_Label_1199
	.word	-184
	.word	4
	.word	_Label_1200
	.word	-188
	.word	4
	.word	0
_Label_1181:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1182:
	.ascii	"Pself\0"
	.align
_Label_1183:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1162\0"
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
_Label_3423:
	push	r0
	sub	r1,1,r1
	bne	_Label_3423
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
!   _temp_1201 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1201  (sizeInBytes=4)
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
!   _temp_1203 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1202  sizeInBytes=4
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
	.word	_Label_1204
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1205
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1206
	.word	12
	.word	4
	.word	_Label_1207
	.word	16
	.word	4
	.word	_Label_1208
	.word	-12
	.word	4
	.word	_Label_1209
	.word	-16
	.word	4
	.word	_Label_1210
	.word	-20
	.word	4
	.word	_Label_1211
	.word	-24
	.word	4
	.word	_Label_1212
	.word	-28
	.word	4
	.word	0
_Label_1204:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1205:
	.ascii	"Pself\0"
	.align
_Label_1206:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1207:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1211:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1212:
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
_Label_3424:
	push	r0
	sub	r1,1,r1
	bne	_Label_3424
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1215 == _P_Kernel_currentThread then goto _Label_1214		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1214
!	jmp	_Label_1213
_Label_1213:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1216 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1216  sizeInBytes=4
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
_Label_1214:
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
!   _temp_1217 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1219		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1219
!	jmp	_Label_1218
_Label_1218:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1221		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1221
!	jmp	_Label_1220
_Label_1220:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1222 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1222  sizeInBytes=4
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
_Label_1221:
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
!   _temp_1224 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1223  sizeInBytes=4
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
_Label_1219:
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
	.word	_Label_1225
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1226
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1227
	.word	-12
	.word	4
	.word	_Label_1228
	.word	-16
	.word	4
	.word	_Label_1229
	.word	-20
	.word	4
	.word	_Label_1230
	.word	-24
	.word	4
	.word	_Label_1231
	.word	-28
	.word	4
	.word	_Label_1232
	.word	-32
	.word	4
	.word	_Label_1233
	.word	-36
	.word	4
	.word	_Label_1234
	.word	-40
	.word	4
	.word	_Label_1235
	.word	-44
	.word	4
	.word	0
_Label_1225:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1226:
	.ascii	"Pself\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1222\0"
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
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1234:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1235:
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
_Label_3425:
	push	r0
	sub	r1,1,r1
	bne	_Label_3425
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1237		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1237
!	jmp	_Label_1236
_Label_1236:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1238 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1238  sizeInBytes=4
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
_Label_1237:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1241 == _P_Kernel_currentThread then goto _Label_1240		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1240
!	jmp	_Label_1239
_Label_1239:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1242 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1242  sizeInBytes=4
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
_Label_1240:
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
!   _temp_1243 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1244
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1244
	jmp	_Label_1245
_Label_1244:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1246 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1246  sizeInBytes=4
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
_Label_1245:
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
	.word	_Label_1247
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1248
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1249
	.word	-12
	.word	4
	.word	_Label_1250
	.word	-16
	.word	4
	.word	_Label_1251
	.word	-20
	.word	4
	.word	_Label_1252
	.word	-24
	.word	4
	.word	_Label_1253
	.word	-28
	.word	4
	.word	_Label_1254
	.word	-32
	.word	4
	.word	0
_Label_1247:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1248:
	.ascii	"Pself\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1254:
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
_Label_3426:
	push	r0
	sub	r1,1,r1
	bne	_Label_3426
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_1258 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1258 [0 ] into _temp_1259
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
!   Data Move: _temp_1257 = *_temp_1259  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1257 == 606348324 then goto _Label_1256		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1256
!	jmp	_Label_1255
_Label_1255:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1260 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1260  sizeInBytes=4
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
	jmp	_Label_1261
_Label_1256:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_1265 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1265 [999 ] into _temp_1266
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
!   Data Move: _temp_1264 = *_temp_1266  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1264 == 606348324 then goto _Label_1263		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1263
!	jmp	_Label_1262
_Label_1262:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1267 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1267  sizeInBytes=4
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
_Label_1263:
! END IF...
_Label_1261:
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
	.word	_Label_1268
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1269
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1270
	.word	-12
	.word	4
	.word	_Label_1271
	.word	-16
	.word	4
	.word	_Label_1272
	.word	-20
	.word	4
	.word	_Label_1273
	.word	-24
	.word	4
	.word	_Label_1274
	.word	-28
	.word	4
	.word	_Label_1275
	.word	-32
	.word	4
	.word	_Label_1276
	.word	-36
	.word	4
	.word	_Label_1277
	.word	-40
	.word	4
	.word	0
_Label_1268:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1269:
	.ascii	"Pself\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1257\0"
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
_Label_3427:
	push	r0
	sub	r1,1,r1
	bne	_Label_3427
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
!   _temp_1278 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1278  sizeInBytes=4
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
!   _temp_1279 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1279  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1280  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1281 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1281  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1282 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1282  sizeInBytes=4
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
!   _temp_1287 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1288 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1287  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1283:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1288 then goto _Label_1286		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1286
_Label_1284:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1289 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1289  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1290 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1290  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1291 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1291  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1293 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1293 [i ] into _temp_1294
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
!   Data Move: _temp_1292 = *_temp_1294  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1292  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1295 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1295  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1297 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1297 [i ] into _temp_1298
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
!   Data Move: _temp_1296 = *_temp_1298  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1296  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1299 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1299  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1285:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1283
! END FOR
_Label_1286:
! CALL STATEMENT...
!   _temp_1300 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-116]
!   _temp_1301 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1300  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1301  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1302 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-108]
!   _temp_1304 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1304 [0 ] into _temp_1305
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
!   _temp_1303 = _temp_1305		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1302  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1303  sizeInBytes=4
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
	be	_Label_1308
	cmp	r1,2
	be	_Label_1309
	cmp	r1,3
	be	_Label_1310
	cmp	r1,4
	be	_Label_1311
	cmp	r1,5
	be	_Label_1312
	jmp	_Label_1306
! CASE 1...
_Label_1308:
! CALL STATEMENT...
!   _temp_1313 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1313  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_1307
! CASE 2...
_Label_1309:
! CALL STATEMENT...
!   _temp_1314 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1314  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_1307
! CASE 3...
_Label_1310:
! CALL STATEMENT...
!   _temp_1315 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1315  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_1307
! CASE 4...
_Label_1311:
! CALL STATEMENT...
!   _temp_1316 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1316  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_1307
! CASE 5...
_Label_1312:
! CALL STATEMENT...
!   _temp_1317 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1317  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_1307
! DEFAULT CASE...
_Label_1306:
! CALL STATEMENT...
!   _temp_1318 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1318  sizeInBytes=4
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
_Label_1307:
! CALL STATEMENT...
!   _temp_1319 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1319  sizeInBytes=4
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
!   _temp_1320 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1320  sizeInBytes=4
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
!   _temp_1325 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1326 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1325  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1321:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1326 then goto _Label_1324		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1324
_Label_1322:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1327 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1327  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1328 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1328  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1329 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1329  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1331 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1331 [i ] into _temp_1332
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
!   Data Move: _temp_1330 = *_temp_1332  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1330  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1333 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1333  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1335 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1335 [i ] into _temp_1336
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
!   Data Move: _temp_1334 = *_temp_1336  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1334  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1337 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1337  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1323:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1321
! END FOR
_Label_1324:
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
	.word	_Label_1338
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1339
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1340
	.word	-12
	.word	4
	.word	_Label_1341
	.word	-16
	.word	4
	.word	_Label_1342
	.word	-20
	.word	4
	.word	_Label_1343
	.word	-24
	.word	4
	.word	_Label_1344
	.word	-28
	.word	4
	.word	_Label_1345
	.word	-32
	.word	4
	.word	_Label_1346
	.word	-36
	.word	4
	.word	_Label_1347
	.word	-40
	.word	4
	.word	_Label_1348
	.word	-44
	.word	4
	.word	_Label_1349
	.word	-48
	.word	4
	.word	_Label_1350
	.word	-52
	.word	4
	.word	_Label_1351
	.word	-56
	.word	4
	.word	_Label_1352
	.word	-60
	.word	4
	.word	_Label_1353
	.word	-64
	.word	4
	.word	_Label_1354
	.word	-68
	.word	4
	.word	_Label_1355
	.word	-72
	.word	4
	.word	_Label_1356
	.word	-76
	.word	4
	.word	_Label_1357
	.word	-80
	.word	4
	.word	_Label_1358
	.word	-84
	.word	4
	.word	_Label_1359
	.word	-88
	.word	4
	.word	_Label_1360
	.word	-92
	.word	4
	.word	_Label_1361
	.word	-96
	.word	4
	.word	_Label_1362
	.word	-100
	.word	4
	.word	_Label_1363
	.word	-104
	.word	4
	.word	_Label_1364
	.word	-108
	.word	4
	.word	_Label_1365
	.word	-112
	.word	4
	.word	_Label_1366
	.word	-116
	.word	4
	.word	_Label_1367
	.word	-120
	.word	4
	.word	_Label_1368
	.word	-124
	.word	4
	.word	_Label_1369
	.word	-128
	.word	4
	.word	_Label_1370
	.word	-132
	.word	4
	.word	_Label_1371
	.word	-136
	.word	4
	.word	_Label_1372
	.word	-140
	.word	4
	.word	_Label_1373
	.word	-144
	.word	4
	.word	_Label_1374
	.word	-148
	.word	4
	.word	_Label_1375
	.word	-152
	.word	4
	.word	_Label_1376
	.word	-156
	.word	4
	.word	_Label_1377
	.word	-160
	.word	4
	.word	_Label_1378
	.word	-164
	.word	4
	.word	_Label_1379
	.word	-168
	.word	4
	.word	_Label_1380
	.word	-172
	.word	4
	.word	_Label_1381
	.word	-176
	.word	4
	.word	_Label_1382
	.word	-180
	.word	4
	.word	_Label_1383
	.word	-184
	.word	4
	.word	_Label_1384
	.word	-188
	.word	4
	.word	_Label_1385
	.word	-192
	.word	4
	.word	_Label_1386
	.word	-196
	.word	4
	.word	0
_Label_1338:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1339:
	.ascii	"Pself\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1385:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1386:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1387
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1387:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1388
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1388:
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
_Label_3428:
	push	r0
	sub	r1,1,r1
	bne	_Label_3428
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1389 = _StringConst_94
	set	_StringConst_94,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1389  sizeInBytes=4
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
!   _temp_1390 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1392 = &_temp_1391
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1392 = _temp_1392 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1394 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3429:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3429
!   _temp_1394 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1396:
!   Data Move: *_temp_1392 = _temp_1394  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3430:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3430
!   _temp_1392 = _temp_1392 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1393 = _temp_1393 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1393) then goto _Label_1396
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1396
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1397 = &_temp_1391
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3431
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3431:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1390 = *_temp_1397  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3432:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3432
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
!   _temp_1401 = &threadManagerLock
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
!   _temp_1402 = &aThreadBecomeFree
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
!   _temp_1407 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1408 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1407  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1403:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1408 then goto _Label_1406		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1406
_Label_1404:
	mov	702,r13		! source line 702
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0SE",r10
!   _temp_1409 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-48]
!   _temp_1410 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1410 [i ] into _temp_1411
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
!   Prepare Argument: offset=12  value=_temp_1409  sizeInBytes=4
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
!   _temp_1413 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1413 [i ] into _temp_1414
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
!   _temp_1412 = _temp_1414		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1415 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1412  sizeInBytes=4
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
!   _temp_1416 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1416 [i ] into _temp_1417
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
!   _temp_1418 = _temp_1417 + 76
	load	[r14+-16],r1
	add	r1,76,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1418 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-12],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1405:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1403
! END FOR
_Label_1406:
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
	.word	_Label_1419
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1420
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_1427
	.word	-36
	.word	4
	.word	_Label_1428
	.word	-40
	.word	4
	.word	_Label_1429
	.word	-44
	.word	4
	.word	_Label_1430
	.word	-48
	.word	4
	.word	_Label_1431
	.word	-52
	.word	4
	.word	_Label_1432
	.word	-56
	.word	4
	.word	_Label_1433
	.word	-60
	.word	4
	.word	_Label_1434
	.word	-64
	.word	4
	.word	_Label_1435
	.word	-68
	.word	4
	.word	_Label_1436
	.word	-72
	.word	4
	.word	_Label_1437
	.word	-76
	.word	4
	.word	_Label_1438
	.word	-80
	.word	4
	.word	_Label_1439
	.word	-84
	.word	4
	.word	_Label_1440
	.word	-4248
	.word	4164
	.word	_Label_1441
	.word	-4252
	.word	4
	.word	_Label_1442
	.word	-4256
	.word	4
	.word	_Label_1443
	.word	-45900
	.word	41644
	.word	_Label_1444
	.word	-45904
	.word	4
	.word	_Label_1445
	.word	-45908
	.word	4
	.word	_Label_1446
	.word	-45912
	.word	4
	.word	0
_Label_1419:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1420:
	.ascii	"Pself\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1446:
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
_Label_3433:
	push	r0
	sub	r1,1,r1
	bne	_Label_3433
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
!   _temp_1447 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1447  sizeInBytes=4
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
!   _temp_1452 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1453 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1452  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1448:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1453 then goto _Label_1451		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1451
_Label_1449:
	mov	720,r13		! source line 720
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1454 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1454  sizeInBytes=4
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
!   _temp_1455 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1455  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1457 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1457 [i ] into _temp_1458
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
!   _temp_1456 = _temp_1458		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1456  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CA",r10
	call	_function_204_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1450:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1448
! END FOR
_Label_1451:
! CALL STATEMENT...
!   _temp_1459 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1459  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0SE",r10
!   _temp_1460 = _function_203_PrintObjectAddr
	set	_function_203_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1461 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1460  sizeInBytes=4
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
	.word	_Label_1462
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1463
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1464
	.word	-12
	.word	4
	.word	_Label_1465
	.word	-16
	.word	4
	.word	_Label_1466
	.word	-20
	.word	4
	.word	_Label_1467
	.word	-24
	.word	4
	.word	_Label_1468
	.word	-28
	.word	4
	.word	_Label_1469
	.word	-32
	.word	4
	.word	_Label_1470
	.word	-36
	.word	4
	.word	_Label_1471
	.word	-40
	.word	4
	.word	_Label_1472
	.word	-44
	.word	4
	.word	_Label_1473
	.word	-48
	.word	4
	.word	_Label_1474
	.word	-52
	.word	4
	.word	_Label_1475
	.word	-56
	.word	4
	.word	_Label_1476
	.word	-60
	.word	4
	.word	0
_Label_1462:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1463:
	.ascii	"Pself\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1475:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1476:
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
_Label_3434:
	push	r0
	sub	r1,1,r1
	bne	_Label_3434
	mov	734,r13		! source line 734
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0SE",r10
!   _temp_1477 = &threadManagerLock
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
_Label_1478:
	mov	741,r13		! source line 741
	mov	"\0\0SE",r10
!   _temp_1481 = &freeList
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
!   if result==true then goto _Label_1479 else goto _Label_1480
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1480
	jmp	_Label_1479
_Label_1479:
	mov	741,r13		! source line 741
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0SE",r10
!   _temp_1482 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1483 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1482  sizeInBytes=4
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
	jmp	_Label_1478
_Label_1480:
! ASSIGNMENT STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0AS",r10
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_1484 = &freeList
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
!   _temp_1485 = tmp + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1485 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0SE",r10
!   _temp_1486 = &threadManagerLock
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
	.word	_Label_1487
	.word	4		! total size of parameters
	.word	40		! frame size = 40
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
	.word	_Label_1492
	.word	-24
	.word	4
	.word	_Label_1493
	.word	-28
	.word	4
	.word	_Label_1494
	.word	-32
	.word	4
	.word	_Label_1495
	.word	-36
	.word	4
	.word	_Label_1496
	.word	-40
	.word	4
	.word	0
_Label_1487:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
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
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1496:
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
_Label_3435:
	push	r0
	sub	r1,1,r1
	bne	_Label_3435
	mov	753,r13		! source line 753
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0SE",r10
!   _temp_1497 = &threadManagerLock
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
!   _temp_1498 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1498 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0SE",r10
!   _temp_1499 = &freeList
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
!   _temp_1500 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1501 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1500  sizeInBytes=4
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
!   _temp_1502 = &threadManagerLock
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
	.word	_Label_1503
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1504
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1505
	.word	12
	.word	4
	.word	_Label_1506
	.word	-12
	.word	4
	.word	_Label_1507
	.word	-16
	.word	4
	.word	_Label_1508
	.word	-20
	.word	4
	.word	_Label_1509
	.word	-24
	.word	4
	.word	_Label_1510
	.word	-28
	.word	4
	.word	_Label_1511
	.word	-32
	.word	4
	.word	0
_Label_1503:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1504:
	.ascii	"Pself\0"
	.align
_Label_1505:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1512
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1512:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1513
	.word	_sourceFileName
	.word	213		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1513:
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
_Label_3436:
	push	r0
	sub	r1,1,r1
	bne	_Label_3436
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
_Label_3437:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3437
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_1515 = &addrSpace
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
!   _temp_1516 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_1518 = &_temp_1517
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_1518 = _temp_1518 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_1520:
!   Data Move: *_temp_1518 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1518 = _temp_1518 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1519 = _temp_1519 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1519) then goto _Label_1520
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1520
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_1521 = &_temp_1517
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3438
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3438:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1516 = *_temp_1521  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_3439:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3439
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
	.word	_Label_1522
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1523
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1524
	.word	-12
	.word	4
	.word	_Label_1525
	.word	-16
	.word	4
	.word	_Label_1526
	.word	-20
	.word	4
	.word	_Label_1527
	.word	-64
	.word	44
	.word	_Label_1528
	.word	-68
	.word	4
	.word	_Label_1529
	.word	-72
	.word	4
	.word	_Label_1530
	.word	-76
	.word	4
	.word	0
_Label_1522:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1523:
	.ascii	"Pself\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1514\0"
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
_Label_3440:
	push	r0
	sub	r1,1,r1
	bne	_Label_3440
	mov	790,r13		! source line 790
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1531) then goto _runtimeErrorNullPointer
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
!   _temp_1532 = &addrSpace
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
!   _temp_1533 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1533  sizeInBytes=4
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
	.word	_Label_1534
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1535
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1536
	.word	-12
	.word	4
	.word	_Label_1537
	.word	-16
	.word	4
	.word	_Label_1538
	.word	-20
	.word	4
	.word	0
_Label_1534:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1535:
	.ascii	"Pself\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1531\0"
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
_Label_3441:
	push	r0
	sub	r1,1,r1
	bne	_Label_3441
	mov	813,r13		! source line 813
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1539 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1539  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1540  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1541 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1541  sizeInBytes=4
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
!   _temp_1542 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1542  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1544		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1544
!	jmp	_Label_1543
_Label_1543:
! THEN...
	mov	823,r13		! source line 823
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1545 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1545  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1546
_Label_1544:
! ELSE...
	mov	824,r13		! source line 824
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1548		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1548
!	jmp	_Label_1547
_Label_1547:
! THEN...
	mov	825,r13		! source line 825
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1549 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1549  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1550
_Label_1548:
! ELSE...
	mov	826,r13		! source line 826
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1552		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1552
!	jmp	_Label_1551
_Label_1551:
! THEN...
	mov	827,r13		! source line 827
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1553 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1553  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1554
_Label_1552:
! ELSE...
	mov	829,r13		! source line 829
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1555 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1555  sizeInBytes=4
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
_Label_1554:
! END IF...
_Label_1550:
! END IF...
_Label_1546:
! CALL STATEMENT...
!   _temp_1556 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1556  sizeInBytes=4
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
!   _temp_1557 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1557  sizeInBytes=4
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
	.word	_Label_1558
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1559
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1560
	.word	-12
	.word	4
	.word	_Label_1561
	.word	-16
	.word	4
	.word	_Label_1562
	.word	-20
	.word	4
	.word	_Label_1563
	.word	-24
	.word	4
	.word	_Label_1564
	.word	-28
	.word	4
	.word	_Label_1565
	.word	-32
	.word	4
	.word	_Label_1566
	.word	-36
	.word	4
	.word	_Label_1567
	.word	-40
	.word	4
	.word	_Label_1568
	.word	-44
	.word	4
	.word	_Label_1569
	.word	-48
	.word	4
	.word	0
_Label_1558:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1559:
	.ascii	"Pself\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1570
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
_Label_1570:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1571
	.word	_sourceFileName
	.word	233		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1571:
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
_Label_3442:
	push	r0
	sub	r1,1,r1
	bne	_Label_3442
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0AS",r10
!   _temp_1572 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1940]
!   NEW ARRAY Constructor...
!   _temp_1574 = &_temp_1573
	add	r14,-1936,r1
	store	r1,[r14+-252]
!   _temp_1574 = _temp_1574 + 4
	load	[r14+-252],r1
	add	r1,4,r1
	store	r1,[r14+-252]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1576 = zeros  (sizeInBytes=168)
	add	r14,-244,r4
	mov	42,r3
_Label_3443:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3443
!   _temp_1576 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-244]
	mov	10,r1
	store	r1,[r14+-248]
_Label_1578:
!   Data Move: *_temp_1574 = _temp_1576  (sizeInBytes=168)
	add	r14,-244,r5
	load	[r14+-252],r4
	mov	42,r3
_Label_3444:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3444
!   _temp_1574 = _temp_1574 + 168
	load	[r14+-252],r1
	add	r1,168,r1
	store	r1,[r14+-252]
!   _temp_1575 = _temp_1575 + -1
	load	[r14+-248],r1
	add	r1,-1,r1
	store	r1,[r14+-248]
!   if intNotZero (_temp_1575) then goto _Label_1578
	load	[r14+-248],r1
	cmp	r1,r0
	bne	_Label_1578
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1936]
!   _temp_1579 = &_temp_1573
	add	r14,-1936,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	load	[r14+-1940],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3445
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3445:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1572 = *_temp_1579  (sizeInBytes=1684)
	load	[r14+-72],r5
	load	[r14+-1940],r4
	mov	421,r3
_Label_3446:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3446
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
!   _temp_1582 = &processManagerLock
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
!   _temp_1583 = &aProcessBecameFree
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
!   _temp_1586 = &aProcessDied
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
!   _temp_1591 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1592 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1591  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-1944]
_Label_1587:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1592 then goto _Label_1590		
	load	[r14+-1944],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1590
_Label_1588:
	mov	860,r13		! source line 860
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0SE",r10
!   _temp_1593 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1593 [i ] into _temp_1594
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
!   _temp_1596 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1596 [i ] into _temp_1597
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
!   _temp_1595 = _temp_1597		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1598 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1595  sizeInBytes=4
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
_Label_1589:
!   i = i + 1
	load	[r14+-1944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1944]
	jmp	_Label_1587
! END FOR
_Label_1590:
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
	.word	_Label_1599
	.word	4		! total size of parameters
	.word	1944		! frame size = 1944
	.word	_Label_1600
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1601
	.word	-12
	.word	4
	.word	_Label_1602
	.word	-16
	.word	4
	.word	_Label_1603
	.word	-20
	.word	4
	.word	_Label_1604
	.word	-24
	.word	4
	.word	_Label_1605
	.word	-28
	.word	4
	.word	_Label_1606
	.word	-32
	.word	4
	.word	_Label_1607
	.word	-36
	.word	4
	.word	_Label_1608
	.word	-40
	.word	4
	.word	_Label_1609
	.word	-44
	.word	4
	.word	_Label_1610
	.word	-48
	.word	4
	.word	_Label_1611
	.word	-52
	.word	4
	.word	_Label_1612
	.word	-56
	.word	4
	.word	_Label_1613
	.word	-60
	.word	4
	.word	_Label_1614
	.word	-64
	.word	4
	.word	_Label_1615
	.word	-68
	.word	4
	.word	_Label_1616
	.word	-72
	.word	4
	.word	_Label_1617
	.word	-76
	.word	4
	.word	_Label_1618
	.word	-244
	.word	168
	.word	_Label_1619
	.word	-248
	.word	4
	.word	_Label_1620
	.word	-252
	.word	4
	.word	_Label_1621
	.word	-1936
	.word	1684
	.word	_Label_1622
	.word	-1940
	.word	4
	.word	_Label_1623
	.word	-1944
	.word	4
	.word	0
_Label_1599:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1600:
	.ascii	"Pself\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1623:
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
_Label_3447:
	push	r0
	sub	r1,1,r1
	bne	_Label_3447
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
!   _temp_1624 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1624  sizeInBytes=4
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
!   _temp_1629 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1630 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1629  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1625:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1630 then goto _Label_1628		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1628
_Label_1626:
	mov	877,r13		! source line 877
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1631 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1631  sizeInBytes=4
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
!   _temp_1632 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1632  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0SE",r10
!   _temp_1633 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1633 [i ] into _temp_1634
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
_Label_1627:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1625
! END FOR
_Label_1628:
! CALL STATEMENT...
!   _temp_1635 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1635  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0SE",r10
!   _temp_1636 = _function_203_PrintObjectAddr
	set	_function_203_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1637 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1636  sizeInBytes=4
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
	.word	_Label_1638
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1639
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1640
	.word	-12
	.word	4
	.word	_Label_1641
	.word	-16
	.word	4
	.word	_Label_1642
	.word	-20
	.word	4
	.word	_Label_1643
	.word	-24
	.word	4
	.word	_Label_1644
	.word	-28
	.word	4
	.word	_Label_1645
	.word	-32
	.word	4
	.word	_Label_1646
	.word	-36
	.word	4
	.word	_Label_1647
	.word	-40
	.word	4
	.word	_Label_1648
	.word	-44
	.word	4
	.word	_Label_1649
	.word	-48
	.word	4
	.word	_Label_1650
	.word	-52
	.word	4
	.word	_Label_1651
	.word	-56
	.word	4
	.word	0
_Label_1638:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1639:
	.ascii	"Pself\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1650:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1651:
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
_Label_3448:
	push	r0
	sub	r1,1,r1
	bne	_Label_3448
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
!   _temp_1652 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1652  sizeInBytes=4
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
!   _temp_1657 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1658 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1657  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1653:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1658 then goto _Label_1656		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1656
_Label_1654:
	mov	900,r13		! source line 900
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1659 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1659  sizeInBytes=4
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
!   _temp_1660 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1660 [i ] into _temp_1661
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
_Label_1655:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1653
! END FOR
_Label_1656:
! CALL STATEMENT...
!   _temp_1662 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1662  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_1663 = _function_203_PrintObjectAddr
	set	_function_203_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1664 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1663  sizeInBytes=4
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
	.word	_Label_1665
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1666
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1667
	.word	-12
	.word	4
	.word	_Label_1668
	.word	-16
	.word	4
	.word	_Label_1669
	.word	-20
	.word	4
	.word	_Label_1670
	.word	-24
	.word	4
	.word	_Label_1671
	.word	-28
	.word	4
	.word	_Label_1672
	.word	-32
	.word	4
	.word	_Label_1673
	.word	-36
	.word	4
	.word	_Label_1674
	.word	-40
	.word	4
	.word	_Label_1675
	.word	-44
	.word	4
	.word	_Label_1676
	.word	-48
	.word	4
	.word	_Label_1677
	.word	-52
	.word	4
	.word	0
_Label_1665:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1666:
	.ascii	"Pself\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1676:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1677:
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
_Label_3449:
	push	r0
	sub	r1,1,r1
	bne	_Label_3449
	mov	913,r13		! source line 913
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0SE",r10
!   _temp_1678 = &processManagerLock
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
!   if intIsZero (_temp_1679) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1680 = _temp_1679 + 1752
	load	[r14+-72],r1
	add	r1,1752,r1
	store	r1,[r14+-68]
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1683) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1684 = _temp_1683 + 1752
	load	[r14+-56],r1
	add	r1,1752,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1682 = *_temp_1684  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_1681 = _temp_1682 + 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Data Move: *_temp_1680 = _temp_1681  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r14+-68],r2
	store	r1,[r2]
! WHILE STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0WH",r10
_Label_1685:
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_1688 = &freeList
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
!   if result==true then goto _Label_1686 else goto _Label_1687
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1687
	jmp	_Label_1686
_Label_1686:
	mov	921,r13		! source line 921
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0SE",r10
!   _temp_1689 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-44]
!   _temp_1690 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1689  sizeInBytes=4
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
	jmp	_Label_1685
_Label_1687:
! ASSIGNMENT STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0AS",r10
	mov	924,r13		! source line 924
	mov	"\0\0SE",r10
!   _temp_1691 = &freeList
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
!   _temp_1692 = tmp + 20
	load	[r14+-80],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1692 = 1  (sizeInBytes=4)
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
!   _temp_1693 = tmp + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-28]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1695) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1696 = _temp_1695 + 1752
	load	[r14+-20],r1
	add	r1,1752,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1694 = *_temp_1696  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1693 = _temp_1694  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_1697 = &processManagerLock
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
	.word	_Label_1698
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_1699
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1700
	.word	-12
	.word	4
	.word	_Label_1701
	.word	-16
	.word	4
	.word	_Label_1702
	.word	-20
	.word	4
	.word	_Label_1703
	.word	-24
	.word	4
	.word	_Label_1704
	.word	-28
	.word	4
	.word	_Label_1705
	.word	-32
	.word	4
	.word	_Label_1706
	.word	-36
	.word	4
	.word	_Label_1707
	.word	-40
	.word	4
	.word	_Label_1708
	.word	-44
	.word	4
	.word	_Label_1709
	.word	-48
	.word	4
	.word	_Label_1710
	.word	-52
	.word	4
	.word	_Label_1711
	.word	-56
	.word	4
	.word	_Label_1712
	.word	-60
	.word	4
	.word	_Label_1713
	.word	-64
	.word	4
	.word	_Label_1714
	.word	-68
	.word	4
	.word	_Label_1715
	.word	-72
	.word	4
	.word	_Label_1716
	.word	-76
	.word	4
	.word	_Label_1717
	.word	-80
	.word	4
	.word	0
_Label_1698:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1699:
	.ascii	"Pself\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1691\0"
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
	.ascii	"_temp_1688\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1684\0"
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
	.ascii	"_temp_1681\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1717:
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
_Label_3450:
	push	r0
	sub	r1,1,r1
	bne	_Label_3450
	mov	934,r13		! source line 934
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1718 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1718  sizeInBytes=4
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
!   _temp_1719 = &processManagerLock
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
!   _temp_1720 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1720 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0SE",r10
!   _temp_1721 = &freeList
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
!   _temp_1722 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-24]
!   _temp_1723 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1722  sizeInBytes=4
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
!   if intIsZero (_temp_1724) then goto _runtimeErrorNullPointer
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
!   _temp_1725 = &processManagerLock
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
	.word	_Label_1726
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1727
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1728
	.word	12
	.word	4
	.word	_Label_1729
	.word	-12
	.word	4
	.word	_Label_1730
	.word	-16
	.word	4
	.word	_Label_1731
	.word	-20
	.word	4
	.word	_Label_1732
	.word	-24
	.word	4
	.word	_Label_1733
	.word	-28
	.word	4
	.word	_Label_1734
	.word	-32
	.word	4
	.word	_Label_1735
	.word	-36
	.word	4
	.word	_Label_1736
	.word	-40
	.word	4
	.word	0
_Label_1726:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1727:
	.ascii	"Pself\0"
	.align
_Label_1728:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1718\0"
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
_Label_3451:
	push	r0
	sub	r1,1,r1
	bne	_Label_3451
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
!   _temp_1737 = &processManagerLock
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
!   _temp_1742 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-192]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1743 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-188]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1742  (sizeInBytes=4)
	load	[r14+-192],r1
	store	r1,[r14+-200]
_Label_1738:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1743 then goto _Label_1741		
	load	[r14+-200],r1
	load	[r14+-188],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1741
_Label_1739:
	mov	954,r13		! source line 954
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1748 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1747 = *_temp_1748  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   _temp_1750 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-172]
!   _temp_1751 = _temp_1750 + 4
	load	[r14+-172],r1
	add	r1,4,r1
	store	r1,[r14+-168]
!   Move address of _temp_1751 [i ] into _temp_1752
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
!   _temp_1753 = _temp_1752 + 16
	load	[r14+-164],r1
	add	r1,16,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1749 = *_temp_1753  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if _temp_1747 != _temp_1749 then goto _Label_1745		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	cmp	r1,r2
	bne	_Label_1745
!	jmp	_Label_1746
_Label_1746:
!   _temp_1755 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-152]
!   _temp_1756 = _temp_1755 + 4
	load	[r14+-152],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_1756 [i ] into _temp_1757
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
!   _temp_1758 = _temp_1757 + 20
	load	[r14+-144],r1
	add	r1,20,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1754 = *_temp_1758  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if _temp_1754 != 2 then goto _Label_1745		(int)
	load	[r14+-156],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1745
!	jmp	_Label_1744
_Label_1744:
! THEN...
	mov	956,r13		! source line 956
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
!   _temp_1759 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-136]
!   _temp_1760 = _temp_1759 + 4
	load	[r14+-136],r1
	add	r1,4,r1
	store	r1,[r14+-132]
!   Move address of _temp_1760 [i ] into _temp_1761
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
!   _temp_1762 = _temp_1761 + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-124]
!   Data Move: *_temp_1762 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-124],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_1764 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-116]
!   _temp_1765 = _temp_1764 + 4
	load	[r14+-116],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_1765 [i ] into _temp_1766
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
!   _temp_1763 = _temp_1766		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-120]
!   _temp_1767 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_1763  sizeInBytes=4
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
!   _temp_1768 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-100]
!   _temp_1769 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_1768  sizeInBytes=4
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
	jmp	_Label_1770
_Label_1745:
! ELSE...
	mov	959,r13		! source line 959
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0IF",r10
!   if isZombie then goto _Label_1772 else goto _Label_1774
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1774
	jmp	_Label_1772
_Label_1774:
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1776 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1775 = *_temp_1776  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   _temp_1778 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_1779 = _temp_1778 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1779 [i ] into _temp_1780
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
!   _temp_1781 = _temp_1780 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1777 = *_temp_1781  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_1775 != _temp_1777 then goto _Label_1772		(int)
	load	[r14+-92],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bne	_Label_1772
!	jmp	_Label_1773
_Label_1773:
!   _temp_1783 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_1784 = _temp_1783 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1784 [i ] into _temp_1785
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
!   _temp_1786 = _temp_1785 + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1782 = *_temp_1786  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_1782 != 1 then goto _Label_1772		(int)
	load	[r14+-64],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1772
!	jmp	_Label_1771
_Label_1771:
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
!   _temp_1787 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1787 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	962,r13		! source line 962
	mov	"\0\0SE",r10
!   _temp_1788 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_1789 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1788  sizeInBytes=4
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
_Label_1772:
! END IF...
_Label_1770:
!   Increment the FOR-LOOP index variable and jump back
_Label_1740:
!   i = i + 1
	load	[r14+-200],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
	jmp	_Label_1738
! END FOR
_Label_1741:
! IF STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0IF",r10
!   if isZombie then goto _Label_1791 else goto _Label_1790
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1790
	jmp	_Label_1791
_Label_1790:
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
!   _temp_1792 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1792 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0SE",r10
!   _temp_1793 = &freeList
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
!   _temp_1794 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-24]
!   _temp_1795 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1794  sizeInBytes=4
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
_Label_1791:
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1796 = &processManagerLock
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
	.word	_Label_1797
	.word	8		! total size of parameters
	.word	200		! frame size = 200
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
	.word	-32
	.word	4
	.word	_Label_1805
	.word	-36
	.word	4
	.word	_Label_1806
	.word	-40
	.word	4
	.word	_Label_1807
	.word	-44
	.word	4
	.word	_Label_1808
	.word	-48
	.word	4
	.word	_Label_1809
	.word	-52
	.word	4
	.word	_Label_1810
	.word	-56
	.word	4
	.word	_Label_1811
	.word	-60
	.word	4
	.word	_Label_1812
	.word	-64
	.word	4
	.word	_Label_1813
	.word	-68
	.word	4
	.word	_Label_1814
	.word	-72
	.word	4
	.word	_Label_1815
	.word	-76
	.word	4
	.word	_Label_1816
	.word	-80
	.word	4
	.word	_Label_1817
	.word	-84
	.word	4
	.word	_Label_1818
	.word	-88
	.word	4
	.word	_Label_1819
	.word	-92
	.word	4
	.word	_Label_1820
	.word	-96
	.word	4
	.word	_Label_1821
	.word	-100
	.word	4
	.word	_Label_1822
	.word	-104
	.word	4
	.word	_Label_1823
	.word	-108
	.word	4
	.word	_Label_1824
	.word	-112
	.word	4
	.word	_Label_1825
	.word	-116
	.word	4
	.word	_Label_1826
	.word	-120
	.word	4
	.word	_Label_1827
	.word	-124
	.word	4
	.word	_Label_1828
	.word	-128
	.word	4
	.word	_Label_1829
	.word	-132
	.word	4
	.word	_Label_1830
	.word	-136
	.word	4
	.word	_Label_1831
	.word	-140
	.word	4
	.word	_Label_1832
	.word	-144
	.word	4
	.word	_Label_1833
	.word	-148
	.word	4
	.word	_Label_1834
	.word	-152
	.word	4
	.word	_Label_1835
	.word	-156
	.word	4
	.word	_Label_1836
	.word	-160
	.word	4
	.word	_Label_1837
	.word	-164
	.word	4
	.word	_Label_1838
	.word	-168
	.word	4
	.word	_Label_1839
	.word	-172
	.word	4
	.word	_Label_1840
	.word	-176
	.word	4
	.word	_Label_1841
	.word	-180
	.word	4
	.word	_Label_1842
	.word	-184
	.word	4
	.word	_Label_1843
	.word	-188
	.word	4
	.word	_Label_1844
	.word	-192
	.word	4
	.word	_Label_1845
	.word	-196
	.word	4
	.word	_Label_1846
	.word	-200
	.word	4
	.word	_Label_1847
	.word	-9
	.word	1
	.word	0
_Label_1797:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_1798:
	.ascii	"Pself\0"
	.align
_Label_1799:
	.byte	'P'
	.ascii	"p\0"
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
	.ascii	"_temp_1794\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1846:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1847:
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
_Label_3452:
	push	r0
	sub	r1,1,r1
	bne	_Label_3452
	mov	975,r13		! source line 975
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0SE",r10
!   _temp_1848 = &processManagerLock
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
_Label_1849:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1853 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1852 = *_temp_1853  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_1852 == 2 then goto _Label_1851		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1851
!	jmp	_Label_1850
_Label_1850:
	mov	979,r13		! source line 979
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0SE",r10
!   _temp_1854 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_1855 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1854  sizeInBytes=4
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
	jmp	_Label_1849
_Label_1851:
! ASSIGNMENT STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1856 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exitStatus = *_temp_1856  (sizeInBytes=4)
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
!   _temp_1857 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1857 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0SE",r10
!   _temp_1858 = &freeList
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
!   _temp_1859 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_1860 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1859  sizeInBytes=4
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
!   _temp_1861 = &processManagerLock
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
	.word	_Label_1862
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1863
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1864
	.word	12
	.word	4
	.word	_Label_1865
	.word	-12
	.word	4
	.word	_Label_1866
	.word	-16
	.word	4
	.word	_Label_1867
	.word	-20
	.word	4
	.word	_Label_1868
	.word	-24
	.word	4
	.word	_Label_1869
	.word	-28
	.word	4
	.word	_Label_1870
	.word	-32
	.word	4
	.word	_Label_1871
	.word	-36
	.word	4
	.word	_Label_1872
	.word	-40
	.word	4
	.word	_Label_1873
	.word	-44
	.word	4
	.word	_Label_1874
	.word	-48
	.word	4
	.word	_Label_1875
	.word	-52
	.word	4
	.word	_Label_1876
	.word	-56
	.word	4
	.word	0
_Label_1862:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_1863:
	.ascii	"Pself\0"
	.align
_Label_1864:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1876:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1877
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1877:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1878
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1878:
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
_Label_3453:
	push	r0
	sub	r1,1,r1
	bne	_Label_3453
	mov	1026,r13		! source line 1026
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1879 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1879  sizeInBytes=4
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
!   _temp_1881 = &framesInUse
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
!   _temp_1883 = &frameManagerLock
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
!   _temp_1885 = &newFramesAvailable
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
!   _temp_1890 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1891 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1890  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1886:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1891 then goto _Label_1889		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1889
_Label_1887:
	mov	1045,r13		! source line 1045
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1894 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1894) then goto _Label_1893
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1893
!	jmp	_Label_1892
_Label_1892:
! THEN...
	mov	1049,r13		! source line 1049
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1895 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1895  sizeInBytes=4
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
_Label_1893:
!   Increment the FOR-LOOP index variable and jump back
_Label_1888:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1886
! END FOR
_Label_1889:
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
	.word	_Label_1896
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1897
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1898
	.word	-12
	.word	4
	.word	_Label_1899
	.word	-16
	.word	4
	.word	_Label_1900
	.word	-20
	.word	4
	.word	_Label_1901
	.word	-24
	.word	4
	.word	_Label_1902
	.word	-28
	.word	4
	.word	_Label_1903
	.word	-32
	.word	4
	.word	_Label_1904
	.word	-36
	.word	4
	.word	_Label_1905
	.word	-40
	.word	4
	.word	_Label_1906
	.word	-44
	.word	4
	.word	_Label_1907
	.word	-48
	.word	4
	.word	_Label_1908
	.word	-52
	.word	4
	.word	_Label_1909
	.word	-56
	.word	4
	.word	0
_Label_1896:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1897:
	.ascii	"Pself\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1909:
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
_Label_3454:
	push	r0
	sub	r1,1,r1
	bne	_Label_3454
	mov	1056,r13		! source line 1056
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0SE",r10
!   _temp_1910 = &frameManagerLock
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
!   _temp_1911 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1911  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1061,r13		! source line 1061
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1912 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1912  sizeInBytes=4
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
!   _temp_1913 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1913  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1063,r13		! source line 1063
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_1914 = &framesInUse
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
!   _temp_1915 = &frameManagerLock
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
	.word	_Label_1916
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1917
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1918
	.word	-12
	.word	4
	.word	_Label_1919
	.word	-16
	.word	4
	.word	_Label_1920
	.word	-20
	.word	4
	.word	_Label_1921
	.word	-24
	.word	4
	.word	_Label_1922
	.word	-28
	.word	4
	.word	_Label_1923
	.word	-32
	.word	4
	.word	0
_Label_1916:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1917:
	.ascii	"Pself\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1910\0"
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
_Label_3455:
	push	r0
	sub	r1,1,r1
	bne	_Label_3455
	mov	1070,r13		! source line 1070
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0SE",r10
!   _temp_1924 = &frameManagerLock
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
_Label_1925:
!   if numberFreeFrames >= 1 then goto _Label_1927		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1927
!	jmp	_Label_1926
_Label_1926:
	mov	1081,r13		! source line 1081
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0SE",r10
!   _temp_1928 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1929 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1928  sizeInBytes=4
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
	jmp	_Label_1925
_Label_1927:
! ASSIGNMENT STATEMENT...
	mov	1086,r13		! source line 1086
	mov	"\0\0AS",r10
	mov	1086,r13		! source line 1086
	mov	"\0\0SE",r10
!   _temp_1930 = &framesInUse
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
!   _temp_1931 = &frameManagerLock
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
!   _temp_1932 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1932		(int)
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
	.word	_Label_1933
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1934
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	0
_Label_1933:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1934:
	.ascii	"Pself\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1941:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1942:
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
_Label_3456:
	push	r0
	sub	r1,1,r1
	bne	_Label_3456
	mov	1100,r13		! source line 1100
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0SE",r10
!   _temp_1943 = &frameManagerLock
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
_Label_1944:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_1946		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1946
!	jmp	_Label_1945
_Label_1945:
	mov	1103,r13		! source line 1103
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0SE",r10
!   _temp_1947 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1948 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1947  sizeInBytes=4
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
	jmp	_Label_1944
_Label_1946:
! FOR STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1953 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1954 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1953  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1949:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1954 then goto _Label_1952		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1952
_Label_1950:
	mov	1106,r13		! source line 1106
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0AS",r10
	mov	1107,r13		! source line 1107
	mov	"\0\0SE",r10
!   _temp_1955 = &framesInUse
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
!   _temp_1956 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1956		(int)
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
_Label_1951:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1949
! END FOR
_Label_1952:
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
!   _temp_1957 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1957 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1113,r13		! source line 1113
	mov	"\0\0SE",r10
!   _temp_1958 = &frameManagerLock
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
	.word	_Label_1959
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1960
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1961
	.word	12
	.word	4
	.word	_Label_1962
	.word	16
	.word	4
	.word	_Label_1963
	.word	-12
	.word	4
	.word	_Label_1964
	.word	-16
	.word	4
	.word	_Label_1965
	.word	-20
	.word	4
	.word	_Label_1966
	.word	-24
	.word	4
	.word	_Label_1967
	.word	-28
	.word	4
	.word	_Label_1968
	.word	-32
	.word	4
	.word	_Label_1969
	.word	-36
	.word	4
	.word	_Label_1970
	.word	-40
	.word	4
	.word	_Label_1971
	.word	-44
	.word	4
	.word	_Label_1972
	.word	-48
	.word	4
	.word	_Label_1973
	.word	-52
	.word	4
	.word	_Label_1974
	.word	-56
	.word	4
	.word	0
_Label_1959:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1960:
	.ascii	"Pself\0"
	.align
_Label_1961:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1962:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1972:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1973:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1974:
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
_Label_3457:
	push	r0
	sub	r1,1,r1
	bne	_Label_3457
	mov	1118,r13		! source line 1118
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0SE",r10
!   _temp_1975 = &frameManagerLock
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
!   _temp_1980 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1983 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1982 = *_temp_1983  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1981 = _temp_1982 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1980  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_1976:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1981 then goto _Label_1979		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1979
_Label_1977:
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
!   _temp_1984 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1984 div 8192		(int)
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
!   _temp_1985 = &framesInUse
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
_Label_1978:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1976
! END FOR
_Label_1979:
! ASSIGNMENT STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1987 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1986 = *_temp_1987  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1986		(int)
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
!   _temp_1988 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1988 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_1989 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1990 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1989  sizeInBytes=4
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
!   _temp_1991 = &frameManagerLock
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
	.word	_Label_1992
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1993
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1994
	.word	12
	.word	4
	.word	_Label_1995
	.word	-12
	.word	4
	.word	_Label_1996
	.word	-16
	.word	4
	.word	_Label_1997
	.word	-20
	.word	4
	.word	_Label_1998
	.word	-24
	.word	4
	.word	_Label_1999
	.word	-28
	.word	4
	.word	_Label_2000
	.word	-32
	.word	4
	.word	_Label_2001
	.word	-36
	.word	4
	.word	_Label_2002
	.word	-40
	.word	4
	.word	_Label_2003
	.word	-44
	.word	4
	.word	_Label_2004
	.word	-48
	.word	4
	.word	_Label_2005
	.word	-52
	.word	4
	.word	_Label_2006
	.word	-56
	.word	4
	.word	_Label_2007
	.word	-60
	.word	4
	.word	_Label_2008
	.word	-64
	.word	4
	.word	_Label_2009
	.word	-68
	.word	4
	.word	_Label_2010
	.word	-72
	.word	4
	.word	0
_Label_1992:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1993:
	.ascii	"Pself\0"
	.align
_Label_1994:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_2008:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2009:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2010:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2011
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
_Label_2011:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2012
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2012:
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
_Label_3458:
	push	r0
	sub	r1,1,r1
	bne	_Label_3458
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
!   _temp_2013 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2015 = &_temp_2014
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2015 = _temp_2015 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2017:
!   Data Move: *_temp_2015 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2015 = _temp_2015 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2016 = _temp_2016 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2016) then goto _Label_2017
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2017
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2018 = &_temp_2014
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3459
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3459:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2013 = *_temp_2018  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3460:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3460
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
	.word	_Label_2019
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2020
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2021
	.word	-12
	.word	4
	.word	_Label_2022
	.word	-16
	.word	4
	.word	_Label_2023
	.word	-20
	.word	4
	.word	_Label_2024
	.word	-104
	.word	84
	.word	_Label_2025
	.word	-108
	.word	4
	.word	0
_Label_2019:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2020:
	.ascii	"Pself\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2013\0"
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
_Label_3461:
	push	r0
	sub	r1,1,r1
	bne	_Label_3461
	mov	1150,r13		! source line 1150
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2026 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2026  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1155,r13		! source line 1155
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2027 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2027  sizeInBytes=4
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
!   _temp_2032 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2033 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2032  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2028:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2033 then goto _Label_2031		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2031
_Label_2029:
	mov	1157,r13		! source line 1157
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2034 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2034  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1158,r13		! source line 1158
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2036 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2036 [i ] into _temp_2037
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
!   _temp_2035 = _temp_2037		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2035  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1159,r13		! source line 1159
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2038 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2038  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1160,r13		! source line 1160
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2040 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2040 [i ] into _temp_2041
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
!   Data Move: _temp_2039 = *_temp_2041  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2039  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1161,r13		! source line 1161
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2042 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2042  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1162,r13		! source line 1162
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2043 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2043  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1163,r13		! source line 1163
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2044 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2044  sizeInBytes=4
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
!   if intIsZero (_temp_2046) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2045  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2045  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1165,r13		! source line 1165
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2047 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2047  sizeInBytes=4
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
!   if intIsZero (_temp_2051) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2050  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2050) then goto _Label_2049
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2049
!	jmp	_Label_2048
_Label_2048:
! THEN...
	mov	1168,r13		! source line 1168
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2053) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2052  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2052  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1168,r13		! source line 1168
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2054
_Label_2049:
! ELSE...
	mov	1170,r13		! source line 1170
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2055 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2055  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1170,r13		! source line 1170
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2054:
! CALL STATEMENT...
!   _temp_2056 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2056  sizeInBytes=4
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
!   if intIsZero (_temp_2059) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2057 else goto _Label_2058
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2058
	jmp	_Label_2057
_Label_2057:
! THEN...
	mov	1174,r13		! source line 1174
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2060 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2060  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1174,r13		! source line 1174
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2061
_Label_2058:
! ELSE...
	mov	1176,r13		! source line 1176
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2062 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2062  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1176,r13		! source line 1176
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2061:
! CALL STATEMENT...
!   _temp_2063 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2063  sizeInBytes=4
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
!   if intIsZero (_temp_2066) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2064 else goto _Label_2065
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2065
	jmp	_Label_2064
_Label_2064:
! THEN...
	mov	1180,r13		! source line 1180
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2067 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2067  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1180,r13		! source line 1180
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2068
_Label_2065:
! ELSE...
	mov	1182,r13		! source line 1182
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2069 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2069  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1182,r13		! source line 1182
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2068:
! CALL STATEMENT...
!   _temp_2070 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2070  sizeInBytes=4
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
!   if intIsZero (_temp_2073) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2071 else goto _Label_2072
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2072
	jmp	_Label_2071
_Label_2071:
! THEN...
	mov	1186,r13		! source line 1186
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2074 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2074  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1186,r13		! source line 1186
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2075
_Label_2072:
! ELSE...
	mov	1188,r13		! source line 1188
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2076 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2076  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1188,r13		! source line 1188
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2075:
! CALL STATEMENT...
!   _temp_2077 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2077  sizeInBytes=4
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
!   if intIsZero (_temp_2080) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2078 else goto _Label_2079
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2079
	jmp	_Label_2078
_Label_2078:
! THEN...
	mov	1192,r13		! source line 1192
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2081 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2081  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1192,r13		! source line 1192
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2082
_Label_2079:
! ELSE...
	mov	1194,r13		! source line 1194
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2083 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2083  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1194,r13		! source line 1194
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2082:
! CALL STATEMENT...
!   Call the function
	mov	1196,r13		! source line 1196
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2030:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2028
! END FOR
_Label_2031:
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
	.word	_Label_2084
	.word	4		! total size of parameters
	.word	168		! frame size = 168
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
	.word	-24
	.word	4
	.word	_Label_2090
	.word	-28
	.word	4
	.word	_Label_2091
	.word	-32
	.word	4
	.word	_Label_2092
	.word	-36
	.word	4
	.word	_Label_2093
	.word	-40
	.word	4
	.word	_Label_2094
	.word	-44
	.word	4
	.word	_Label_2095
	.word	-48
	.word	4
	.word	_Label_2096
	.word	-52
	.word	4
	.word	_Label_2097
	.word	-56
	.word	4
	.word	_Label_2098
	.word	-60
	.word	4
	.word	_Label_2099
	.word	-64
	.word	4
	.word	_Label_2100
	.word	-68
	.word	4
	.word	_Label_2101
	.word	-72
	.word	4
	.word	_Label_2102
	.word	-76
	.word	4
	.word	_Label_2103
	.word	-80
	.word	4
	.word	_Label_2104
	.word	-84
	.word	4
	.word	_Label_2105
	.word	-88
	.word	4
	.word	_Label_2106
	.word	-92
	.word	4
	.word	_Label_2107
	.word	-96
	.word	4
	.word	_Label_2108
	.word	-100
	.word	4
	.word	_Label_2109
	.word	-104
	.word	4
	.word	_Label_2110
	.word	-108
	.word	4
	.word	_Label_2111
	.word	-112
	.word	4
	.word	_Label_2112
	.word	-116
	.word	4
	.word	_Label_2113
	.word	-120
	.word	4
	.word	_Label_2114
	.word	-124
	.word	4
	.word	_Label_2115
	.word	-128
	.word	4
	.word	_Label_2116
	.word	-132
	.word	4
	.word	_Label_2117
	.word	-136
	.word	4
	.word	_Label_2118
	.word	-140
	.word	4
	.word	_Label_2119
	.word	-144
	.word	4
	.word	_Label_2120
	.word	-148
	.word	4
	.word	_Label_2121
	.word	-152
	.word	4
	.word	_Label_2122
	.word	-156
	.word	4
	.word	_Label_2123
	.word	-160
	.word	4
	.word	_Label_2124
	.word	-164
	.word	4
	.word	_Label_2125
	.word	-168
	.word	4
	.word	0
_Label_2084:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
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
	.ascii	"_temp_2077\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2125:
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
_Label_3462:
	push	r0
	sub	r1,1,r1
	bne	_Label_3462
	mov	1202,r13		! source line 1202
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0RE",r10
!   _temp_2128 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2128 [entry ] into _temp_2129
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
!   Data Move: _temp_2127 = *_temp_2129  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2126 = _temp_2127 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2126  (sizeInBytes=4)
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
	.word	_Label_2130
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2131
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2132
	.word	12
	.word	4
	.word	_Label_2133
	.word	-12
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
	.word	0
_Label_2130:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2131:
	.ascii	"Pself\0"
	.align
_Label_2132:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2129\0"
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
_Label_3463:
	push	r0
	sub	r1,1,r1
	bne	_Label_3463
	mov	1212,r13		! source line 1212
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0RE",r10
!   _temp_2139 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2139 [entry ] into _temp_2140
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
!   Data Move: _temp_2138 = *_temp_2140  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2137 = _temp_2138 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2137  (sizeInBytes=4)
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
	.word	_Label_2141
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2142
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2143
	.word	12
	.word	4
	.word	_Label_2144
	.word	-12
	.word	4
	.word	_Label_2145
	.word	-16
	.word	4
	.word	_Label_2146
	.word	-20
	.word	4
	.word	_Label_2147
	.word	-24
	.word	4
	.word	0
_Label_2141:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2142:
	.ascii	"Pself\0"
	.align
_Label_2143:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2137\0"
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
_Label_3464:
	push	r0
	sub	r1,1,r1
	bne	_Label_3464
	mov	1221,r13		! source line 1221
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1226,r13		! source line 1226
	mov	"\0\0AS",r10
!   _temp_2148 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2148 [entry ] into _temp_2149
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
!   _temp_2153 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2153 [entry ] into _temp_2154
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
!   Data Move: _temp_2152 = *_temp_2154  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2151 = _temp_2152 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2150 = _temp_2151 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2149 = _temp_2150  (sizeInBytes=4)
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
	.word	_Label_2155
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2156
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2157
	.word	12
	.word	4
	.word	_Label_2158
	.word	16
	.word	4
	.word	_Label_2159
	.word	-12
	.word	4
	.word	_Label_2160
	.word	-16
	.word	4
	.word	_Label_2161
	.word	-20
	.word	4
	.word	_Label_2162
	.word	-24
	.word	4
	.word	_Label_2163
	.word	-28
	.word	4
	.word	_Label_2164
	.word	-32
	.word	4
	.word	_Label_2165
	.word	-36
	.word	4
	.word	0
_Label_2155:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2156:
	.ascii	"Pself\0"
	.align
_Label_2157:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2158:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2148\0"
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
_Label_3465:
	push	r0
	sub	r1,1,r1
	bne	_Label_3465
	mov	1231,r13		! source line 1231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0RE",r10
!   _temp_2169 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2169 [entry ] into _temp_2170
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
!   Data Move: _temp_2168 = *_temp_2170  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2167 = _temp_2168 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2167) then goto _Label_2171
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2171
!   _temp_2166 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2172
_Label_2171:
!   _temp_2166 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2172:
!   ReturnResult: _temp_2166  (sizeInBytes=1)
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
	.word	_Label_2173
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2174
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2175
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_2173:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2174:
	.ascii	"Pself\0"
	.align
_Label_2175:
	.byte	'I'
	.ascii	"entry\0"
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
	.byte	'C'
	.ascii	"_temp_2166\0"
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
_Label_3466:
	push	r0
	sub	r1,1,r1
	bne	_Label_3466
	mov	1240,r13		! source line 1240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0RE",r10
!   _temp_2184 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2184 [entry ] into _temp_2185
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
!   Data Move: _temp_2183 = *_temp_2185  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2182 = _temp_2183 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2182) then goto _Label_2186
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2186
!   _temp_2181 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2187
_Label_2186:
!   _temp_2181 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2187:
!   ReturnResult: _temp_2181  (sizeInBytes=1)
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
	.word	_Label_2188
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2189
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2190
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_2188:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2189:
	.ascii	"Pself\0"
	.align
_Label_2190:
	.byte	'I'
	.ascii	"entry\0"
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
	.byte	'C'
	.ascii	"_temp_2181\0"
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
_Label_3467:
	push	r0
	sub	r1,1,r1
	bne	_Label_3467
	mov	1249,r13		! source line 1249
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1253,r13		! source line 1253
	mov	"\0\0RE",r10
!   _temp_2199 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2199 [entry ] into _temp_2200
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
!   Data Move: _temp_2198 = *_temp_2200  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2197 = _temp_2198 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2197) then goto _Label_2201
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2201
!   _temp_2196 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2202
_Label_2201:
!   _temp_2196 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2202:
!   ReturnResult: _temp_2196  (sizeInBytes=1)
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
	.word	_Label_2203
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2204
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2205
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_2203:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2204:
	.ascii	"Pself\0"
	.align
_Label_2205:
	.byte	'I'
	.ascii	"entry\0"
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
	.byte	'C'
	.ascii	"_temp_2196\0"
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
_Label_3468:
	push	r0
	sub	r1,1,r1
	bne	_Label_3468
	mov	1258,r13		! source line 1258
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0RE",r10
!   _temp_2214 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2214 [entry ] into _temp_2215
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
!   Data Move: _temp_2213 = *_temp_2215  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2212 = _temp_2213 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2212) then goto _Label_2216
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2216
!   _temp_2211 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2217
_Label_2216:
!   _temp_2211 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2217:
!   ReturnResult: _temp_2211  (sizeInBytes=1)
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
	.word	_Label_2218
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2219
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2220
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_2218:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2219:
	.ascii	"Pself\0"
	.align
_Label_2220:
	.byte	'I'
	.ascii	"entry\0"
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
	.byte	'C'
	.ascii	"_temp_2211\0"
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
_Label_3469:
	push	r0
	sub	r1,1,r1
	bne	_Label_3469
	mov	1267,r13		! source line 1267
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1271,r13		! source line 1271
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
!   _temp_2228 = _temp_2229 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2227 = _temp_2228  (sizeInBytes=4)
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
	.ascii	"SetDirty\0"
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
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_3470:
	push	r0
	sub	r1,1,r1
	bne	_Label_3470
	mov	1276,r13		! source line 1276
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1280,r13		! source line 1280
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
!   _temp_2243 = _temp_2244 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2242 = _temp_2243  (sizeInBytes=4)
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
	.ascii	"SetReferenced\0"
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
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_3471:
	push	r0
	sub	r1,1,r1
	bne	_Label_3471
	mov	1285,r13		! source line 1285
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1289,r13		! source line 1289
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
!   _temp_2258 = _temp_2259 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2257 = _temp_2258  (sizeInBytes=4)
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
	.ascii	"SetWritable\0"
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
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_3472:
	push	r0
	sub	r1,1,r1
	bne	_Label_3472
	mov	1294,r13		! source line 1294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1298,r13		! source line 1298
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
!   _temp_2273 = _temp_2274 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2272 = _temp_2273  (sizeInBytes=4)
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
	.ascii	"SetValid\0"
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
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_3473:
	push	r0
	sub	r1,1,r1
	bne	_Label_3473
	mov	1303,r13		! source line 1303
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0AS",r10
!   _temp_2286 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2286 [entry ] into _temp_2287
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
!   _temp_2290 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2290 [entry ] into _temp_2291
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
!   Data Move: _temp_2289 = *_temp_2291  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2288 = _temp_2289 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2287 = _temp_2288  (sizeInBytes=4)
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
	.word	_Label_2292
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2293
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2294
	.word	12
	.word	4
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
	.word	_Label_2299
	.word	-28
	.word	4
	.word	_Label_2300
	.word	-32
	.word	4
	.word	0
_Label_2292:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2293:
	.ascii	"Pself\0"
	.align
_Label_2294:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2286\0"
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
_Label_3474:
	push	r0
	sub	r1,1,r1
	bne	_Label_3474
	mov	1312,r13		! source line 1312
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0AS",r10
!   _temp_2301 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2301 [entry ] into _temp_2302
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
!   _temp_2305 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2305 [entry ] into _temp_2306
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
!   Data Move: _temp_2304 = *_temp_2306  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2303 = _temp_2304 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2302 = _temp_2303  (sizeInBytes=4)
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
	.word	_Label_2307
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2308
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2309
	.word	12
	.word	4
	.word	_Label_2310
	.word	-12
	.word	4
	.word	_Label_2311
	.word	-16
	.word	4
	.word	_Label_2312
	.word	-20
	.word	4
	.word	_Label_2313
	.word	-24
	.word	4
	.word	_Label_2314
	.word	-28
	.word	4
	.word	_Label_2315
	.word	-32
	.word	4
	.word	0
_Label_2307:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2308:
	.ascii	"Pself\0"
	.align
_Label_2309:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2301\0"
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
_Label_3475:
	push	r0
	sub	r1,1,r1
	bne	_Label_3475
	mov	1321,r13		! source line 1321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1325,r13		! source line 1325
	mov	"\0\0AS",r10
!   _temp_2316 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2316 [entry ] into _temp_2317
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
!   _temp_2320 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2320 [entry ] into _temp_2321
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
!   Data Move: _temp_2319 = *_temp_2321  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2318 = _temp_2319 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2317 = _temp_2318  (sizeInBytes=4)
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
	.word	_Label_2322
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2323
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2324
	.word	12
	.word	4
	.word	_Label_2325
	.word	-12
	.word	4
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
	.word	-32
	.word	4
	.word	0
_Label_2322:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2323:
	.ascii	"Pself\0"
	.align
_Label_2324:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2316\0"
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
_Label_3476:
	push	r0
	sub	r1,1,r1
	bne	_Label_3476
	mov	1330,r13		! source line 1330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0AS",r10
!   _temp_2331 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2331 [entry ] into _temp_2332
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
!   _temp_2335 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2335 [entry ] into _temp_2336
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
!   Data Move: _temp_2334 = *_temp_2336  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2333 = _temp_2334 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2332 = _temp_2333  (sizeInBytes=4)
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
	.word	_Label_2337
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2338
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2339
	.word	12
	.word	4
	.word	_Label_2340
	.word	-12
	.word	4
	.word	_Label_2341
	.word	-16
	.word	4
	.word	_Label_2342
	.word	-20
	.word	4
	.word	_Label_2343
	.word	-24
	.word	4
	.word	_Label_2344
	.word	-28
	.word	4
	.word	_Label_2345
	.word	-32
	.word	4
	.word	0
_Label_2337:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2338:
	.ascii	"Pself\0"
	.align
_Label_2339:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2331\0"
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
_Label_3477:
	push	r0
	sub	r1,1,r1
	bne	_Label_3477
	mov	1339,r13		! source line 1339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2347 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2347 [0 ] into _temp_2348
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
!   _temp_2346 = _temp_2348		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2349 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2346  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2349  sizeInBytes=4
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
	.word	_Label_2350
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2351
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2352
	.word	-12
	.word	4
	.word	_Label_2353
	.word	-16
	.word	4
	.word	_Label_2354
	.word	-20
	.word	4
	.word	_Label_2355
	.word	-24
	.word	4
	.word	0
_Label_2350:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2351:
	.ascii	"Pself\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2346\0"
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
_Label_3478:
	push	r0
	sub	r1,1,r1
	bne	_Label_3478
	mov	1350,r13		! source line 1350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2356
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2356
	jmp	_Label_2357
_Label_2356:
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
	jmp	_Label_2358
_Label_2357:
! ELSE...
	mov	1367,r13		! source line 1367
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2360		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2360
!	jmp	_Label_2359
_Label_2359:
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
_Label_2360:
! END IF...
_Label_2358:
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
_Label_2361:
!	jmp	_Label_2362
_Label_2362:
	mov	1374,r13		! source line 1374
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2365		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2365
!	jmp	_Label_2364
_Label_2364:
! THEN...
	mov	1376,r13		! source line 1376
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2366 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2366  sizeInBytes=4
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
_Label_2365:
! IF STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0IF",r10
	mov	1379,r13		! source line 1379
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2370) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2369  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2369 then goto _Label_2368 else goto _Label_2367
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2367
	jmp	_Label_2368
_Label_2367:
! THEN...
	mov	1380,r13		! source line 1380
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2371 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2371  sizeInBytes=4
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
_Label_2368:
! ASSIGNMENT STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0AS",r10
	mov	1383,r13		! source line 1383
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2373) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2372  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2372 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0WH",r10
_Label_2374:
!   if offset >= 8192 then goto _Label_2376		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2376
!	jmp	_Label_2375
_Label_2375:
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
!   Data Move: _temp_2377 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2377  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2379		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2379
!	jmp	_Label_2378
_Label_2378:
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
_Label_2379:
! END WHILE...
	jmp	_Label_2374
_Label_2376:
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
	jmp	_Label_2361
_Label_2363:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2380
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2381
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2382
	.word	12
	.word	4
	.word	_Label_2383
	.word	16
	.word	4
	.word	_Label_2384
	.word	20
	.word	4
	.word	_Label_2385
	.word	-9
	.word	1
	.word	_Label_2386
	.word	-16
	.word	4
	.word	_Label_2387
	.word	-20
	.word	4
	.word	_Label_2388
	.word	-24
	.word	4
	.word	_Label_2389
	.word	-28
	.word	4
	.word	_Label_2390
	.word	-10
	.word	1
	.word	_Label_2391
	.word	-32
	.word	4
	.word	_Label_2392
	.word	-36
	.word	4
	.word	_Label_2393
	.word	-40
	.word	4
	.word	_Label_2394
	.word	-44
	.word	4
	.word	_Label_2395
	.word	-48
	.word	4
	.word	0
_Label_2380:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2381:
	.ascii	"Pself\0"
	.align
_Label_2382:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2383:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2384:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2385:
	.byte	'C'
	.ascii	"_temp_2377\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2390:
	.byte	'C'
	.ascii	"_temp_2369\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2392:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2393:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2394:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2395:
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
_Label_3479:
	push	r0
	sub	r1,1,r1
	bne	_Label_3479
	mov	1404,r13		! source line 1404
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2396
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2396
	jmp	_Label_2397
_Label_2396:
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
	jmp	_Label_2398
_Label_2397:
! ELSE...
	mov	1417,r13		! source line 1417
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2400		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2400
!	jmp	_Label_2399
_Label_2399:
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
_Label_2400:
! END IF...
_Label_2398:
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
_Label_2401:
!	jmp	_Label_2402
_Label_2402:
	mov	1422,r13		! source line 1422
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2407		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2407
	jmp	_Label_2404
_Label_2407:
	mov	1424,r13		! source line 1424
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2409) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2408  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2408 then goto _Label_2406 else goto _Label_2404
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2404
	jmp	_Label_2406
_Label_2406:
	mov	1425,r13		! source line 1425
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2411) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2410  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2410 then goto _Label_2405 else goto _Label_2404
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2404
	jmp	_Label_2405
_Label_2404:
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
_Label_2405:
! ASSIGNMENT STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0AS",r10
	mov	1428,r13		! source line 1428
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2413) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2412  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2412 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0WH",r10
_Label_2414:
!   if offset >= 8192 then goto _Label_2416		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2416
!	jmp	_Label_2415
_Label_2415:
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
!   Data Move: _temp_2417 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2417  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2419		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2419
!	jmp	_Label_2418
_Label_2418:
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
_Label_2419:
! END WHILE...
	jmp	_Label_2414
_Label_2416:
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
	jmp	_Label_2401
_Label_2403:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2420
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2421
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2422
	.word	12
	.word	4
	.word	_Label_2423
	.word	16
	.word	4
	.word	_Label_2424
	.word	20
	.word	4
	.word	_Label_2425
	.word	-9
	.word	1
	.word	_Label_2426
	.word	-16
	.word	4
	.word	_Label_2427
	.word	-20
	.word	4
	.word	_Label_2428
	.word	-24
	.word	4
	.word	_Label_2429
	.word	-10
	.word	1
	.word	_Label_2430
	.word	-28
	.word	4
	.word	_Label_2431
	.word	-11
	.word	1
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
	.word	0
_Label_2420:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2421:
	.ascii	"Pself\0"
	.align
_Label_2422:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2423:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2424:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2425:
	.byte	'C'
	.ascii	"_temp_2417\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2429:
	.byte	'C'
	.ascii	"_temp_2410\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2431:
	.byte	'C'
	.ascii	"_temp_2408\0"
	.align
_Label_2432:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2433:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2434:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2435:
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
_Label_3480:
	push	r0
	sub	r1,1,r1
	bne	_Label_3480
	mov	1446,r13		! source line 1446
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1470,r13		! source line 1470
	mov	"\0\0IF",r10
	mov	1470,r13		! source line 1470
	mov	"\0\0SE",r10
!   _temp_2439 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2440) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2439  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2438  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2438 >= 4 then goto _Label_2437		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2437
!	jmp	_Label_2436
_Label_2436:
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
_Label_2437:
! IF STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2442		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2442
!	jmp	_Label_2441
_Label_2441:
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
_Label_2442:
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
!   _temp_2445 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2444 = _temp_2445 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2446 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2447) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2444  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2446  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2443  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2443  (sizeInBytes=4)
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
	.word	_Label_2448
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2449
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2450
	.word	12
	.word	4
	.word	_Label_2451
	.word	16
	.word	4
	.word	_Label_2452
	.word	20
	.word	4
	.word	_Label_2453
	.word	-12
	.word	4
	.word	_Label_2454
	.word	-16
	.word	4
	.word	_Label_2455
	.word	-20
	.word	4
	.word	_Label_2456
	.word	-24
	.word	4
	.word	_Label_2457
	.word	-28
	.word	4
	.word	_Label_2458
	.word	-32
	.word	4
	.word	_Label_2459
	.word	-36
	.word	4
	.word	_Label_2460
	.word	-40
	.word	4
	.word	_Label_2461
	.word	-44
	.word	4
	.word	0
_Label_2448:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2449:
	.ascii	"Pself\0"
	.align
_Label_2450:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2451:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2452:
	.byte	'I'
	.ascii	"maxSize\0"
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
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2461:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2462
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2462:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2463
	.word	_sourceFileName
	.word	308		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2463:
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
_Label_3481:
	push	r0
	sub	r1,1,r1
	bne	_Label_3481
	mov	1966,r13		! source line 1966
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2464 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2464  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1967,r13		! source line 1967
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1969,r13		! source line 1969
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	1970,r13		! source line 1970
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1974,r13		! source line 1974
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
	mov	1975,r13		! source line 1975
	mov	"\0\0SE",r10
!   _temp_2466 = &semUsedInSynchMethods
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
	mov	1976,r13		! source line 1976
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
	mov	1977,r13		! source line 1977
	mov	"\0\0SE",r10
!   _temp_2468 = &diskBusy
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
	mov	1977,r13		! source line 1977
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
	.word	_Label_2469
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2470
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2471
	.word	-12
	.word	4
	.word	_Label_2472
	.word	-16
	.word	4
	.word	_Label_2473
	.word	-20
	.word	4
	.word	_Label_2474
	.word	-24
	.word	4
	.word	_Label_2475
	.word	-28
	.word	4
	.word	0
_Label_2469:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2470:
	.ascii	"Pself\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2464\0"
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
_Label_3482:
	push	r0
	sub	r1,1,r1
	bne	_Label_3482
	mov	1982,r13		! source line 1982
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0SE",r10
!   _temp_2476 = &diskBusy
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
	mov	1996,r13		! source line 1996
	mov	"\0\0WH",r10
_Label_2477:
!	jmp	_Label_2478
_Label_2478:
	mov	1996,r13		! source line 1996
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1998,r13		! source line 1998
	mov	"\0\0SE",r10
!   _temp_2480 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2481) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2480  sizeInBytes=4
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
	mov	2000,r13		! source line 2000
	mov	"\0\0SE",r10
!   _temp_2482 = &semUsedInSynchMethods
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
	mov	2003,r13		! source line 2003
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2491 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2485
	cmp	r1,2
	be	_Label_2486
	cmp	r1,3
	be	_Label_2487
	cmp	r1,4
	be	_Label_2488
	cmp	r1,5
	be	_Label_2489
	cmp	r1,6
	be	_Label_2490
	jmp	_Label_2483
! CASE 1...
_Label_2485:
! SEND STATEMENT...
	mov	2005,r13		! source line 2005
	mov	"\0\0SE",r10
!   _temp_2492 = &diskBusy
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
	mov	2006,r13		! source line 2006
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2486:
! CALL STATEMENT...
!   _temp_2493 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2493  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2008,r13		! source line 2008
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2487:
! CALL STATEMENT...
!   _temp_2494 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2494  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2010,r13		! source line 2010
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2488:
! CALL STATEMENT...
!   _temp_2495 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2495  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2012,r13		! source line 2012
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2489:
! BREAK STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0BR",r10
	jmp	_Label_2484
! CASE 6...
_Label_2490:
! CALL STATEMENT...
!   _temp_2496 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2496  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2018,r13		! source line 2018
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2483:
! CALL STATEMENT...
!   _temp_2497 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2497  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2020,r13		! source line 2020
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2484:
! END WHILE...
	jmp	_Label_2477
_Label_2479:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2498
	.word	16		! total size of parameters
	.word	64		! frame size = 64
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
	.word	-12
	.word	4
	.word	_Label_2504
	.word	-16
	.word	4
	.word	_Label_2505
	.word	-20
	.word	4
	.word	_Label_2506
	.word	-24
	.word	4
	.word	_Label_2507
	.word	-28
	.word	4
	.word	_Label_2508
	.word	-32
	.word	4
	.word	_Label_2509
	.word	-36
	.word	4
	.word	_Label_2510
	.word	-40
	.word	4
	.word	_Label_2511
	.word	-44
	.word	4
	.word	_Label_2512
	.word	-48
	.word	4
	.word	_Label_2513
	.word	-52
	.word	4
	.word	0
_Label_2498:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
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
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2506:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2476\0"
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
	mov	2029,r13		! source line 2029
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2047,r13		! source line 2047
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
	mov	2048,r13		! source line 2048
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
	mov	2049,r13		! source line 2049
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
	mov	2050,r13		! source line 2050
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
	mov	2050,r13		! source line 2050
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
	.word	_Label_2514
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2515
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2516
	.word	12
	.word	4
	.word	_Label_2517
	.word	16
	.word	4
	.word	_Label_2518
	.word	20
	.word	4
	.word	_Label_2519
	.word	24
	.word	4
	.word	0
_Label_2514:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2515:
	.ascii	"Pself\0"
	.align
_Label_2516:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2517:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2518:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2519:
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
_Label_3483:
	push	r0
	sub	r1,1,r1
	bne	_Label_3483
	mov	2055,r13		! source line 2055
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0SE",r10
!   _temp_2520 = &diskBusy
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
	mov	2068,r13		! source line 2068
	mov	"\0\0WH",r10
_Label_2521:
!	jmp	_Label_2522
_Label_2522:
	mov	2068,r13		! source line 2068
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0SE",r10
!   _temp_2524 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2525) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2524  sizeInBytes=4
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
	mov	2071,r13		! source line 2071
	mov	"\0\0SE",r10
!   _temp_2526 = &semUsedInSynchMethods
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
	mov	2074,r13		! source line 2074
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2535 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2529
	cmp	r1,2
	be	_Label_2530
	cmp	r1,3
	be	_Label_2531
	cmp	r1,4
	be	_Label_2532
	cmp	r1,5
	be	_Label_2533
	cmp	r1,6
	be	_Label_2534
	jmp	_Label_2527
! CASE 1...
_Label_2529:
! SEND STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0SE",r10
!   _temp_2536 = &diskBusy
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
	mov	2077,r13		! source line 2077
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2530:
! CALL STATEMENT...
!   _temp_2537 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2537  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2079,r13		! source line 2079
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2531:
! CALL STATEMENT...
!   _temp_2538 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2538  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2081,r13		! source line 2081
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2532:
! CALL STATEMENT...
!   _temp_2539 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2539  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2083,r13		! source line 2083
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2533:
! BREAK STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0BR",r10
	jmp	_Label_2528
! CASE 6...
_Label_2534:
! CALL STATEMENT...
!   _temp_2540 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2540  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2089,r13		! source line 2089
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2527:
! CALL STATEMENT...
!   _temp_2541 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2541  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2091,r13		! source line 2091
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2528:
! END WHILE...
	jmp	_Label_2521
_Label_2523:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2542
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2543
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2544
	.word	12
	.word	4
	.word	_Label_2545
	.word	16
	.word	4
	.word	_Label_2546
	.word	20
	.word	4
	.word	_Label_2547
	.word	-12
	.word	4
	.word	_Label_2548
	.word	-16
	.word	4
	.word	_Label_2549
	.word	-20
	.word	4
	.word	_Label_2550
	.word	-24
	.word	4
	.word	_Label_2551
	.word	-28
	.word	4
	.word	_Label_2552
	.word	-32
	.word	4
	.word	_Label_2553
	.word	-36
	.word	4
	.word	_Label_2554
	.word	-40
	.word	4
	.word	_Label_2555
	.word	-44
	.word	4
	.word	_Label_2556
	.word	-48
	.word	4
	.word	_Label_2557
	.word	-52
	.word	4
	.word	0
_Label_2542:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2543:
	.ascii	"Pself\0"
	.align
_Label_2544:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2545:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2546:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2520\0"
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
	mov	2100,r13		! source line 2100
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2117,r13		! source line 2117
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
	mov	2118,r13		! source line 2118
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
	mov	2119,r13		! source line 2119
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
	mov	2120,r13		! source line 2120
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
	mov	2120,r13		! source line 2120
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
	.word	_Label_2558
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2559
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2560
	.word	12
	.word	4
	.word	_Label_2561
	.word	16
	.word	4
	.word	_Label_2562
	.word	20
	.word	4
	.word	_Label_2563
	.word	24
	.word	4
	.word	0
_Label_2558:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2559:
	.ascii	"Pself\0"
	.align
_Label_2560:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2561:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2562:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2563:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2564
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
_Label_2564:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2565
	.word	_sourceFileName
	.word	331		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2565:
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
_Label_3484:
	push	r0
	sub	r1,1,r1
	bne	_Label_3484
	mov	2131,r13		! source line 2131
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2566 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2566  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2138,r13		! source line 2138
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2139,r13		! source line 2139
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
	mov	2140,r13		! source line 2140
	mov	"\0\0SE",r10
!   _temp_2568 = &fileManagerLock
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
	mov	2143,r13		! source line 2143
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
	mov	2144,r13		! source line 2144
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
	mov	2145,r13		! source line 2145
	mov	"\0\0SE",r10
!   _temp_2571 = &anFCBBecameFree
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
	mov	2146,r13		! source line 2146
	mov	"\0\0AS",r10
!   _temp_2572 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2574 = &_temp_2573
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2574 = _temp_2574 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2576 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3485:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3485
!   _temp_2576 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2578:
!   Data Move: *_temp_2574 = _temp_2576  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3486:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3486
!   _temp_2574 = _temp_2574 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2575 = _temp_2575 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2575) then goto _Label_2578
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2578
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2579 = &_temp_2573
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3487
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3487:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2572 = *_temp_2579  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3488:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3488
! FOR STATEMENT...
	mov	2148,r13		! source line 2148
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2584 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2585 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2584  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2580:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2585 then goto _Label_2583		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2583
_Label_2581:
	mov	2148,r13		! source line 2148
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0AS",r10
!   _temp_2586 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2586 [i ] into _temp_2587
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
!   _temp_2588 = _temp_2587 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2588 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2150,r13		! source line 2150
	mov	"\0\0SE",r10
!   _temp_2589 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2589 [i ] into _temp_2590
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
	mov	2151,r13		! source line 2151
	mov	"\0\0SE",r10
!   _temp_2592 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2592 [i ] into _temp_2593
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
!   _temp_2591 = _temp_2593		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2594 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2591  sizeInBytes=4
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
_Label_2582:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2580
! END FOR
_Label_2583:
! ASSIGNMENT STATEMENT...
	mov	2155,r13		! source line 2155
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
	mov	2156,r13		! source line 2156
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
	mov	2157,r13		! source line 2157
	mov	"\0\0SE",r10
!   _temp_2597 = &anOpenFileBecameFree
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
	mov	2158,r13		! source line 2158
	mov	"\0\0AS",r10
!   _temp_2598 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2600 = &_temp_2599
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2600 = _temp_2600 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2602 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3489:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3489
!   _temp_2602 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2604:
!   Data Move: *_temp_2600 = _temp_2602  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3490:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3490
!   _temp_2600 = _temp_2600 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2601 = _temp_2601 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2601) then goto _Label_2604
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2604
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2605 = &_temp_2599
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3491
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3491:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2598 = *_temp_2605  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3492:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3492
! FOR STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2610 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2611 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2610  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2606:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2611 then goto _Label_2609		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2609
_Label_2607:
	mov	2160,r13		! source line 2160
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0AS",r10
!   _temp_2612 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2612 [i ] into _temp_2613
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
!   _temp_2614 = _temp_2613 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2614 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0SE",r10
!   _temp_2616 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2616 [i ] into _temp_2617
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
!   _temp_2615 = _temp_2617		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2618 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2615  sizeInBytes=4
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
_Label_2608:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2606
! END FOR
_Label_2609:
! ASSIGNMENT STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3493:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3493
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0AS",r10
!   _temp_2620 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2621 = _temp_2620 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2621 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0AS",r10
	mov	2172,r13		! source line 2172
	mov	"\0\0SE",r10
!   _temp_2622 = &_P_Kernel_frameManager
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
	mov	2173,r13		! source line 2173
	mov	"\0\0SE",r10
!   _temp_2623 = &_P_Kernel_diskDriver
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
	mov	2173,r13		! source line 2173
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
	.word	_Label_2624
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2625
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2626
	.word	-12
	.word	4
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
	.word	-28
	.word	4
	.word	_Label_2631
	.word	-32
	.word	4
	.word	_Label_2632
	.word	-36
	.word	4
	.word	_Label_2633
	.word	-40
	.word	4
	.word	_Label_2634
	.word	-44
	.word	4
	.word	_Label_2635
	.word	-48
	.word	4
	.word	_Label_2636
	.word	-52
	.word	4
	.word	_Label_2637
	.word	-56
	.word	4
	.word	_Label_2638
	.word	-60
	.word	4
	.word	_Label_2639
	.word	-64
	.word	4
	.word	_Label_2640
	.word	-68
	.word	4
	.word	_Label_2641
	.word	-72
	.word	4
	.word	_Label_2642
	.word	-100
	.word	28
	.word	_Label_2643
	.word	-104
	.word	4
	.word	_Label_2644
	.word	-108
	.word	4
	.word	_Label_2645
	.word	-392
	.word	284
	.word	_Label_2646
	.word	-396
	.word	4
	.word	_Label_2647
	.word	-400
	.word	4
	.word	_Label_2648
	.word	-404
	.word	4
	.word	_Label_2649
	.word	-408
	.word	4
	.word	_Label_2650
	.word	-412
	.word	4
	.word	_Label_2651
	.word	-416
	.word	4
	.word	_Label_2652
	.word	-420
	.word	4
	.word	_Label_2653
	.word	-424
	.word	4
	.word	_Label_2654
	.word	-428
	.word	4
	.word	_Label_2655
	.word	-432
	.word	4
	.word	_Label_2656
	.word	-436
	.word	4
	.word	_Label_2657
	.word	-440
	.word	4
	.word	_Label_2658
	.word	-444
	.word	4
	.word	_Label_2659
	.word	-448
	.word	4
	.word	_Label_2660
	.word	-452
	.word	4
	.word	_Label_2661
	.word	-456
	.word	4
	.word	_Label_2662
	.word	-460
	.word	4
	.word	_Label_2663
	.word	-500
	.word	40
	.word	_Label_2664
	.word	-504
	.word	4
	.word	_Label_2665
	.word	-508
	.word	4
	.word	_Label_2666
	.word	-912
	.word	404
	.word	_Label_2667
	.word	-916
	.word	4
	.word	_Label_2668
	.word	-920
	.word	4
	.word	_Label_2669
	.word	-924
	.word	4
	.word	_Label_2670
	.word	-928
	.word	4
	.word	_Label_2671
	.word	-932
	.word	4
	.word	_Label_2672
	.word	-936
	.word	4
	.word	_Label_2673
	.word	-940
	.word	4
	.word	_Label_2674
	.word	-944
	.word	4
	.word	0
_Label_2624:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2625:
	.ascii	"Pself\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2674:
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
_Label_3494:
	push	r0
	sub	r1,1,r1
	bne	_Label_3494
	mov	2180,r13		! source line 2180
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0SE",r10
!   _temp_2675 = &fileManagerLock
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
!   _temp_2676 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2676  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2183,r13		! source line 2183
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2681 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2682 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2681  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2677:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2682 then goto _Label_2680		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2680
_Label_2678:
	mov	2184,r13		! source line 2184
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2683 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2683  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2185,r13		! source line 2185
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2186,r13		! source line 2186
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2684 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2684  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2187,r13		! source line 2187
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0SE",r10
!   _temp_2685 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2685 [i ] into _temp_2686
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
_Label_2679:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2677
! END FOR
_Label_2680:
! CALL STATEMENT...
!   _temp_2687 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2687  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2190,r13		! source line 2190
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0SE",r10
!   _temp_2688 = _function_199_printFCB
	set	_function_199_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2689 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2688  sizeInBytes=4
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
	mov	2192,r13		! source line 2192
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2690 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2690  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2193,r13		! source line 2193
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2695 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2696 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2695  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2691:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2696 then goto _Label_2694		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2694
_Label_2692:
	mov	2194,r13		! source line 2194
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2697 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2697  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2195,r13		! source line 2195
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2196,r13		! source line 2196
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2698 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2698  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2197,r13		! source line 2197
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2700 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2700 [i ] into _temp_2701
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
!   _temp_2699 = _temp_2701		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2699  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2198,r13		! source line 2198
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2702 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2702  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2199,r13		! source line 2199
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0SE",r10
!   _temp_2703 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2703 [i ] into _temp_2704
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
_Label_2693:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2691
! END FOR
_Label_2694:
! CALL STATEMENT...
!   _temp_2705 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2705  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2202,r13		! source line 2202
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0SE",r10
!   _temp_2706 = _function_198_printOpen
	set	_function_198_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2707 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2706  sizeInBytes=4
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
	mov	2204,r13		! source line 2204
	mov	"\0\0SE",r10
!   _temp_2708 = &fileManagerLock
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
	mov	2204,r13		! source line 2204
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
	.word	_Label_2709
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2710
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2711
	.word	-12
	.word	4
	.word	_Label_2712
	.word	-16
	.word	4
	.word	_Label_2713
	.word	-20
	.word	4
	.word	_Label_2714
	.word	-24
	.word	4
	.word	_Label_2715
	.word	-28
	.word	4
	.word	_Label_2716
	.word	-32
	.word	4
	.word	_Label_2717
	.word	-36
	.word	4
	.word	_Label_2718
	.word	-40
	.word	4
	.word	_Label_2719
	.word	-44
	.word	4
	.word	_Label_2720
	.word	-48
	.word	4
	.word	_Label_2721
	.word	-52
	.word	4
	.word	_Label_2722
	.word	-56
	.word	4
	.word	_Label_2723
	.word	-60
	.word	4
	.word	_Label_2724
	.word	-64
	.word	4
	.word	_Label_2725
	.word	-68
	.word	4
	.word	_Label_2726
	.word	-72
	.word	4
	.word	_Label_2727
	.word	-76
	.word	4
	.word	_Label_2728
	.word	-80
	.word	4
	.word	_Label_2729
	.word	-84
	.word	4
	.word	_Label_2730
	.word	-88
	.word	4
	.word	_Label_2731
	.word	-92
	.word	4
	.word	_Label_2732
	.word	-96
	.word	4
	.word	_Label_2733
	.word	-100
	.word	4
	.word	_Label_2734
	.word	-104
	.word	4
	.word	_Label_2735
	.word	-108
	.word	4
	.word	_Label_2736
	.word	-112
	.word	4
	.word	_Label_2737
	.word	-116
	.word	4
	.word	0
_Label_2709:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2710:
	.ascii	"Pself\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2737:
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
_Label_3495:
	push	r0
	sub	r1,1,r1
	bne	_Label_3495
	mov	2209,r13		! source line 2209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0AS",r10
	mov	2225,r13		! source line 2225
	mov	"\0\0SE",r10
!   _temp_2738 = &_P_Kernel_fileManager
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
	mov	2226,r13		! source line 2226
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2739
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2739
	jmp	_Label_2740
_Label_2739:
! THEN...
	mov	2227,r13		! source line 2227
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2740:
! SEND STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0SE",r10
!   _temp_2741 = &fileManagerLock
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
	mov	2232,r13		! source line 2232
	mov	"\0\0WH",r10
_Label_2742:
	mov	2232,r13		! source line 2232
	mov	"\0\0SE",r10
!   _temp_2745 = &openFileFreeList
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
!   if result==true then goto _Label_2743 else goto _Label_2744
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2744
	jmp	_Label_2743
_Label_2743:
	mov	2232,r13		! source line 2232
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0SE",r10
!   _temp_2746 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2747 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2746  sizeInBytes=4
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
	jmp	_Label_2742
_Label_2744:
! ASSIGNMENT STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0AS",r10
	mov	2235,r13		! source line 2235
	mov	"\0\0SE",r10
!   _temp_2748 = &openFileFreeList
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
	mov	2238,r13		! source line 2238
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2749 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2749 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2750 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2750 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2751 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2751 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0SE",r10
!   _temp_2752 = &fileManagerLock
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
	mov	2245,r13		! source line 2245
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
	.word	_Label_2753
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2754
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2755
	.word	12
	.word	4
	.word	_Label_2756
	.word	-12
	.word	4
	.word	_Label_2757
	.word	-16
	.word	4
	.word	_Label_2758
	.word	-20
	.word	4
	.word	_Label_2759
	.word	-24
	.word	4
	.word	_Label_2760
	.word	-28
	.word	4
	.word	_Label_2761
	.word	-32
	.word	4
	.word	_Label_2762
	.word	-36
	.word	4
	.word	_Label_2763
	.word	-40
	.word	4
	.word	_Label_2764
	.word	-44
	.word	4
	.word	_Label_2765
	.word	-48
	.word	4
	.word	_Label_2766
	.word	-52
	.word	4
	.word	_Label_2767
	.word	-56
	.word	4
	.word	0
_Label_2753:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2754:
	.ascii	"Pself\0"
	.align
_Label_2755:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2766:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2767:
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
_Label_3496:
	push	r0
	sub	r1,1,r1
	bne	_Label_3496
	mov	2250,r13		! source line 2250
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2278,r13		! source line 2278
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
	mov	2279,r13		! source line 2279
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2769		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2769
!	jmp	_Label_2768
_Label_2768:
! THEN...
	mov	2281,r13		! source line 2281
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2770 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2770  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2281,r13		! source line 2281
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2769:
! ASSIGNMENT STATEMENT...
	mov	2285,r13		! source line 2285
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
	mov	2286,r13		! source line 2286
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2287,r13		! source line 2287
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
	mov	2288,r13		! source line 2288
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0WH",r10
_Label_2771:
!   if numFiles <= 0 then goto _Label_2773		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2773
!	jmp	_Label_2772
_Label_2772:
	mov	2291,r13		! source line 2291
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2774 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2774  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2292,r13		! source line 2292
	mov	"\0\0CA",r10
	call	_function_200_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2775 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2775  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2294,r13		! source line 2294
	mov	"\0\0CA",r10
	call	_function_200_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2776 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2776  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2296,r13		! source line 2296
	mov	"\0\0CA",r10
	call	_function_200_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2780 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2780 then goto _Label_2778		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2778
!	jmp	_Label_2779
_Label_2779:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2782
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
!   _temp_2781 = _temp_2782		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2781  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2299,r13		! source line 2299
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2777 else goto _Label_2778
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2778
	jmp	_Label_2777
_Label_2777:
! THEN...
	mov	2300,r13		! source line 2300
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0BR",r10
	jmp	_Label_2773
! END IF...
_Label_2778:
! ASSIGNMENT STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2771
_Label_2773:
! IF STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2784		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2784
!	jmp	_Label_2783
_Label_2783:
! THEN...
	mov	2308,r13		! source line 2308
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2308,r13		! source line 2308
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2784:
! SEND STATEMENT...
	mov	2311,r13		! source line 2311
	mov	"\0\0SE",r10
!   _temp_2785 = &fileManagerLock
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
	mov	2313,r13		! source line 2313
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2790 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2791 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2790  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2786:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2791 then goto _Label_2789		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2789
_Label_2787:
	mov	2313,r13		! source line 2313
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2314,r13		! source line 2314
	mov	"\0\0AS",r10
!   _temp_2792 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2792 [i ] into _temp_2793
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
!   fcb = _temp_2793		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2315,r13		! source line 2315
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2797 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2796 = *_temp_2797  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2796 != start then goto _Label_2795		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2795
!	jmp	_Label_2794
_Label_2794:
! THEN...
	mov	2316,r13		! source line 2316
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2316,r13		! source line 2316
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2798 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2801 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2800 = *_temp_2801  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2799 = _temp_2800 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2798 = _temp_2799  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0SE",r10
!   _temp_2802 = &fileManagerLock
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
	mov	2318,r13		! source line 2318
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2795:
!   Increment the FOR-LOOP index variable and jump back
_Label_2788:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2786
! END FOR
_Label_2789:
! WHILE STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0WH",r10
_Label_2803:
	mov	2323,r13		! source line 2323
	mov	"\0\0SE",r10
!   _temp_2806 = &fcbFreeList
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
!   if result==true then goto _Label_2804 else goto _Label_2805
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2805
	jmp	_Label_2804
_Label_2804:
	mov	2323,r13		! source line 2323
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2324,r13		! source line 2324
	mov	"\0\0SE",r10
!   _temp_2807 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2808 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2807  sizeInBytes=4
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
	jmp	_Label_2803
_Label_2805:
! ASSIGNMENT STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0AS",r10
	mov	2326,r13		! source line 2326
	mov	"\0\0SE",r10
!   _temp_2809 = &fcbFreeList
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
	mov	2329,r13		! source line 2329
	mov	"\0\0SE",r10
!   _temp_2810 = &fileManagerLock
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
	mov	2332,r13		! source line 2332
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2811 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2811 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2812 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2812 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2813 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2813 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2818 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2817 = *_temp_2818  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2817 < 0 then goto _Label_2816		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2816
	jmp	_Label_2814
_Label_2816:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2819 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2819 ) then goto _Label_2815		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2815
!	jmp	_Label_2814
_Label_2814:
! THEN...
	mov	2336,r13		! source line 2336
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2820 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2820  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2336,r13		! source line 2336
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2815:
! RETURN STATEMENT...
	mov	2338,r13		! source line 2338
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
	.word	_Label_2821
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2822
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2823
	.word	12
	.word	4
	.word	_Label_2824
	.word	-12
	.word	4
	.word	_Label_2825
	.word	-16
	.word	4
	.word	_Label_2826
	.word	-20
	.word	4
	.word	_Label_2827
	.word	-24
	.word	4
	.word	_Label_2828
	.word	-28
	.word	4
	.word	_Label_2829
	.word	-32
	.word	4
	.word	_Label_2830
	.word	-36
	.word	4
	.word	_Label_2831
	.word	-40
	.word	4
	.word	_Label_2832
	.word	-44
	.word	4
	.word	_Label_2833
	.word	-48
	.word	4
	.word	_Label_2834
	.word	-52
	.word	4
	.word	_Label_2835
	.word	-56
	.word	4
	.word	_Label_2836
	.word	-60
	.word	4
	.word	_Label_2837
	.word	-64
	.word	4
	.word	_Label_2838
	.word	-68
	.word	4
	.word	_Label_2839
	.word	-72
	.word	4
	.word	_Label_2840
	.word	-76
	.word	4
	.word	_Label_2841
	.word	-80
	.word	4
	.word	_Label_2842
	.word	-84
	.word	4
	.word	_Label_2843
	.word	-88
	.word	4
	.word	_Label_2844
	.word	-92
	.word	4
	.word	_Label_2845
	.word	-96
	.word	4
	.word	_Label_2846
	.word	-100
	.word	4
	.word	_Label_2847
	.word	-104
	.word	4
	.word	_Label_2848
	.word	-108
	.word	4
	.word	_Label_2849
	.word	-112
	.word	4
	.word	_Label_2850
	.word	-116
	.word	4
	.word	_Label_2851
	.word	-120
	.word	4
	.word	_Label_2852
	.word	-124
	.word	4
	.word	_Label_2853
	.word	-128
	.word	4
	.word	_Label_2854
	.word	-132
	.word	4
	.word	_Label_2855
	.word	-136
	.word	4
	.word	_Label_2856
	.word	-140
	.word	4
	.word	_Label_2857
	.word	-144
	.word	4
	.word	_Label_2858
	.word	-148
	.word	4
	.word	_Label_2859
	.word	-152
	.word	4
	.word	_Label_2860
	.word	-156
	.word	4
	.word	_Label_2861
	.word	-160
	.word	4
	.word	0
_Label_2821:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2822:
	.ascii	"Pself\0"
	.align
_Label_2823:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2855:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2856:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2857:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2858:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2859:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2860:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2861:
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
_Label_3497:
	push	r0
	sub	r1,1,r1
	bne	_Label_3497
	mov	2351,r13		! source line 2351
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2353,r13		! source line 2353
	mov	"\0\0IF",r10
!   _temp_2864 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2864 then goto _Label_2863		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2863
!	jmp	_Label_2862
_Label_2862:
! THEN...
	mov	2354,r13		! source line 2354
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2354,r13		! source line 2354
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2863:
! SEND STATEMENT...
	mov	2356,r13		! source line 2356
	mov	"\0\0SE",r10
!   _temp_2865 = &fileManagerLock
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
	mov	2357,r13		! source line 2357
	mov	"\0\0SE",r10
!   _temp_2866 = &_P_Kernel_fileManager
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
	mov	2358,r13		! source line 2358
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2867 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2867  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2359,r13		! source line 2359
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2868 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2871 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2870 = *_temp_2871  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2869 = _temp_2870 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2868 = _temp_2869  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2875 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2874 = *_temp_2875  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2874 > 0 then goto _Label_2873		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2873
!	jmp	_Label_2872
_Label_2872:
! THEN...
	mov	2361,r13		! source line 2361
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0SE",r10
!   _temp_2876 = &openFileFreeList
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
	mov	2362,r13		! source line 2362
	mov	"\0\0SE",r10
!   _temp_2877 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2878 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2877  sizeInBytes=4
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
	mov	2363,r13		! source line 2363
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2879 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2882 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2881 = *_temp_2882  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2880 = _temp_2881 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2879 = _temp_2880  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2886 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2885 = *_temp_2886  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2885 > 0 then goto _Label_2884		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2884
!	jmp	_Label_2883
_Label_2883:
! THEN...
	mov	2365,r13		! source line 2365
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0SE",r10
!   _temp_2887 = &fcbFreeList
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
	mov	2366,r13		! source line 2366
	mov	"\0\0SE",r10
!   _temp_2888 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2889 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2888  sizeInBytes=4
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
_Label_2884:
! END IF...
_Label_2873:
! SEND STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0SE",r10
!   _temp_2890 = &fileManagerLock
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
	mov	2369,r13		! source line 2369
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
	.word	_Label_2891
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2892
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2893
	.word	12
	.word	4
	.word	_Label_2894
	.word	-12
	.word	4
	.word	_Label_2895
	.word	-16
	.word	4
	.word	_Label_2896
	.word	-20
	.word	4
	.word	_Label_2897
	.word	-24
	.word	4
	.word	_Label_2898
	.word	-28
	.word	4
	.word	_Label_2899
	.word	-32
	.word	4
	.word	_Label_2900
	.word	-36
	.word	4
	.word	_Label_2901
	.word	-40
	.word	4
	.word	_Label_2902
	.word	-44
	.word	4
	.word	_Label_2903
	.word	-48
	.word	4
	.word	_Label_2904
	.word	-52
	.word	4
	.word	_Label_2905
	.word	-56
	.word	4
	.word	_Label_2906
	.word	-60
	.word	4
	.word	_Label_2907
	.word	-64
	.word	4
	.word	_Label_2908
	.word	-68
	.word	4
	.word	_Label_2909
	.word	-72
	.word	4
	.word	_Label_2910
	.word	-76
	.word	4
	.word	_Label_2911
	.word	-80
	.word	4
	.word	_Label_2912
	.word	-84
	.word	4
	.word	_Label_2913
	.word	-88
	.word	4
	.word	_Label_2914
	.word	-92
	.word	4
	.word	_Label_2915
	.word	-96
	.word	4
	.word	_Label_2916
	.word	-100
	.word	4
	.word	_Label_2917
	.word	-104
	.word	4
	.word	0
_Label_2891:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2892:
	.ascii	"Pself\0"
	.align
_Label_2893:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2897:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2885\0"
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
	.ascii	"_temp_2871\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2866\0"
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
_Label_3498:
	push	r0
	sub	r1,1,r1
	bne	_Label_3498
	mov	2374,r13		! source line 2374
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2379,r13		! source line 2379
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2921 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2920 = *_temp_2921  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2920) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2922 = _temp_2920 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2922 ) then goto _Label_2919		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2919
!	jmp	_Label_2918
_Label_2918:
! THEN...
	mov	2380,r13		! source line 2380
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2380,r13		! source line 2380
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2927 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2926 = *_temp_2927  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2926) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2928 = _temp_2926 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2925 = *_temp_2928  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2925 >= 0 then goto _Label_2924		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2924
!	jmp	_Label_2923
_Label_2923:
! THEN...
	mov	2381,r13		! source line 2381
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2929 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2929  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2381,r13		! source line 2381
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2924:
! ASSIGNMENT STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2931 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2930 = *_temp_2931  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2930) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2932 = _temp_2930 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2932 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2936 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2935 = *_temp_2936  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2935) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2937 = _temp_2935 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2934 = *_temp_2937  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2940 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2939 = *_temp_2940  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2939) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2941 = _temp_2939 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2938 = *_temp_2941  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2933 = _temp_2934 + _temp_2938		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2944 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2943 = *_temp_2944  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2943) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2945 = _temp_2943 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2942 = *_temp_2945  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2946 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2933  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2942  sizeInBytes=4
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
_Label_2919:
! RETURN STATEMENT...
	mov	2379,r13		! source line 2379
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
	.word	_Label_2947
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2948
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2949
	.word	12
	.word	4
	.word	_Label_2950
	.word	-12
	.word	4
	.word	_Label_2951
	.word	-16
	.word	4
	.word	_Label_2952
	.word	-20
	.word	4
	.word	_Label_2953
	.word	-24
	.word	4
	.word	_Label_2954
	.word	-28
	.word	4
	.word	_Label_2955
	.word	-32
	.word	4
	.word	_Label_2956
	.word	-36
	.word	4
	.word	_Label_2957
	.word	-40
	.word	4
	.word	_Label_2958
	.word	-44
	.word	4
	.word	_Label_2959
	.word	-48
	.word	4
	.word	_Label_2960
	.word	-52
	.word	4
	.word	_Label_2961
	.word	-56
	.word	4
	.word	_Label_2962
	.word	-60
	.word	4
	.word	_Label_2963
	.word	-64
	.word	4
	.word	_Label_2964
	.word	-68
	.word	4
	.word	_Label_2965
	.word	-72
	.word	4
	.word	_Label_2966
	.word	-76
	.word	4
	.word	_Label_2967
	.word	-80
	.word	4
	.word	_Label_2968
	.word	-84
	.word	4
	.word	_Label_2969
	.word	-88
	.word	4
	.word	_Label_2970
	.word	-92
	.word	4
	.word	_Label_2971
	.word	-96
	.word	4
	.word	_Label_2972
	.word	-100
	.word	4
	.word	_Label_2973
	.word	-104
	.word	4
	.word	_Label_2974
	.word	-108
	.word	4
	.word	0
_Label_2947:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2948:
	.ascii	"Pself\0"
	.align
_Label_2949:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2920\0"
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
_Label_3499:
	push	r0
	sub	r1,1,r1
	bne	_Label_3499
	mov	2393,r13		! source line 2393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0SE",r10
!   _temp_2975 = &fileManagerLock
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
	mov	2409,r13		! source line 2409
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2981		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2981
!   _temp_2980 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2982
_Label_2981:
!   _temp_2980 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2982:
!   if _temp_2980 then goto _Label_2979 else goto _Label_2976
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2976
	jmp	_Label_2979
_Label_2979:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2985 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2984 = *_temp_2985  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2984 == 0 then goto _Label_2986		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2986
!   _temp_2983 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2987
_Label_2986:
!   _temp_2983 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2987:
!   if _temp_2983 then goto _Label_2978 else goto _Label_2976
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2976
	jmp	_Label_2978
_Label_2978:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2990 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2989 = *_temp_2990  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2989) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2991 = _temp_2989 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2988 = *_temp_2991  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2988 >= 0 then goto _Label_2977		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2977
!	jmp	_Label_2976
_Label_2976:
! THEN...
	mov	2410,r13		! source line 2410
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2992 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2992  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2410,r13		! source line 2410
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2977:
! ASSIGNMENT STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2993 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2993  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0WH",r10
_Label_2994:
!   if numBytes <= 0 then goto _Label_2996		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2996
!	jmp	_Label_2995
_Label_2995:
	mov	2413,r13		! source line 2413
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2422,r13		! source line 2422
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
	mov	2423,r13		! source line 2423
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
	mov	2427,r13		! source line 2427
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3000 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2999 = *_temp_3000  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2999 == sector then goto _Label_2998		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2998
!	jmp	_Label_2997
_Label_2997:
! THEN...
	mov	2428,r13		! source line 2428
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3001) then goto _runtimeErrorNullPointer
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
	mov	2430,r13		! source line 2430
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3004 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3003 = *_temp_3004  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3002 = sector + _temp_3003		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3006 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3005 = *_temp_3006  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3007 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3002  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3005  sizeInBytes=4
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
	mov	2433,r13		! source line 2433
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3008 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3008 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3009 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3009 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2998:
! ASSIGNMENT STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3011 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3010 = *_temp_3011  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3010 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0AS",r10
!   _temp_3012 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3012  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2437,r13		! source line 2437
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
	mov	2441,r13		! source line 2441
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2994
_Label_2996:
! SEND STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0SE",r10
!   _temp_3013 = &fileManagerLock
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
	mov	2452,r13		! source line 2452
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
	.word	_Label_3014
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3015
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3016
	.word	12
	.word	4
	.word	_Label_3017
	.word	16
	.word	4
	.word	_Label_3018
	.word	20
	.word	4
	.word	_Label_3019
	.word	24
	.word	4
	.word	_Label_3020
	.word	-16
	.word	4
	.word	_Label_3021
	.word	-20
	.word	4
	.word	_Label_3022
	.word	-24
	.word	4
	.word	_Label_3023
	.word	-28
	.word	4
	.word	_Label_3024
	.word	-32
	.word	4
	.word	_Label_3025
	.word	-36
	.word	4
	.word	_Label_3026
	.word	-40
	.word	4
	.word	_Label_3027
	.word	-44
	.word	4
	.word	_Label_3028
	.word	-48
	.word	4
	.word	_Label_3029
	.word	-52
	.word	4
	.word	_Label_3030
	.word	-56
	.word	4
	.word	_Label_3031
	.word	-60
	.word	4
	.word	_Label_3032
	.word	-64
	.word	4
	.word	_Label_3033
	.word	-68
	.word	4
	.word	_Label_3034
	.word	-72
	.word	4
	.word	_Label_3035
	.word	-76
	.word	4
	.word	_Label_3036
	.word	-80
	.word	4
	.word	_Label_3037
	.word	-84
	.word	4
	.word	_Label_3038
	.word	-88
	.word	4
	.word	_Label_3039
	.word	-92
	.word	4
	.word	_Label_3040
	.word	-96
	.word	4
	.word	_Label_3041
	.word	-100
	.word	4
	.word	_Label_3042
	.word	-104
	.word	4
	.word	_Label_3043
	.word	-9
	.word	1
	.word	_Label_3044
	.word	-10
	.word	1
	.word	_Label_3045
	.word	-108
	.word	4
	.word	_Label_3046
	.word	-112
	.word	4
	.word	_Label_3047
	.word	-116
	.word	4
	.word	_Label_3048
	.word	-120
	.word	4
	.word	_Label_3049
	.word	-124
	.word	4
	.word	_Label_3050
	.word	-128
	.word	4
	.word	0
_Label_3014:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3015:
	.ascii	"Pself\0"
	.align
_Label_3016:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3017:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3018:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3019:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_2990\0"
	.align
_Label_3039:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_2988\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_2985\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_3043:
	.byte	'C'
	.ascii	"_temp_2983\0"
	.align
_Label_3044:
	.byte	'C'
	.ascii	"_temp_2980\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_3046:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3047:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3048:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3049:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3050:
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
_Label_3500:
	push	r0
	sub	r1,1,r1
	bne	_Label_3500
	mov	2457,r13		! source line 2457
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0SE",r10
!   _temp_3051 = &fileManagerLock
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
	mov	2474,r13		! source line 2474
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3057		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3057
!   _temp_3056 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3058
_Label_3057:
!   _temp_3056 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3058:
!   if _temp_3056 then goto _Label_3055 else goto _Label_3052
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3052
	jmp	_Label_3055
_Label_3055:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3061 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3060 = *_temp_3061  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3060 == 0 then goto _Label_3062		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3062
!   _temp_3059 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3063
_Label_3062:
!   _temp_3059 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3063:
!   if _temp_3059 then goto _Label_3054 else goto _Label_3052
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3052
	jmp	_Label_3054
_Label_3054:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3066 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3065 = *_temp_3066  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3065) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3067 = _temp_3065 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3064 = *_temp_3067  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3064 >= 0 then goto _Label_3053		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3053
!	jmp	_Label_3052
_Label_3052:
! THEN...
	mov	2475,r13		! source line 2475
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3068 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3068  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2475,r13		! source line 2475
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3053:
! ASSIGNMENT STATEMENT...
	mov	2477,r13		! source line 2477
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3069 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3069  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0WH",r10
_Label_3070:
!   if numBytes <= 0 then goto _Label_3072		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3072
!	jmp	_Label_3071
_Label_3071:
	mov	2478,r13		! source line 2478
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2487,r13		! source line 2487
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
	mov	2488,r13		! source line 2488
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
	mov	2492,r13		! source line 2492
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3076 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3075 = *_temp_3076  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3075 == sector then goto _Label_3074		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3074
!	jmp	_Label_3073
_Label_3073:
! THEN...
	mov	2494,r13		! source line 2494
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3077) then goto _runtimeErrorNullPointer
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
_Label_3074:
! ASSIGNMENT STATEMENT...
	mov	2496,r13		! source line 2496
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3079 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3078 = *_temp_3079  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3078 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2497,r13		! source line 2497
	mov	"\0\0AS",r10
!   _temp_3080 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3080  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2497,r13		! source line 2497
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2498,r13		! source line 2498
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3084 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3083 = *_temp_3084  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3083 != sector then goto _Label_3082		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3082
!	jmp	_Label_3081
_Label_3081:
	jmp	_Label_3085
_Label_3082:
! ELSE...
	mov	2500,r13		! source line 2500
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3088
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3088
	jmp	_Label_3087
_Label_3088:
!   if bytesToMove != 8192 then goto _Label_3087		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3087
!	jmp	_Label_3086
_Label_3086:
	jmp	_Label_3089
_Label_3087:
! ELSE...
	mov	2504,r13		! source line 2504
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3092 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3091 = *_temp_3092  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3090 = sector + _temp_3091		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3094 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3093 = *_temp_3094  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3095 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3090  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3093  sizeInBytes=4
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
_Label_3089:
! END IF...
_Label_3085:
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3096 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3096 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3097 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3097 = 1  (sizeInBytes=1)
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
	mov	2513,r13		! source line 2513
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3070
_Label_3072:
! SEND STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0SE",r10
!   _temp_3098 = &fileManagerLock
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
	mov	2525,r13		! source line 2525
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
	.word	_Label_3099
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3100
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3101
	.word	12
	.word	4
	.word	_Label_3102
	.word	16
	.word	4
	.word	_Label_3103
	.word	20
	.word	4
	.word	_Label_3104
	.word	24
	.word	4
	.word	_Label_3105
	.word	-16
	.word	4
	.word	_Label_3106
	.word	-20
	.word	4
	.word	_Label_3107
	.word	-24
	.word	4
	.word	_Label_3108
	.word	-28
	.word	4
	.word	_Label_3109
	.word	-32
	.word	4
	.word	_Label_3110
	.word	-36
	.word	4
	.word	_Label_3111
	.word	-40
	.word	4
	.word	_Label_3112
	.word	-44
	.word	4
	.word	_Label_3113
	.word	-48
	.word	4
	.word	_Label_3114
	.word	-52
	.word	4
	.word	_Label_3115
	.word	-56
	.word	4
	.word	_Label_3116
	.word	-60
	.word	4
	.word	_Label_3117
	.word	-64
	.word	4
	.word	_Label_3118
	.word	-68
	.word	4
	.word	_Label_3119
	.word	-72
	.word	4
	.word	_Label_3120
	.word	-76
	.word	4
	.word	_Label_3121
	.word	-80
	.word	4
	.word	_Label_3122
	.word	-84
	.word	4
	.word	_Label_3123
	.word	-88
	.word	4
	.word	_Label_3124
	.word	-92
	.word	4
	.word	_Label_3125
	.word	-96
	.word	4
	.word	_Label_3126
	.word	-100
	.word	4
	.word	_Label_3127
	.word	-104
	.word	4
	.word	_Label_3128
	.word	-108
	.word	4
	.word	_Label_3129
	.word	-112
	.word	4
	.word	_Label_3130
	.word	-9
	.word	1
	.word	_Label_3131
	.word	-10
	.word	1
	.word	_Label_3132
	.word	-116
	.word	4
	.word	_Label_3133
	.word	-120
	.word	4
	.word	_Label_3134
	.word	-124
	.word	4
	.word	_Label_3135
	.word	-128
	.word	4
	.word	_Label_3136
	.word	-132
	.word	4
	.word	_Label_3137
	.word	-136
	.word	4
	.word	0
_Label_3099:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3100:
	.ascii	"Pself\0"
	.align
_Label_3101:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3102:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3103:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3104:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3098\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3097\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3096\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3111:
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3112:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3113:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3114:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
_Label_3115:
	.byte	'?'
	.ascii	"_temp_3083\0"
	.align
_Label_3116:
	.byte	'?'
	.ascii	"_temp_3080\0"
	.align
_Label_3117:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3118:
	.byte	'?'
	.ascii	"_temp_3078\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3123:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3067\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3066\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3065\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3061\0"
	.align
_Label_3129:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3130:
	.byte	'C'
	.ascii	"_temp_3059\0"
	.align
_Label_3131:
	.byte	'C'
	.ascii	"_temp_3056\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3051\0"
	.align
_Label_3133:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3134:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3135:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3136:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3137:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3138
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3138:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3139
	.word	_sourceFileName
	.word	356		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3139:
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
_Label_3501:
	push	r0
	sub	r1,1,r1
	bne	_Label_3501
	mov	2561,r13		! source line 2561
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2562,r13		! source line 2562
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0AS",r10
	mov	2563,r13		! source line 2563
	mov	"\0\0SE",r10
!   _temp_3140 = &_P_Kernel_frameManager
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
	mov	2564,r13		! source line 2564
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2566,r13		! source line 2566
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
	.word	_Label_3141
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3142
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3143
	.word	-12
	.word	4
	.word	0
_Label_3141:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3142:
	.ascii	"Pself\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3140\0"
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
_Label_3502:
	push	r0
	sub	r1,1,r1
	bne	_Label_3502
	mov	2571,r13		! source line 2571
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3144 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3144  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2572,r13		! source line 2572
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2573,r13		! source line 2573
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3145 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3145  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2574,r13		! source line 2574
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2575,r13		! source line 2575
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3146 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3146  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2576,r13		! source line 2576
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2577,r13		! source line 2577
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3147 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3147  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2578,r13		! source line 2578
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2579,r13		! source line 2579
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3148 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3148  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2580,r13		! source line 2580
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2581,r13		! source line 2581
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3149 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3149  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2582,r13		! source line 2582
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2583,r13		! source line 2583
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2584,r13		! source line 2584
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2584,r13		! source line 2584
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
	.word	_Label_3150
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3151
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3152
	.word	-12
	.word	4
	.word	_Label_3153
	.word	-16
	.word	4
	.word	_Label_3154
	.word	-20
	.word	4
	.word	_Label_3155
	.word	-24
	.word	4
	.word	_Label_3156
	.word	-28
	.word	4
	.word	_Label_3157
	.word	-32
	.word	4
	.word	0
_Label_3150:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3151:
	.ascii	"Pself\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3149\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3148\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3147\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3146\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3145\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3158
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3158:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3159
	.word	_sourceFileName
	.word	373		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3159:
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
_Label_3503:
	push	r0
	sub	r1,1,r1
	bne	_Label_3503
	mov	2595,r13		! source line 2595
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3160 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3160  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2596,r13		! source line 2596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2597,r13		! source line 2597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3161 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3161  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2598,r13		! source line 2598
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3163		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3163
!	jmp	_Label_3162
_Label_3162:
! THEN...
	mov	2600,r13		! source line 2600
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2600,r13		! source line 2600
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
	jmp	_Label_3164
_Label_3163:
! ELSE...
	mov	2602,r13		! source line 2602
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3165 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3165  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2602,r13		! source line 2602
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3164:
! RETURN STATEMENT...
	mov	2599,r13		! source line 2599
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
	.word	_Label_3166
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3167
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3168
	.word	-12
	.word	4
	.word	_Label_3169
	.word	-16
	.word	4
	.word	_Label_3170
	.word	-20
	.word	4
	.word	0
_Label_3166:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3167:
	.ascii	"Pself\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3160\0"
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
_Label_3504:
	push	r0
	sub	r1,1,r1
	bne	_Label_3504
	mov	2608,r13		! source line 2608
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0SE",r10
!   _temp_3171 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3172 = _temp_3171 + 4
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
	mov	2619,r13		! source line 2619
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2620,r13		! source line 2620
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
	mov	2621,r13		! source line 2621
	mov	"\0\0SE",r10
!   _temp_3173 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3174 = _temp_3173 + 4
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
	mov	2622,r13		! source line 2622
	mov	"\0\0RE",r10
	mov	2622,r13		! source line 2622
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3177 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3176  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3175  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3175  (sizeInBytes=1)
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
	.word	_Label_3178
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3179
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3180
	.word	12
	.word	4
	.word	_Label_3181
	.word	16
	.word	4
	.word	_Label_3182
	.word	-16
	.word	4
	.word	_Label_3183
	.word	-20
	.word	4
	.word	_Label_3184
	.word	-9
	.word	1
	.word	_Label_3185
	.word	-24
	.word	4
	.word	_Label_3186
	.word	-28
	.word	4
	.word	_Label_3187
	.word	-32
	.word	4
	.word	_Label_3188
	.word	-36
	.word	4
	.word	_Label_3189
	.word	-40
	.word	4
	.word	0
_Label_3178:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3179:
	.ascii	"Pself\0"
	.align
_Label_3180:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3181:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3182:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3184:
	.byte	'C'
	.ascii	"_temp_3175\0"
	.align
_Label_3185:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3186:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3187:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3188:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
_Label_3189:
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
_Label_3505:
	push	r0
	sub	r1,1,r1
	bne	_Label_3505
	mov	2627,r13		! source line 2627
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0IF",r10
	mov	2632,r13		! source line 2632
	mov	"\0\0SE",r10
!   _temp_3193 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3194) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3193  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3192  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3192 then goto _Label_3191 else goto _Label_3190
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3190
	jmp	_Label_3191
_Label_3190:
! THEN...
	mov	2633,r13		! source line 2633
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3195 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3195  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2633,r13		! source line 2633
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3191:
! RETURN STATEMENT...
	mov	2635,r13		! source line 2635
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
	.word	_Label_3196
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3197
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3198
	.word	-16
	.word	4
	.word	_Label_3199
	.word	-20
	.word	4
	.word	_Label_3200
	.word	-24
	.word	4
	.word	_Label_3201
	.word	-9
	.word	1
	.word	_Label_3202
	.word	-28
	.word	4
	.word	0
_Label_3196:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3197:
	.ascii	"Pself\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3200:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3201:
	.byte	'C'
	.ascii	"_temp_3192\0"
	.align
_Label_3202:
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
_Label_3506:
	push	r0
	sub	r1,1,r1
	bne	_Label_3506
	mov	2640,r13		! source line 2640
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3206 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3205 = *_temp_3206  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3205) then goto _Label_3204
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3204
!	jmp	_Label_3203
_Label_3203:
! THEN...
	mov	2667,r13		! source line 2667
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3207 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3207  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2667,r13		! source line 2667
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3204:
! IF STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0IF",r10
	mov	2671,r13		! source line 2671
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3211) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3210  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3210 == 1112300152 then goto _Label_3209		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3209
!	jmp	_Label_3208
_Label_3208:
! THEN...
	mov	2672,r13		! source line 2672
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3212 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3212  sizeInBytes=4
	load	[r14+-200],r1
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
_Label_3209:
! ASSIGNMENT STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0AS",r10
	mov	2677,r13		! source line 2677
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3213) then goto _runtimeErrorNullPointer
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
	mov	2678,r13		! source line 2678
	mov	"\0\0AS",r10
	mov	2678,r13		! source line 2678
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3214) then goto _runtimeErrorNullPointer
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
	mov	2679,r13		! source line 2679
	mov	"\0\0AS",r10
	mov	2679,r13		! source line 2679
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3215) then goto _runtimeErrorNullPointer
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
	mov	2680,r13		! source line 2680
	mov	"\0\0AS",r10
	mov	2680,r13		! source line 2680
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3216) then goto _runtimeErrorNullPointer
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
	mov	2681,r13		! source line 2681
	mov	"\0\0AS",r10
	mov	2681,r13		! source line 2681
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3217) then goto _runtimeErrorNullPointer
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
	mov	2682,r13		! source line 2682
	mov	"\0\0AS",r10
	mov	2682,r13		! source line 2682
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3218) then goto _runtimeErrorNullPointer
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
	mov	2685,r13		! source line 2685
	mov	"\0\0IF",r10
!   _temp_3221 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3221) then goto _Label_3220
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3220
!	jmp	_Label_3219
_Label_3219:
! THEN...
	mov	2686,r13		! source line 2686
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3222 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3222  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2686,r13		! source line 2686
	mov	"\0\0CE",r10
	call	print
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
_Label_3220:
! ASSIGNMENT STATEMENT...
	mov	2689,r13		! source line 2689
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
	mov	2693,r13		! source line 2693
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3224
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3224
!	jmp	_Label_3223
_Label_3223:
! THEN...
	mov	2694,r13		! source line 2694
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3225 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3225  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2694,r13		! source line 2694
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3224:
! IF STATEMENT...
	mov	2699,r13		! source line 2699
	mov	"\0\0IF",r10
!   _temp_3228 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3228) then goto _Label_3227
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3227
!	jmp	_Label_3226
_Label_3226:
! THEN...
	mov	2700,r13		! source line 2700
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3229 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3229  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2700,r13		! source line 2700
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2701,r13		! source line 2701
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3227:
! IF STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0IF",r10
!   _temp_3232 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3232 then goto _Label_3231		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3231
!	jmp	_Label_3230
_Label_3230:
! THEN...
	mov	2704,r13		! source line 2704
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3233 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3233  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2704,r13		! source line 2704
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2705,r13		! source line 2705
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
	mov	2707,r13		! source line 2707
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
	mov	2710,r13		! source line 2710
	mov	"\0\0IF",r10
!   _temp_3236 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3236) then goto _Label_3235
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3235
!	jmp	_Label_3234
_Label_3234:
! THEN...
	mov	2711,r13		! source line 2711
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3237 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3237  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2711,r13		! source line 2711
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3235:
! IF STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0IF",r10
!   _temp_3240 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3240 then goto _Label_3239		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3239
!	jmp	_Label_3238
_Label_3238:
! THEN...
	mov	2715,r13		! source line 2715
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3241 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3241  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2715,r13		! source line 2715
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2716,r13		! source line 2716
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3239:
! ASSIGNMENT STATEMENT...
	mov	2718,r13		! source line 2718
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
	mov	2721,r13		! source line 2721
	mov	"\0\0AS",r10
!   _temp_3244 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3243 = _temp_3244 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3242 = _temp_3243 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3242 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2736,r13		! source line 2736
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3246		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3246
!	jmp	_Label_3245
_Label_3245:
! THEN...
	mov	2737,r13		! source line 2737
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3247 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3247  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2737,r13		! source line 2737
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3248 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3248  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2738,r13		! source line 2738
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3249 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3249  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2739,r13		! source line 2739
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3246:
! SEND STATEMENT...
	mov	2742,r13		! source line 2742
	mov	"\0\0SE",r10
!   _temp_3250 = &_P_Kernel_frameManager
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
	mov	2748,r13		! source line 2748
	mov	"\0\0IF",r10
	mov	2748,r13		! source line 2748
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3254) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3253  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3253 == 707406378 then goto _Label_3252		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3252
!	jmp	_Label_3251
_Label_3251:
! THEN...
	mov	2749,r13		! source line 2749
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3255 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3255  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2749,r13		! source line 2749
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0SE",r10
!   _temp_3256 = &_P_Kernel_frameManager
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
_Label_3252:
! ASSIGNMENT STATEMENT...
	mov	2755,r13		! source line 2755
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
	mov	2756,r13		! source line 2756
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3261 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3262 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3261  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3257:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3262 then goto _Label_3260		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3260
_Label_3258:
	mov	2756,r13		! source line 2756
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0AS",r10
	mov	2757,r13		! source line 2757
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
	mov	2760,r13		! source line 2760
	mov	"\0\0IF",r10
	mov	2760,r13		! source line 2760
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3266) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3265  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3265 then goto _Label_3264 else goto _Label_3263
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3263
	jmp	_Label_3264
_Label_3263:
! THEN...
	mov	2761,r13		! source line 2761
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3267 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3267  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2761,r13		! source line 2761
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0SE",r10
!   _temp_3268 = &_P_Kernel_frameManager
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
	mov	2763,r13		! source line 2763
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3264:
! SEND STATEMENT...
	mov	2765,r13		! source line 2765
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
	mov	2766,r13		! source line 2766
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3259:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3257
! END FOR
_Label_3260:
! IF STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0IF",r10
	mov	2770,r13		! source line 2770
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3272) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3271  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3271 == 707406378 then goto _Label_3270		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3270
!	jmp	_Label_3269
_Label_3269:
! THEN...
	mov	2771,r13		! source line 2771
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3273 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3273  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2771,r13		! source line 2771
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0SE",r10
!   _temp_3274 = &_P_Kernel_frameManager
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
	mov	2773,r13		! source line 2773
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3270:
! FOR STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3279 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3280 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3279  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3275:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3280 then goto _Label_3278		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3278
_Label_3276:
	mov	2777,r13		! source line 2777
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0AS",r10
	mov	2778,r13		! source line 2778
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
	mov	2781,r13		! source line 2781
	mov	"\0\0IF",r10
	mov	2781,r13		! source line 2781
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3284) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3283  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3283 then goto _Label_3282 else goto _Label_3281
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3281
	jmp	_Label_3282
_Label_3281:
! THEN...
	mov	2782,r13		! source line 2782
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3285 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3285  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2782,r13		! source line 2782
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2783,r13		! source line 2783
	mov	"\0\0SE",r10
!   _temp_3286 = &_P_Kernel_frameManager
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
	mov	2784,r13		! source line 2784
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3282:
! ASSIGNMENT STATEMENT...
	mov	2786,r13		! source line 2786
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3277:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3275
! END FOR
_Label_3278:
! IF STATEMENT...
	mov	2790,r13		! source line 2790
	mov	"\0\0IF",r10
	mov	2790,r13		! source line 2790
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3290) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3289  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3289 == 707406378 then goto _Label_3288		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3288
!	jmp	_Label_3287
_Label_3287:
! THEN...
	mov	2791,r13		! source line 2791
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3291 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3291  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2791,r13		! source line 2791
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0SE",r10
!   _temp_3292 = &_P_Kernel_frameManager
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
	mov	2793,r13		! source line 2793
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3288:
! ASSIGNMENT STATEMENT...
	mov	2797,r13		! source line 2797
	mov	"\0\0AS",r10
	mov	2797,r13		! source line 2797
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
	mov	2801,r13		! source line 2801
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2804,r13		! source line 2804
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
	.word	_Label_3293
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3294
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3295
	.word	12
	.word	4
	.word	_Label_3296
	.word	-16
	.word	4
	.word	_Label_3297
	.word	-20
	.word	4
	.word	_Label_3298
	.word	-24
	.word	4
	.word	_Label_3299
	.word	-28
	.word	4
	.word	_Label_3300
	.word	-32
	.word	4
	.word	_Label_3301
	.word	-36
	.word	4
	.word	_Label_3302
	.word	-40
	.word	4
	.word	_Label_3303
	.word	-9
	.word	1
	.word	_Label_3304
	.word	-44
	.word	4
	.word	_Label_3305
	.word	-48
	.word	4
	.word	_Label_3306
	.word	-52
	.word	4
	.word	_Label_3307
	.word	-56
	.word	4
	.word	_Label_3308
	.word	-60
	.word	4
	.word	_Label_3309
	.word	-64
	.word	4
	.word	_Label_3310
	.word	-68
	.word	4
	.word	_Label_3311
	.word	-72
	.word	4
	.word	_Label_3312
	.word	-76
	.word	4
	.word	_Label_3313
	.word	-10
	.word	1
	.word	_Label_3314
	.word	-80
	.word	4
	.word	_Label_3315
	.word	-84
	.word	4
	.word	_Label_3316
	.word	-88
	.word	4
	.word	_Label_3317
	.word	-92
	.word	4
	.word	_Label_3318
	.word	-96
	.word	4
	.word	_Label_3319
	.word	-100
	.word	4
	.word	_Label_3320
	.word	-104
	.word	4
	.word	_Label_3321
	.word	-108
	.word	4
	.word	_Label_3322
	.word	-112
	.word	4
	.word	_Label_3323
	.word	-116
	.word	4
	.word	_Label_3324
	.word	-120
	.word	4
	.word	_Label_3325
	.word	-124
	.word	4
	.word	_Label_3326
	.word	-128
	.word	4
	.word	_Label_3327
	.word	-132
	.word	4
	.word	_Label_3328
	.word	-136
	.word	4
	.word	_Label_3329
	.word	-140
	.word	4
	.word	_Label_3330
	.word	-144
	.word	4
	.word	_Label_3331
	.word	-148
	.word	4
	.word	_Label_3332
	.word	-152
	.word	4
	.word	_Label_3333
	.word	-156
	.word	4
	.word	_Label_3334
	.word	-160
	.word	4
	.word	_Label_3335
	.word	-164
	.word	4
	.word	_Label_3336
	.word	-168
	.word	4
	.word	_Label_3337
	.word	-172
	.word	4
	.word	_Label_3338
	.word	-176
	.word	4
	.word	_Label_3339
	.word	-180
	.word	4
	.word	_Label_3340
	.word	-184
	.word	4
	.word	_Label_3341
	.word	-188
	.word	4
	.word	_Label_3342
	.word	-192
	.word	4
	.word	_Label_3343
	.word	-196
	.word	4
	.word	_Label_3344
	.word	-200
	.word	4
	.word	_Label_3345
	.word	-204
	.word	4
	.word	_Label_3346
	.word	-208
	.word	4
	.word	_Label_3347
	.word	-212
	.word	4
	.word	_Label_3348
	.word	-216
	.word	4
	.word	_Label_3349
	.word	-220
	.word	4
	.word	_Label_3350
	.word	-224
	.word	4
	.word	_Label_3351
	.word	-228
	.word	4
	.word	_Label_3352
	.word	-232
	.word	4
	.word	_Label_3353
	.word	-236
	.word	4
	.word	_Label_3354
	.word	-240
	.word	4
	.word	_Label_3355
	.word	-244
	.word	4
	.word	_Label_3356
	.word	-248
	.word	4
	.word	_Label_3357
	.word	-252
	.word	4
	.word	_Label_3358
	.word	-256
	.word	4
	.word	_Label_3359
	.word	-260
	.word	4
	.word	_Label_3360
	.word	-264
	.word	4
	.word	_Label_3361
	.word	-268
	.word	4
	.word	0
_Label_3293:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3294:
	.ascii	"Pself\0"
	.align
_Label_3295:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3296:
	.byte	'?'
	.ascii	"_temp_3292\0"
	.align
_Label_3297:
	.byte	'?'
	.ascii	"_temp_3291\0"
	.align
_Label_3298:
	.byte	'?'
	.ascii	"_temp_3290\0"
	.align
_Label_3299:
	.byte	'?'
	.ascii	"_temp_3289\0"
	.align
_Label_3300:
	.byte	'?'
	.ascii	"_temp_3286\0"
	.align
_Label_3301:
	.byte	'?'
	.ascii	"_temp_3285\0"
	.align
_Label_3302:
	.byte	'?'
	.ascii	"_temp_3284\0"
	.align
_Label_3303:
	.byte	'C'
	.ascii	"_temp_3283\0"
	.align
_Label_3304:
	.byte	'?'
	.ascii	"_temp_3280\0"
	.align
_Label_3305:
	.byte	'?'
	.ascii	"_temp_3279\0"
	.align
_Label_3306:
	.byte	'?'
	.ascii	"_temp_3274\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3273\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3272\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3271\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3268\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3267\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
_Label_3313:
	.byte	'C'
	.ascii	"_temp_3265\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3262\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3261\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3256\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3255\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3254\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3253\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3249\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3242\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3241\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3240\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3216\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3215\0"
	.align
_Label_3342:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3343:
	.byte	'?'
	.ascii	"_temp_3213\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3212\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3346:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3350:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3351:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3352:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3353:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3354:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3355:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3356:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3357:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3358:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3359:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3360:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3361:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
