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
! The following class and its methods are from this package
	.export	_P_Kernel_SerialDriver
	.export	_Method_P_Kernel_SerialDriver_1
	.export	_Method_P_Kernel_SerialDriver_2
	.export	_Method_P_Kernel_SerialDriver_3
	.export	_Method_P_Kernel_SerialDriver_4
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
	.export	_P_Kernel_serialDriver
	.export	_P_Kernel_fileManager
	.export	_P_Kernel_serialHasBeenInitialized
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
_P_Kernel_serialDriver:
	.skip	4308
_P_Kernel_fileManager:
	.skip	800
_P_Kernel_serialHasBeenInitialized:
	.skip	1
	.align
! String constants
_StringConst_209:
	.word	14			! length
	.ascii	"\' was ignored\n"
	.align
_StringConst_208:
	.word	42			! length
	.ascii	"\nSerial input buffer overrun - character \'"
	.align
_StringConst_207:
	.word	19			! length
	.ascii	"SerialHandlerThread"
	.align
_StringConst_206:
	.word	28			! length
	.ascii	"Initializing SerialDriver..."
	.align
_StringConst_205:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_204:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_203:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_202:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_201:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_200:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_199:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_198:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_197:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_196:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_195:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_194:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_193:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_192:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_191:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_190:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_189:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_188:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_187:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_186:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_185:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_184:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_183:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_182:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_181:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_180:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_179:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_178:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_177:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_176:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_175:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_174:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_173:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_172:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_171:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_170:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_169:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_168:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_167:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_166:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_165:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_164:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_163:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_162:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_161:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_160:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_159:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_158:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_157:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_156:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_155:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_154:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_153:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_152:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_151:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_150:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_149:
	.word	6			! length
	.ascii	"      "
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
	.word	9			! length
	.ascii	"         "
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
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_139:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_138:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_137:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_136:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_135:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_134:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_133:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_132:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_131:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_130:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_129:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_128:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_127:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_126:
	.word	38			! length
	.ascii	"This function should never be invoked!"
	.align
_StringConst_125:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_124:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_123:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_122:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_121:
	.word	1			! length
	.ascii	":"
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
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_117:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_116:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_115:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_114:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_113:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_112:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_111:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_110:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_109:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_108:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_107:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_106:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_105:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_104:
	.word	10			! length
	.ascii	"Threadpool"
	.align
_StringConst_103:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_102:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_101:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_100:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_99:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_98:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_97:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_96:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_95:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_94:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_93:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_92:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_91:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_90:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_89:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_88:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_87:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_86:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_85:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_84:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_83:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_82:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_81:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_80:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_79:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_78:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_77:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_76:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_75:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_74:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_73:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_72:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_71:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_70:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_69:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_68:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_67:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_66:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_65:
	.word	33			! length
	.ascii	"Failed to open file: TestProgram1"
	.align
_StringConst_64:
	.word	12			! length
	.ascii	"TestProgram5"
	.align
_StringConst_63:
	.word	9			! length
	.ascii	"myProgram"
	.align
_StringConst_62:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_61:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_60:
	.word	47			! length
	.ascii	"Invalid file descriptor [From Handle_Sys_CLose]"
	.align
_StringConst_59:
	.word	21			! length
	.ascii	"Invalid newCurrentPos"
	.align
_StringConst_58:
	.word	23			! length
	.ascii	"Invalid file descriptor"
	.align
_StringConst_57:
	.word	16			! length
	.ascii	"SynchRead failed"
	.align
_StringConst_56:
	.word	24			! length
	.ascii	"Error while reading file"
	.align
_StringConst_55:
	.word	24			! length
	.ascii	"Error while reading file"
	.align
_StringConst_54:
	.word	40			! length
	.ascii	"Invalid file descriptor as file not open"
	.align
_StringConst_53:
	.word	24			! length
	.ascii	"Error while reading file"
	.align
_StringConst_52:
	.word	19			! length
	.ascii	"Invalid sizeInBytes"
	.align
_StringConst_51:
	.word	23			! length
	.ascii	"Invalid file descriptor"
	.align
_StringConst_50:
	.word	16			! length
	.ascii	"SynchRead failed"
	.align
_StringConst_49:
	.word	24			! length
	.ascii	"Error while reading file"
	.align
_StringConst_48:
	.word	24			! length
	.ascii	"Error while reading file"
	.align
_StringConst_47:
	.word	40			! length
	.ascii	"Invalid file descriptor as file not open"
	.align
_StringConst_46:
	.word	24			! length
	.ascii	"Error while reading file"
	.align
_StringConst_45:
	.word	25			! length
	.ascii	"Invalid para: sizeInBytes"
	.align
_StringConst_44:
	.word	23			! length
	.ascii	"Invalid File Descriptor"
	.align
_StringConst_43:
	.word	14			! length
	.ascii	"no empty slots"
	.align
_StringConst_42:
	.word	48			! length
	.ascii	"The file name is too long or can\'t open the file"
	.align
_StringConst_41:
	.word	8			! length
	.ascii	"terminal"
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
	set	0xc7181456,r4		! myHashVal = -954723242
	cmp	r3,r4
	be	_Label_220
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
_Label_220:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_221
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_221
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_221
_Label_221:
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
_Label_4437:
	push	r0
	sub	r1,1,r1
	bne	_Label_4437
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_222 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_222  sizeInBytes=4
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
_Label_4438:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4438
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_226 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_227 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_226  sizeInBytes=4
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
!   _temp_228 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_229 = _temp_228 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_229 = 3  (sizeInBytes=4)
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
_Label_4439:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4439
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_231 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_232 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_231  sizeInBytes=4
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
!   _temp_233 = _function_219_IdleFunction
	set	_function_219_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_234 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_233  sizeInBytes=4
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
	.word	_Label_235
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_236
	.word	-12
	.word	4
	.word	_Label_237
	.word	-16
	.word	4
	.word	_Label_238
	.word	-20
	.word	4
	.word	_Label_239
	.word	-24
	.word	4
	.word	_Label_240
	.word	-28
	.word	4
	.word	_Label_241
	.word	-32
	.word	4
	.word	_Label_242
	.word	-36
	.word	4
	.word	_Label_243
	.word	-40
	.word	4
	.word	_Label_244
	.word	-44
	.word	4
	.word	_Label_245
	.word	-48
	.word	4
	.word	_Label_246
	.word	-52
	.word	4
	.word	_Label_247
	.word	-56
	.word	4
	.word	_Label_248
	.word	-60
	.word	4
	.word	0
_Label_235:
	.ascii	"InitializeScheduler\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_219_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_219_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_4440:
	push	r0
	sub	r1,1,r1
	bne	_Label_4440
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_249:
!	jmp	_Label_250
_Label_250:
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
!   _temp_254 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_252 else goto _Label_253
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_253
	jmp	_Label_252
_Label_252:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_255
_Label_253:
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
_Label_255:
! END WHILE...
	jmp	_Label_249
_Label_251:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_219_IdleFunction:
	.word	_sourceFileName
	.word	_Label_256
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_257
	.word	8
	.word	4
	.word	_Label_258
	.word	-12
	.word	4
	.word	_Label_259
	.word	-16
	.word	4
	.word	0
_Label_256:
	.ascii	"IdleFunction\0"
	.align
_Label_257:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_259:
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
_Label_4441:
	push	r0
	sub	r1,1,r1
	bne	_Label_4441
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
!   _temp_262 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_262 ) then goto _Label_261		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_261
!	jmp	_Label_260
_Label_260:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_264 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_264 [0 ] into _temp_265
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
!   _temp_263 = _temp_265		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_263  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_261:
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
!   _temp_266 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_266 = 3  (sizeInBytes=4)
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
_Label_267:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_271 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_270  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_270 then goto _Label_269 else goto _Label_268
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_268
	jmp	_Label_269
_Label_268:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_272 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_273 = &_P_Kernel_threadManager
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
	jmp	_Label_267
_Label_269:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_276 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_276 ) then goto _Label_275		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_275
!	jmp	_Label_274
_Label_274:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_278 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_278 [0 ] into _temp_279
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
!   _temp_277 = _temp_279		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_277  sizeInBytes=4
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
!   _temp_281 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_280 = *_temp_281  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_280) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_282 = _temp_280 + 32
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
_Label_275:
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
	.word	_Label_283
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_284
	.word	8
	.word	4
	.word	_Label_285
	.word	-16
	.word	4
	.word	_Label_286
	.word	-20
	.word	4
	.word	_Label_287
	.word	-24
	.word	4
	.word	_Label_288
	.word	-28
	.word	4
	.word	_Label_289
	.word	-32
	.word	4
	.word	_Label_290
	.word	-36
	.word	4
	.word	_Label_291
	.word	-40
	.word	4
	.word	_Label_292
	.word	-44
	.word	4
	.word	_Label_293
	.word	-48
	.word	4
	.word	_Label_294
	.word	-52
	.word	4
	.word	_Label_295
	.word	-9
	.word	1
	.word	_Label_296
	.word	-56
	.word	4
	.word	_Label_297
	.word	-60
	.word	4
	.word	_Label_298
	.word	-64
	.word	4
	.word	_Label_299
	.word	-68
	.word	4
	.word	_Label_300
	.word	-72
	.word	4
	.word	_Label_301
	.word	-76
	.word	4
	.word	_Label_302
	.word	-80
	.word	4
	.word	0
_Label_283:
	.ascii	"Run\0"
	.align
_Label_284:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_295:
	.byte	'C'
	.ascii	"_temp_270\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_301:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_302:
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
_Label_4442:
	push	r0
	sub	r1,1,r1
	bne	_Label_4442
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
!   _temp_303 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_303  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_304 = _function_218_ThreadPrintShort
	set	_function_218_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_305 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_304  sizeInBytes=4
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
	.word	_Label_306
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_307
	.word	-12
	.word	4
	.word	_Label_308
	.word	-16
	.word	4
	.word	_Label_309
	.word	-20
	.word	4
	.word	_Label_310
	.word	-24
	.word	4
	.word	0
_Label_306:
	.ascii	"PrintReadyList\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_310:
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
_Label_4443:
	push	r0
	sub	r1,1,r1
	bne	_Label_4443
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
!   _temp_311 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_311  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_313 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_312 = *_temp_313  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
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
!   _temp_314 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_314  sizeInBytes=4
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
	.word	_Label_315
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_316
	.word	-12
	.word	4
	.word	_Label_317
	.word	-16
	.word	4
	.word	_Label_318
	.word	-20
	.word	4
	.word	_Label_319
	.word	-24
	.word	4
	.word	_Label_320
	.word	-28
	.word	4
	.word	_Label_321
	.word	-32
	.word	4
	.word	0
_Label_315:
	.ascii	"ThreadStartMain\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_320:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_321:
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
_Label_4444:
	push	r0
	sub	r1,1,r1
	bne	_Label_4444
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
!   _temp_322 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_323 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
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
	.word	_Label_324
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_325
	.word	-12
	.word	4
	.word	_Label_326
	.word	-16
	.word	4
	.word	_Label_327
	.word	-20
	.word	4
	.word	0
_Label_324:
	.ascii	"ThreadFinish\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_327:
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
_Label_4445:
	push	r0
	sub	r1,1,r1
	bne	_Label_4445
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
!   _temp_328 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_330		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_330
!	jmp	_Label_329
_Label_329:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_331 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
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
!   _temp_333 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_332 = *_temp_333  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_330:
! CALL STATEMENT...
!   _temp_334 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
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
!   _temp_335 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_336 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_336  sizeInBytes=4
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
	.word	_Label_337
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_338
	.word	8
	.word	4
	.word	_Label_339
	.word	-12
	.word	4
	.word	_Label_340
	.word	-16
	.word	4
	.word	_Label_341
	.word	-20
	.word	4
	.word	_Label_342
	.word	-24
	.word	4
	.word	_Label_343
	.word	-28
	.word	4
	.word	_Label_344
	.word	-32
	.word	4
	.word	_Label_345
	.word	-36
	.word	4
	.word	_Label_346
	.word	-40
	.word	4
	.word	0
_Label_337:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_338:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_346:
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
_Label_4446:
	push	r0
	sub	r1,1,r1
	bne	_Label_4446
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
!   if newStatus != 1 then goto _Label_348		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_348
!	jmp	_Label_347
_Label_347:
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
	jmp	_Label_349
_Label_348:
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
_Label_349:
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
	.word	_Label_350
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_351
	.word	8
	.word	4
	.word	_Label_352
	.word	-12
	.word	4
	.word	0
_Label_350:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_351:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_352:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_218_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_218_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_4447:
	push	r0
	sub	r1,1,r1
	bne	_Label_4447
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
!   if t == 0 then goto _Label_356		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_356
!   _temp_355 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_357
_Label_356:
!   _temp_355 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_357:
!   if _temp_355 then goto _Label_354 else goto _Label_353
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_353
	jmp	_Label_354
_Label_353:
! THEN...
	mov	650,r13		! source line 650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_358 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
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
_Label_354:
! CALL STATEMENT...
!   _temp_359 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
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
!   _temp_361 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_360 = *_temp_361  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_362 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
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
!   _temp_371 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_370 = *_temp_371  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_365
	cmp	r1,2
	be	_Label_366
	cmp	r1,3
	be	_Label_367
	cmp	r1,4
	be	_Label_368
	cmp	r1,5
	be	_Label_369
	jmp	_Label_363
! CASE 1...
_Label_365:
! CALL STATEMENT...
!   _temp_372 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_364
! CASE 2...
_Label_366:
! CALL STATEMENT...
!   _temp_373 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_364
! CASE 3...
_Label_367:
! CALL STATEMENT...
!   _temp_374 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_364
! CASE 4...
_Label_368:
! CALL STATEMENT...
!   _temp_375 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0BR",r10
	jmp	_Label_364
! CASE 5...
_Label_369:
! CALL STATEMENT...
!   _temp_376 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0BR",r10
	jmp	_Label_364
! DEFAULT CASE...
_Label_363:
! CALL STATEMENT...
!   _temp_377 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
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
_Label_364:
! CALL STATEMENT...
!   _temp_378 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_378  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_379 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_379  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_380 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_380  sizeInBytes=4
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
_RoutineDescriptor__function_218_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_381
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_382
	.word	8
	.word	4
	.word	_Label_383
	.word	-16
	.word	4
	.word	_Label_384
	.word	-20
	.word	4
	.word	_Label_385
	.word	-24
	.word	4
	.word	_Label_386
	.word	-28
	.word	4
	.word	_Label_387
	.word	-32
	.word	4
	.word	_Label_388
	.word	-36
	.word	4
	.word	_Label_389
	.word	-40
	.word	4
	.word	_Label_390
	.word	-44
	.word	4
	.word	_Label_391
	.word	-48
	.word	4
	.word	_Label_392
	.word	-52
	.word	4
	.word	_Label_393
	.word	-56
	.word	4
	.word	_Label_394
	.word	-60
	.word	4
	.word	_Label_395
	.word	-64
	.word	4
	.word	_Label_396
	.word	-68
	.word	4
	.word	_Label_397
	.word	-72
	.word	4
	.word	_Label_398
	.word	-76
	.word	4
	.word	_Label_399
	.word	-9
	.word	1
	.word	_Label_400
	.word	-80
	.word	4
	.word	0
_Label_381:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_382:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_399:
	.byte	'C'
	.ascii	"_temp_355\0"
	.align
_Label_400:
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
_Label_4448:
	push	r0
	sub	r1,1,r1
	bne	_Label_4448
	mov	993,r13		! source line 993
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! pcb
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_401 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: pcb = *_temp_401  (sizeInBytes=4)
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
!   _temp_403 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_402 = *_temp_403  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_402) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_404 = _temp_402 + 28
	load	[r14+-100],r1
	add	r1,28,r1
	store	r1,[r14+-92]
!   Data Move: *_temp_404 = exitStatus  (sizeInBytes=4)
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
!   _temp_406 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_405 = *_temp_406  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_405) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_407 = _temp_405 + 24
	load	[r14+-88],r1
	add	r1,24,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_407 = 0  (sizeInBytes=4)
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
!   _temp_408 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: *_temp_408 = 0  (sizeInBytes=4)
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
!   _temp_409 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_409 = 0  (sizeInBytes=1)
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
!   _temp_414 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_415 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_414  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-112]
_Label_410:
!   Perform the FOR-LOOP termination test
!   if i > _temp_415 then goto _Label_413		
	load	[r14+-112],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_413
_Label_411:
	mov	1005,r13		! source line 1005
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_419 = pcb + 124
	load	[r14+-116],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_419 [i ] into _temp_420
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
!   Data Move: _temp_418 = *_temp_420  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_418) then goto _Label_417
	load	[r14+-60],r1
	cmp	r1,r0
	be	_Label_417
!	jmp	_Label_416
_Label_416:
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
!   _temp_422 = pcb + 124
	load	[r14+-116],r1
	add	r1,124,r1
	store	r1,[r14+-44]
!   Move address of _temp_422 [i ] into _temp_423
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
!   Data Move: _temp_421 = *_temp_423  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_424 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_421  sizeInBytes=4
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
!   _temp_425 = pcb + 124
	load	[r14+-116],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_425 [i ] into _temp_426
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
!   Data Move: *_temp_426 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-28],r2
	store	r1,[r2]
! END IF...
_Label_417:
!   Increment the FOR-LOOP index variable and jump back
_Label_412:
!   i = i + 1
	load	[r14+-112],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
	jmp	_Label_410
! END FOR
_Label_413:
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_428 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_427 = _temp_428		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_429 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_427  sizeInBytes=4
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
!   _temp_430 = &_P_Kernel_processManager
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
	.word	_Label_431
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_432
	.word	8
	.word	4
	.word	_Label_433
	.word	-12
	.word	4
	.word	_Label_434
	.word	-16
	.word	4
	.word	_Label_435
	.word	-20
	.word	4
	.word	_Label_436
	.word	-24
	.word	4
	.word	_Label_437
	.word	-28
	.word	4
	.word	_Label_438
	.word	-32
	.word	4
	.word	_Label_439
	.word	-36
	.word	4
	.word	_Label_440
	.word	-40
	.word	4
	.word	_Label_441
	.word	-44
	.word	4
	.word	_Label_442
	.word	-48
	.word	4
	.word	_Label_443
	.word	-52
	.word	4
	.word	_Label_444
	.word	-56
	.word	4
	.word	_Label_445
	.word	-60
	.word	4
	.word	_Label_446
	.word	-64
	.word	4
	.word	_Label_447
	.word	-68
	.word	4
	.word	_Label_448
	.word	-72
	.word	4
	.word	_Label_449
	.word	-76
	.word	4
	.word	_Label_450
	.word	-80
	.word	4
	.word	_Label_451
	.word	-84
	.word	4
	.word	_Label_452
	.word	-88
	.word	4
	.word	_Label_453
	.word	-92
	.word	4
	.word	_Label_454
	.word	-96
	.word	4
	.word	_Label_455
	.word	-100
	.word	4
	.word	_Label_456
	.word	-104
	.word	4
	.word	_Label_457
	.word	-108
	.word	4
	.word	_Label_458
	.word	-112
	.word	4
	.word	_Label_459
	.word	-116
	.word	4
	.word	0
_Label_431:
	.ascii	"ProcessFinish\0"
	.align
_Label_432:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_457:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_458:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_459:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_217_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_217_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_4449:
	push	r0
	sub	r1,1,r1
	bne	_Label_4449
	mov	1019,r13		! source line 1019
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_460 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_460  sizeInBytes=4
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
_RoutineDescriptor__function_217_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_461
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_462
	.word	8
	.word	4
	.word	_Label_463
	.word	-12
	.word	4
	.word	0
_Label_461:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_462:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_460\0"
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
_Label_4450:
	push	r0
	sub	r1,1,r1
	bne	_Label_4450
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
	.word	_Label_464
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_464:
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
_Label_4451:
	push	r0
	sub	r1,1,r1
	bne	_Label_4451
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
!   _temp_468 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_469 = _temp_468 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_467 = *_temp_469  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_467 == 0 then goto _Label_466		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_466
!	jmp	_Label_465
_Label_465:
! THEN...
	mov	1530,r13		! source line 1530
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0SE",r10
!   _temp_471 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_472 = _temp_471 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_470 = *_temp_472  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_470) then goto _runtimeErrorNullPointer
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
_Label_466:
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
	.word	_Label_473
	.word	0		! total size of parameters
	.word	28		! frame size = 28
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
	.word	0
_Label_473:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_467\0"
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
	mov	3,r1
_Label_4452:
	push	r0
	sub	r1,1,r1
	bne	_Label_4452
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
! IF STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0IF",r10
!   if _P_Kernel_serialHasBeenInitialized then goto _Label_480 else goto _Label_481
	set	_P_Kernel_serialHasBeenInitialized,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_481
	jmp	_Label_480
_Label_480:
! THEN...
	mov	1547,r13		! source line 1547
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1547,r13		! source line 1547
	mov	"\0\0SE",r10
!   _temp_482 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-16]
!   _temp_483 = _temp_482 + 124
	load	[r14+-16],r1
	add	r1,124,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_481:
! RETURN STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_484
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_485
	.word	-12
	.word	4
	.word	_Label_486
	.word	-16
	.word	4
	.word	0
_Label_484:
	.ascii	"SerialInterruptHandler\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_482\0"
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
_Label_4453:
	push	r0
	sub	r1,1,r1
	bne	_Label_4453
	mov	1552,r13		! source line 1552
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_487 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1559,r13		! source line 1559
	mov	"\0\0CA",r10
	call	_function_216_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1559,r13		! source line 1559
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
	.word	_Label_488
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_489
	.word	-12
	.word	4
	.word	0
_Label_488:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_487\0"
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
_Label_4454:
	push	r0
	sub	r1,1,r1
	bne	_Label_4454
	mov	1564,r13		! source line 1564
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1570,r13		! source line 1570
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_490 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_490  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1571,r13		! source line 1571
	mov	"\0\0CA",r10
	call	_function_216_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1571,r13		! source line 1571
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
	.word	_Label_491
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_492
	.word	-12
	.word	4
	.word	0
_Label_491:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_490\0"
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
_Label_4455:
	push	r0
	sub	r1,1,r1
	bne	_Label_4455
	mov	1576,r13		! source line 1576
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1582,r13		! source line 1582
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_493 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_493  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1583,r13		! source line 1583
	mov	"\0\0CA",r10
	call	_function_216_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1583,r13		! source line 1583
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
	.word	_Label_494
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_495
	.word	-12
	.word	4
	.word	0
_Label_494:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_493\0"
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
_Label_4456:
	push	r0
	sub	r1,1,r1
	bne	_Label_4456
	mov	1588,r13		! source line 1588
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1594,r13		! source line 1594
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_496 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_496  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1595,r13		! source line 1595
	mov	"\0\0CA",r10
	call	_function_216_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1595,r13		! source line 1595
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
	.word	_Label_497
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_498
	.word	-12
	.word	4
	.word	0
_Label_497:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_496\0"
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
_Label_4457:
	push	r0
	sub	r1,1,r1
	bne	_Label_4457
	mov	1600,r13		! source line 1600
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_499 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_499  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1607,r13		! source line 1607
	mov	"\0\0CA",r10
	call	_function_216_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1607,r13		! source line 1607
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
	.word	_Label_500
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_501
	.word	-12
	.word	4
	.word	0
_Label_500:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_499\0"
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
_Label_4458:
	push	r0
	sub	r1,1,r1
	bne	_Label_4458
	mov	1612,r13		! source line 1612
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1618,r13		! source line 1618
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_502 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_502  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1619,r13		! source line 1619
	mov	"\0\0CA",r10
	call	_function_216_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1619,r13		! source line 1619
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
	.word	_Label_503
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_504
	.word	-12
	.word	4
	.word	0
_Label_503:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_502\0"
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
_Label_4459:
	push	r0
	sub	r1,1,r1
	bne	_Label_4459
	mov	1624,r13		! source line 1624
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_505 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1631,r13		! source line 1631
	mov	"\0\0CA",r10
	call	_function_216_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1631,r13		! source line 1631
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
	.word	_Label_506
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_507
	.word	-12
	.word	4
	.word	0
_Label_506:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_216_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_216_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_4460:
	push	r0
	sub	r1,1,r1
	bne	_Label_4460
	mov	1636,r13		! source line 1636
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_508 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_508  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1641,r13		! source line 1641
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1642,r13		! source line 1642
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_509 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_509  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1643,r13		! source line 1643
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_513 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_512 = *_temp_513  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_512 == 0 then goto _Label_511		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_511
!	jmp	_Label_510
_Label_510:
! THEN...
	mov	1647,r13		! source line 1647
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1647,r13		! source line 1647
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_515 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_514 = *_temp_515  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_514) then goto _runtimeErrorNullPointer
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
	jmp	_Label_516
_Label_511:
! ELSE...
	mov	1649,r13		! source line 1649
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_517 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_517  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1649,r13		! source line 1649
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_516:
! SEND STATEMENT...
	mov	1651,r13		! source line 1651
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
	mov	1657,r13		! source line 1657
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_216_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_518
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_519
	.word	8
	.word	4
	.word	_Label_520
	.word	-12
	.word	4
	.word	_Label_521
	.word	-16
	.word	4
	.word	_Label_522
	.word	-20
	.word	4
	.word	_Label_523
	.word	-24
	.word	4
	.word	_Label_524
	.word	-28
	.word	4
	.word	_Label_525
	.word	-32
	.word	4
	.word	_Label_526
	.word	-36
	.word	4
	.word	0
_Label_518:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_519:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_508\0"
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
_Label_4461:
	push	r0
	sub	r1,1,r1
	bne	_Label_4461
	mov	1662,r13		! source line 1662
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1669,r13		! source line 1669
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1683,r13		! source line 1683
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_4462
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_527
_Label_4462:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_527
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_527
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_541,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_541:
	jmp	_Label_533	! 1:	
	jmp	_Label_540	! 2:	
	jmp	_Label_530	! 3:	
	jmp	_Label_529	! 4:	
	jmp	_Label_532	! 5:	
	jmp	_Label_531	! 6:	
	jmp	_Label_534	! 7:	
	jmp	_Label_535	! 8:	
	jmp	_Label_536	! 9:	
	jmp	_Label_537	! 10:	
	jmp	_Label_538	! 11:	
	jmp	_Label_539	! 12:	
! CASE 4...
_Label_529:
! RETURN STATEMENT...
	mov	1685,r13		! source line 1685
	mov	"\0\0RE",r10
!   Call the function
	mov	1685,r13		! source line 1685
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_542  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_542  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_530:
! CALL STATEMENT...
!   Call the function
	mov	1687,r13		! source line 1687
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_531:
! RETURN STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1690,r13		! source line 1690
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_543  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_543  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_532:
! RETURN STATEMENT...
	mov	1692,r13		! source line 1692
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1692,r13		! source line 1692
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_544  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_544  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_533:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1694,r13		! source line 1694
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_534:
! RETURN STATEMENT...
	mov	1697,r13		! source line 1697
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1697,r13		! source line 1697
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_545  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_545  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_535:
! RETURN STATEMENT...
	mov	1699,r13		! source line 1699
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1699,r13		! source line 1699
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_546  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_546  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_536:
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
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_547  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_547  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_537:
! RETURN STATEMENT...
	mov	1703,r13		! source line 1703
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
	mov	1703,r13		! source line 1703
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_548  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_548  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_538:
! RETURN STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1705,r13		! source line 1705
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_549  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_549  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_539:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1707,r13		! source line 1707
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
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
! CASE 2...
_Label_540:
! CALL STATEMENT...
!   Call the function
	mov	1710,r13		! source line 1710
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1711,r13		! source line 1711
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_527:
! CALL STATEMENT...
!   _temp_550 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_550  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1713,r13		! source line 1713
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1714,r13		! source line 1714
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1715,r13		! source line 1715
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_551 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_551  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1716,r13		! source line 1716
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_528:
! RETURN STATEMENT...
	mov	1718,r13		! source line 1718
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
	.word	_Label_552
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_553
	.word	8
	.word	4
	.word	_Label_554
	.word	12
	.word	4
	.word	_Label_555
	.word	16
	.word	4
	.word	_Label_556
	.word	20
	.word	4
	.word	_Label_557
	.word	24
	.word	4
	.word	_Label_558
	.word	-12
	.word	4
	.word	_Label_559
	.word	-16
	.word	4
	.word	_Label_560
	.word	-20
	.word	4
	.word	_Label_561
	.word	-24
	.word	4
	.word	_Label_562
	.word	-28
	.word	4
	.word	_Label_563
	.word	-32
	.word	4
	.word	_Label_564
	.word	-36
	.word	4
	.word	_Label_565
	.word	-40
	.word	4
	.word	_Label_566
	.word	-44
	.word	4
	.word	_Label_567
	.word	-48
	.word	4
	.word	0
_Label_552:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_553:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_554:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_555:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_556:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_557:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_542\0"
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
_Label_4463:
	push	r0
	sub	r1,1,r1
	bne	_Label_4463
	mov	1723,r13		! source line 1723
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1724,r13		! source line 1724
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1724,r13		! source line 1724
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
	.word	_Label_568
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_569
	.word	8
	.word	4
	.word	0
_Label_568:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_569:
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
_Label_4464:
	push	r0
	sub	r1,1,r1
	bne	_Label_4464
	mov	1729,r13		! source line 1729
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_570 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_570  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1730,r13		! source line 1730
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1730,r13		! source line 1730
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
	.word	_Label_571
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_572
	.word	-12
	.word	4
	.word	0
_Label_571:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_570\0"
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
_Label_4465:
	push	r0
	sub	r1,1,r1
	bne	_Label_4465
	mov	1735,r13		! source line 1735
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1736,r13		! source line 1736
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
	mov	1736,r13		! source line 1736
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
	.word	_Label_573
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_573:
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
_Label_4466:
	push	r0
	sub	r1,1,r1
	bne	_Label_4466
	mov	1741,r13		! source line 1741
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1748,r13		! source line 1748
	mov	"\0\0AS",r10
	mov	1748,r13		! source line 1748
	mov	"\0\0SE",r10
!   _temp_574 = &_P_Kernel_processManager
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
	mov	1749,r13		! source line 1749
	mov	"\0\0AS",r10
	mov	1749,r13		! source line 1749
	mov	"\0\0SE",r10
!   _temp_575 = &_P_Kernel_threadManager
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
	mov	1750,r13		! source line 1750
	mov	"\0\0AS",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_576 = childPCB + 24
	load	[r14+-268],r1
	add	r1,24,r1
	store	r1,[r14+-256]
!   Data Move: *_temp_576 = childThread  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r14+-256],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0AS",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_577 = childPCB + 16
	load	[r14+-268],r1
	add	r1,16,r1
	store	r1,[r14+-252]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_580 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-240]
!   Data Move: _temp_579 = *_temp_580  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   if intIsZero (_temp_579) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_581 = _temp_579 + 12
	load	[r14+-244],r1
	add	r1,12,r1
	store	r1,[r14+-236]
!   Data Move: _temp_578 = *_temp_581  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-248]
!   Data Move: *_temp_577 = _temp_578  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r14+-252],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_582 = childThread + 68
	load	[r14+-272],r1
	add	r1,68,r1
	store	r1,[r14+-232]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_584 = childThread + 88
	load	[r14+-272],r1
	add	r1,88,r1
	store	r1,[r14+-224]
!   Move address of _temp_584 [999 ] into _temp_585
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
!   _temp_583 = _temp_585		(4 bytes)
	load	[r14+-220],r1
	store	r1,[r14+-228]
!   Data Move: *_temp_582 = _temp_583  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r14+-232],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_586 = childThread + 4160
	load	[r14+-272],r1
	add	r1,4160,r1
	store	r1,[r14+-216]
!   Data Move: *_temp_586 = childPCB  (sizeInBytes=4)
	load	[r14+-268],r1
	load	[r14+-216],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1754,r13		! source line 1754
	mov	"\0\0AS",r10
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_587 = childThread + 76
	load	[r14+-272],r1
	add	r1,76,r1
	store	r1,[r14+-212]
!   Data Move: *_temp_587 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-212],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_589 = childThread + 4096
	load	[r14+-272],r1
	add	r1,4096,r1
	store	r1,[r14+-204]
!   Move address of _temp_589 [0 ] into _temp_590
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
!   _temp_588 = _temp_590		(4 bytes)
	load	[r14+-200],r1
	store	r1,[r14+-208]
!   Prepare Argument: offset=8  value=_temp_588  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Call the function
	mov	1755,r13		! source line 1755
	mov	"\0\0CE",r10
	call	SaveUserRegs
! FOR STATEMENT...
	mov	1756,r13		! source line 1756
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_595 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-196]
!   Calculate and save the FOR-LOOP ending value
!   _temp_596 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-192]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_595  (sizeInBytes=4)
	load	[r14+-196],r1
	store	r1,[r14+-280]
_Label_591:
!   Perform the FOR-LOOP termination test
!   if i > _temp_596 then goto _Label_594		
	load	[r14+-280],r1
	load	[r14+-192],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_594
_Label_592:
	mov	1756,r13		! source line 1756
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1757,r13		! source line 1757
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_601 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-180]
!   Data Move: _temp_600 = *_temp_601  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_600) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_602 = _temp_600 + 124
	load	[r14+-184],r1
	add	r1,124,r1
	store	r1,[r14+-176]
!   Move address of _temp_602 [i ] into _temp_603
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
!   Data Move: _temp_599 = *_temp_603  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_599) then goto _Label_598
	load	[r14+-188],r1
	cmp	r1,r0
	be	_Label_598
!	jmp	_Label_597
_Label_597:
! THEN...
	mov	1758,r13		! source line 1758
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1758,r13		! source line 1758
	mov	"\0\0AS",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = childPCB + 124
	load	[r14+-268],r1
	add	r1,124,r1
	store	r1,[r14+-168]
!   Move address of _temp_604 [i ] into _temp_605
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
!   _temp_608 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-152]
!   Data Move: _temp_607 = *_temp_608  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_607) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_609 = _temp_607 + 124
	load	[r14+-156],r1
	add	r1,124,r1
	store	r1,[r14+-148]
!   Move address of _temp_609 [i ] into _temp_610
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
!   Data Move: _temp_606 = *_temp_610  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   Data Move: *_temp_605 = _temp_606  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r14+-164],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1759,r13		! source line 1759
	mov	"\0\0AS",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_612 = childPCB + 124
	load	[r14+-268],r1
	add	r1,124,r1
	store	r1,[r14+-136]
!   Move address of _temp_612 [i ] into _temp_613
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
!   Data Move: _temp_611 = *_temp_613  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_611) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = _temp_611 + 24
	load	[r14+-140],r1
	add	r1,24,r1
	store	r1,[r14+-128]
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_618 = childPCB + 124
	load	[r14+-268],r1
	add	r1,124,r1
	store	r1,[r14+-112]
!   Move address of _temp_618 [i ] into _temp_619
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
!   Data Move: _temp_617 = *_temp_619  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_617) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_620 = _temp_617 + 24
	load	[r14+-116],r1
	add	r1,24,r1
	store	r1,[r14+-104]
!   Data Move: _temp_616 = *_temp_620  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_615 = _temp_616 + 1		(int)
	load	[r14+-120],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   Data Move: *_temp_614 = _temp_615  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r14+-128],r2
	store	r1,[r2]
! END IF...
_Label_598:
!   Increment the FOR-LOOP index variable and jump back
_Label_593:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_591
! END FOR
_Label_594:
! ASSIGNMENT STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_622 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_621 = *_temp_622  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_621) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_623 = _temp_621 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   _temp_624 = _temp_623 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Data Move: tmp = *_temp_624  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-276]
! IF STATEMENT...
	mov	1764,r13		! source line 1764
	mov	"\0\0IF",r10
!   if tmp <= 0 then goto _Label_626		(int)
	load	[r14+-276],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_626
!	jmp	_Label_625
_Label_625:
! THEN...
	mov	1765,r13		! source line 1765
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_628 = childPCB + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_627 = _temp_628		(4 bytes)
	load	[r14+-80],r1
	store	r1,[r14+-84]
!   _temp_629 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_627  sizeInBytes=4
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
	mov	1766,r13		! source line 1766
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_634 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_635 = tmp - 1		(int)
	load	[r14+-276],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_634  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-280]
_Label_630:
!   Perform the FOR-LOOP termination test
!   if i > _temp_635 then goto _Label_633		
	load	[r14+-280],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_633
_Label_631:
	mov	1766,r13		! source line 1766
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = childPCB + 32
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
!   Retrieve Result: targetName=_temp_636  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
	mov	1768,r13		! source line 1768
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_640 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_639 = *_temp_640  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_639) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_641 = _temp_639 + 32
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
!   Retrieve Result: targetName=_temp_638  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_636  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_638  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1767,r13		! source line 1767
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0IF",r10
	mov	1769,r13		! source line 1769
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_645 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_644 = *_temp_645  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_644) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_646 = _temp_644 + 32
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
!   if result==true then goto _Label_642 else goto _Label_643
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_643
	jmp	_Label_642
_Label_642:
! THEN...
	mov	1770,r13		! source line 1770
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_647 = childPCB + 32
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
	jmp	_Label_648
_Label_643:
! ELSE...
	mov	1772,r13		! source line 1772
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0SE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_649 = childPCB + 32
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
_Label_648:
!   Increment the FOR-LOOP index variable and jump back
_Label_632:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_630
! END FOR
_Label_633:
! END IF...
_Label_626:
! ASSIGNMENT STATEMENT...
	mov	1776,r13		! source line 1776
	mov	"\0\0AS",r10
!   Call the function
	mov	1776,r13		! source line 1776
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-284]
! SEND STATEMENT...
	mov	1777,r13		! source line 1777
	mov	"\0\0SE",r10
!   _temp_650 = _function_215_ResumeChildAfterFork
	set	_function_215_ResumeChildAfterFork,r1
	store	r1,[r14+-20]
!   if intIsZero (childThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_650  sizeInBytes=4
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
	mov	1778,r13		! source line 1778
	mov	"\0\0RE",r10
!   if intIsZero (childPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_652 = childPCB + 12
	load	[r14+-268],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_651 = *_temp_652  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_651  (sizeInBytes=4)
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
	.word	_Label_653
	.word	0		! total size of parameters
	.word	292		! frame size = 292
	.word	_Label_654
	.word	-12
	.word	4
	.word	_Label_655
	.word	-16
	.word	4
	.word	_Label_656
	.word	-20
	.word	4
	.word	_Label_657
	.word	-24
	.word	4
	.word	_Label_658
	.word	-28
	.word	4
	.word	_Label_659
	.word	-32
	.word	4
	.word	_Label_660
	.word	-36
	.word	4
	.word	_Label_661
	.word	-40
	.word	4
	.word	_Label_662
	.word	-44
	.word	4
	.word	_Label_663
	.word	-48
	.word	4
	.word	_Label_664
	.word	-52
	.word	4
	.word	_Label_665
	.word	-56
	.word	4
	.word	_Label_666
	.word	-60
	.word	4
	.word	_Label_667
	.word	-64
	.word	4
	.word	_Label_668
	.word	-68
	.word	4
	.word	_Label_669
	.word	-72
	.word	4
	.word	_Label_670
	.word	-76
	.word	4
	.word	_Label_671
	.word	-80
	.word	4
	.word	_Label_672
	.word	-84
	.word	4
	.word	_Label_673
	.word	-88
	.word	4
	.word	_Label_674
	.word	-92
	.word	4
	.word	_Label_675
	.word	-96
	.word	4
	.word	_Label_676
	.word	-100
	.word	4
	.word	_Label_677
	.word	-104
	.word	4
	.word	_Label_678
	.word	-108
	.word	4
	.word	_Label_679
	.word	-112
	.word	4
	.word	_Label_680
	.word	-116
	.word	4
	.word	_Label_681
	.word	-120
	.word	4
	.word	_Label_682
	.word	-124
	.word	4
	.word	_Label_683
	.word	-128
	.word	4
	.word	_Label_684
	.word	-132
	.word	4
	.word	_Label_685
	.word	-136
	.word	4
	.word	_Label_686
	.word	-140
	.word	4
	.word	_Label_687
	.word	-144
	.word	4
	.word	_Label_688
	.word	-148
	.word	4
	.word	_Label_689
	.word	-152
	.word	4
	.word	_Label_690
	.word	-156
	.word	4
	.word	_Label_691
	.word	-160
	.word	4
	.word	_Label_692
	.word	-164
	.word	4
	.word	_Label_693
	.word	-168
	.word	4
	.word	_Label_694
	.word	-172
	.word	4
	.word	_Label_695
	.word	-176
	.word	4
	.word	_Label_696
	.word	-180
	.word	4
	.word	_Label_697
	.word	-184
	.word	4
	.word	_Label_698
	.word	-188
	.word	4
	.word	_Label_699
	.word	-192
	.word	4
	.word	_Label_700
	.word	-196
	.word	4
	.word	_Label_701
	.word	-200
	.word	4
	.word	_Label_702
	.word	-204
	.word	4
	.word	_Label_703
	.word	-208
	.word	4
	.word	_Label_704
	.word	-212
	.word	4
	.word	_Label_705
	.word	-216
	.word	4
	.word	_Label_706
	.word	-220
	.word	4
	.word	_Label_707
	.word	-224
	.word	4
	.word	_Label_708
	.word	-228
	.word	4
	.word	_Label_709
	.word	-232
	.word	4
	.word	_Label_710
	.word	-236
	.word	4
	.word	_Label_711
	.word	-240
	.word	4
	.word	_Label_712
	.word	-244
	.word	4
	.word	_Label_713
	.word	-248
	.word	4
	.word	_Label_714
	.word	-252
	.word	4
	.word	_Label_715
	.word	-256
	.word	4
	.word	_Label_716
	.word	-260
	.word	4
	.word	_Label_717
	.word	-264
	.word	4
	.word	_Label_718
	.word	-268
	.word	4
	.word	_Label_719
	.word	-272
	.word	4
	.word	_Label_720
	.word	-276
	.word	4
	.word	_Label_721
	.word	-280
	.word	4
	.word	_Label_722
	.word	-284
	.word	4
	.word	_Label_723
	.word	-288
	.word	4
	.word	0
_Label_653:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_718:
	.byte	'P'
	.ascii	"childPCB\0"
	.align
_Label_719:
	.byte	'P'
	.ascii	"childThread\0"
	.align
_Label_720:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_721:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_722:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_723:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_215_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_215_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_4467:
	push	r0
	sub	r1,1,r1
	bne	_Label_4467
	mov	1781,r13		! source line 1781
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1786,r13		! source line 1786
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_725 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_724 = *_temp_725  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_724) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_726 = _temp_724 + 32
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
!   _temp_728 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_728 [0 ] into _temp_729
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
!   _temp_727 = _temp_729		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1788,r13		! source line 1788
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_730 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_730 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1791,r13		! source line 1791
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_731 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_731 [14 ] into _temp_732
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
!   Data Move: initUserStackTop = *_temp_732  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1792,r13		! source line 1792
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_733 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_733 [999 ] into _temp_734
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
!   initSystemStackTop = _temp_734		(4 bytes)
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
	mov	1793,r13		! source line 1793
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1793,r13		! source line 1793
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_215_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_735
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_736
	.word	8
	.word	4
	.word	_Label_737
	.word	-12
	.word	4
	.word	_Label_738
	.word	-16
	.word	4
	.word	_Label_739
	.word	-20
	.word	4
	.word	_Label_740
	.word	-24
	.word	4
	.word	_Label_741
	.word	-28
	.word	4
	.word	_Label_742
	.word	-32
	.word	4
	.word	_Label_743
	.word	-36
	.word	4
	.word	_Label_744
	.word	-40
	.word	4
	.word	_Label_745
	.word	-44
	.word	4
	.word	_Label_746
	.word	-48
	.word	4
	.word	_Label_747
	.word	-52
	.word	4
	.word	_Label_748
	.word	-56
	.word	4
	.word	_Label_749
	.word	-60
	.word	4
	.word	_Label_750
	.word	-64
	.word	4
	.word	0
_Label_735:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_736:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_748:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_749:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_750:
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
_Label_4468:
	push	r0
	sub	r1,1,r1
	bne	_Label_4468
	mov	1798,r13		! source line 1798
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1802,r13		! source line 1802
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_755 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_756 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_755  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_751:
!   Perform the FOR-LOOP termination test
!   if i > _temp_756 then goto _Label_754		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_754
_Label_752:
	mov	1802,r13		! source line 1802
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0IF",r10
!   _temp_762 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_763 = _temp_762 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_763 [i ] into _temp_764
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
!   _temp_765 = _temp_764 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_761 = *_temp_765  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_761 != processID then goto _Label_758		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_758
!	jmp	_Label_760
_Label_760:
!   _temp_767 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_768 = _temp_767 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_768 [i ] into _temp_769
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
!   _temp_770 = _temp_769 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_766 = *_temp_770  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_773 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_772 = *_temp_773  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_772) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_774 = _temp_772 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_771 = *_temp_774  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_766 != _temp_771 then goto _Label_758		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_758
!	jmp	_Label_759
_Label_759:
!   _temp_776 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_777 = _temp_776 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_777 [i ] into _temp_778
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
!   _temp_779 = _temp_778 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_775 = *_temp_779  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_775 == 3 then goto _Label_758		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_758
!	jmp	_Label_757
_Label_757:
! THEN...
	mov	1804,r13		! source line 1804
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1804,r13		! source line 1804
	mov	"\0\0AS",r10
	mov	1804,r13		! source line 1804
	mov	"\0\0SE",r10
!   _temp_781 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_782 = _temp_781 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_782 [i ] into _temp_783
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
!   _temp_780 = _temp_783		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_784 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_780  sizeInBytes=4
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
	mov	1805,r13		! source line 1805
	mov	"\0\0RE",r10
!   ReturnResult: childExitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_758:
!   Increment the FOR-LOOP index variable and jump back
_Label_753:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_751
! END FOR
_Label_754:
! RETURN STATEMENT...
	mov	1809,r13		! source line 1809
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
	.word	_Label_785
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_786
	.word	8
	.word	4
	.word	_Label_787
	.word	-12
	.word	4
	.word	_Label_788
	.word	-16
	.word	4
	.word	_Label_789
	.word	-20
	.word	4
	.word	_Label_790
	.word	-24
	.word	4
	.word	_Label_791
	.word	-28
	.word	4
	.word	_Label_792
	.word	-32
	.word	4
	.word	_Label_793
	.word	-36
	.word	4
	.word	_Label_794
	.word	-40
	.word	4
	.word	_Label_795
	.word	-44
	.word	4
	.word	_Label_796
	.word	-48
	.word	4
	.word	_Label_797
	.word	-52
	.word	4
	.word	_Label_798
	.word	-56
	.word	4
	.word	_Label_799
	.word	-60
	.word	4
	.word	_Label_800
	.word	-64
	.word	4
	.word	_Label_801
	.word	-68
	.word	4
	.word	_Label_802
	.word	-72
	.word	4
	.word	_Label_803
	.word	-76
	.word	4
	.word	_Label_804
	.word	-80
	.word	4
	.word	_Label_805
	.word	-84
	.word	4
	.word	_Label_806
	.word	-88
	.word	4
	.word	_Label_807
	.word	-92
	.word	4
	.word	_Label_808
	.word	-96
	.word	4
	.word	_Label_809
	.word	-100
	.word	4
	.word	_Label_810
	.word	-104
	.word	4
	.word	_Label_811
	.word	-108
	.word	4
	.word	_Label_812
	.word	-112
	.word	4
	.word	_Label_813
	.word	-116
	.word	4
	.word	_Label_814
	.word	-120
	.word	4
	.word	0
_Label_785:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_786:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_813:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_814:
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
_Label_4469:
	push	r0
	sub	r1,1,r1
	bne	_Label_4469
	mov	1814,r13		! source line 1814
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-264,r4
	mov	23,r3
_Label_4470:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4470
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1823,r13		! source line 1823
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-148]
! ASSIGNMENT STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0AS",r10
	mov	1824,r13		! source line 1824
	mov	"\0\0SE",r10
!   _temp_816 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-124]
!   _temp_817 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-120]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_819 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_818 = *_temp_819  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_818) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_820 = _temp_818 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_816  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_817  sizeInBytes=4
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
	mov	1825,r13		! source line 1825
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_822		(int)
	load	[r14+-268],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_822
!	jmp	_Label_821
_Label_821:
! THEN...
	mov	1826,r13		! source line 1826
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_823 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_823  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1826,r13		! source line 1826
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1827,r13		! source line 1827
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_822:
! ASSIGNMENT STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0AS",r10
	mov	1830,r13		! source line 1830
	mov	"\0\0SE",r10
!   _temp_824 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-100]
!   _temp_825 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_824  sizeInBytes=4
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
	mov	1831,r13		! source line 1831
	mov	"\0\0IF",r10
!   if fp == 0 then goto _Label_827		(int)
	load	[r14+-132],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_827
!	jmp	_Label_826
_Label_826:
! THEN...
	mov	1832,r13		! source line 1832
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0SE",r10
!   _temp_828 = &newAddrSpace
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
	mov	1833,r13		! source line 1833
	mov	"\0\0AS",r10
	mov	1833,r13		! source line 1833
	mov	"\0\0SE",r10
!   _temp_829 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-88]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_829  sizeInBytes=4
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
	mov	1834,r13		! source line 1834
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_831		(int)
	load	[r14+-136],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_831
!	jmp	_Label_830
_Label_830:
! THEN...
	mov	1835,r13		! source line 1835
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_832 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_832  sizeInBytes=4
	load	[r14+-84],r1
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
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_831:
! SEND STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0SE",r10
!   _temp_833 = &_P_Kernel_fileManager
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
	mov	1840,r13		! source line 1840
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_836 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_835 = *_temp_836  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_835) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_837 = _temp_835 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   _temp_834 = _temp_837		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-76]
!   _temp_838 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_834  sizeInBytes=4
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
	mov	1841,r13		! source line 1841
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
	store	r1,[r14+-52]
!   Data Move: _temp_839 = *_temp_840  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_839) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_841 = _temp_839 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_841 = newAddrSpace  (sizeInBytes=92)
	add	r14,-264,r5
	load	[r14+-48],r4
	mov	23,r3
_Label_4471:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4471
! ASSIGNMENT STATEMENT...
	mov	1842,r13		! source line 1842
	mov	"\0\0AS",r10
!   _temp_843 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-40]
!   _temp_844 = _temp_843 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_842 = *_temp_844  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initUserStackTop = _temp_842 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! ASSIGNMENT STATEMENT...
	mov	1843,r13		! source line 1843
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_845 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_845 [999 ] into _temp_846
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
!   initSystemStackTop = _temp_846		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-144]
! SEND STATEMENT...
	mov	1844,r13		! source line 1844
	mov	"\0\0SE",r10
!   _temp_847 = &newAddrSpace
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
	mov	1845,r13		! source line 1845
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_848 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_848 = 1  (sizeInBytes=1)
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
	mov	1846,r13		! source line 1846
	mov	"\0\0CE",r10
	call	BecomeUserThread
	jmp	_Label_849
_Label_827:
! ELSE...
	mov	1848,r13		! source line 1848
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_850 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_850  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1848,r13		! source line 1848
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_851 = &kernelFileName
	add	r14,-172,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_851  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1849,r13		! source line 1849
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1850,r13		! source line 1850
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_849:
! RETURN STATEMENT...
	mov	1854,r13		! source line 1854
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
	.word	_Label_852
	.word	4		! total size of parameters
	.word	276		! frame size = 276
	.word	_Label_853
	.word	8
	.word	4
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
	.word	_Label_859
	.word	-32
	.word	4
	.word	_Label_860
	.word	-36
	.word	4
	.word	_Label_861
	.word	-40
	.word	4
	.word	_Label_862
	.word	-44
	.word	4
	.word	_Label_863
	.word	-48
	.word	4
	.word	_Label_864
	.word	-52
	.word	4
	.word	_Label_865
	.word	-56
	.word	4
	.word	_Label_866
	.word	-60
	.word	4
	.word	_Label_867
	.word	-64
	.word	4
	.word	_Label_868
	.word	-68
	.word	4
	.word	_Label_869
	.word	-72
	.word	4
	.word	_Label_870
	.word	-76
	.word	4
	.word	_Label_871
	.word	-80
	.word	4
	.word	_Label_872
	.word	-84
	.word	4
	.word	_Label_873
	.word	-88
	.word	4
	.word	_Label_874
	.word	-92
	.word	4
	.word	_Label_875
	.word	-96
	.word	4
	.word	_Label_876
	.word	-100
	.word	4
	.word	_Label_877
	.word	-104
	.word	4
	.word	_Label_878
	.word	-108
	.word	4
	.word	_Label_879
	.word	-112
	.word	4
	.word	_Label_880
	.word	-116
	.word	4
	.word	_Label_881
	.word	-120
	.word	4
	.word	_Label_882
	.word	-124
	.word	4
	.word	_Label_883
	.word	-128
	.word	4
	.word	_Label_884
	.word	-132
	.word	4
	.word	_Label_885
	.word	-136
	.word	4
	.word	_Label_886
	.word	-140
	.word	4
	.word	_Label_887
	.word	-144
	.word	4
	.word	_Label_888
	.word	-148
	.word	4
	.word	_Label_889
	.word	-172
	.word	24
	.word	_Label_890
	.word	-264
	.word	92
	.word	_Label_891
	.word	-268
	.word	4
	.word	0
_Label_852:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_853:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_884:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_885:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_886:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_887:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_888:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_889:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_890:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_891:
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
_Label_4472:
	push	r0
	sub	r1,1,r1
	bne	_Label_4472
	mov	1859,r13		! source line 1859
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0AS",r10
	mov	1862,r13		! source line 1862
	mov	"\0\0SE",r10
!   _temp_892 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-40]
!   _temp_893 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_895 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_894 = *_temp_895  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_894) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_896 = _temp_894 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_892  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_893  sizeInBytes=4
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
!   _temp_897 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_897  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1863,r13		! source line 1863
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1864,r13		! source line 1864
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_898 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_898  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1865,r13		! source line 1865
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_899 = &kernelFileName
	add	r14,-64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_899  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1866,r13		! source line 1866
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1867,r13		! source line 1867
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1868,r13		! source line 1868
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
	.word	_Label_900
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_901
	.word	8
	.word	4
	.word	_Label_902
	.word	-12
	.word	4
	.word	_Label_903
	.word	-16
	.word	4
	.word	_Label_904
	.word	-20
	.word	4
	.word	_Label_905
	.word	-24
	.word	4
	.word	_Label_906
	.word	-28
	.word	4
	.word	_Label_907
	.word	-32
	.word	4
	.word	_Label_908
	.word	-36
	.word	4
	.word	_Label_909
	.word	-40
	.word	4
	.word	_Label_910
	.word	-64
	.word	24
	.word	_Label_911
	.word	-68
	.word	4
	.word	0
_Label_900:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_901:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_910:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_911:
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
	mov	48,r1
_Label_4473:
	push	r0
	sub	r1,1,r1
	bne	_Label_4473
	mov	1873,r13		! source line 1873
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! terminal
!   terminal = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-184]
! ASSIGNMENT STATEMENT...
	mov	1881,r13		! source line 1881
	mov	"\0\0AS",r10
	mov	1881,r13		! source line 1881
	mov	"\0\0SE",r10
!   _temp_912 = &kernelFileName
	add	r14,-164,r1
	store	r1,[r14+-140]
!   _temp_913 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-136]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_915 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-128]
!   Data Move: _temp_914 = *_temp_915  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_914) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_916 = _temp_914 + 32
	load	[r14+-132],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=12  value=_temp_912  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_913  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-124],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-168]
! IF STATEMENT...
	mov	1882,r13		! source line 1882
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_918		(int)
	load	[r14+-168],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_918
!	jmp	_Label_917
_Label_917:
! THEN...
	mov	1883,r13		! source line 1883
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_919 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_919  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	1883,r13		! source line 1883
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1884,r13		! source line 1884
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,196,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_918:
! FOR STATEMENT...
	mov	1888,r13		! source line 1888
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_924 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-116]
!   Calculate and save the FOR-LOOP ending value
!   _temp_925 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-112]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_924  (sizeInBytes=4)
	load	[r14+-116],r1
	store	r1,[r14+-172]
_Label_920:
!   Perform the FOR-LOOP termination test
!   if i > _temp_925 then goto _Label_923		
	load	[r14+-172],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_923
_Label_921:
	mov	1888,r13		! source line 1888
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_930 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_929 = *_temp_930  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_929) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_931 = _temp_929 + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-96]
!   Move address of _temp_931 [i ] into _temp_932
!     make sure index expr is >= 0
	load	[r14+-172],r2
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
!   Data Move: _temp_928 = *_temp_932  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_928) then goto _Label_926
	load	[r14+-108],r1
	cmp	r1,r0
	be	_Label_926
	jmp	_Label_927
_Label_926:
! THEN...
	mov	1890,r13		! source line 1890
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1890,r13		! source line 1890
	mov	"\0\0BR",r10
	jmp	_Label_923
	jmp	_Label_933
_Label_927:
! ELSE...
	mov	1891,r13		! source line 1891
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1891,r13		! source line 1891
	mov	"\0\0IF",r10
!   if i != 9 then goto _Label_935		(int)
	load	[r14+-172],r1
	mov	9,r2
	cmp	r1,r2
	bne	_Label_935
!	jmp	_Label_934
_Label_934:
! THEN...
	mov	1892,r13		! source line 1892
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_936 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_936  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	1892,r13		! source line 1892
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1893,r13		! source line 1893
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1894,r13		! source line 1894
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,196,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_935:
! END IF...
_Label_933:
!   Increment the FOR-LOOP index variable and jump back
_Label_922:
!   i = i + 1
	load	[r14+-172],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
	jmp	_Label_920
! END FOR
_Label_923:
! FOR STATEMENT...
	mov	1898,r13		! source line 1898
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_941 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_942 = 7		(4 bytes)
	mov	7,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_941  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-176]
_Label_937:
!   Perform the FOR-LOOP termination test
!   if j > _temp_942 then goto _Label_940		
	load	[r14+-176],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_940
_Label_938:
	mov	1898,r13		! source line 1898
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1899,r13		! source line 1899
	mov	"\0\0IF",r10
!   if intIsZero (terminal) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of terminal [j ] into _temp_946
!     make sure index expr is >= 0
	load	[r14+-176],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-76]
!   Data Move: _temp_945 = *_temp_946  (sizeInBytes=1)
	load	[r14+-76],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   _temp_948 = &kernelFileName
	add	r14,-164,r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_948) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_948 [j ] into _temp_949
!     make sure index expr is >= 0
	load	[r14+-176],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-68]
!   Data Move: _temp_947 = *_temp_949  (sizeInBytes=1)
	load	[r14+-68],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_950 = _temp_945 XOR _temp_947		(bool)
	loadb	[r14+-11],r1
	loadb	[r14+-10],r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_950 then goto _Label_944 else goto _Label_943
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_943
	jmp	_Label_944
_Label_943:
! THEN...
	mov	1900,r13		! source line 1900
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	1900,r13		! source line 1900
	mov	"\0\0IF",r10
!   if j != 7 then goto _Label_952		(int)
	load	[r14+-176],r1
	mov	7,r2
	cmp	r1,r2
	bne	_Label_952
!	jmp	_Label_951
_Label_951:
! THEN...
	mov	1901,r13		! source line 1901
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1901,r13		! source line 1901
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_954 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_953 = *_temp_954  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_953) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_955 = _temp_953 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_955 [i ] into _temp_956
!     make sure index expr is >= 0
	load	[r14+-172],r2
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
!   _temp_958 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   _temp_959 = _temp_958 + 772
	load	[r14+-44],r1
	add	r1,772,r1
	store	r1,[r14+-40]
!   _temp_957 = _temp_959		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Data Move: *_temp_956 = _temp_957  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r14+-52],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-172],r1
	store	r1,[r14+8]
	add	r15,196,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_952:
	jmp	_Label_960
_Label_944:
! ELSE...
	mov	1904,r13		! source line 1904
	mov	"\0\0EL",r10
! BREAK STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0BR",r10
	jmp	_Label_940
! END IF...
_Label_960:
!   Increment the FOR-LOOP index variable and jump back
_Label_939:
!   j = j + 1
	load	[r14+-176],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
	jmp	_Label_937
! END FOR
_Label_940:
! ASSIGNMENT STATEMENT...
	mov	1908,r13		! source line 1908
	mov	"\0\0AS",r10
	mov	1908,r13		! source line 1908
	mov	"\0\0SE",r10
!   _temp_961 = &kernelFileName
	add	r14,-164,r1
	store	r1,[r14+-36]
!   _temp_962 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_961  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=fp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! IF STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0IF",r10
!   if intIsZero (fp) then goto _Label_963
	load	[r14+-180],r1
	cmp	r1,r0
	be	_Label_963
	jmp	_Label_964
_Label_963:
! THEN...
	mov	1910,r13		! source line 1910
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1910,r13		! source line 1910
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,196,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_964:
! ASSIGNMENT STATEMENT...
	mov	1913,r13		! source line 1913
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_966 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_965 = *_temp_966  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_965) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_967 = _temp_965 + 124
	load	[r14+-28],r1
	add	r1,124,r1
	store	r1,[r14+-20]
!   Move address of _temp_967 [i ] into _temp_968
!     make sure index expr is >= 0
	load	[r14+-172],r2
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
!   Data Move: *_temp_968 = fp  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-16],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-172],r1
	store	r1,[r14+8]
	add	r15,196,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_969
	.word	4		! total size of parameters
	.word	192		! frame size = 192
	.word	_Label_970
	.word	8
	.word	4
	.word	_Label_971
	.word	-16
	.word	4
	.word	_Label_972
	.word	-20
	.word	4
	.word	_Label_973
	.word	-24
	.word	4
	.word	_Label_974
	.word	-28
	.word	4
	.word	_Label_975
	.word	-32
	.word	4
	.word	_Label_976
	.word	-36
	.word	4
	.word	_Label_977
	.word	-40
	.word	4
	.word	_Label_978
	.word	-44
	.word	4
	.word	_Label_979
	.word	-48
	.word	4
	.word	_Label_980
	.word	-52
	.word	4
	.word	_Label_981
	.word	-56
	.word	4
	.word	_Label_982
	.word	-60
	.word	4
	.word	_Label_983
	.word	-64
	.word	4
	.word	_Label_984
	.word	-9
	.word	1
	.word	_Label_985
	.word	-68
	.word	4
	.word	_Label_986
	.word	-72
	.word	4
	.word	_Label_987
	.word	-10
	.word	1
	.word	_Label_988
	.word	-76
	.word	4
	.word	_Label_989
	.word	-11
	.word	1
	.word	_Label_990
	.word	-80
	.word	4
	.word	_Label_991
	.word	-84
	.word	4
	.word	_Label_992
	.word	-88
	.word	4
	.word	_Label_993
	.word	-92
	.word	4
	.word	_Label_994
	.word	-96
	.word	4
	.word	_Label_995
	.word	-100
	.word	4
	.word	_Label_996
	.word	-104
	.word	4
	.word	_Label_997
	.word	-108
	.word	4
	.word	_Label_998
	.word	-112
	.word	4
	.word	_Label_999
	.word	-116
	.word	4
	.word	_Label_1000
	.word	-120
	.word	4
	.word	_Label_1001
	.word	-124
	.word	4
	.word	_Label_1002
	.word	-128
	.word	4
	.word	_Label_1003
	.word	-132
	.word	4
	.word	_Label_1004
	.word	-136
	.word	4
	.word	_Label_1005
	.word	-140
	.word	4
	.word	_Label_1006
	.word	-164
	.word	24
	.word	_Label_1007
	.word	-168
	.word	4
	.word	_Label_1008
	.word	-172
	.word	4
	.word	_Label_1009
	.word	-176
	.word	4
	.word	_Label_1010
	.word	-180
	.word	4
	.word	_Label_1011
	.word	-184
	.word	4
	.word	0
_Label_969:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_970:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_984:
	.byte	'C'
	.ascii	"_temp_950\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_987:
	.byte	'C'
	.ascii	"_temp_947\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_989:
	.byte	'C'
	.ascii	"_temp_945\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_1006:
	.byte	'A'
	.ascii	"kernelFileName\0"
	.align
_Label_1007:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_1008:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1009:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_1010:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_1011:
	.byte	'P'
	.ascii	"terminal\0"
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
	mov	136,r1
_Label_4474:
	push	r0
	sub	r1,1,r1
	bne	_Label_4474
	mov	1920,r13		! source line 1920
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1934,r13		! source line 1934
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1015		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1015
	jmp	_Label_1012
_Label_1015:
!   if fileDesc <= 9 then goto _Label_1014		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1014
	jmp	_Label_1012
_Label_1014:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1018 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-492]
!   Data Move: _temp_1017 = *_temp_1018  (sizeInBytes=4)
	load	[r14+-492],r1
	load	[r1],r1
	store	r1,[r14+-496]
!   if intIsZero (_temp_1017) then goto _runtimeErrorNullPointer
	load	[r14+-496],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1019 = _temp_1017 + 124
	load	[r14+-496],r1
	add	r1,124,r1
	store	r1,[r14+-488]
!   Move address of _temp_1019 [fileDesc ] into _temp_1020
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-488],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-484]
!   Data Move: _temp_1016 = *_temp_1020  (sizeInBytes=4)
	load	[r14+-484],r1
	load	[r1],r1
	store	r1,[r14+-500]
!   if intIsZero (_temp_1016) then goto _Label_1012
	load	[r14+-500],r1
	cmp	r1,r0
	be	_Label_1012
	jmp	_Label_1013
_Label_1012:
! THEN...
	mov	1935,r13		! source line 1935
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1021 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-480]
!   Prepare Argument: offset=8  value=_temp_1021  sizeInBytes=4
	load	[r14+-480],r1
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
! RETURN STATEMENT...
	mov	1937,r13		! source line 1937
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1013:
! IF STATEMENT...
	mov	1939,r13		! source line 1939
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1023		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1023
!	jmp	_Label_1022
_Label_1022:
! THEN...
	mov	1940,r13		! source line 1940
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1024 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-476]
!   Prepare Argument: offset=8  value=_temp_1024  sizeInBytes=4
	load	[r14+-476],r1
	store	r1,[r15+0]
!   Call the function
	mov	1940,r13		! source line 1940
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1941,r13		! source line 1941
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1942,r13		! source line 1942
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1023:
! IF STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1030 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-460]
!   Data Move: _temp_1029 = *_temp_1030  (sizeInBytes=4)
	load	[r14+-460],r1
	load	[r1],r1
	store	r1,[r14+-464]
!   if intIsZero (_temp_1029) then goto _runtimeErrorNullPointer
	load	[r14+-464],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1031 = _temp_1029 + 124
	load	[r14+-464],r1
	add	r1,124,r1
	store	r1,[r14+-456]
!   Move address of _temp_1031 [fileDesc ] into _temp_1032
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-456],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-452]
!   Data Move: _temp_1028 = *_temp_1032  (sizeInBytes=4)
	load	[r14+-452],r1
	load	[r1],r1
	store	r1,[r14+-468]
!   if intIsZero (_temp_1028) then goto _runtimeErrorNullPointer
	load	[r14+-468],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1033 = _temp_1028 + 12
	load	[r14+-468],r1
	add	r1,12,r1
	store	r1,[r14+-448]
!   Data Move: _temp_1027 = *_temp_1033  (sizeInBytes=4)
	load	[r14+-448],r1
	load	[r1],r1
	store	r1,[r14+-472]
!   if _temp_1027 != 2 then goto _Label_1026		(int)
	load	[r14+-472],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1026
!	jmp	_Label_1025
_Label_1025:
! THEN...
	mov	1947,r13		! source line 1947
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-504]
! ASSIGNMENT STATEMENT...
	mov	1948,r13		! source line 1948
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-504],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-508]
! ASSIGNMENT STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-504],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-512]
! ASSIGNMENT STATEMENT...
	mov	1950,r13		! source line 1950
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-524]
! WHILE STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0WH",r10
_Label_1034:
!	jmp	_Label_1035
_Label_1035:
	mov	1951,r13		! source line 1951
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1954,r13		! source line 1954
	mov	"\0\0IF",r10
!   if virtAddr >= 0 then goto _Label_1041		(int)
	load	[r14+-504],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1041
	jmp	_Label_1037
_Label_1041:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1045 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-432]
!   Data Move: _temp_1044 = *_temp_1045  (sizeInBytes=4)
	load	[r14+-432],r1
	load	[r1],r1
	store	r1,[r14+-436]
!   if intIsZero (_temp_1044) then goto _runtimeErrorNullPointer
	load	[r14+-436],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1046 = _temp_1044 + 32
	load	[r14+-436],r1
	add	r1,32,r1
	store	r1,[r14+-428]
!   _temp_1047 = _temp_1046 + 4
	load	[r14+-428],r1
	add	r1,4,r1
	store	r1,[r14+-424]
!   Data Move: _temp_1043 = *_temp_1047  (sizeInBytes=4)
	load	[r14+-424],r1
	load	[r1],r1
	store	r1,[r14+-440]
!   _temp_1042 = _temp_1043 - 1		(int)
	load	[r14+-440],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
!   if virtPage <= _temp_1042 then goto _Label_1040		(int)
	load	[r14+-508],r1
	load	[r14+-444],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1040
	jmp	_Label_1037
_Label_1040:
	mov	1954,r13		! source line 1954
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1050 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-416]
!   Data Move: _temp_1049 = *_temp_1050  (sizeInBytes=4)
	load	[r14+-416],r1
	load	[r1],r1
	store	r1,[r14+-420]
!   if intIsZero (_temp_1049) then goto _runtimeErrorNullPointer
	load	[r14+-420],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1051 = _temp_1049 + 32
	load	[r14+-420],r1
	add	r1,32,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-508],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1048  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   if _temp_1048 then goto _Label_1039 else goto _Label_1037
	loadb	[r14+-16],r1
	cmp	r1,0
	be	_Label_1037
	jmp	_Label_1039
_Label_1039:
	mov	1954,r13		! source line 1954
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1054 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-404]
!   Data Move: _temp_1053 = *_temp_1054  (sizeInBytes=4)
	load	[r14+-404],r1
	load	[r1],r1
	store	r1,[r14+-408]
!   if intIsZero (_temp_1053) then goto _runtimeErrorNullPointer
	load	[r14+-408],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1055 = _temp_1053 + 32
	load	[r14+-408],r1
	add	r1,32,r1
	store	r1,[r14+-400]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-508],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1052  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-15]
!   if _temp_1052 then goto _Label_1038 else goto _Label_1037
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1037
	jmp	_Label_1038
_Label_1037:
! THEN...
	mov	1955,r13		! source line 1955
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1056 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-396]
!   Prepare Argument: offset=8  value=_temp_1056  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+0]
!   Call the function
	mov	1955,r13		! source line 1955
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1038:
! SEND STATEMENT...
	mov	1960,r13		! source line 1960
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1058 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-388]
!   Data Move: _temp_1057 = *_temp_1058  (sizeInBytes=4)
	load	[r14+-388],r1
	load	[r1],r1
	store	r1,[r14+-392]
!   if intIsZero (_temp_1057) then goto _runtimeErrorNullPointer
	load	[r14+-392],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1059 = _temp_1057 + 32
	load	[r14+-392],r1
	add	r1,32,r1
	store	r1,[r14+-384]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-508],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-384],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	1961,r13		! source line 1961
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
	store	r1,[r14+-376]
!   Data Move: _temp_1060 = *_temp_1061  (sizeInBytes=4)
	load	[r14+-376],r1
	load	[r1],r1
	store	r1,[r14+-380]
!   if intIsZero (_temp_1060) then goto _runtimeErrorNullPointer
	load	[r14+-380],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1062 = _temp_1060 + 32
	load	[r14+-380],r1
	add	r1,32,r1
	store	r1,[r14+-372]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-508],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-372],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1962,r13		! source line 1962
	mov	"\0\0AS",r10
	mov	1962,r13		! source line 1962
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
	store	r1,[r14+-360]
!   Data Move: _temp_1064 = *_temp_1065  (sizeInBytes=4)
	load	[r14+-360],r1
	load	[r1],r1
	store	r1,[r14+-364]
!   if intIsZero (_temp_1064) then goto _runtimeErrorNullPointer
	load	[r14+-364],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1066 = _temp_1064 + 32
	load	[r14+-364],r1
	add	r1,32,r1
	store	r1,[r14+-356]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-508],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-356],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1063  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-368]
!   destAddr = _temp_1063 + offset		(int)
	load	[r14+-368],r1
	load	[r14+-512],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-528]
! ASSIGNMENT STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-512],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-516]
! WHILE STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0WH",r10
_Label_1067:
!   if chunkSize <= 0 then goto _Label_1069		(int)
	load	[r14+-516],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1069
!	jmp	_Label_1070
_Label_1070:
!   if sizeInBytes <= 0 then goto _Label_1069		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1069
!	jmp	_Label_1068
_Label_1068:
	mov	1964,r13		! source line 1964
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0AS",r10
	mov	1965,r13		! source line 1965
	mov	"\0\0SE",r10
!   _temp_1071 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-352]
!   Send message GetChar
	load	[r14+-352],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=inChar  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-18]
! IF STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0IF",r10
!   _temp_1074 = inChar XOR 13		(bool)
	loadb	[r14+-18],r1
	mov	13,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-14]
!   if _temp_1074 then goto _Label_1073 else goto _Label_1072
	loadb	[r14+-14],r1
	cmp	r1,0
	be	_Label_1072
	jmp	_Label_1073
_Label_1072:
! THEN...
	mov	1967,r13		! source line 1967
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0AS",r10
!   inChar = 10		(1 byte)
	mov	10,r1
	storeb	r1,[r14+-18]
! END IF...
_Label_1073:
! IF STATEMENT...
	mov	1969,r13		! source line 1969
	mov	"\0\0IF",r10
!   _temp_1077 = charToInt (inChar)
	loadb	[r14+-18],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-348]
!   if _temp_1077 != 4 then goto _Label_1076		(int)
	load	[r14+-348],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1076
!	jmp	_Label_1075
_Label_1075:
! THEN...
	mov	1970,r13		! source line 1970
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1970,r13		! source line 1970
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-524],r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1076:
! ASSIGNMENT STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-528],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *destAddr = inChar  (sizeInBytes=1)
	loadb	[r14+-18],r1
	load	[r14+-528],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-524],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-524]
! IF STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0IF",r10
!   _temp_1080 = inChar XOR 10		(bool)
	loadb	[r14+-18],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1080 then goto _Label_1079 else goto _Label_1078
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1078
	jmp	_Label_1079
_Label_1078:
! THEN...
	mov	1975,r13		! source line 1975
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-524],r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1079:
! ASSIGNMENT STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0AS",r10
!   sizeInBytes = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0AS",r10
!   chunkSize = chunkSize - 1		(int)
	load	[r14+-516],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-516]
! ASSIGNMENT STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-528],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-528]
! END WHILE...
	jmp	_Label_1067
_Label_1069:
! ASSIGNMENT STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-508],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-508]
! ASSIGNMENT STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-512]
! IF STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0IF",r10
!   if intIsZero (sizeInBytes) then goto _Label_1081
	load	[r14+16],r1
	cmp	r1,r0
	be	_Label_1081
	jmp	_Label_1082
_Label_1081:
! THEN...
	mov	1987,r13		! source line 1987
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-524],r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1082:
! END WHILE...
	jmp	_Label_1034
_Label_1036:
! END IF...
_Label_1026:
! IF STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1088 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-332]
!   Data Move: _temp_1087 = *_temp_1088  (sizeInBytes=4)
	load	[r14+-332],r1
	load	[r1],r1
	store	r1,[r14+-336]
!   if intIsZero (_temp_1087) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1089 = _temp_1087 + 124
	load	[r14+-336],r1
	add	r1,124,r1
	store	r1,[r14+-328]
!   Move address of _temp_1089 [fileDesc ] into _temp_1090
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-328],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-324]
!   Data Move: _temp_1086 = *_temp_1090  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r1],r1
	store	r1,[r14+-340]
!   if intIsZero (_temp_1086) then goto _runtimeErrorNullPointer
	load	[r14+-340],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1091 = _temp_1086 + 20
	load	[r14+-340],r1
	add	r1,20,r1
	store	r1,[r14+-320]
!   Data Move: _temp_1085 = *_temp_1091  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r1],r1
	store	r1,[r14+-344]
!   if intIsZero (_temp_1085) then goto _Label_1083
	load	[r14+-344],r1
	cmp	r1,r0
	be	_Label_1083
	jmp	_Label_1084
_Label_1083:
! THEN...
	mov	1993,r13		! source line 1993
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1092 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-316]
!   Prepare Argument: offset=8  value=_temp_1092  sizeInBytes=4
	load	[r14+-316],r1
	store	r1,[r15+0]
!   Call the function
	mov	1993,r13		! source line 1993
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1994,r13		! source line 1994
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1084:
! ASSIGNMENT STATEMENT...
	mov	1998,r13		! source line 1998
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1096 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-300]
!   Data Move: _temp_1095 = *_temp_1096  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   if intIsZero (_temp_1095) then goto _runtimeErrorNullPointer
	load	[r14+-304],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1097 = _temp_1095 + 124
	load	[r14+-304],r1
	add	r1,124,r1
	store	r1,[r14+-296]
!   Move address of _temp_1097 [fileDesc ] into _temp_1098
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-296],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-292]
!   Data Move: _temp_1094 = *_temp_1098  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-308]
!   if intIsZero (_temp_1094) then goto _runtimeErrorNullPointer
	load	[r14+-308],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1099 = _temp_1094 + 20
	load	[r14+-308],r1
	add	r1,20,r1
	store	r1,[r14+-288]
!   Data Move: _temp_1093 = *_temp_1099  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-312]
!   if intIsZero (_temp_1093) then goto _runtimeErrorNullPointer
	load	[r14+-312],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1100 = _temp_1093 + 24
	load	[r14+-312],r1
	add	r1,24,r1
	store	r1,[r14+-284]
!   Data Move: sizeOfFile = *_temp_1100  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r1],r1
	store	r1,[r14+-532]
! ASSIGNMENT STATEMENT...
	mov	1999,r13		! source line 1999
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-504]
! ASSIGNMENT STATEMENT...
	mov	2000,r13		! source line 2000
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-504],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-508]
! ASSIGNMENT STATEMENT...
	mov	2001,r13		! source line 2001
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-504],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-512]
! ASSIGNMENT STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-524]
! ASSIGNMENT STATEMENT...
	mov	2003,r13		! source line 2003
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1103 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-272]
!   Data Move: _temp_1102 = *_temp_1103  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r1],r1
	store	r1,[r14+-276]
!   if intIsZero (_temp_1102) then goto _runtimeErrorNullPointer
	load	[r14+-276],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1104 = _temp_1102 + 124
	load	[r14+-276],r1
	add	r1,124,r1
	store	r1,[r14+-268]
!   Move address of _temp_1104 [fileDesc ] into _temp_1105
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-268],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-264]
!   Data Move: _temp_1101 = *_temp_1105  (sizeInBytes=4)
	load	[r14+-264],r1
	load	[r1],r1
	store	r1,[r14+-280]
!   if intIsZero (_temp_1101) then goto _runtimeErrorNullPointer
	load	[r14+-280],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1106 = _temp_1101 + 16
	load	[r14+-280],r1
	add	r1,16,r1
	store	r1,[r14+-260]
!   Data Move: nextPosInFile = *_temp_1106  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r1],r1
	store	r1,[r14+-520]
! WHILE STATEMENT...
	mov	2005,r13		! source line 2005
	mov	"\0\0WH",r10
_Label_1107:
!	jmp	_Label_1108
_Label_1108:
	mov	2005,r13		! source line 2005
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-512],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-516]
! IF STATEMENT...
	mov	2008,r13		! source line 2008
	mov	"\0\0IF",r10
!   _temp_1112 = nextPosInFile + chunkSize		(int)
	load	[r14+-520],r1
	load	[r14+-516],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
!   if _temp_1112 <= sizeOfFile then goto _Label_1111		(int)
	load	[r14+-256],r1
	load	[r14+-532],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1111
!	jmp	_Label_1110
_Label_1110:
! THEN...
	mov	2009,r13		! source line 2009
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2009,r13		! source line 2009
	mov	"\0\0AS",r10
!   chunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-532],r1
	load	[r14+-520],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-516]
! END IF...
_Label_1111:
! IF STATEMENT...
	mov	2011,r13		! source line 2011
	mov	"\0\0IF",r10
!   _temp_1115 = copiedSoFar + chunkSize		(int)
	load	[r14+-524],r1
	load	[r14+-516],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
!   if _temp_1115 <= sizeInBytes then goto _Label_1114		(int)
	load	[r14+-252],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1114
!	jmp	_Label_1113
_Label_1113:
! THEN...
	mov	2012,r13		! source line 2012
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-524],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-516]
! END IF...
_Label_1114:
! IF STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1117		(int)
	load	[r14+-516],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1117
!	jmp	_Label_1116
_Label_1116:
! THEN...
	mov	2015,r13		! source line 2015
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2015,r13		! source line 2015
	mov	"\0\0BR",r10
	jmp	_Label_1109
! END IF...
_Label_1117:
! IF STATEMENT...
	mov	2019,r13		! source line 2019
	mov	"\0\0IF",r10
!   if virtAddr >= 0 then goto _Label_1122		(int)
	load	[r14+-504],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1122
	jmp	_Label_1118
_Label_1122:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1126 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-236]
!   Data Move: _temp_1125 = *_temp_1126  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   if intIsZero (_temp_1125) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1127 = _temp_1125 + 32
	load	[r14+-240],r1
	add	r1,32,r1
	store	r1,[r14+-232]
!   _temp_1128 = _temp_1127 + 4
	load	[r14+-232],r1
	add	r1,4,r1
	store	r1,[r14+-228]
!   Data Move: _temp_1124 = *_temp_1128  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   _temp_1123 = _temp_1124 - 1		(int)
	load	[r14+-244],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
!   if virtPage <= _temp_1123 then goto _Label_1121		(int)
	load	[r14+-508],r1
	load	[r14+-248],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1121
	jmp	_Label_1118
_Label_1121:
	mov	2019,r13		! source line 2019
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1131 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-220]
!   Data Move: _temp_1130 = *_temp_1131  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_1130) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1132 = _temp_1130 + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-508],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-216],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1129  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_1129 then goto _Label_1120 else goto _Label_1118
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1118
	jmp	_Label_1120
_Label_1120:
	mov	2019,r13		! source line 2019
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1135 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-208]
!   Data Move: _temp_1134 = *_temp_1135  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   if intIsZero (_temp_1134) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1136 = _temp_1134 + 32
	load	[r14+-212],r1
	add	r1,32,r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-508],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1133  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1133 then goto _Label_1119 else goto _Label_1118
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1118
	jmp	_Label_1119
_Label_1118:
! THEN...
	mov	2020,r13		! source line 2020
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1137 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_1137  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2020,r13		! source line 2020
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1119:
! ASSIGNMENT STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-520],r1
	load	[r14+-516],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-520]
! ASSIGNMENT STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-524],r1
	load	[r14+-516],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-524]
! ASSIGNMENT STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-508],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-508]
! ASSIGNMENT STATEMENT...
	mov	2027,r13		! source line 2027
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-512]
! IF STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1139		(int)
	load	[r14+-524],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1139
!	jmp	_Label_1138
_Label_1138:
! THEN...
	mov	2030,r13		! source line 2030
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0BR",r10
	jmp	_Label_1109
! END IF...
_Label_1139:
! END WHILE...
	jmp	_Label_1107
_Label_1109:
! ASSIGNMENT STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-504]
! ASSIGNMENT STATEMENT...
	mov	2035,r13		! source line 2035
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-504],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-508]
! ASSIGNMENT STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-504],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-512]
! ASSIGNMENT STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-524]
! ASSIGNMENT STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1142 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1141 = *_temp_1142  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1141) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1143 = _temp_1141 + 124
	load	[r14+-192],r1
	add	r1,124,r1
	store	r1,[r14+-184]
!   Move address of _temp_1143 [fileDesc ] into _temp_1144
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1140 = *_temp_1144  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_1140) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1145 = _temp_1140 + 16
	load	[r14+-196],r1
	add	r1,16,r1
	store	r1,[r14+-176]
!   Data Move: nextPosInFile = *_temp_1145  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-520]
! WHILE STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0WH",r10
_Label_1146:
!	jmp	_Label_1147
_Label_1147:
	mov	2039,r13		! source line 2039
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-512],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-516]
! IF STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0IF",r10
!   _temp_1151 = nextPosInFile + chunkSize		(int)
	load	[r14+-520],r1
	load	[r14+-516],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if _temp_1151 <= sizeOfFile then goto _Label_1150		(int)
	load	[r14+-172],r1
	load	[r14+-532],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1150
!	jmp	_Label_1149
_Label_1149:
! THEN...
	mov	2043,r13		! source line 2043
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0AS",r10
!   chunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-532],r1
	load	[r14+-520],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-516]
! END IF...
_Label_1150:
! IF STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0IF",r10
!   _temp_1154 = copiedSoFar + chunkSize		(int)
	load	[r14+-524],r1
	load	[r14+-516],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
!   if _temp_1154 <= sizeInBytes then goto _Label_1153		(int)
	load	[r14+-168],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1153
!	jmp	_Label_1152
_Label_1152:
! THEN...
	mov	2046,r13		! source line 2046
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-524],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-516]
! END IF...
_Label_1153:
! IF STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1156		(int)
	load	[r14+-516],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1156
!	jmp	_Label_1155
_Label_1155:
! THEN...
	mov	2049,r13		! source line 2049
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0BR",r10
	jmp	_Label_1148
! END IF...
_Label_1156:
! IF STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0IF",r10
!   if virtAddr >= 0 then goto _Label_1161		(int)
	load	[r14+-504],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1161
	jmp	_Label_1157
_Label_1161:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1165 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-152]
!   Data Move: _temp_1164 = *_temp_1165  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_1164) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1166 = _temp_1164 + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-148]
!   _temp_1167 = _temp_1166 + 4
	load	[r14+-148],r1
	add	r1,4,r1
	store	r1,[r14+-144]
!   Data Move: _temp_1163 = *_temp_1167  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   _temp_1162 = _temp_1163 - 1		(int)
	load	[r14+-160],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
!   if virtPage <= _temp_1162 then goto _Label_1160		(int)
	load	[r14+-508],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1160
	jmp	_Label_1157
_Label_1160:
	mov	2053,r13		! source line 2053
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1170 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1169 = *_temp_1170  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1169) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1171 = _temp_1169 + 32
	load	[r14+-140],r1
	add	r1,32,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-508],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1168  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1168 then goto _Label_1159 else goto _Label_1157
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1157
	jmp	_Label_1159
_Label_1159:
	mov	2053,r13		! source line 2053
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1174 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-124]
!   Data Move: _temp_1173 = *_temp_1174  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_1173) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1175 = _temp_1173 + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-508],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1172  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1172 then goto _Label_1158 else goto _Label_1157
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1157
	jmp	_Label_1158
_Label_1157:
! THEN...
	mov	2054,r13		! source line 2054
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1176 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1176  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2054,r13		! source line 2054
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1158:
! SEND STATEMENT...
	mov	2059,r13		! source line 2059
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1178 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1177 = *_temp_1178  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1177) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1179 = _temp_1177 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-508],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1181 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1180 = *_temp_1181  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1180) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1182 = _temp_1180 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-508],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0AS",r10
	mov	2061,r13		! source line 2061
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1185 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1184 = *_temp_1185  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1184) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1186 = _temp_1184 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-508],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1183  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
!   destAddr = _temp_1183 + offset		(int)
	load	[r14+-88],r1
	load	[r14+-512],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-528]
! ASSIGNMENT STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0AS",r10
	mov	2062,r13		! source line 2062
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1189 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1188 = *_temp_1189  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1188) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1190 = _temp_1188 + 124
	load	[r14+-68],r1
	add	r1,124,r1
	store	r1,[r14+-60]
!   Move address of _temp_1190 [fileDesc ] into _temp_1191
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: _temp_1187 = *_temp_1191  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   _temp_1192 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1187  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-528],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-520],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=chunkSize  sizeInBytes=4
	load	[r14+-516],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=readStat  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-17]
! IF STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0IF",r10
!   if readStat then goto _Label_1194 else goto _Label_1193
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_1193
	jmp	_Label_1194
_Label_1193:
! THEN...
	mov	2064,r13		! source line 2064
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1195 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1195  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2064,r13		! source line 2064
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1194:
! ASSIGNMENT STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-520],r1
	load	[r14+-516],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-520]
! ASSIGNMENT STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-524],r1
	load	[r14+-516],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-524]
! ASSIGNMENT STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-508],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-508]
! ASSIGNMENT STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-512]
! IF STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1197		(int)
	load	[r14+-524],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1197
!	jmp	_Label_1196
_Label_1196:
! THEN...
	mov	2075,r13		! source line 2075
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0BR",r10
	jmp	_Label_1148
! END IF...
_Label_1197:
! END WHILE...
	jmp	_Label_1146
_Label_1148:
! ASSIGNMENT STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1200 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1199 = *_temp_1200  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1199) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1201 = _temp_1199 + 124
	load	[r14+-40],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_1201 [fileDesc ] into _temp_1202
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
!   Data Move: _temp_1198 = *_temp_1202  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1198) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1203 = _temp_1198 + 16
	load	[r14+-44],r1
	add	r1,16,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1203 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-520],r1
	load	[r14+-24],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-524],r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1204
	.word	12		! total size of parameters
	.word	544		! frame size = 544
	.word	_Label_1205
	.word	8
	.word	4
	.word	_Label_1206
	.word	12
	.word	4
	.word	_Label_1207
	.word	16
	.word	4
	.word	_Label_1208
	.word	-24
	.word	4
	.word	_Label_1209
	.word	-28
	.word	4
	.word	_Label_1210
	.word	-32
	.word	4
	.word	_Label_1211
	.word	-36
	.word	4
	.word	_Label_1212
	.word	-40
	.word	4
	.word	_Label_1213
	.word	-44
	.word	4
	.word	_Label_1214
	.word	-48
	.word	4
	.word	_Label_1215
	.word	-52
	.word	4
	.word	_Label_1216
	.word	-56
	.word	4
	.word	_Label_1217
	.word	-60
	.word	4
	.word	_Label_1218
	.word	-64
	.word	4
	.word	_Label_1219
	.word	-68
	.word	4
	.word	_Label_1220
	.word	-72
	.word	4
	.word	_Label_1221
	.word	-76
	.word	4
	.word	_Label_1222
	.word	-80
	.word	4
	.word	_Label_1223
	.word	-84
	.word	4
	.word	_Label_1224
	.word	-88
	.word	4
	.word	_Label_1225
	.word	-92
	.word	4
	.word	_Label_1226
	.word	-96
	.word	4
	.word	_Label_1227
	.word	-100
	.word	4
	.word	_Label_1228
	.word	-104
	.word	4
	.word	_Label_1229
	.word	-108
	.word	4
	.word	_Label_1230
	.word	-112
	.word	4
	.word	_Label_1231
	.word	-116
	.word	4
	.word	_Label_1232
	.word	-120
	.word	4
	.word	_Label_1233
	.word	-124
	.word	4
	.word	_Label_1234
	.word	-128
	.word	4
	.word	_Label_1235
	.word	-9
	.word	1
	.word	_Label_1236
	.word	-132
	.word	4
	.word	_Label_1237
	.word	-136
	.word	4
	.word	_Label_1238
	.word	-140
	.word	4
	.word	_Label_1239
	.word	-10
	.word	1
	.word	_Label_1240
	.word	-144
	.word	4
	.word	_Label_1241
	.word	-148
	.word	4
	.word	_Label_1242
	.word	-152
	.word	4
	.word	_Label_1243
	.word	-156
	.word	4
	.word	_Label_1244
	.word	-160
	.word	4
	.word	_Label_1245
	.word	-164
	.word	4
	.word	_Label_1246
	.word	-168
	.word	4
	.word	_Label_1247
	.word	-172
	.word	4
	.word	_Label_1248
	.word	-176
	.word	4
	.word	_Label_1249
	.word	-180
	.word	4
	.word	_Label_1250
	.word	-184
	.word	4
	.word	_Label_1251
	.word	-188
	.word	4
	.word	_Label_1252
	.word	-192
	.word	4
	.word	_Label_1253
	.word	-196
	.word	4
	.word	_Label_1254
	.word	-200
	.word	4
	.word	_Label_1255
	.word	-204
	.word	4
	.word	_Label_1256
	.word	-208
	.word	4
	.word	_Label_1257
	.word	-212
	.word	4
	.word	_Label_1258
	.word	-11
	.word	1
	.word	_Label_1259
	.word	-216
	.word	4
	.word	_Label_1260
	.word	-220
	.word	4
	.word	_Label_1261
	.word	-224
	.word	4
	.word	_Label_1262
	.word	-12
	.word	1
	.word	_Label_1263
	.word	-228
	.word	4
	.word	_Label_1264
	.word	-232
	.word	4
	.word	_Label_1265
	.word	-236
	.word	4
	.word	_Label_1266
	.word	-240
	.word	4
	.word	_Label_1267
	.word	-244
	.word	4
	.word	_Label_1268
	.word	-248
	.word	4
	.word	_Label_1269
	.word	-252
	.word	4
	.word	_Label_1270
	.word	-256
	.word	4
	.word	_Label_1271
	.word	-260
	.word	4
	.word	_Label_1272
	.word	-264
	.word	4
	.word	_Label_1273
	.word	-268
	.word	4
	.word	_Label_1274
	.word	-272
	.word	4
	.word	_Label_1275
	.word	-276
	.word	4
	.word	_Label_1276
	.word	-280
	.word	4
	.word	_Label_1277
	.word	-284
	.word	4
	.word	_Label_1278
	.word	-288
	.word	4
	.word	_Label_1279
	.word	-292
	.word	4
	.word	_Label_1280
	.word	-296
	.word	4
	.word	_Label_1281
	.word	-300
	.word	4
	.word	_Label_1282
	.word	-304
	.word	4
	.word	_Label_1283
	.word	-308
	.word	4
	.word	_Label_1284
	.word	-312
	.word	4
	.word	_Label_1285
	.word	-316
	.word	4
	.word	_Label_1286
	.word	-320
	.word	4
	.word	_Label_1287
	.word	-324
	.word	4
	.word	_Label_1288
	.word	-328
	.word	4
	.word	_Label_1289
	.word	-332
	.word	4
	.word	_Label_1290
	.word	-336
	.word	4
	.word	_Label_1291
	.word	-340
	.word	4
	.word	_Label_1292
	.word	-344
	.word	4
	.word	_Label_1293
	.word	-13
	.word	1
	.word	_Label_1294
	.word	-348
	.word	4
	.word	_Label_1295
	.word	-14
	.word	1
	.word	_Label_1296
	.word	-352
	.word	4
	.word	_Label_1297
	.word	-356
	.word	4
	.word	_Label_1298
	.word	-360
	.word	4
	.word	_Label_1299
	.word	-364
	.word	4
	.word	_Label_1300
	.word	-368
	.word	4
	.word	_Label_1301
	.word	-372
	.word	4
	.word	_Label_1302
	.word	-376
	.word	4
	.word	_Label_1303
	.word	-380
	.word	4
	.word	_Label_1304
	.word	-384
	.word	4
	.word	_Label_1305
	.word	-388
	.word	4
	.word	_Label_1306
	.word	-392
	.word	4
	.word	_Label_1307
	.word	-396
	.word	4
	.word	_Label_1308
	.word	-400
	.word	4
	.word	_Label_1309
	.word	-404
	.word	4
	.word	_Label_1310
	.word	-408
	.word	4
	.word	_Label_1311
	.word	-15
	.word	1
	.word	_Label_1312
	.word	-412
	.word	4
	.word	_Label_1313
	.word	-416
	.word	4
	.word	_Label_1314
	.word	-420
	.word	4
	.word	_Label_1315
	.word	-16
	.word	1
	.word	_Label_1316
	.word	-424
	.word	4
	.word	_Label_1317
	.word	-428
	.word	4
	.word	_Label_1318
	.word	-432
	.word	4
	.word	_Label_1319
	.word	-436
	.word	4
	.word	_Label_1320
	.word	-440
	.word	4
	.word	_Label_1321
	.word	-444
	.word	4
	.word	_Label_1322
	.word	-448
	.word	4
	.word	_Label_1323
	.word	-452
	.word	4
	.word	_Label_1324
	.word	-456
	.word	4
	.word	_Label_1325
	.word	-460
	.word	4
	.word	_Label_1326
	.word	-464
	.word	4
	.word	_Label_1327
	.word	-468
	.word	4
	.word	_Label_1328
	.word	-472
	.word	4
	.word	_Label_1329
	.word	-476
	.word	4
	.word	_Label_1330
	.word	-480
	.word	4
	.word	_Label_1331
	.word	-484
	.word	4
	.word	_Label_1332
	.word	-488
	.word	4
	.word	_Label_1333
	.word	-492
	.word	4
	.word	_Label_1334
	.word	-496
	.word	4
	.word	_Label_1335
	.word	-500
	.word	4
	.word	_Label_1336
	.word	-504
	.word	4
	.word	_Label_1337
	.word	-508
	.word	4
	.word	_Label_1338
	.word	-512
	.word	4
	.word	_Label_1339
	.word	-516
	.word	4
	.word	_Label_1340
	.word	-520
	.word	4
	.word	_Label_1341
	.word	-524
	.word	4
	.word	_Label_1342
	.word	-528
	.word	4
	.word	_Label_1343
	.word	-17
	.word	1
	.word	_Label_1344
	.word	-532
	.word	4
	.word	_Label_1345
	.word	-18
	.word	1
	.word	0
_Label_1204:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1205:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1206:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1207:
	.byte	'I'
	.ascii	"sizeInBytes\0"
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
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1235:
	.byte	'C'
	.ascii	"_temp_1172\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1239:
	.byte	'C'
	.ascii	"_temp_1168\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1258:
	.byte	'C'
	.ascii	"_temp_1133\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1262:
	.byte	'C'
	.ascii	"_temp_1129\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1293:
	.byte	'C'
	.ascii	"_temp_1080\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1295:
	.byte	'C'
	.ascii	"_temp_1074\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1311:
	.byte	'C'
	.ascii	"_temp_1052\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1315:
	.byte	'C'
	.ascii	"_temp_1048\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1336:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1337:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1338:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1339:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1340:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1341:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1342:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1343:
	.byte	'B'
	.ascii	"readStat\0"
	.align
_Label_1344:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1345:
	.byte	'C'
	.ascii	"inChar\0"
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
	mov	130,r1
_Label_4475:
	push	r0
	sub	r1,1,r1
	bne	_Label_4475
	mov	2086,r13		! source line 2086
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1349		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1349
	jmp	_Label_1346
_Label_1349:
!   if fileDesc <= 9 then goto _Label_1348		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1348
	jmp	_Label_1346
_Label_1348:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1352 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-468]
!   Data Move: _temp_1351 = *_temp_1352  (sizeInBytes=4)
	load	[r14+-468],r1
	load	[r1],r1
	store	r1,[r14+-472]
!   if intIsZero (_temp_1351) then goto _runtimeErrorNullPointer
	load	[r14+-472],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1353 = _temp_1351 + 124
	load	[r14+-472],r1
	add	r1,124,r1
	store	r1,[r14+-464]
!   Move address of _temp_1353 [fileDesc ] into _temp_1354
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-464],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-460]
!   Data Move: _temp_1350 = *_temp_1354  (sizeInBytes=4)
	load	[r14+-460],r1
	load	[r1],r1
	store	r1,[r14+-476]
!   if intIsZero (_temp_1350) then goto _Label_1346
	load	[r14+-476],r1
	cmp	r1,r0
	be	_Label_1346
	jmp	_Label_1347
_Label_1346:
! THEN...
	mov	2102,r13		! source line 2102
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1355 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-456]
!   Prepare Argument: offset=8  value=_temp_1355  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+0]
!   Call the function
	mov	2102,r13		! source line 2102
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2103,r13		! source line 2103
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,524,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1347:
! IF STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1357		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1357
!	jmp	_Label_1356
_Label_1356:
! THEN...
	mov	2107,r13		! source line 2107
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1358 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-452]
!   Prepare Argument: offset=8  value=_temp_1358  sizeInBytes=4
	load	[r14+-452],r1
	store	r1,[r15+0]
!   Call the function
	mov	2107,r13		! source line 2107
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2108,r13		! source line 2108
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,524,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1357:
! IF STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1364 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-436]
!   Data Move: _temp_1363 = *_temp_1364  (sizeInBytes=4)
	load	[r14+-436],r1
	load	[r1],r1
	store	r1,[r14+-440]
!   if intIsZero (_temp_1363) then goto _runtimeErrorNullPointer
	load	[r14+-440],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1365 = _temp_1363 + 124
	load	[r14+-440],r1
	add	r1,124,r1
	store	r1,[r14+-432]
!   Move address of _temp_1365 [fileDesc ] into _temp_1366
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Data Move: _temp_1362 = *_temp_1366  (sizeInBytes=4)
	load	[r14+-428],r1
	load	[r1],r1
	store	r1,[r14+-444]
!   if intIsZero (_temp_1362) then goto _runtimeErrorNullPointer
	load	[r14+-444],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1367 = _temp_1362 + 12
	load	[r14+-444],r1
	add	r1,12,r1
	store	r1,[r14+-424]
!   Data Move: _temp_1361 = *_temp_1367  (sizeInBytes=4)
	load	[r14+-424],r1
	load	[r1],r1
	store	r1,[r14+-448]
!   if _temp_1361 != 2 then goto _Label_1360		(int)
	load	[r14+-448],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1360
!	jmp	_Label_1359
_Label_1359:
! THEN...
	mov	2114,r13		! source line 2114
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-480]
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-480],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-484]
! ASSIGNMENT STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-480],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-488]
! ASSIGNMENT STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-500]
! WHILE STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0WH",r10
_Label_1368:
!	jmp	_Label_1369
_Label_1369:
	mov	2118,r13		! source line 2118
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0IF",r10
!   if virtAddr >= 0 then goto _Label_1375		(int)
	load	[r14+-480],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1375
	jmp	_Label_1371
_Label_1375:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1379 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-408]
!   Data Move: _temp_1378 = *_temp_1379  (sizeInBytes=4)
	load	[r14+-408],r1
	load	[r1],r1
	store	r1,[r14+-412]
!   if intIsZero (_temp_1378) then goto _runtimeErrorNullPointer
	load	[r14+-412],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1380 = _temp_1378 + 32
	load	[r14+-412],r1
	add	r1,32,r1
	store	r1,[r14+-404]
!   _temp_1381 = _temp_1380 + 4
	load	[r14+-404],r1
	add	r1,4,r1
	store	r1,[r14+-400]
!   Data Move: _temp_1377 = *_temp_1381  (sizeInBytes=4)
	load	[r14+-400],r1
	load	[r1],r1
	store	r1,[r14+-416]
!   _temp_1376 = _temp_1377 - 1		(int)
	load	[r14+-416],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-420]
!   if virtPage <= _temp_1376 then goto _Label_1374		(int)
	load	[r14+-484],r1
	load	[r14+-420],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1374
	jmp	_Label_1371
_Label_1374:
	mov	2120,r13		! source line 2120
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1384 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-392]
!   Data Move: _temp_1383 = *_temp_1384  (sizeInBytes=4)
	load	[r14+-392],r1
	load	[r1],r1
	store	r1,[r14+-396]
!   if intIsZero (_temp_1383) then goto _runtimeErrorNullPointer
	load	[r14+-396],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1385 = _temp_1383 + 32
	load	[r14+-396],r1
	add	r1,32,r1
	store	r1,[r14+-388]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-484],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-388],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1382  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-15]
!   if _temp_1382 then goto _Label_1373 else goto _Label_1371
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1371
	jmp	_Label_1373
_Label_1373:
	mov	2120,r13		! source line 2120
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1388 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-380]
!   Data Move: _temp_1387 = *_temp_1388  (sizeInBytes=4)
	load	[r14+-380],r1
	load	[r1],r1
	store	r1,[r14+-384]
!   if intIsZero (_temp_1387) then goto _runtimeErrorNullPointer
	load	[r14+-384],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1389 = _temp_1387 + 32
	load	[r14+-384],r1
	add	r1,32,r1
	store	r1,[r14+-376]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-484],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-376],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1386  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   if _temp_1386 then goto _Label_1372 else goto _Label_1371
	loadb	[r14+-14],r1
	cmp	r1,0
	be	_Label_1371
	jmp	_Label_1372
_Label_1371:
! THEN...
	mov	2121,r13		! source line 2121
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1390 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-372]
!   Prepare Argument: offset=8  value=_temp_1390  sizeInBytes=4
	load	[r14+-372],r1
	store	r1,[r15+0]
!   Call the function
	mov	2121,r13		! source line 2121
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,524,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1372:
! SEND STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1392 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-364]
!   Data Move: _temp_1391 = *_temp_1392  (sizeInBytes=4)
	load	[r14+-364],r1
	load	[r1],r1
	store	r1,[r14+-368]
!   if intIsZero (_temp_1391) then goto _runtimeErrorNullPointer
	load	[r14+-368],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1393 = _temp_1391 + 32
	load	[r14+-368],r1
	add	r1,32,r1
	store	r1,[r14+-360]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-484],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-360],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0AS",r10
	mov	2127,r13		! source line 2127
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1396 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-348]
!   Data Move: _temp_1395 = *_temp_1396  (sizeInBytes=4)
	load	[r14+-348],r1
	load	[r1],r1
	store	r1,[r14+-352]
!   if intIsZero (_temp_1395) then goto _runtimeErrorNullPointer
	load	[r14+-352],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1397 = _temp_1395 + 32
	load	[r14+-352],r1
	add	r1,32,r1
	store	r1,[r14+-344]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-484],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-344],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1394  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-356]
!   destAddr = _temp_1394 + offset		(int)
	load	[r14+-356],r1
	load	[r14+-488],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-504]
! ASSIGNMENT STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-488],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-492]
! WHILE STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0WH",r10
_Label_1398:
!   if chunkSize <= 0 then goto _Label_1400		(int)
	load	[r14+-492],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1400
!	jmp	_Label_1401
_Label_1401:
!   if sizeInBytes <= 0 then goto _Label_1400		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1400
!	jmp	_Label_1399
_Label_1399:
	mov	2130,r13		! source line 2130
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-504],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: outChar = *destAddr  (sizeInBytes=1)
	load	[r14+-504],r1
	loadb	[r1],r1
	storeb	r1,[r14+-17]
! ASSIGNMENT STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-500],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-500]
! IF STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0IF",r10
!   _temp_1404 = outChar XOR 10		(bool)
	loadb	[r14+-17],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1404 then goto _Label_1403 else goto _Label_1402
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1402
	jmp	_Label_1403
_Label_1402:
! THEN...
	mov	2134,r13		! source line 2134
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0SE",r10
!   _temp_1405 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-340]
!   Prepare Argument: offset=12  value=13  sizeInBytes=1
	mov	13,r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-340],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1403:
! SEND STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0SE",r10
!   _temp_1406 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-336]
!   Prepare Argument: offset=12  value=outChar  sizeInBytes=1
	loadb	[r14+-17],r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-336],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0AS",r10
!   sizeInBytes = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0AS",r10
!   chunkSize = chunkSize - 1		(int)
	load	[r14+-492],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-492]
! ASSIGNMENT STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-504],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-504]
! END WHILE...
	jmp	_Label_1398
_Label_1400:
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-484],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-484]
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-488]
! IF STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0IF",r10
!   if intIsZero (sizeInBytes) then goto _Label_1407
	load	[r14+16],r1
	cmp	r1,r0
	be	_Label_1407
	jmp	_Label_1408
_Label_1407:
! THEN...
	mov	2147,r13		! source line 2147
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2147,r13		! source line 2147
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-500],r1
	store	r1,[r14+8]
	add	r15,524,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1408:
! END WHILE...
	jmp	_Label_1368
_Label_1370:
! END IF...
_Label_1360:
! IF STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1414 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-320]
!   Data Move: _temp_1413 = *_temp_1414  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r1],r1
	store	r1,[r14+-324]
!   if intIsZero (_temp_1413) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1415 = _temp_1413 + 124
	load	[r14+-324],r1
	add	r1,124,r1
	store	r1,[r14+-316]
!   Move address of _temp_1415 [fileDesc ] into _temp_1416
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-316],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-312]
!   Data Move: _temp_1412 = *_temp_1416  (sizeInBytes=4)
	load	[r14+-312],r1
	load	[r1],r1
	store	r1,[r14+-328]
!   if intIsZero (_temp_1412) then goto _runtimeErrorNullPointer
	load	[r14+-328],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1417 = _temp_1412 + 20
	load	[r14+-328],r1
	add	r1,20,r1
	store	r1,[r14+-308]
!   Data Move: _temp_1411 = *_temp_1417  (sizeInBytes=4)
	load	[r14+-308],r1
	load	[r1],r1
	store	r1,[r14+-332]
!   if intIsZero (_temp_1411) then goto _Label_1409
	load	[r14+-332],r1
	cmp	r1,r0
	be	_Label_1409
	jmp	_Label_1410
_Label_1409:
! THEN...
	mov	2154,r13		! source line 2154
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1418 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-304]
!   Prepare Argument: offset=8  value=_temp_1418  sizeInBytes=4
	load	[r14+-304],r1
	store	r1,[r15+0]
!   Call the function
	mov	2154,r13		! source line 2154
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2155,r13		! source line 2155
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,524,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1410:
! ASSIGNMENT STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1422 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-288]
!   Data Move: _temp_1421 = *_temp_1422  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-292]
!   if intIsZero (_temp_1421) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1423 = _temp_1421 + 124
	load	[r14+-292],r1
	add	r1,124,r1
	store	r1,[r14+-284]
!   Move address of _temp_1423 [fileDesc ] into _temp_1424
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-284],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-280]
!   Data Move: _temp_1420 = *_temp_1424  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_1420) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1425 = _temp_1420 + 20
	load	[r14+-296],r1
	add	r1,20,r1
	store	r1,[r14+-276]
!   Data Move: _temp_1419 = *_temp_1425  (sizeInBytes=4)
	load	[r14+-276],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   if intIsZero (_temp_1419) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1426 = _temp_1419 + 24
	load	[r14+-300],r1
	add	r1,24,r1
	store	r1,[r14+-272]
!   Data Move: sizeOfFile = *_temp_1426  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r1],r1
	store	r1,[r14+-508]
! ASSIGNMENT STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-480]
! ASSIGNMENT STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-480],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-484]
! ASSIGNMENT STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-480],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-488]
! ASSIGNMENT STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-500]
! ASSIGNMENT STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1429 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-260]
!   Data Move: _temp_1428 = *_temp_1429  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r1],r1
	store	r1,[r14+-264]
!   if intIsZero (_temp_1428) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1430 = _temp_1428 + 124
	load	[r14+-264],r1
	add	r1,124,r1
	store	r1,[r14+-256]
!   Move address of _temp_1430 [fileDesc ] into _temp_1431
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-256],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-252]
!   Data Move: _temp_1427 = *_temp_1431  (sizeInBytes=4)
	load	[r14+-252],r1
	load	[r1],r1
	store	r1,[r14+-268]
!   if intIsZero (_temp_1427) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1432 = _temp_1427 + 16
	load	[r14+-268],r1
	add	r1,16,r1
	store	r1,[r14+-248]
!   Data Move: nextPosInFile = *_temp_1432  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-496]
! WHILE STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0WH",r10
_Label_1433:
!	jmp	_Label_1434
_Label_1434:
	mov	2165,r13		! source line 2165
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-488],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-492]
! IF STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0IF",r10
!   _temp_1438 = nextPosInFile + chunkSize		(int)
	load	[r14+-496],r1
	load	[r14+-492],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
!   if _temp_1438 <= sizeOfFile then goto _Label_1437		(int)
	load	[r14+-244],r1
	load	[r14+-508],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1437
!	jmp	_Label_1436
_Label_1436:
! THEN...
	mov	2169,r13		! source line 2169
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0AS",r10
!   chunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-508],r1
	load	[r14+-496],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-492]
! END IF...
_Label_1437:
! IF STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0IF",r10
!   _temp_1441 = copiedSoFar + chunkSize		(int)
	load	[r14+-500],r1
	load	[r14+-492],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
!   if _temp_1441 <= sizeInBytes then goto _Label_1440		(int)
	load	[r14+-240],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1440
!	jmp	_Label_1439
_Label_1439:
! THEN...
	mov	2172,r13		! source line 2172
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-500],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-492]
! END IF...
_Label_1440:
! IF STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1443		(int)
	load	[r14+-492],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1443
!	jmp	_Label_1442
_Label_1442:
! THEN...
	mov	2175,r13		! source line 2175
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0BR",r10
	jmp	_Label_1435
! END IF...
_Label_1443:
! IF STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0IF",r10
!   if virtAddr >= 0 then goto _Label_1448		(int)
	load	[r14+-480],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1448
	jmp	_Label_1444
_Label_1448:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1452 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-224]
!   Data Move: _temp_1451 = *_temp_1452  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (_temp_1451) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1453 = _temp_1451 + 32
	load	[r14+-228],r1
	add	r1,32,r1
	store	r1,[r14+-220]
!   _temp_1454 = _temp_1453 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_1450 = *_temp_1454  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   _temp_1449 = _temp_1450 - 1		(int)
	load	[r14+-232],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
!   if virtPage <= _temp_1449 then goto _Label_1447		(int)
	load	[r14+-484],r1
	load	[r14+-236],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1447
	jmp	_Label_1444
_Label_1447:
	mov	2179,r13		! source line 2179
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1457 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-208]
!   Data Move: _temp_1456 = *_temp_1457  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   if intIsZero (_temp_1456) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1458 = _temp_1456 + 32
	load	[r14+-212],r1
	add	r1,32,r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-484],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1455  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_1455 then goto _Label_1446 else goto _Label_1444
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1444
	jmp	_Label_1446
_Label_1446:
	mov	2179,r13		! source line 2179
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1461 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-196]
!   Data Move: _temp_1460 = *_temp_1461  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_1460) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1462 = _temp_1460 + 32
	load	[r14+-200],r1
	add	r1,32,r1
	store	r1,[r14+-192]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-484],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1459  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1459 then goto _Label_1445 else goto _Label_1444
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1444
	jmp	_Label_1445
_Label_1444:
! THEN...
	mov	2180,r13		! source line 2180
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1463 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1463  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	2180,r13		! source line 2180
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2181,r13		! source line 2181
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,524,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1445:
! ASSIGNMENT STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-496],r1
	load	[r14+-492],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-496]
! ASSIGNMENT STATEMENT...
	mov	2185,r13		! source line 2185
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-500],r1
	load	[r14+-492],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-500]
! ASSIGNMENT STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-484],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-484]
! ASSIGNMENT STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-488]
! IF STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1465		(int)
	load	[r14+-500],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1465
!	jmp	_Label_1464
_Label_1464:
! THEN...
	mov	2190,r13		! source line 2190
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2190,r13		! source line 2190
	mov	"\0\0BR",r10
	jmp	_Label_1435
! END IF...
_Label_1465:
! END WHILE...
	jmp	_Label_1433
_Label_1435:
! ASSIGNMENT STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-480]
! ASSIGNMENT STATEMENT...
	mov	2195,r13		! source line 2195
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-480],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-484]
! ASSIGNMENT STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-480],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-488]
! ASSIGNMENT STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-500]
! ASSIGNMENT STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1468 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_1467 = *_temp_1468  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_1467) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1469 = _temp_1467 + 124
	load	[r14+-180],r1
	add	r1,124,r1
	store	r1,[r14+-172]
!   Move address of _temp_1469 [fileDesc ] into _temp_1470
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-172],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-168]
!   Data Move: _temp_1466 = *_temp_1470  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_1466) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1471 = _temp_1466 + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-164]
!   Data Move: nextPosInFile = *_temp_1471  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-496]
! WHILE STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0WH",r10
_Label_1472:
!	jmp	_Label_1473
_Label_1473:
	mov	2199,r13		! source line 2199
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-488],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-492]
! IF STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0IF",r10
!   _temp_1477 = nextPosInFile + chunkSize		(int)
	load	[r14+-496],r1
	load	[r14+-492],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if _temp_1477 <= sizeOfFile then goto _Label_1476		(int)
	load	[r14+-160],r1
	load	[r14+-508],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1476
!	jmp	_Label_1475
_Label_1475:
! THEN...
	mov	2203,r13		! source line 2203
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0AS",r10
!   chunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-508],r1
	load	[r14+-496],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-492]
! END IF...
_Label_1476:
! IF STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0IF",r10
!   _temp_1480 = copiedSoFar + chunkSize		(int)
	load	[r14+-500],r1
	load	[r14+-492],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   if _temp_1480 <= sizeInBytes then goto _Label_1479		(int)
	load	[r14+-156],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1479
!	jmp	_Label_1478
_Label_1478:
! THEN...
	mov	2206,r13		! source line 2206
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-500],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-492]
! END IF...
_Label_1479:
! IF STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1482		(int)
	load	[r14+-492],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1482
!	jmp	_Label_1481
_Label_1481:
! THEN...
	mov	2209,r13		! source line 2209
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0BR",r10
	jmp	_Label_1474
! END IF...
_Label_1482:
! IF STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0IF",r10
!   if virtAddr >= 0 then goto _Label_1487		(int)
	load	[r14+-480],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1487
	jmp	_Label_1483
_Label_1487:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1491 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1490 = *_temp_1491  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1490) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1492 = _temp_1490 + 32
	load	[r14+-144],r1
	add	r1,32,r1
	store	r1,[r14+-136]
!   _temp_1493 = _temp_1492 + 4
	load	[r14+-136],r1
	add	r1,4,r1
	store	r1,[r14+-132]
!   Data Move: _temp_1489 = *_temp_1493  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   _temp_1488 = _temp_1489 - 1		(int)
	load	[r14+-148],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if virtPage <= _temp_1488 then goto _Label_1486		(int)
	load	[r14+-484],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1486
	jmp	_Label_1483
_Label_1486:
	mov	2213,r13		! source line 2213
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1496 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-124]
!   Data Move: _temp_1495 = *_temp_1496  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_1495) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1497 = _temp_1495 + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-484],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1494  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1494 then goto _Label_1485 else goto _Label_1483
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1483
	jmp	_Label_1485
_Label_1485:
	mov	2213,r13		! source line 2213
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1500 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_1499 = *_temp_1500  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1499) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1501 = _temp_1499 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-484],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1498  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1498 then goto _Label_1484 else goto _Label_1483
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1483
	jmp	_Label_1484
_Label_1483:
! THEN...
	mov	2214,r13		! source line 2214
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1502 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1502  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	2214,r13		! source line 2214
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,524,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1484:
! SEND STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1504 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1503 = *_temp_1504  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1503) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1505 = _temp_1503 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-484],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0AS",r10
	mov	2220,r13		! source line 2220
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1508 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1507 = *_temp_1508  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1507) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1509 = _temp_1507 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-484],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1506  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
!   destAddr = _temp_1506 + offset		(int)
	load	[r14+-88],r1
	load	[r14+-488],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-504]
! ASSIGNMENT STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0AS",r10
	mov	2221,r13		! source line 2221
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1512 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1511 = *_temp_1512  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1511) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1513 = _temp_1511 + 124
	load	[r14+-68],r1
	add	r1,124,r1
	store	r1,[r14+-60]
!   Move address of _temp_1513 [fileDesc ] into _temp_1514
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: _temp_1510 = *_temp_1514  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   _temp_1515 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1510  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-504],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-496],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=chunkSize  sizeInBytes=4
	load	[r14+-492],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=writeStat  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
! IF STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0IF",r10
!   if writeStat then goto _Label_1517 else goto _Label_1516
	loadb	[r14+-16],r1
	cmp	r1,0
	be	_Label_1516
	jmp	_Label_1517
_Label_1516:
! THEN...
	mov	2223,r13		! source line 2223
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1518 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1518  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2223,r13		! source line 2223
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,524,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1517:
! ASSIGNMENT STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-496],r1
	load	[r14+-492],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-496]
! ASSIGNMENT STATEMENT...
	mov	2229,r13		! source line 2229
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-500],r1
	load	[r14+-492],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-500]
! ASSIGNMENT STATEMENT...
	mov	2230,r13		! source line 2230
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-484],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-484]
! ASSIGNMENT STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-488]
! IF STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1520		(int)
	load	[r14+-500],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1520
!	jmp	_Label_1519
_Label_1519:
! THEN...
	mov	2234,r13		! source line 2234
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2234,r13		! source line 2234
	mov	"\0\0BR",r10
	jmp	_Label_1474
! END IF...
_Label_1520:
! END WHILE...
	jmp	_Label_1472
_Label_1474:
! ASSIGNMENT STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1523 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1522 = *_temp_1523  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1522) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1524 = _temp_1522 + 124
	load	[r14+-40],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_1524 [fileDesc ] into _temp_1525
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
!   Data Move: _temp_1521 = *_temp_1525  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1521) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1526 = _temp_1521 + 16
	load	[r14+-44],r1
	add	r1,16,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1526 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-496],r1
	load	[r14+-24],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-500],r1
	store	r1,[r14+8]
	add	r15,524,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1527
	.word	12		! total size of parameters
	.word	520		! frame size = 520
	.word	_Label_1528
	.word	8
	.word	4
	.word	_Label_1529
	.word	12
	.word	4
	.word	_Label_1530
	.word	16
	.word	4
	.word	_Label_1531
	.word	-24
	.word	4
	.word	_Label_1532
	.word	-28
	.word	4
	.word	_Label_1533
	.word	-32
	.word	4
	.word	_Label_1534
	.word	-36
	.word	4
	.word	_Label_1535
	.word	-40
	.word	4
	.word	_Label_1536
	.word	-44
	.word	4
	.word	_Label_1537
	.word	-48
	.word	4
	.word	_Label_1538
	.word	-52
	.word	4
	.word	_Label_1539
	.word	-56
	.word	4
	.word	_Label_1540
	.word	-60
	.word	4
	.word	_Label_1541
	.word	-64
	.word	4
	.word	_Label_1542
	.word	-68
	.word	4
	.word	_Label_1543
	.word	-72
	.word	4
	.word	_Label_1544
	.word	-76
	.word	4
	.word	_Label_1545
	.word	-80
	.word	4
	.word	_Label_1546
	.word	-84
	.word	4
	.word	_Label_1547
	.word	-88
	.word	4
	.word	_Label_1548
	.word	-92
	.word	4
	.word	_Label_1549
	.word	-96
	.word	4
	.word	_Label_1550
	.word	-100
	.word	4
	.word	_Label_1551
	.word	-104
	.word	4
	.word	_Label_1552
	.word	-108
	.word	4
	.word	_Label_1553
	.word	-112
	.word	4
	.word	_Label_1554
	.word	-116
	.word	4
	.word	_Label_1555
	.word	-9
	.word	1
	.word	_Label_1556
	.word	-120
	.word	4
	.word	_Label_1557
	.word	-124
	.word	4
	.word	_Label_1558
	.word	-128
	.word	4
	.word	_Label_1559
	.word	-10
	.word	1
	.word	_Label_1560
	.word	-132
	.word	4
	.word	_Label_1561
	.word	-136
	.word	4
	.word	_Label_1562
	.word	-140
	.word	4
	.word	_Label_1563
	.word	-144
	.word	4
	.word	_Label_1564
	.word	-148
	.word	4
	.word	_Label_1565
	.word	-152
	.word	4
	.word	_Label_1566
	.word	-156
	.word	4
	.word	_Label_1567
	.word	-160
	.word	4
	.word	_Label_1568
	.word	-164
	.word	4
	.word	_Label_1569
	.word	-168
	.word	4
	.word	_Label_1570
	.word	-172
	.word	4
	.word	_Label_1571
	.word	-176
	.word	4
	.word	_Label_1572
	.word	-180
	.word	4
	.word	_Label_1573
	.word	-184
	.word	4
	.word	_Label_1574
	.word	-188
	.word	4
	.word	_Label_1575
	.word	-192
	.word	4
	.word	_Label_1576
	.word	-196
	.word	4
	.word	_Label_1577
	.word	-200
	.word	4
	.word	_Label_1578
	.word	-11
	.word	1
	.word	_Label_1579
	.word	-204
	.word	4
	.word	_Label_1580
	.word	-208
	.word	4
	.word	_Label_1581
	.word	-212
	.word	4
	.word	_Label_1582
	.word	-12
	.word	1
	.word	_Label_1583
	.word	-216
	.word	4
	.word	_Label_1584
	.word	-220
	.word	4
	.word	_Label_1585
	.word	-224
	.word	4
	.word	_Label_1586
	.word	-228
	.word	4
	.word	_Label_1587
	.word	-232
	.word	4
	.word	_Label_1588
	.word	-236
	.word	4
	.word	_Label_1589
	.word	-240
	.word	4
	.word	_Label_1590
	.word	-244
	.word	4
	.word	_Label_1591
	.word	-248
	.word	4
	.word	_Label_1592
	.word	-252
	.word	4
	.word	_Label_1593
	.word	-256
	.word	4
	.word	_Label_1594
	.word	-260
	.word	4
	.word	_Label_1595
	.word	-264
	.word	4
	.word	_Label_1596
	.word	-268
	.word	4
	.word	_Label_1597
	.word	-272
	.word	4
	.word	_Label_1598
	.word	-276
	.word	4
	.word	_Label_1599
	.word	-280
	.word	4
	.word	_Label_1600
	.word	-284
	.word	4
	.word	_Label_1601
	.word	-288
	.word	4
	.word	_Label_1602
	.word	-292
	.word	4
	.word	_Label_1603
	.word	-296
	.word	4
	.word	_Label_1604
	.word	-300
	.word	4
	.word	_Label_1605
	.word	-304
	.word	4
	.word	_Label_1606
	.word	-308
	.word	4
	.word	_Label_1607
	.word	-312
	.word	4
	.word	_Label_1608
	.word	-316
	.word	4
	.word	_Label_1609
	.word	-320
	.word	4
	.word	_Label_1610
	.word	-324
	.word	4
	.word	_Label_1611
	.word	-328
	.word	4
	.word	_Label_1612
	.word	-332
	.word	4
	.word	_Label_1613
	.word	-336
	.word	4
	.word	_Label_1614
	.word	-340
	.word	4
	.word	_Label_1615
	.word	-13
	.word	1
	.word	_Label_1616
	.word	-344
	.word	4
	.word	_Label_1617
	.word	-348
	.word	4
	.word	_Label_1618
	.word	-352
	.word	4
	.word	_Label_1619
	.word	-356
	.word	4
	.word	_Label_1620
	.word	-360
	.word	4
	.word	_Label_1621
	.word	-364
	.word	4
	.word	_Label_1622
	.word	-368
	.word	4
	.word	_Label_1623
	.word	-372
	.word	4
	.word	_Label_1624
	.word	-376
	.word	4
	.word	_Label_1625
	.word	-380
	.word	4
	.word	_Label_1626
	.word	-384
	.word	4
	.word	_Label_1627
	.word	-14
	.word	1
	.word	_Label_1628
	.word	-388
	.word	4
	.word	_Label_1629
	.word	-392
	.word	4
	.word	_Label_1630
	.word	-396
	.word	4
	.word	_Label_1631
	.word	-15
	.word	1
	.word	_Label_1632
	.word	-400
	.word	4
	.word	_Label_1633
	.word	-404
	.word	4
	.word	_Label_1634
	.word	-408
	.word	4
	.word	_Label_1635
	.word	-412
	.word	4
	.word	_Label_1636
	.word	-416
	.word	4
	.word	_Label_1637
	.word	-420
	.word	4
	.word	_Label_1638
	.word	-424
	.word	4
	.word	_Label_1639
	.word	-428
	.word	4
	.word	_Label_1640
	.word	-432
	.word	4
	.word	_Label_1641
	.word	-436
	.word	4
	.word	_Label_1642
	.word	-440
	.word	4
	.word	_Label_1643
	.word	-444
	.word	4
	.word	_Label_1644
	.word	-448
	.word	4
	.word	_Label_1645
	.word	-452
	.word	4
	.word	_Label_1646
	.word	-456
	.word	4
	.word	_Label_1647
	.word	-460
	.word	4
	.word	_Label_1648
	.word	-464
	.word	4
	.word	_Label_1649
	.word	-468
	.word	4
	.word	_Label_1650
	.word	-472
	.word	4
	.word	_Label_1651
	.word	-476
	.word	4
	.word	_Label_1652
	.word	-480
	.word	4
	.word	_Label_1653
	.word	-484
	.word	4
	.word	_Label_1654
	.word	-488
	.word	4
	.word	_Label_1655
	.word	-492
	.word	4
	.word	_Label_1656
	.word	-496
	.word	4
	.word	_Label_1657
	.word	-500
	.word	4
	.word	_Label_1658
	.word	-504
	.word	4
	.word	_Label_1659
	.word	-16
	.word	1
	.word	_Label_1660
	.word	-508
	.word	4
	.word	_Label_1661
	.word	-17
	.word	1
	.word	0
_Label_1527:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1528:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1529:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1530:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1555:
	.byte	'C'
	.ascii	"_temp_1498\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1559:
	.byte	'C'
	.ascii	"_temp_1494\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1578:
	.byte	'C'
	.ascii	"_temp_1459\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1582:
	.byte	'C'
	.ascii	"_temp_1455\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1615:
	.byte	'C'
	.ascii	"_temp_1404\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1627:
	.byte	'C'
	.ascii	"_temp_1386\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1631:
	.byte	'C'
	.ascii	"_temp_1382\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1652:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1653:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1654:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1655:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1656:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1657:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1658:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1659:
	.byte	'B'
	.ascii	"writeStat\0"
	.align
_Label_1660:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1661:
	.byte	'C'
	.ascii	"outChar\0"
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
_Label_4476:
	push	r0
	sub	r1,1,r1
	bne	_Label_4476
	mov	2245,r13		! source line 2245
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0SE",r10
!   _temp_1662 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-140]
!   _temp_1663 = _temp_1662 + 4
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
	mov	2252,r13		! source line 2252
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1668		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1668
	jmp	_Label_1664
_Label_1668:
!   if fileDesc <= 9 then goto _Label_1667		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1667
	jmp	_Label_1664
_Label_1667:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1671 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-124]
!   Data Move: _temp_1670 = *_temp_1671  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_1670) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1672 = _temp_1670 + 124
	load	[r14+-128],r1
	add	r1,124,r1
	store	r1,[r14+-120]
!   Move address of _temp_1672 [fileDesc ] into _temp_1673
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
!   Data Move: _temp_1669 = *_temp_1673  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1669) then goto _Label_1664
	load	[r14+-132],r1
	cmp	r1,r0
	be	_Label_1664
!	jmp	_Label_1666
_Label_1666:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1677 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1676 = *_temp_1677  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1676) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1678 = _temp_1676 + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-96]
!   Move address of _temp_1678 [fileDesc ] into _temp_1679
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
!   Data Move: _temp_1675 = *_temp_1679  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1675) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1680 = _temp_1675 + 20
	load	[r14+-108],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1674 = *_temp_1680  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1674) then goto _Label_1664
	load	[r14+-112],r1
	cmp	r1,r0
	be	_Label_1664
	jmp	_Label_1665
_Label_1664:
! THEN...
	mov	2253,r13		! source line 2253
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1681 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1681  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	2253,r13		! source line 2253
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2254,r13		! source line 2254
	mov	"\0\0CA",r10
	call	_P_System_nl
! SEND STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0SE",r10
!   _temp_1682 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   _temp_1683 = _temp_1682 + 4
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
	mov	2256,r13		! source line 2256
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1665:
! ASSIGNMENT STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1685 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1684 = *_temp_1685  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1684) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1686 = _temp_1684 + 124
	load	[r14+-72],r1
	add	r1,124,r1
	store	r1,[r14+-64]
!   Move address of _temp_1686 [fileDesc ] into _temp_1687
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
!   Data Move: fp = *_temp_1687  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0AS",r10
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1689 = fp + 20
	load	[r14+-144],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1688 = *_temp_1689  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1688) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1690 = _temp_1688 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: N = *_temp_1690  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-148]
! IF STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1692		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1692
!	jmp	_Label_1691
_Label_1691:
! THEN...
	mov	2262,r13		! source line 2262
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0AS",r10
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1693 = fp + 16
	load	[r14+-144],r1
	add	r1,16,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1693 = N  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0SE",r10
!   _temp_1694 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   _temp_1695 = _temp_1694 + 4
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
	mov	2264,r13		! source line 2264
	mov	"\0\0RE",r10
!   ReturnResult: N  (sizeInBytes=4)
	load	[r14+-148],r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1696
_Label_1692:
! ELSE...
	mov	2265,r13		! source line 2265
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0IF",r10
!   if newCurrentPos >= -1 then goto _Label_1699		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1699
	jmp	_Label_1697
_Label_1699:
!   if newCurrentPos <= N then goto _Label_1698		(int)
	load	[r14+12],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1698
!	jmp	_Label_1697
_Label_1697:
! THEN...
	mov	2266,r13		! source line 2266
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1700 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1700  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2266,r13		! source line 2266
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2267,r13		! source line 2267
	mov	"\0\0CA",r10
	call	_P_System_nl
! SEND STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0SE",r10
!   _temp_1701 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_1702 = _temp_1701 + 4
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
	mov	2269,r13		! source line 2269
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1703
_Label_1698:
! ELSE...
	mov	2271,r13		! source line 2271
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0AS",r10
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1704 = fp + 16
	load	[r14+-144],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1704 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0SE",r10
!   _temp_1705 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1706 = _temp_1705 + 4
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
	mov	2273,r13		! source line 2273
	mov	"\0\0RE",r10
!   ReturnResult: newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1703:
! END IF...
_Label_1696:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_1707
	.word	8		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_1708
	.word	8
	.word	4
	.word	_Label_1709
	.word	12
	.word	4
	.word	_Label_1710
	.word	-12
	.word	4
	.word	_Label_1711
	.word	-16
	.word	4
	.word	_Label_1712
	.word	-20
	.word	4
	.word	_Label_1713
	.word	-24
	.word	4
	.word	_Label_1714
	.word	-28
	.word	4
	.word	_Label_1715
	.word	-32
	.word	4
	.word	_Label_1716
	.word	-36
	.word	4
	.word	_Label_1717
	.word	-40
	.word	4
	.word	_Label_1718
	.word	-44
	.word	4
	.word	_Label_1719
	.word	-48
	.word	4
	.word	_Label_1720
	.word	-52
	.word	4
	.word	_Label_1721
	.word	-56
	.word	4
	.word	_Label_1722
	.word	-60
	.word	4
	.word	_Label_1723
	.word	-64
	.word	4
	.word	_Label_1724
	.word	-68
	.word	4
	.word	_Label_1725
	.word	-72
	.word	4
	.word	_Label_1726
	.word	-76
	.word	4
	.word	_Label_1727
	.word	-80
	.word	4
	.word	_Label_1728
	.word	-84
	.word	4
	.word	_Label_1729
	.word	-88
	.word	4
	.word	_Label_1730
	.word	-92
	.word	4
	.word	_Label_1731
	.word	-96
	.word	4
	.word	_Label_1732
	.word	-100
	.word	4
	.word	_Label_1733
	.word	-104
	.word	4
	.word	_Label_1734
	.word	-108
	.word	4
	.word	_Label_1735
	.word	-112
	.word	4
	.word	_Label_1736
	.word	-116
	.word	4
	.word	_Label_1737
	.word	-120
	.word	4
	.word	_Label_1738
	.word	-124
	.word	4
	.word	_Label_1739
	.word	-128
	.word	4
	.word	_Label_1740
	.word	-132
	.word	4
	.word	_Label_1741
	.word	-136
	.word	4
	.word	_Label_1742
	.word	-140
	.word	4
	.word	_Label_1743
	.word	-144
	.word	4
	.word	_Label_1744
	.word	-148
	.word	4
	.word	0
_Label_1707:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1708:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1709:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1743:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_1744:
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
	mov	40,r1
_Label_4477:
	push	r0
	sub	r1,1,r1
	bne	_Label_4477
	mov	2279,r13		! source line 2279
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0IF",r10
!   if fileDesc < 0 then goto _Label_1746		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1746
!	jmp	_Label_1748
_Label_1748:
!   if fileDesc > 9 then goto _Label_1746		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1746
!	jmp	_Label_1747
_Label_1747:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1752 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1751 = *_temp_1752  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1751) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1753 = _temp_1751 + 124
	load	[r14+-144],r1
	add	r1,124,r1
	store	r1,[r14+-136]
!   Move address of _temp_1753 [fileDesc ] into _temp_1754
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1750 = *_temp_1754  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_1750) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1755 = _temp_1750 + 12
	load	[r14+-148],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1749 = *_temp_1755  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if _temp_1749 != 2 then goto _Label_1746		(int)
	load	[r14+-152],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1746
!	jmp	_Label_1745
_Label_1745:
! THEN...
	mov	2284,r13		! source line 2284
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1757 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: _temp_1756 = *_temp_1757  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_1756) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1758 = _temp_1756 + 124
	load	[r14+-124],r1
	add	r1,124,r1
	store	r1,[r14+-116]
!   Move address of _temp_1758 [fileDesc ] into _temp_1759
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   Data Move: *_temp_1759 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-112],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0RE",r10
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1746:
! IF STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1764		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1764
	jmp	_Label_1760
_Label_1764:
!   if fileDesc <= 9 then goto _Label_1763		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1763
	jmp	_Label_1760
_Label_1763:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1767 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1766 = *_temp_1767  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1766) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1768 = _temp_1766 + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-96]
!   Move address of _temp_1768 [fileDesc ] into _temp_1769
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
!   Data Move: _temp_1765 = *_temp_1769  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1765) then goto _Label_1760
	load	[r14+-108],r1
	cmp	r1,r0
	be	_Label_1760
!	jmp	_Label_1762
_Label_1762:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1773 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1772 = *_temp_1773  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1772) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1774 = _temp_1772 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_1774 [fileDesc ] into _temp_1775
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
!   Data Move: _temp_1771 = *_temp_1775  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1771) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1776 = _temp_1771 + 20
	load	[r14+-84],r1
	add	r1,20,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1770 = *_temp_1776  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1770) then goto _Label_1760
	load	[r14+-88],r1
	cmp	r1,r0
	be	_Label_1760
	jmp	_Label_1761
_Label_1760:
! THEN...
	mov	2288,r13		! source line 2288
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1777 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1777  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	2288,r13		! source line 2288
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2289,r13		! source line 2289
	mov	"\0\0CA",r10
	call	_P_System_nl
	jmp	_Label_1778
_Label_1761:
! ELSE...
	mov	2291,r13		! source line 2291
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1780 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1779 = *_temp_1780  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1779) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1781 = _temp_1779 + 124
	load	[r14+-56],r1
	add	r1,124,r1
	store	r1,[r14+-48]
!   Move address of _temp_1781 [fileDesc ] into _temp_1782
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
!   Data Move: fp = *_temp_1782  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-156]
! ASSIGNMENT STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0AS",r10
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1784 = fp + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1783 = *_temp_1784  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1783) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1785 = _temp_1783 + 24
	load	[r14+-40],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: N = *_temp_1785  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-160]
! SEND STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0SE",r10
!   _temp_1786 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=fp  sizeInBytes=4
	load	[r14+-156],r1
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
	mov	2295,r13		! source line 2295
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1788 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1787 = *_temp_1788  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1787) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1789 = _temp_1787 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1789 [fileDesc ] into _temp_1790
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
!   Data Move: *_temp_1790 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1778:
! RETURN STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0RE",r10
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_1791
	.word	4		! total size of parameters
	.word	160		! frame size = 160
	.word	_Label_1792
	.word	8
	.word	4
	.word	_Label_1793
	.word	-12
	.word	4
	.word	_Label_1794
	.word	-16
	.word	4
	.word	_Label_1795
	.word	-20
	.word	4
	.word	_Label_1796
	.word	-24
	.word	4
	.word	_Label_1797
	.word	-28
	.word	4
	.word	_Label_1798
	.word	-32
	.word	4
	.word	_Label_1799
	.word	-36
	.word	4
	.word	_Label_1800
	.word	-40
	.word	4
	.word	_Label_1801
	.word	-44
	.word	4
	.word	_Label_1802
	.word	-48
	.word	4
	.word	_Label_1803
	.word	-52
	.word	4
	.word	_Label_1804
	.word	-56
	.word	4
	.word	_Label_1805
	.word	-60
	.word	4
	.word	_Label_1806
	.word	-64
	.word	4
	.word	_Label_1807
	.word	-68
	.word	4
	.word	_Label_1808
	.word	-72
	.word	4
	.word	_Label_1809
	.word	-76
	.word	4
	.word	_Label_1810
	.word	-80
	.word	4
	.word	_Label_1811
	.word	-84
	.word	4
	.word	_Label_1812
	.word	-88
	.word	4
	.word	_Label_1813
	.word	-92
	.word	4
	.word	_Label_1814
	.word	-96
	.word	4
	.word	_Label_1815
	.word	-100
	.word	4
	.word	_Label_1816
	.word	-104
	.word	4
	.word	_Label_1817
	.word	-108
	.word	4
	.word	_Label_1818
	.word	-112
	.word	4
	.word	_Label_1819
	.word	-116
	.word	4
	.word	_Label_1820
	.word	-120
	.word	4
	.word	_Label_1821
	.word	-124
	.word	4
	.word	_Label_1822
	.word	-128
	.word	4
	.word	_Label_1823
	.word	-132
	.word	4
	.word	_Label_1824
	.word	-136
	.word	4
	.word	_Label_1825
	.word	-140
	.word	4
	.word	_Label_1826
	.word	-144
	.word	4
	.word	_Label_1827
	.word	-148
	.word	4
	.word	_Label_1828
	.word	-152
	.word	4
	.word	_Label_1829
	.word	-156
	.word	4
	.word	_Label_1830
	.word	-160
	.word	4
	.word	0
_Label_1791:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1792:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1829:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_1830:
	.byte	'I'
	.ascii	"N\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_214_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_214_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_4478:
	push	r0
	sub	r1,1,r1
	bne	_Label_4478
	mov	2887,r13		! source line 2887
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2889,r13		! source line 2889
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2890,r13		! source line 2890
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2891,r13		! source line 2891
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1831 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1831  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2892,r13		! source line 2892
	mov	"\0\0AS",r10
!   _temp_1832 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1832) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1834 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1834) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1833 = *_temp_1834  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1832 = _temp_1833  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2893,r13		! source line 2893
	mov	"\0\0AS",r10
!   _temp_1835 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1835) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1837 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1837) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1836 = *_temp_1837  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1835 = _temp_1836  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2894,r13		! source line 2894
	mov	"\0\0AS",r10
!   _temp_1838 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1838) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1840 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1840) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1839 = *_temp_1840  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1838 = _temp_1839  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2894,r13		! source line 2894
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_214_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1841
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1842
	.word	8
	.word	4
	.word	_Label_1843
	.word	12
	.word	4
	.word	_Label_1844
	.word	-16
	.word	4
	.word	_Label_1845
	.word	-9
	.word	1
	.word	_Label_1846
	.word	-20
	.word	4
	.word	_Label_1847
	.word	-24
	.word	4
	.word	_Label_1848
	.word	-10
	.word	1
	.word	_Label_1849
	.word	-28
	.word	4
	.word	_Label_1850
	.word	-32
	.word	4
	.word	_Label_1851
	.word	-11
	.word	1
	.word	_Label_1852
	.word	-36
	.word	4
	.word	_Label_1853
	.word	-12
	.word	1
	.word	_Label_1854
	.word	-40
	.word	4
	.word	_Label_1855
	.word	-44
	.word	4
	.word	0
_Label_1841:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1842:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1843:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1845:
	.byte	'C'
	.ascii	"_temp_1839\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1848:
	.byte	'C'
	.ascii	"_temp_1836\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1851:
	.byte	'C'
	.ascii	"_temp_1833\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1853:
	.byte	'C'
	.ascii	"_temp_1831\0"
	.align
_Label_1854:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1855:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_213_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_213_printFCB,r1
	push	r1
	mov	3,r1
_Label_4479:
	push	r0
	sub	r1,1,r1
	bne	_Label_4479
	mov	2897,r13		! source line 2897
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1857 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1856 = *_temp_1857  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1856  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2898,r13		! source line 2898
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2899,r13		! source line 2899
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2899,r13		! source line 2899
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_213_printFCB:
	.word	_sourceFileName
	.word	_Label_1858
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1859
	.word	8
	.word	4
	.word	_Label_1860
	.word	-12
	.word	4
	.word	_Label_1861
	.word	-16
	.word	4
	.word	0
_Label_1858:
	.ascii	"printFCB\0"
	.align
_Label_1859:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_212_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_212_printOpen,r1
	push	r1
	mov	4,r1
_Label_4480:
	push	r0
	sub	r1,1,r1
	bne	_Label_4480
	mov	2902,r13		! source line 2902
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1862 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1862  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2903,r13		! source line 2903
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1863 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1863  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2904,r13		! source line 2904
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1864 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1864  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2905,r13		! source line 2905
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2906,r13		! source line 2906
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
	mov	2906,r13		! source line 2906
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_212_printOpen:
	.word	_sourceFileName
	.word	_Label_1865
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1866
	.word	8
	.word	4
	.word	_Label_1867
	.word	-12
	.word	4
	.word	_Label_1868
	.word	-16
	.word	4
	.word	_Label_1869
	.word	-20
	.word	4
	.word	0
_Label_1865:
	.ascii	"printOpen\0"
	.align
_Label_1866:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1862\0"
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
_Label_4481:
	push	r0
	sub	r1,1,r1
	bne	_Label_4481
	mov	3166,r13		! source line 3166
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3168,r13		! source line 3168
	mov	"\0\0AS",r10
	mov	3168,r13		! source line 3168
	mov	"\0\0SE",r10
!   _temp_1870 = &_P_Kernel_threadManager
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
	mov	3169,r13		! source line 3169
	mov	"\0\0AS",r10
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1871 = myProgram + 72
	load	[r14+-28],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   _temp_1872 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1871 = _temp_1872  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3170,r13		! source line 3170
	mov	"\0\0SE",r10
!   _temp_1873 = _function_211_StartUserProcess
	set	_function_211_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (myProgram) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1873  sizeInBytes=4
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
	mov	3170,r13		! source line 3170
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
	.word	_Label_1874
	.word	0		! total size of parameters
	.word	32		! frame size = 32
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
	.word	0
_Label_1874:
	.ascii	"InitFirstProcess\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1879:
	.byte	'P'
	.ascii	"myProgram\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_211_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_211_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_4482:
	push	r0
	sub	r1,1,r1
	bne	_Label_4482
	mov	3173,r13		! source line 3173
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3180,r13		! source line 3180
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	3180,r13		! source line 3180
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	3181,r13		! source line 3181
	mov	"\0\0AS",r10
	mov	3181,r13		! source line 3181
	mov	"\0\0SE",r10
!   _temp_1880 = &_P_Kernel_processManager
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
	mov	3182,r13		! source line 3182
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1881 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_1881 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3183,r13		! source line 3183
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1882 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_1882 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3184,r13		! source line 3184
	mov	"\0\0AS",r10
	mov	3184,r13		! source line 3184
	mov	"\0\0SE",r10
!   _temp_1883 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-60]
!   _temp_1884 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1883  sizeInBytes=4
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
	mov	3185,r13		! source line 3185
	mov	"\0\0IF",r10
!   if fp == 0 then goto _Label_1886		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1886
!	jmp	_Label_1885
_Label_1885:
! THEN...
	mov	3186,r13		! source line 3186
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3186,r13		! source line 3186
	mov	"\0\0AS",r10
	mov	3186,r13		! source line 3186
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1888 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_1887 = _temp_1888		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (fp) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1887  sizeInBytes=4
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
	mov	3187,r13		! source line 3187
	mov	"\0\0SE",r10
!   _temp_1889 = &_P_Kernel_fileManager
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
	mov	3188,r13		! source line 3188
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1891 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_1892 = _temp_1891 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1890 = *_temp_1892  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_1890 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	3189,r13		! source line 3189
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1893 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_1893 [999 ] into _temp_1894
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
!   initSystemStackTop = _temp_1894		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	3190,r13		! source line 3190
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1895 = pcb + 32
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
	mov	3191,r13		! source line 3191
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1896 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1896 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3192,r13		! source line 3192
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	3192,r13		! source line 3192
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
	mov	3193,r13		! source line 3193
	mov	"\0\0CE",r10
	call	BecomeUserThread
	jmp	_Label_1897
_Label_1886:
! ELSE...
	mov	3195,r13		! source line 3195
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1898 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1898  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3195,r13		! source line 3195
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	3196,r13		! source line 3196
	mov	"\0\0CA",r10
	call	_P_System_nl
! END IF...
_Label_1897:
! RETURN STATEMENT...
	mov	3185,r13		! source line 3185
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_211_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_1899
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1900
	.word	8
	.word	4
	.word	_Label_1901
	.word	-12
	.word	4
	.word	_Label_1902
	.word	-16
	.word	4
	.word	_Label_1903
	.word	-20
	.word	4
	.word	_Label_1904
	.word	-24
	.word	4
	.word	_Label_1905
	.word	-28
	.word	4
	.word	_Label_1906
	.word	-32
	.word	4
	.word	_Label_1907
	.word	-36
	.word	4
	.word	_Label_1908
	.word	-40
	.word	4
	.word	_Label_1909
	.word	-44
	.word	4
	.word	_Label_1910
	.word	-48
	.word	4
	.word	_Label_1911
	.word	-52
	.word	4
	.word	_Label_1912
	.word	-56
	.word	4
	.word	_Label_1913
	.word	-60
	.word	4
	.word	_Label_1914
	.word	-64
	.word	4
	.word	_Label_1915
	.word	-68
	.word	4
	.word	_Label_1916
	.word	-72
	.word	4
	.word	_Label_1917
	.word	-76
	.word	4
	.word	_Label_1918
	.word	-80
	.word	4
	.word	_Label_1919
	.word	-84
	.word	4
	.word	_Label_1920
	.word	-88
	.word	4
	.word	_Label_1921
	.word	-92
	.word	4
	.word	_Label_1922
	.word	-96
	.word	4
	.word	0
_Label_1899:
	.ascii	"StartUserProcess\0"
	.align
_Label_1900:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1917:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_1918:
	.byte	'P'
	.ascii	"fp\0"
	.align
_Label_1919:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_1920:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_1921:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_1922:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SerialHandlerFunction  ===============
! 
_function_210_SerialHandlerFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_210_SerialHandlerFunction,r1
	push	r1
	mov	2,r1
_Label_4483:
	push	r0
	sub	r1,1,r1
	bne	_Label_4483
	mov	3202,r13		! source line 3202
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3203,r13		! source line 3203
	mov	"\0\0SE",r10
!   _temp_1923 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-12]
!   Send message SerialHandler
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	3203,r13		! source line 3203
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_210_SerialHandlerFunction:
	.word	_sourceFileName
	.word	_Label_1924
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_1925
	.word	8
	.word	4
	.word	_Label_1926
	.word	-12
	.word	4
	.word	0
_Label_1924:
	.ascii	"SerialHandlerFunction\0"
	.align
_Label_1925:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1927
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1927:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1928
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1928:
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
_Label_4484:
	push	r0
	sub	r1,1,r1
	bne	_Label_4484
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1930		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1930
!	jmp	_Label_1929
_Label_1929:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1931 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1931  sizeInBytes=4
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
_Label_1930:
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
	.word	_Label_1933
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1934
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1935
	.word	12
	.word	4
	.word	_Label_1936
	.word	-12
	.word	4
	.word	_Label_1937
	.word	-16
	.word	4
	.word	0
_Label_1933:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1934:
	.ascii	"Pself\0"
	.align
_Label_1935:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1931\0"
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
_Label_4485:
	push	r0
	sub	r1,1,r1
	bne	_Label_4485
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
!   if count != 2147483647 then goto _Label_1939		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1939
!	jmp	_Label_1938
_Label_1938:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1940 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1940  sizeInBytes=4
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
_Label_1939:
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
!   if count > 0 then goto _Label_1942		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1942
!	jmp	_Label_1941
_Label_1941:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_1943 = &waitingThreads
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
!   _temp_1944 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1944 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_1945 = &_P_Kernel_readyList
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
_Label_1942:
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
	.word	_Label_1946
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1947
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1948
	.word	-12
	.word	4
	.word	_Label_1949
	.word	-16
	.word	4
	.word	_Label_1950
	.word	-20
	.word	4
	.word	_Label_1951
	.word	-24
	.word	4
	.word	_Label_1952
	.word	-28
	.word	4
	.word	_Label_1953
	.word	-32
	.word	4
	.word	0
_Label_1946:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1947:
	.ascii	"Pself\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1952:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1953:
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
_Label_4486:
	push	r0
	sub	r1,1,r1
	bne	_Label_4486
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
!   if count != -2147483648 then goto _Label_1955		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1955
!	jmp	_Label_1954
_Label_1954:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1956 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1956  sizeInBytes=4
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
_Label_1955:
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
!   if count >= 0 then goto _Label_1958		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1958
!	jmp	_Label_1957
_Label_1957:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_1959 = &waitingThreads
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
_Label_1958:
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
	.word	_Label_1960
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1961
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1962
	.word	-12
	.word	4
	.word	_Label_1963
	.word	-16
	.word	4
	.word	_Label_1964
	.word	-20
	.word	4
	.word	0
_Label_1960:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1961:
	.ascii	"Pself\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1964:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1965
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1965:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1966
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1966:
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
_Label_4487:
	push	r0
	sub	r1,1,r1
	bne	_Label_4487
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
	.word	_Label_1968
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1969
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1970
	.word	-12
	.word	4
	.word	0
_Label_1968:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1969:
	.ascii	"Pself\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1967\0"
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
_Label_4488:
	push	r0
	sub	r1,1,r1
	bne	_Label_4488
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1972		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1972
!	jmp	_Label_1971
_Label_1971:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1973 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1973  sizeInBytes=4
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
_Label_1972:
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
!   if heldBy == 0 then goto _Label_1977		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1977
!   _temp_1976 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1978
_Label_1977:
!   _temp_1976 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1978:
!   if _temp_1976 then goto _Label_1975 else goto _Label_1974
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1974
	jmp	_Label_1975
_Label_1974:
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
	jmp	_Label_1979
_Label_1975:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_1980 = &waitingThreads
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
_Label_1979:
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
	.word	_Label_1981
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1982
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1983
	.word	-16
	.word	4
	.word	_Label_1984
	.word	-9
	.word	1
	.word	_Label_1985
	.word	-20
	.word	4
	.word	_Label_1986
	.word	-24
	.word	4
	.word	0
_Label_1981:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1982:
	.ascii	"Pself\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1984:
	.byte	'C'
	.ascii	"_temp_1976\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_1986:
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
_Label_4489:
	push	r0
	sub	r1,1,r1
	bne	_Label_4489
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1988		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1988
!	jmp	_Label_1987
_Label_1987:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1989 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1989  sizeInBytes=4
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
_Label_1988:
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
!   _temp_1990 = &waitingThreads
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
!   if t == 0 then goto _Label_1992		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1992
!	jmp	_Label_1991
_Label_1991:
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
!   _temp_1993 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1993 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_1994 = &_P_Kernel_readyList
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
	jmp	_Label_1995
_Label_1992:
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
_Label_1995:
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
	.word	_Label_1996
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1997
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1998
	.word	-12
	.word	4
	.word	_Label_1999
	.word	-16
	.word	4
	.word	_Label_2000
	.word	-20
	.word	4
	.word	_Label_2001
	.word	-24
	.word	4
	.word	_Label_2002
	.word	-28
	.word	4
	.word	_Label_2003
	.word	-32
	.word	4
	.word	0
_Label_1996:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1997:
	.ascii	"Pself\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_2002:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2003:
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
_Label_4490:
	push	r0
	sub	r1,1,r1
	bne	_Label_4490
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_2006		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_2006
!	jmp	_Label_2005
_Label_2005:
!   _temp_2004 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2007
_Label_2006:
!   _temp_2004 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2007:
!   ReturnResult: _temp_2004  (sizeInBytes=1)
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
	.word	_Label_2008
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_2009
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2010
	.word	-9
	.word	1
	.word	0
_Label_2008:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_2009:
	.ascii	"Pself\0"
	.align
_Label_2010:
	.byte	'C'
	.ascii	"_temp_2004\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_2011
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_2011:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2012
	.word	_sourceFileName
	.word	153		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_2012:
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
_Label_4491:
	push	r0
	sub	r1,1,r1
	bne	_Label_4491
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
	.word	_Label_2014
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_2015
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2016
	.word	-12
	.word	4
	.word	0
_Label_2014:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2015:
	.ascii	"Pself\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_2013\0"
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
_Label_4492:
	push	r0
	sub	r1,1,r1
	bne	_Label_4492
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
!   Retrieve Result: targetName=_temp_2019  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2019 then goto _Label_2018 else goto _Label_2017
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2017
	jmp	_Label_2018
_Label_2017:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2020 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2020  sizeInBytes=4
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
_Label_2018:
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
!   _temp_2021 = &waitingThreads
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
	.word	_Label_2022
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2023
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2024
	.word	12
	.word	4
	.word	_Label_2025
	.word	-16
	.word	4
	.word	_Label_2026
	.word	-20
	.word	4
	.word	_Label_2027
	.word	-9
	.word	1
	.word	_Label_2028
	.word	-24
	.word	4
	.word	0
_Label_2022:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_2023:
	.ascii	"Pself\0"
	.align
_Label_2024:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2027:
	.byte	'C'
	.ascii	"_temp_2019\0"
	.align
_Label_2028:
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
_Label_4493:
	push	r0
	sub	r1,1,r1
	bne	_Label_4493
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
!   Retrieve Result: targetName=_temp_2031  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2031 then goto _Label_2030 else goto _Label_2029
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2029
	jmp	_Label_2030
_Label_2029:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2032 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2032  sizeInBytes=4
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
_Label_2030:
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
!   _temp_2033 = &waitingThreads
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
!   if t == 0 then goto _Label_2035		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2035
!	jmp	_Label_2034
_Label_2034:
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
!   _temp_2036 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2036 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_2037 = &_P_Kernel_readyList
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
_Label_2035:
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
	.word	_Label_2038
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2039
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2040
	.word	12
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
	.word	-9
	.word	1
	.word	_Label_2046
	.word	-32
	.word	4
	.word	_Label_2047
	.word	-36
	.word	4
	.word	0
_Label_2038:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_2039:
	.ascii	"Pself\0"
	.align
_Label_2040:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2045:
	.byte	'C'
	.ascii	"_temp_2031\0"
	.align
_Label_2046:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2047:
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
_Label_4494:
	push	r0
	sub	r1,1,r1
	bne	_Label_4494
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
!   Retrieve Result: targetName=_temp_2050  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2050 then goto _Label_2049 else goto _Label_2048
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2048
	jmp	_Label_2049
_Label_2048:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2051 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2051  sizeInBytes=4
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
_Label_2049:
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
_Label_2052:
!	jmp	_Label_2053
_Label_2053:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_2055 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_2056
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_2056
	jmp	_Label_2057
_Label_2056:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_2054
! END IF...
_Label_2057:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2058 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2058 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_2059 = &_P_Kernel_readyList
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
	jmp	_Label_2052
_Label_2054:
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
	.word	_Label_2060
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2061
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2062
	.word	12
	.word	4
	.word	_Label_2063
	.word	-16
	.word	4
	.word	_Label_2064
	.word	-20
	.word	4
	.word	_Label_2065
	.word	-24
	.word	4
	.word	_Label_2066
	.word	-28
	.word	4
	.word	_Label_2067
	.word	-9
	.word	1
	.word	_Label_2068
	.word	-32
	.word	4
	.word	_Label_2069
	.word	-36
	.word	4
	.word	0
_Label_2060:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_2061:
	.ascii	"Pself\0"
	.align
_Label_2062:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2067:
	.byte	'C'
	.ascii	"_temp_2050\0"
	.align
_Label_2068:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2069:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_2070
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
_Label_2070:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2071
	.word	_sourceFileName
	.word	166		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2071:
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
_Label_4495:
	push	r0
	sub	r1,1,r1
	bne	_Label_4495
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
!   _temp_2072 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2072) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_2072 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_2073 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_2073 [0 ] into _temp_2074
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
!   Data Move: *_temp_2074 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_2075 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_2075 [999 ] into _temp_2076
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
!   Data Move: *_temp_2076 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_2077 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_2077 [999 ] into _temp_2078
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
!   stackTop = _temp_2078		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_2079 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_2081 = &_temp_2080
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_2081 = _temp_2081 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_2083:
!   Data Move: *_temp_2081 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_2081 = _temp_2081 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_2082 = _temp_2082 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_2082) then goto _Label_2083
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_2083
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_2084 = &_temp_2080
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4496
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4496:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2079 = *_temp_2084  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_4497:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4497
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
!   _temp_2085 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_2087 = &_temp_2086
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_2087 = _temp_2087 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_2089:
!   Data Move: *_temp_2087 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2087 = _temp_2087 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2088 = _temp_2088 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2088) then goto _Label_2089
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2089
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_2090 = &_temp_2086
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_4498
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4498:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2085 = *_temp_2090  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_4499:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4499
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
	.word	_Label_2091
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_2092
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2093
	.word	12
	.word	4
	.word	_Label_2094
	.word	-12
	.word	4
	.word	_Label_2095
	.word	-16
	.word	4
	.word	_Label_2096
	.word	-20
	.word	4
	.word	_Label_2097
	.word	-84
	.word	64
	.word	_Label_2098
	.word	-88
	.word	4
	.word	_Label_2099
	.word	-92
	.word	4
	.word	_Label_2100
	.word	-96
	.word	4
	.word	_Label_2101
	.word	-100
	.word	4
	.word	_Label_2102
	.word	-156
	.word	56
	.word	_Label_2103
	.word	-160
	.word	4
	.word	_Label_2104
	.word	-164
	.word	4
	.word	_Label_2105
	.word	-168
	.word	4
	.word	_Label_2106
	.word	-172
	.word	4
	.word	_Label_2107
	.word	-176
	.word	4
	.word	_Label_2108
	.word	-180
	.word	4
	.word	_Label_2109
	.word	-184
	.word	4
	.word	_Label_2110
	.word	-188
	.word	4
	.word	0
_Label_2091:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2092:
	.ascii	"Pself\0"
	.align
_Label_2093:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2072\0"
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
_Label_4500:
	push	r0
	sub	r1,1,r1
	bne	_Label_4500
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
!   _temp_2111 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_2111  (sizeInBytes=4)
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
!   _temp_2113 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2112  sizeInBytes=4
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
	.word	_Label_2114
	.word	12		! total size of parameters
	.word	28		! frame size = 28
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
	.word	-12
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
	.word	0
_Label_2114:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_2115:
	.ascii	"Pself\0"
	.align
_Label_2116:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_2117:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2112\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2121:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2122:
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
_Label_4501:
	push	r0
	sub	r1,1,r1
	bne	_Label_4501
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_2125 == _P_Kernel_currentThread then goto _Label_2124		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2124
!	jmp	_Label_2123
_Label_2123:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2126 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2126  sizeInBytes=4
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
_Label_2124:
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
!   _temp_2127 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_2129		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2129
!	jmp	_Label_2128
_Label_2128:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_2131		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_2131
!	jmp	_Label_2130
_Label_2130:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2132 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2132  sizeInBytes=4
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
_Label_2131:
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
!   _temp_2134 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2133  sizeInBytes=4
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
_Label_2129:
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
	.word	_Label_2135
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2136
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	0
_Label_2135:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_2136:
	.ascii	"Pself\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2143:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_2144:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2145:
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
_Label_4502:
	push	r0
	sub	r1,1,r1
	bne	_Label_4502
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_2147		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2147
!	jmp	_Label_2146
_Label_2146:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2148 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2148  sizeInBytes=4
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
_Label_2147:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_2151 == _P_Kernel_currentThread then goto _Label_2150		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2150
!	jmp	_Label_2149
_Label_2149:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2152 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2152  sizeInBytes=4
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
_Label_2150:
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
!   _temp_2153 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_2154
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_2154
	jmp	_Label_2155
_Label_2154:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2156 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2156  sizeInBytes=4
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
_Label_2155:
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
	.word	_Label_2157
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2158
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	0
_Label_2157:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_2158:
	.ascii	"Pself\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2156\0"
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
	.ascii	"_temp_2148\0"
	.align
_Label_2164:
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
_Label_4503:
	push	r0
	sub	r1,1,r1
	bne	_Label_4503
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_2168 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_2168 [0 ] into _temp_2169
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
!   Data Move: _temp_2167 = *_temp_2169  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_2167 == 606348324 then goto _Label_2166		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2166
!	jmp	_Label_2165
_Label_2165:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2170 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2170  sizeInBytes=4
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
	jmp	_Label_2171
_Label_2166:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_2175 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_2175 [999 ] into _temp_2176
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
!   Data Move: _temp_2174 = *_temp_2176  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2174 == 606348324 then goto _Label_2173		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2173
!	jmp	_Label_2172
_Label_2172:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2177 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2177  sizeInBytes=4
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
_Label_2173:
! END IF...
_Label_2171:
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
	.word	_Label_2178
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2179
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2180
	.word	-12
	.word	4
	.word	_Label_2181
	.word	-16
	.word	4
	.word	_Label_2182
	.word	-20
	.word	4
	.word	_Label_2183
	.word	-24
	.word	4
	.word	_Label_2184
	.word	-28
	.word	4
	.word	_Label_2185
	.word	-32
	.word	4
	.word	_Label_2186
	.word	-36
	.word	4
	.word	_Label_2187
	.word	-40
	.word	4
	.word	0
_Label_2178:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_2179:
	.ascii	"Pself\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2167\0"
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
_Label_4504:
	push	r0
	sub	r1,1,r1
	bne	_Label_4504
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
!   _temp_2188 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_2188  sizeInBytes=4
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
!   _temp_2189 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_2189  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_2190  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2191 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_2191  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2192 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_2192  sizeInBytes=4
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
!   _temp_2197 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2198 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2197  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_2193:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2198 then goto _Label_2196		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2196
_Label_2194:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2199 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2199  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2200 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2200  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2201 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_2201  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2203 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_2203 [i ] into _temp_2204
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
!   Data Move: _temp_2202 = *_temp_2204  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2202  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2205 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_2205  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2207 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_2207 [i ] into _temp_2208
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
!   Data Move: _temp_2206 = *_temp_2208  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2206  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2209 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2209  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2195:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2193
! END FOR
_Label_2196:
! CALL STATEMENT...
!   _temp_2210 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-116]
!   _temp_2211 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2210  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2211  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_2212 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-108]
!   _temp_2214 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_2214 [0 ] into _temp_2215
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
!   _temp_2213 = _temp_2215		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2212  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2213  sizeInBytes=4
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
	be	_Label_2218
	cmp	r1,2
	be	_Label_2219
	cmp	r1,3
	be	_Label_2220
	cmp	r1,4
	be	_Label_2221
	cmp	r1,5
	be	_Label_2222
	jmp	_Label_2216
! CASE 1...
_Label_2218:
! CALL STATEMENT...
!   _temp_2223 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2223  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_2217
! CASE 2...
_Label_2219:
! CALL STATEMENT...
!   _temp_2224 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2224  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_2217
! CASE 3...
_Label_2220:
! CALL STATEMENT...
!   _temp_2225 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2225  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_2217
! CASE 4...
_Label_2221:
! CALL STATEMENT...
!   _temp_2226 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2226  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_2217
! CASE 5...
_Label_2222:
! CALL STATEMENT...
!   _temp_2227 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2227  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_2217
! DEFAULT CASE...
_Label_2216:
! CALL STATEMENT...
!   _temp_2228 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2228  sizeInBytes=4
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
_Label_2217:
! CALL STATEMENT...
!   _temp_2229 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2229  sizeInBytes=4
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
!   _temp_2230 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2230  sizeInBytes=4
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
!   _temp_2235 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2236 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2235  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_2231:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2236 then goto _Label_2234		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2234
_Label_2232:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2237 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2237  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2238 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2238  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2239 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2239  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2241 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_2241 [i ] into _temp_2242
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
!   Data Move: _temp_2240 = *_temp_2242  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2240  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2243 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2243  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2245 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_2245 [i ] into _temp_2246
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
!   Data Move: _temp_2244 = *_temp_2246  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2244  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2247 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2247  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2233:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2231
! END FOR
_Label_2234:
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
	.word	_Label_2248
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_2249
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_2256
	.word	-36
	.word	4
	.word	_Label_2257
	.word	-40
	.word	4
	.word	_Label_2258
	.word	-44
	.word	4
	.word	_Label_2259
	.word	-48
	.word	4
	.word	_Label_2260
	.word	-52
	.word	4
	.word	_Label_2261
	.word	-56
	.word	4
	.word	_Label_2262
	.word	-60
	.word	4
	.word	_Label_2263
	.word	-64
	.word	4
	.word	_Label_2264
	.word	-68
	.word	4
	.word	_Label_2265
	.word	-72
	.word	4
	.word	_Label_2266
	.word	-76
	.word	4
	.word	_Label_2267
	.word	-80
	.word	4
	.word	_Label_2268
	.word	-84
	.word	4
	.word	_Label_2269
	.word	-88
	.word	4
	.word	_Label_2270
	.word	-92
	.word	4
	.word	_Label_2271
	.word	-96
	.word	4
	.word	_Label_2272
	.word	-100
	.word	4
	.word	_Label_2273
	.word	-104
	.word	4
	.word	_Label_2274
	.word	-108
	.word	4
	.word	_Label_2275
	.word	-112
	.word	4
	.word	_Label_2276
	.word	-116
	.word	4
	.word	_Label_2277
	.word	-120
	.word	4
	.word	_Label_2278
	.word	-124
	.word	4
	.word	_Label_2279
	.word	-128
	.word	4
	.word	_Label_2280
	.word	-132
	.word	4
	.word	_Label_2281
	.word	-136
	.word	4
	.word	_Label_2282
	.word	-140
	.word	4
	.word	_Label_2283
	.word	-144
	.word	4
	.word	_Label_2284
	.word	-148
	.word	4
	.word	_Label_2285
	.word	-152
	.word	4
	.word	_Label_2286
	.word	-156
	.word	4
	.word	_Label_2287
	.word	-160
	.word	4
	.word	_Label_2288
	.word	-164
	.word	4
	.word	_Label_2289
	.word	-168
	.word	4
	.word	_Label_2290
	.word	-172
	.word	4
	.word	_Label_2291
	.word	-176
	.word	4
	.word	_Label_2292
	.word	-180
	.word	4
	.word	_Label_2293
	.word	-184
	.word	4
	.word	_Label_2294
	.word	-188
	.word	4
	.word	_Label_2295
	.word	-192
	.word	4
	.word	_Label_2296
	.word	-196
	.word	4
	.word	0
_Label_2248:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2249:
	.ascii	"Pself\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2295:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2296:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_2297
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_2297:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2298
	.word	_sourceFileName
	.word	193		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_2298:
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
_Label_4505:
	push	r0
	sub	r1,1,r1
	bne	_Label_4505
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2299 = _StringConst_103
	set	_StringConst_103,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_2299  sizeInBytes=4
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
!   _temp_2300 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_2302 = &_temp_2301
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_2302 = _temp_2302 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2304 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_4506:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4506
!   _temp_2304 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_2306:
!   Data Move: *_temp_2302 = _temp_2304  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_4507:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4507
!   _temp_2302 = _temp_2302 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_2303 = _temp_2303 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_2303) then goto _Label_2306
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_2306
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_2307 = &_temp_2301
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4508
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4508:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2300 = *_temp_2307  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_4509:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4509
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
!   _temp_2311 = &threadManagerLock
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
!   _temp_2312 = &aThreadBecomeFree
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
!   _temp_2317 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2318 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2317  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_2313:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2318 then goto _Label_2316		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2316
_Label_2314:
	mov	702,r13		! source line 702
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0SE",r10
!   _temp_2319 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-48]
!   _temp_2320 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2320 [i ] into _temp_2321
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
!   Prepare Argument: offset=12  value=_temp_2319  sizeInBytes=4
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
!   _temp_2323 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_2323 [i ] into _temp_2324
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
!   _temp_2322 = _temp_2324		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2325 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2322  sizeInBytes=4
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
!   _temp_2326 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2326 [i ] into _temp_2327
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
!   _temp_2328 = _temp_2327 + 76
	load	[r14+-16],r1
	add	r1,76,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_2328 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-12],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_2315:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_2313
! END FOR
_Label_2316:
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
	.word	_Label_2329
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_2330
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2331
	.word	-12
	.word	4
	.word	_Label_2332
	.word	-16
	.word	4
	.word	_Label_2333
	.word	-20
	.word	4
	.word	_Label_2334
	.word	-24
	.word	4
	.word	_Label_2335
	.word	-28
	.word	4
	.word	_Label_2336
	.word	-32
	.word	4
	.word	_Label_2337
	.word	-36
	.word	4
	.word	_Label_2338
	.word	-40
	.word	4
	.word	_Label_2339
	.word	-44
	.word	4
	.word	_Label_2340
	.word	-48
	.word	4
	.word	_Label_2341
	.word	-52
	.word	4
	.word	_Label_2342
	.word	-56
	.word	4
	.word	_Label_2343
	.word	-60
	.word	4
	.word	_Label_2344
	.word	-64
	.word	4
	.word	_Label_2345
	.word	-68
	.word	4
	.word	_Label_2346
	.word	-72
	.word	4
	.word	_Label_2347
	.word	-76
	.word	4
	.word	_Label_2348
	.word	-80
	.word	4
	.word	_Label_2349
	.word	-84
	.word	4
	.word	_Label_2350
	.word	-4248
	.word	4164
	.word	_Label_2351
	.word	-4252
	.word	4
	.word	_Label_2352
	.word	-4256
	.word	4
	.word	_Label_2353
	.word	-45900
	.word	41644
	.word	_Label_2354
	.word	-45904
	.word	4
	.word	_Label_2355
	.word	-45908
	.word	4
	.word	_Label_2356
	.word	-45912
	.word	4
	.word	0
_Label_2329:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2330:
	.ascii	"Pself\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2356:
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
_Label_4510:
	push	r0
	sub	r1,1,r1
	bne	_Label_4510
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
!   _temp_2357 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2357  sizeInBytes=4
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
!   _temp_2362 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2363 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2362  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_2358:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2363 then goto _Label_2361		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2361
_Label_2359:
	mov	720,r13		! source line 720
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2364 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2364  sizeInBytes=4
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
!   _temp_2365 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2365  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2367 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2367 [i ] into _temp_2368
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
!   _temp_2366 = _temp_2368		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2366  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CA",r10
	call	_function_218_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_2360:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2358
! END FOR
_Label_2361:
! CALL STATEMENT...
!   _temp_2369 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2369  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0SE",r10
!   _temp_2370 = _function_217_PrintObjectAddr
	set	_function_217_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2371 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2370  sizeInBytes=4
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
	.word	_Label_2372
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2373
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2374
	.word	-12
	.word	4
	.word	_Label_2375
	.word	-16
	.word	4
	.word	_Label_2376
	.word	-20
	.word	4
	.word	_Label_2377
	.word	-24
	.word	4
	.word	_Label_2378
	.word	-28
	.word	4
	.word	_Label_2379
	.word	-32
	.word	4
	.word	_Label_2380
	.word	-36
	.word	4
	.word	_Label_2381
	.word	-40
	.word	4
	.word	_Label_2382
	.word	-44
	.word	4
	.word	_Label_2383
	.word	-48
	.word	4
	.word	_Label_2384
	.word	-52
	.word	4
	.word	_Label_2385
	.word	-56
	.word	4
	.word	_Label_2386
	.word	-60
	.word	4
	.word	0
_Label_2372:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2373:
	.ascii	"Pself\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2385:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2386:
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
_Label_4511:
	push	r0
	sub	r1,1,r1
	bne	_Label_4511
	mov	734,r13		! source line 734
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0SE",r10
!   _temp_2387 = &threadManagerLock
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
_Label_2388:
	mov	741,r13		! source line 741
	mov	"\0\0SE",r10
!   _temp_2391 = &freeList
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
!   if result==true then goto _Label_2389 else goto _Label_2390
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2390
	jmp	_Label_2389
_Label_2389:
	mov	741,r13		! source line 741
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0SE",r10
!   _temp_2392 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2393 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2392  sizeInBytes=4
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
	jmp	_Label_2388
_Label_2390:
! ASSIGNMENT STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0AS",r10
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_2394 = &freeList
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
!   _temp_2395 = tmp + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2395 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0SE",r10
!   _temp_2396 = &threadManagerLock
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
	.word	_Label_2397
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2398
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2399
	.word	-12
	.word	4
	.word	_Label_2400
	.word	-16
	.word	4
	.word	_Label_2401
	.word	-20
	.word	4
	.word	_Label_2402
	.word	-24
	.word	4
	.word	_Label_2403
	.word	-28
	.word	4
	.word	_Label_2404
	.word	-32
	.word	4
	.word	_Label_2405
	.word	-36
	.word	4
	.word	_Label_2406
	.word	-40
	.word	4
	.word	0
_Label_2397:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2398:
	.ascii	"Pself\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2406:
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
_Label_4512:
	push	r0
	sub	r1,1,r1
	bne	_Label_4512
	mov	753,r13		! source line 753
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0SE",r10
!   _temp_2407 = &threadManagerLock
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
!   _temp_2408 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2408 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0SE",r10
!   _temp_2409 = &freeList
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
!   _temp_2410 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2411 = &aThreadBecomeFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2410  sizeInBytes=4
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
!   _temp_2412 = &threadManagerLock
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
	.word	_Label_2413
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2414
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2415
	.word	12
	.word	4
	.word	_Label_2416
	.word	-12
	.word	4
	.word	_Label_2417
	.word	-16
	.word	4
	.word	_Label_2418
	.word	-20
	.word	4
	.word	_Label_2419
	.word	-24
	.word	4
	.word	_Label_2420
	.word	-28
	.word	4
	.word	_Label_2421
	.word	-32
	.word	4
	.word	0
_Label_2413:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2414:
	.ascii	"Pself\0"
	.align
_Label_2415:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2422
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2422:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2423
	.word	_sourceFileName
	.word	214		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2423:
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
_Label_4513:
	push	r0
	sub	r1,1,r1
	bne	_Label_4513
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
_Label_4514:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4514
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_2425 = &addrSpace
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
!   _temp_2426 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2428 = &_temp_2427
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2428 = _temp_2428 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2430:
!   Data Move: *_temp_2428 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2428 = _temp_2428 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2429 = _temp_2429 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2429) then goto _Label_2430
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2430
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2431 = &_temp_2427
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4515
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4515:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2426 = *_temp_2431  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4516:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4516
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
	.word	_Label_2432
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2433
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2434
	.word	-12
	.word	4
	.word	_Label_2435
	.word	-16
	.word	4
	.word	_Label_2436
	.word	-20
	.word	4
	.word	_Label_2437
	.word	-64
	.word	44
	.word	_Label_2438
	.word	-68
	.word	4
	.word	_Label_2439
	.word	-72
	.word	4
	.word	_Label_2440
	.word	-76
	.word	4
	.word	0
_Label_2432:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2433:
	.ascii	"Pself\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2424\0"
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
_Label_4517:
	push	r0
	sub	r1,1,r1
	bne	_Label_4517
	mov	790,r13		! source line 790
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2441) then goto _runtimeErrorNullPointer
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
!   _temp_2442 = &addrSpace
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
!   _temp_2443 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2443  sizeInBytes=4
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
	call	_function_218_ThreadPrintShort
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
	.word	_Label_2444
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2445
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2446
	.word	-12
	.word	4
	.word	_Label_2447
	.word	-16
	.word	4
	.word	_Label_2448
	.word	-20
	.word	4
	.word	0
_Label_2444:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2445:
	.ascii	"Pself\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2441\0"
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
_Label_4518:
	push	r0
	sub	r1,1,r1
	bne	_Label_4518
	mov	813,r13		! source line 813
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2449 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2449  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2450  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2451 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2451  sizeInBytes=4
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
!   _temp_2452 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2452  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2454		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2454
!	jmp	_Label_2453
_Label_2453:
! THEN...
	mov	823,r13		! source line 823
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2455 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2455  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2456
_Label_2454:
! ELSE...
	mov	824,r13		! source line 824
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2458		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2458
!	jmp	_Label_2457
_Label_2457:
! THEN...
	mov	825,r13		! source line 825
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2459 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2459  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2460
_Label_2458:
! ELSE...
	mov	826,r13		! source line 826
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2462		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2462
!	jmp	_Label_2461
_Label_2461:
! THEN...
	mov	827,r13		! source line 827
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2463 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2463  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2464
_Label_2462:
! ELSE...
	mov	829,r13		! source line 829
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2465 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2465  sizeInBytes=4
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
_Label_2464:
! END IF...
_Label_2460:
! END IF...
_Label_2456:
! CALL STATEMENT...
!   _temp_2466 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2466  sizeInBytes=4
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
!   _temp_2467 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2467  sizeInBytes=4
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
	.word	_Label_2468
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2469
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2470
	.word	-12
	.word	4
	.word	_Label_2471
	.word	-16
	.word	4
	.word	_Label_2472
	.word	-20
	.word	4
	.word	_Label_2473
	.word	-24
	.word	4
	.word	_Label_2474
	.word	-28
	.word	4
	.word	_Label_2475
	.word	-32
	.word	4
	.word	_Label_2476
	.word	-36
	.word	4
	.word	_Label_2477
	.word	-40
	.word	4
	.word	_Label_2478
	.word	-44
	.word	4
	.word	_Label_2479
	.word	-48
	.word	4
	.word	0
_Label_2468:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2469:
	.ascii	"Pself\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2480
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
_Label_2480:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2481
	.word	_sourceFileName
	.word	234		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2481:
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
_Label_4519:
	push	r0
	sub	r1,1,r1
	bne	_Label_4519
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0AS",r10
!   _temp_2482 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1940]
!   NEW ARRAY Constructor...
!   _temp_2484 = &_temp_2483
	add	r14,-1936,r1
	store	r1,[r14+-252]
!   _temp_2484 = _temp_2484 + 4
	load	[r14+-252],r1
	add	r1,4,r1
	store	r1,[r14+-252]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2486 = zeros  (sizeInBytes=168)
	add	r14,-244,r4
	mov	42,r3
_Label_4520:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4520
!   _temp_2486 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-244]
	mov	10,r1
	store	r1,[r14+-248]
_Label_2488:
!   Data Move: *_temp_2484 = _temp_2486  (sizeInBytes=168)
	add	r14,-244,r5
	load	[r14+-252],r4
	mov	42,r3
_Label_4521:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4521
!   _temp_2484 = _temp_2484 + 168
	load	[r14+-252],r1
	add	r1,168,r1
	store	r1,[r14+-252]
!   _temp_2485 = _temp_2485 + -1
	load	[r14+-248],r1
	add	r1,-1,r1
	store	r1,[r14+-248]
!   if intNotZero (_temp_2485) then goto _Label_2488
	load	[r14+-248],r1
	cmp	r1,r0
	bne	_Label_2488
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1936]
!   _temp_2489 = &_temp_2483
	add	r14,-1936,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	load	[r14+-1940],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4522
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4522:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2482 = *_temp_2489  (sizeInBytes=1684)
	load	[r14+-72],r5
	load	[r14+-1940],r4
	mov	421,r3
_Label_4523:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4523
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
!   _temp_2492 = &processManagerLock
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
!   _temp_2493 = &aProcessBecameFree
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
!   _temp_2496 = &aProcessDied
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
!   _temp_2501 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2502 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2501  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-1944]
_Label_2497:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2502 then goto _Label_2500		
	load	[r14+-1944],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2500
_Label_2498:
	mov	860,r13		! source line 860
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0SE",r10
!   _temp_2503 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_2503 [i ] into _temp_2504
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
!   _temp_2506 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2506 [i ] into _temp_2507
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
!   _temp_2505 = _temp_2507		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2508 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2505  sizeInBytes=4
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
_Label_2499:
!   i = i + 1
	load	[r14+-1944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1944]
	jmp	_Label_2497
! END FOR
_Label_2500:
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
	.word	_Label_2509
	.word	4		! total size of parameters
	.word	1944		! frame size = 1944
	.word	_Label_2510
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2511
	.word	-12
	.word	4
	.word	_Label_2512
	.word	-16
	.word	4
	.word	_Label_2513
	.word	-20
	.word	4
	.word	_Label_2514
	.word	-24
	.word	4
	.word	_Label_2515
	.word	-28
	.word	4
	.word	_Label_2516
	.word	-32
	.word	4
	.word	_Label_2517
	.word	-36
	.word	4
	.word	_Label_2518
	.word	-40
	.word	4
	.word	_Label_2519
	.word	-44
	.word	4
	.word	_Label_2520
	.word	-48
	.word	4
	.word	_Label_2521
	.word	-52
	.word	4
	.word	_Label_2522
	.word	-56
	.word	4
	.word	_Label_2523
	.word	-60
	.word	4
	.word	_Label_2524
	.word	-64
	.word	4
	.word	_Label_2525
	.word	-68
	.word	4
	.word	_Label_2526
	.word	-72
	.word	4
	.word	_Label_2527
	.word	-76
	.word	4
	.word	_Label_2528
	.word	-244
	.word	168
	.word	_Label_2529
	.word	-248
	.word	4
	.word	_Label_2530
	.word	-252
	.word	4
	.word	_Label_2531
	.word	-1936
	.word	1684
	.word	_Label_2532
	.word	-1940
	.word	4
	.word	_Label_2533
	.word	-1944
	.word	4
	.word	0
_Label_2509:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2510:
	.ascii	"Pself\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2533:
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
_Label_4524:
	push	r0
	sub	r1,1,r1
	bne	_Label_4524
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
!   _temp_2534 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2534  sizeInBytes=4
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
!   _temp_2539 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2540 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2539  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2535:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2540 then goto _Label_2538		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2538
_Label_2536:
	mov	877,r13		! source line 877
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2541 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2541  sizeInBytes=4
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
!   _temp_2542 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2542  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0SE",r10
!   _temp_2543 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2543 [i ] into _temp_2544
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
_Label_2537:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2535
! END FOR
_Label_2538:
! CALL STATEMENT...
!   _temp_2545 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2545  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0SE",r10
!   _temp_2546 = _function_217_PrintObjectAddr
	set	_function_217_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2547 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2546  sizeInBytes=4
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
	.word	_Label_2548
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2549
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2550
	.word	-12
	.word	4
	.word	_Label_2551
	.word	-16
	.word	4
	.word	_Label_2552
	.word	-20
	.word	4
	.word	_Label_2553
	.word	-24
	.word	4
	.word	_Label_2554
	.word	-28
	.word	4
	.word	_Label_2555
	.word	-32
	.word	4
	.word	_Label_2556
	.word	-36
	.word	4
	.word	_Label_2557
	.word	-40
	.word	4
	.word	_Label_2558
	.word	-44
	.word	4
	.word	_Label_2559
	.word	-48
	.word	4
	.word	_Label_2560
	.word	-52
	.word	4
	.word	_Label_2561
	.word	-56
	.word	4
	.word	0
_Label_2548:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2549:
	.ascii	"Pself\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2560:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2561:
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
_Label_4525:
	push	r0
	sub	r1,1,r1
	bne	_Label_4525
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
!   _temp_2562 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2562  sizeInBytes=4
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
!   _temp_2567 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2568 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2567  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2563:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2568 then goto _Label_2566		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2566
_Label_2564:
	mov	900,r13		! source line 900
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2569 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2569  sizeInBytes=4
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
!   _temp_2570 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2570 [i ] into _temp_2571
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
_Label_2565:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2563
! END FOR
_Label_2566:
! CALL STATEMENT...
!   _temp_2572 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2572  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_2573 = _function_217_PrintObjectAddr
	set	_function_217_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2574 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2573  sizeInBytes=4
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
	.word	_Label_2575
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2576
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2577
	.word	-12
	.word	4
	.word	_Label_2578
	.word	-16
	.word	4
	.word	_Label_2579
	.word	-20
	.word	4
	.word	_Label_2580
	.word	-24
	.word	4
	.word	_Label_2581
	.word	-28
	.word	4
	.word	_Label_2582
	.word	-32
	.word	4
	.word	_Label_2583
	.word	-36
	.word	4
	.word	_Label_2584
	.word	-40
	.word	4
	.word	_Label_2585
	.word	-44
	.word	4
	.word	_Label_2586
	.word	-48
	.word	4
	.word	_Label_2587
	.word	-52
	.word	4
	.word	0
_Label_2575:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2576:
	.ascii	"Pself\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2586:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2587:
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
_Label_4526:
	push	r0
	sub	r1,1,r1
	bne	_Label_4526
	mov	913,r13		! source line 913
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0SE",r10
!   _temp_2588 = &processManagerLock
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
!   if intIsZero (_temp_2589) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2590 = _temp_2589 + 1752
	load	[r14+-72],r1
	add	r1,1752,r1
	store	r1,[r14+-68]
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2593) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2594 = _temp_2593 + 1752
	load	[r14+-56],r1
	add	r1,1752,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2592 = *_temp_2594  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_2591 = _temp_2592 + 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Data Move: *_temp_2590 = _temp_2591  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r14+-68],r2
	store	r1,[r2]
! WHILE STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0WH",r10
_Label_2595:
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_2598 = &freeList
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
!   if result==true then goto _Label_2596 else goto _Label_2597
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2597
	jmp	_Label_2596
_Label_2596:
	mov	921,r13		! source line 921
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0SE",r10
!   _temp_2599 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-44]
!   _temp_2600 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2599  sizeInBytes=4
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
	jmp	_Label_2595
_Label_2597:
! ASSIGNMENT STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0AS",r10
	mov	924,r13		! source line 924
	mov	"\0\0SE",r10
!   _temp_2601 = &freeList
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
!   _temp_2602 = tmp + 20
	load	[r14+-80],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2602 = 1  (sizeInBytes=4)
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
!   _temp_2603 = tmp + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-28]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2605) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2606 = _temp_2605 + 1752
	load	[r14+-20],r1
	add	r1,1752,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2604 = *_temp_2606  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2603 = _temp_2604  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_2607 = &processManagerLock
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
	.word	_Label_2608
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_2609
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_2622
	.word	-60
	.word	4
	.word	_Label_2623
	.word	-64
	.word	4
	.word	_Label_2624
	.word	-68
	.word	4
	.word	_Label_2625
	.word	-72
	.word	4
	.word	_Label_2626
	.word	-76
	.word	4
	.word	_Label_2627
	.word	-80
	.word	4
	.word	0
_Label_2608:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2609:
	.ascii	"Pself\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2607\0"
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
	.byte	'?'
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
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2627:
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
_Label_4527:
	push	r0
	sub	r1,1,r1
	bne	_Label_4527
	mov	934,r13		! source line 934
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2628 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2628  sizeInBytes=4
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
!   _temp_2629 = &processManagerLock
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
!   _temp_2630 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2630 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0SE",r10
!   _temp_2631 = &freeList
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
!   _temp_2632 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-24]
!   _temp_2633 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2632  sizeInBytes=4
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
!   if intIsZero (_temp_2634) then goto _runtimeErrorNullPointer
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
!   _temp_2635 = &processManagerLock
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
	.word	_Label_2636
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2637
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2638
	.word	12
	.word	4
	.word	_Label_2639
	.word	-12
	.word	4
	.word	_Label_2640
	.word	-16
	.word	4
	.word	_Label_2641
	.word	-20
	.word	4
	.word	_Label_2642
	.word	-24
	.word	4
	.word	_Label_2643
	.word	-28
	.word	4
	.word	_Label_2644
	.word	-32
	.word	4
	.word	_Label_2645
	.word	-36
	.word	4
	.word	_Label_2646
	.word	-40
	.word	4
	.word	0
_Label_2636:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2637:
	.ascii	"Pself\0"
	.align
_Label_2638:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2628\0"
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
_Label_4528:
	push	r0
	sub	r1,1,r1
	bne	_Label_4528
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
!   _temp_2647 = &processManagerLock
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
!   _temp_2652 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-192]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2653 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-188]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2652  (sizeInBytes=4)
	load	[r14+-192],r1
	store	r1,[r14+-200]
_Label_2648:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2653 then goto _Label_2651		
	load	[r14+-200],r1
	load	[r14+-188],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2651
_Label_2649:
	mov	954,r13		! source line 954
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2658 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-180]
!   Data Move: _temp_2657 = *_temp_2658  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   _temp_2660 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-172]
!   _temp_2661 = _temp_2660 + 4
	load	[r14+-172],r1
	add	r1,4,r1
	store	r1,[r14+-168]
!   Move address of _temp_2661 [i ] into _temp_2662
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
!   _temp_2663 = _temp_2662 + 16
	load	[r14+-164],r1
	add	r1,16,r1
	store	r1,[r14+-160]
!   Data Move: _temp_2659 = *_temp_2663  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if _temp_2657 != _temp_2659 then goto _Label_2655		(int)
	load	[r14+-184],r1
	load	[r14+-176],r2
	cmp	r1,r2
	bne	_Label_2655
!	jmp	_Label_2656
_Label_2656:
!   _temp_2665 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-152]
!   _temp_2666 = _temp_2665 + 4
	load	[r14+-152],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_2666 [i ] into _temp_2667
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
!   _temp_2668 = _temp_2667 + 20
	load	[r14+-144],r1
	add	r1,20,r1
	store	r1,[r14+-140]
!   Data Move: _temp_2664 = *_temp_2668  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if _temp_2664 != 2 then goto _Label_2655		(int)
	load	[r14+-156],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2655
!	jmp	_Label_2654
_Label_2654:
! THEN...
	mov	956,r13		! source line 956
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
!   _temp_2669 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-136]
!   _temp_2670 = _temp_2669 + 4
	load	[r14+-136],r1
	add	r1,4,r1
	store	r1,[r14+-132]
!   Move address of _temp_2670 [i ] into _temp_2671
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
!   _temp_2672 = _temp_2671 + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-124]
!   Data Move: *_temp_2672 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-124],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_2674 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-116]
!   _temp_2675 = _temp_2674 + 4
	load	[r14+-116],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_2675 [i ] into _temp_2676
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
!   _temp_2673 = _temp_2676		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-120]
!   _temp_2677 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2673  sizeInBytes=4
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
!   _temp_2678 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-100]
!   _temp_2679 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_2678  sizeInBytes=4
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
	jmp	_Label_2680
_Label_2655:
! ELSE...
	mov	959,r13		! source line 959
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0IF",r10
!   if isZombie then goto _Label_2682 else goto _Label_2684
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2684
	jmp	_Label_2682
_Label_2684:
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2686 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2685 = *_temp_2686  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   _temp_2688 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_2689 = _temp_2688 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_2689 [i ] into _temp_2690
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
!   _temp_2691 = _temp_2690 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2687 = *_temp_2691  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2685 != _temp_2687 then goto _Label_2682		(int)
	load	[r14+-92],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bne	_Label_2682
!	jmp	_Label_2683
_Label_2683:
!   _temp_2693 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_2694 = _temp_2693 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_2694 [i ] into _temp_2695
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
!   _temp_2696 = _temp_2695 + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2692 = *_temp_2696  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_2692 != 1 then goto _Label_2682		(int)
	load	[r14+-64],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2682
!	jmp	_Label_2681
_Label_2681:
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
!   _temp_2697 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_2697 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	962,r13		! source line 962
	mov	"\0\0SE",r10
!   _temp_2698 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_2699 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2698  sizeInBytes=4
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
_Label_2682:
! END IF...
_Label_2680:
!   Increment the FOR-LOOP index variable and jump back
_Label_2650:
!   i = i + 1
	load	[r14+-200],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
	jmp	_Label_2648
! END FOR
_Label_2651:
! IF STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0IF",r10
!   if isZombie then goto _Label_2701 else goto _Label_2700
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2700
	jmp	_Label_2701
_Label_2700:
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
!   _temp_2702 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2702 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0SE",r10
!   _temp_2703 = &freeList
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
!   _temp_2704 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-24]
!   _temp_2705 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2704  sizeInBytes=4
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
_Label_2701:
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_2706 = &processManagerLock
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
	.word	_Label_2707
	.word	8		! total size of parameters
	.word	200		! frame size = 200
	.word	_Label_2708
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2709
	.word	12
	.word	4
	.word	_Label_2710
	.word	-16
	.word	4
	.word	_Label_2711
	.word	-20
	.word	4
	.word	_Label_2712
	.word	-24
	.word	4
	.word	_Label_2713
	.word	-28
	.word	4
	.word	_Label_2714
	.word	-32
	.word	4
	.word	_Label_2715
	.word	-36
	.word	4
	.word	_Label_2716
	.word	-40
	.word	4
	.word	_Label_2717
	.word	-44
	.word	4
	.word	_Label_2718
	.word	-48
	.word	4
	.word	_Label_2719
	.word	-52
	.word	4
	.word	_Label_2720
	.word	-56
	.word	4
	.word	_Label_2721
	.word	-60
	.word	4
	.word	_Label_2722
	.word	-64
	.word	4
	.word	_Label_2723
	.word	-68
	.word	4
	.word	_Label_2724
	.word	-72
	.word	4
	.word	_Label_2725
	.word	-76
	.word	4
	.word	_Label_2726
	.word	-80
	.word	4
	.word	_Label_2727
	.word	-84
	.word	4
	.word	_Label_2728
	.word	-88
	.word	4
	.word	_Label_2729
	.word	-92
	.word	4
	.word	_Label_2730
	.word	-96
	.word	4
	.word	_Label_2731
	.word	-100
	.word	4
	.word	_Label_2732
	.word	-104
	.word	4
	.word	_Label_2733
	.word	-108
	.word	4
	.word	_Label_2734
	.word	-112
	.word	4
	.word	_Label_2735
	.word	-116
	.word	4
	.word	_Label_2736
	.word	-120
	.word	4
	.word	_Label_2737
	.word	-124
	.word	4
	.word	_Label_2738
	.word	-128
	.word	4
	.word	_Label_2739
	.word	-132
	.word	4
	.word	_Label_2740
	.word	-136
	.word	4
	.word	_Label_2741
	.word	-140
	.word	4
	.word	_Label_2742
	.word	-144
	.word	4
	.word	_Label_2743
	.word	-148
	.word	4
	.word	_Label_2744
	.word	-152
	.word	4
	.word	_Label_2745
	.word	-156
	.word	4
	.word	_Label_2746
	.word	-160
	.word	4
	.word	_Label_2747
	.word	-164
	.word	4
	.word	_Label_2748
	.word	-168
	.word	4
	.word	_Label_2749
	.word	-172
	.word	4
	.word	_Label_2750
	.word	-176
	.word	4
	.word	_Label_2751
	.word	-180
	.word	4
	.word	_Label_2752
	.word	-184
	.word	4
	.word	_Label_2753
	.word	-188
	.word	4
	.word	_Label_2754
	.word	-192
	.word	4
	.word	_Label_2755
	.word	-196
	.word	4
	.word	_Label_2756
	.word	-200
	.word	4
	.word	_Label_2757
	.word	-9
	.word	1
	.word	0
_Label_2707:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2708:
	.ascii	"Pself\0"
	.align
_Label_2709:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2756:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2757:
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
_Label_4529:
	push	r0
	sub	r1,1,r1
	bne	_Label_4529
	mov	975,r13		! source line 975
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0SE",r10
!   _temp_2758 = &processManagerLock
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
_Label_2759:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2763 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2762 = *_temp_2763  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_2762 == 2 then goto _Label_2761		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2761
!	jmp	_Label_2760
_Label_2760:
	mov	979,r13		! source line 979
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0SE",r10
!   _temp_2764 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_2765 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2764  sizeInBytes=4
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
	jmp	_Label_2759
_Label_2761:
! ASSIGNMENT STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2766 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exitStatus = *_temp_2766  (sizeInBytes=4)
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
!   _temp_2767 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2767 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0SE",r10
!   _temp_2768 = &freeList
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
!   _temp_2769 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2770 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2769  sizeInBytes=4
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
!   _temp_2771 = &processManagerLock
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
	.word	_Label_2772
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2773
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2774
	.word	12
	.word	4
	.word	_Label_2775
	.word	-12
	.word	4
	.word	_Label_2776
	.word	-16
	.word	4
	.word	_Label_2777
	.word	-20
	.word	4
	.word	_Label_2778
	.word	-24
	.word	4
	.word	_Label_2779
	.word	-28
	.word	4
	.word	_Label_2780
	.word	-32
	.word	4
	.word	_Label_2781
	.word	-36
	.word	4
	.word	_Label_2782
	.word	-40
	.word	4
	.word	_Label_2783
	.word	-44
	.word	4
	.word	_Label_2784
	.word	-48
	.word	4
	.word	_Label_2785
	.word	-52
	.word	4
	.word	_Label_2786
	.word	-56
	.word	4
	.word	0
_Label_2772:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2773:
	.ascii	"Pself\0"
	.align
_Label_2774:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2765\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2786:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2787
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2787:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2788
	.word	_sourceFileName
	.word	257		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2788:
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
_Label_4530:
	push	r0
	sub	r1,1,r1
	bne	_Label_4530
	mov	1033,r13		! source line 1033
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2789 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2789  sizeInBytes=4
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
!   _temp_2791 = &framesInUse
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
!   _temp_2793 = &frameManagerLock
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
!   _temp_2795 = &newFramesAvailable
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
!   _temp_2800 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2801 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2800  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2796:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2801 then goto _Label_2799		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2799
_Label_2797:
	mov	1052,r13		! source line 1052
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2804 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2804) then goto _Label_2803
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2803
!	jmp	_Label_2802
_Label_2802:
! THEN...
	mov	1056,r13		! source line 1056
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2805 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2805  sizeInBytes=4
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
_Label_2803:
!   Increment the FOR-LOOP index variable and jump back
_Label_2798:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2796
! END FOR
_Label_2799:
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
	.word	_Label_2806
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2807
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2808
	.word	-12
	.word	4
	.word	_Label_2809
	.word	-16
	.word	4
	.word	_Label_2810
	.word	-20
	.word	4
	.word	_Label_2811
	.word	-24
	.word	4
	.word	_Label_2812
	.word	-28
	.word	4
	.word	_Label_2813
	.word	-32
	.word	4
	.word	_Label_2814
	.word	-36
	.word	4
	.word	_Label_2815
	.word	-40
	.word	4
	.word	_Label_2816
	.word	-44
	.word	4
	.word	_Label_2817
	.word	-48
	.word	4
	.word	_Label_2818
	.word	-52
	.word	4
	.word	_Label_2819
	.word	-56
	.word	4
	.word	0
_Label_2806:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2807:
	.ascii	"Pself\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2819:
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
_Label_4531:
	push	r0
	sub	r1,1,r1
	bne	_Label_4531
	mov	1063,r13		! source line 1063
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1067,r13		! source line 1067
	mov	"\0\0SE",r10
!   _temp_2820 = &frameManagerLock
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
!   _temp_2821 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2821  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1068,r13		! source line 1068
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2822 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2822  sizeInBytes=4
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
!   _temp_2823 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2823  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1070,r13		! source line 1070
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0SE",r10
!   _temp_2824 = &framesInUse
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
!   _temp_2825 = &frameManagerLock
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
	.word	_Label_2826
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2827
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2828
	.word	-12
	.word	4
	.word	_Label_2829
	.word	-16
	.word	4
	.word	_Label_2830
	.word	-20
	.word	4
	.word	_Label_2831
	.word	-24
	.word	4
	.word	_Label_2832
	.word	-28
	.word	4
	.word	_Label_2833
	.word	-32
	.word	4
	.word	0
_Label_2826:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2827:
	.ascii	"Pself\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2820\0"
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
_Label_4532:
	push	r0
	sub	r1,1,r1
	bne	_Label_4532
	mov	1077,r13		! source line 1077
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0SE",r10
!   _temp_2834 = &frameManagerLock
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
_Label_2835:
!   if numberFreeFrames >= 1 then goto _Label_2837		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2837
!	jmp	_Label_2836
_Label_2836:
	mov	1088,r13		! source line 1088
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1089,r13		! source line 1089
	mov	"\0\0SE",r10
!   _temp_2838 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2839 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2838  sizeInBytes=4
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
	jmp	_Label_2835
_Label_2837:
! ASSIGNMENT STATEMENT...
	mov	1093,r13		! source line 1093
	mov	"\0\0AS",r10
	mov	1093,r13		! source line 1093
	mov	"\0\0SE",r10
!   _temp_2840 = &framesInUse
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
!   _temp_2841 = &frameManagerLock
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
!   _temp_2842 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2842		(int)
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
	.word	_Label_2843
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2844
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2845
	.word	-12
	.word	4
	.word	_Label_2846
	.word	-16
	.word	4
	.word	_Label_2847
	.word	-20
	.word	4
	.word	_Label_2848
	.word	-24
	.word	4
	.word	_Label_2849
	.word	-28
	.word	4
	.word	_Label_2850
	.word	-32
	.word	4
	.word	_Label_2851
	.word	-36
	.word	4
	.word	_Label_2852
	.word	-40
	.word	4
	.word	0
_Label_2843:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2844:
	.ascii	"Pself\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2851:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2852:
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
_Label_4533:
	push	r0
	sub	r1,1,r1
	bne	_Label_4533
	mov	1107,r13		! source line 1107
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0SE",r10
!   _temp_2853 = &frameManagerLock
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
_Label_2854:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_2856		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2856
!	jmp	_Label_2855
_Label_2855:
	mov	1110,r13		! source line 1110
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1111,r13		! source line 1111
	mov	"\0\0SE",r10
!   _temp_2857 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2858 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2857  sizeInBytes=4
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
	jmp	_Label_2854
_Label_2856:
! FOR STATEMENT...
	mov	1113,r13		! source line 1113
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2863 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2864 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2863  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_2859:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2864 then goto _Label_2862		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2862
_Label_2860:
	mov	1113,r13		! source line 1113
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1114,r13		! source line 1114
	mov	"\0\0AS",r10
	mov	1114,r13		! source line 1114
	mov	"\0\0SE",r10
!   _temp_2865 = &framesInUse
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
!   _temp_2866 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2866		(int)
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
_Label_2861:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2859
! END FOR
_Label_2862:
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
!   _temp_2867 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2867 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0SE",r10
!   _temp_2868 = &frameManagerLock
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
	.word	_Label_2869
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2870
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2871
	.word	12
	.word	4
	.word	_Label_2872
	.word	16
	.word	4
	.word	_Label_2873
	.word	-12
	.word	4
	.word	_Label_2874
	.word	-16
	.word	4
	.word	_Label_2875
	.word	-20
	.word	4
	.word	_Label_2876
	.word	-24
	.word	4
	.word	_Label_2877
	.word	-28
	.word	4
	.word	_Label_2878
	.word	-32
	.word	4
	.word	_Label_2879
	.word	-36
	.word	4
	.word	_Label_2880
	.word	-40
	.word	4
	.word	_Label_2881
	.word	-44
	.word	4
	.word	_Label_2882
	.word	-48
	.word	4
	.word	_Label_2883
	.word	-52
	.word	4
	.word	_Label_2884
	.word	-56
	.word	4
	.word	0
_Label_2869:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2870:
	.ascii	"Pself\0"
	.align
_Label_2871:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2872:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2882:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2883:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2884:
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
_Label_4534:
	push	r0
	sub	r1,1,r1
	bne	_Label_4534
	mov	1125,r13		! source line 1125
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_2885 = &frameManagerLock
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
!   _temp_2890 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2893 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2892 = *_temp_2893  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2891 = _temp_2892 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2890  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_2886:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2891 then goto _Label_2889		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2889
_Label_2887:
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
!   _temp_2894 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_2894 div 8192		(int)
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
!   _temp_2895 = &framesInUse
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
_Label_2888:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_2886
! END FOR
_Label_2889:
! ASSIGNMENT STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2897 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2896 = *_temp_2897  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_2896		(int)
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
!   _temp_2898 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2898 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1135,r13		! source line 1135
	mov	"\0\0SE",r10
!   _temp_2899 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2900 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2899  sizeInBytes=4
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
!   _temp_2901 = &frameManagerLock
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
	.word	_Label_2902
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2903
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2904
	.word	12
	.word	4
	.word	_Label_2905
	.word	-12
	.word	4
	.word	_Label_2906
	.word	-16
	.word	4
	.word	_Label_2907
	.word	-20
	.word	4
	.word	_Label_2908
	.word	-24
	.word	4
	.word	_Label_2909
	.word	-28
	.word	4
	.word	_Label_2910
	.word	-32
	.word	4
	.word	_Label_2911
	.word	-36
	.word	4
	.word	_Label_2912
	.word	-40
	.word	4
	.word	_Label_2913
	.word	-44
	.word	4
	.word	_Label_2914
	.word	-48
	.word	4
	.word	_Label_2915
	.word	-52
	.word	4
	.word	_Label_2916
	.word	-56
	.word	4
	.word	_Label_2917
	.word	-60
	.word	4
	.word	_Label_2918
	.word	-64
	.word	4
	.word	_Label_2919
	.word	-68
	.word	4
	.word	_Label_2920
	.word	-72
	.word	4
	.word	0
_Label_2902:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2903:
	.ascii	"Pself\0"
	.align
_Label_2904:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2918:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2919:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2920:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2921
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
_Label_2921:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2922
	.word	_sourceFileName
	.word	276		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2922:
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
_Label_4535:
	push	r0
	sub	r1,1,r1
	bne	_Label_4535
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
!   _temp_2923 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2925 = &_temp_2924
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2925 = _temp_2925 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2927:
!   Data Move: *_temp_2925 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2925 = _temp_2925 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2926 = _temp_2926 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2926) then goto _Label_2927
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2927
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2928 = &_temp_2924
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4536
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4536:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2923 = *_temp_2928  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4537:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4537
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
	.word	_Label_2929
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2930
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2931
	.word	-12
	.word	4
	.word	_Label_2932
	.word	-16
	.word	4
	.word	_Label_2933
	.word	-20
	.word	4
	.word	_Label_2934
	.word	-104
	.word	84
	.word	_Label_2935
	.word	-108
	.word	4
	.word	0
_Label_2929:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2930:
	.ascii	"Pself\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2923\0"
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
_Label_4538:
	push	r0
	sub	r1,1,r1
	bne	_Label_4538
	mov	1157,r13		! source line 1157
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2936 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2936  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1162,r13		! source line 1162
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2937 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2937  sizeInBytes=4
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
!   _temp_2942 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2943 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2942  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2938:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2943 then goto _Label_2941		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2941
_Label_2939:
	mov	1164,r13		! source line 1164
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2944 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2944  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1165,r13		! source line 1165
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2946 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2946 [i ] into _temp_2947
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
!   _temp_2945 = _temp_2947		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2945  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1166,r13		! source line 1166
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2948 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2948  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1167,r13		! source line 1167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2950 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2950 [i ] into _temp_2951
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
!   Data Move: _temp_2949 = *_temp_2951  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2949  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1168,r13		! source line 1168
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2952 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2952  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1169,r13		! source line 1169
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2953 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2953  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1170,r13		! source line 1170
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2954 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2954  sizeInBytes=4
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
!   if intIsZero (_temp_2956) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2955  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2955  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1172,r13		! source line 1172
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2957 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2957  sizeInBytes=4
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
!   if intIsZero (_temp_2961) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2960  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2960) then goto _Label_2959
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2959
!	jmp	_Label_2958
_Label_2958:
! THEN...
	mov	1175,r13		! source line 1175
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2963) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2962  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2962  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1175,r13		! source line 1175
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2964
_Label_2959:
! ELSE...
	mov	1177,r13		! source line 1177
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2965 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2965  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1177,r13		! source line 1177
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2964:
! CALL STATEMENT...
!   _temp_2966 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2966  sizeInBytes=4
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
!   if intIsZero (_temp_2969) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2967 else goto _Label_2968
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2968
	jmp	_Label_2967
_Label_2967:
! THEN...
	mov	1181,r13		! source line 1181
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2970 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2970  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1181,r13		! source line 1181
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2971
_Label_2968:
! ELSE...
	mov	1183,r13		! source line 1183
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2972 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2972  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1183,r13		! source line 1183
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2971:
! CALL STATEMENT...
!   _temp_2973 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2973  sizeInBytes=4
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
!   if intIsZero (_temp_2976) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2974 else goto _Label_2975
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2975
	jmp	_Label_2974
_Label_2974:
! THEN...
	mov	1187,r13		! source line 1187
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2977 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2977  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1187,r13		! source line 1187
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2978
_Label_2975:
! ELSE...
	mov	1189,r13		! source line 1189
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2979 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2979  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1189,r13		! source line 1189
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2978:
! CALL STATEMENT...
!   _temp_2980 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2980  sizeInBytes=4
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
!   if intIsZero (_temp_2983) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2981 else goto _Label_2982
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2982
	jmp	_Label_2981
_Label_2981:
! THEN...
	mov	1193,r13		! source line 1193
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2984 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2984  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1193,r13		! source line 1193
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2985
_Label_2982:
! ELSE...
	mov	1195,r13		! source line 1195
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2986 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2986  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1195,r13		! source line 1195
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2985:
! CALL STATEMENT...
!   _temp_2987 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2987  sizeInBytes=4
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
!   if intIsZero (_temp_2990) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2988 else goto _Label_2989
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2989
	jmp	_Label_2988
_Label_2988:
! THEN...
	mov	1199,r13		! source line 1199
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2991 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2991  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1199,r13		! source line 1199
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2992
_Label_2989:
! ELSE...
	mov	1201,r13		! source line 1201
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2993 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2993  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1201,r13		! source line 1201
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2992:
! CALL STATEMENT...
!   Call the function
	mov	1203,r13		! source line 1203
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2940:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2938
! END FOR
_Label_2941:
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
	.word	_Label_2994
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2995
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2996
	.word	-12
	.word	4
	.word	_Label_2997
	.word	-16
	.word	4
	.word	_Label_2998
	.word	-20
	.word	4
	.word	_Label_2999
	.word	-24
	.word	4
	.word	_Label_3000
	.word	-28
	.word	4
	.word	_Label_3001
	.word	-32
	.word	4
	.word	_Label_3002
	.word	-36
	.word	4
	.word	_Label_3003
	.word	-40
	.word	4
	.word	_Label_3004
	.word	-44
	.word	4
	.word	_Label_3005
	.word	-48
	.word	4
	.word	_Label_3006
	.word	-52
	.word	4
	.word	_Label_3007
	.word	-56
	.word	4
	.word	_Label_3008
	.word	-60
	.word	4
	.word	_Label_3009
	.word	-64
	.word	4
	.word	_Label_3010
	.word	-68
	.word	4
	.word	_Label_3011
	.word	-72
	.word	4
	.word	_Label_3012
	.word	-76
	.word	4
	.word	_Label_3013
	.word	-80
	.word	4
	.word	_Label_3014
	.word	-84
	.word	4
	.word	_Label_3015
	.word	-88
	.word	4
	.word	_Label_3016
	.word	-92
	.word	4
	.word	_Label_3017
	.word	-96
	.word	4
	.word	_Label_3018
	.word	-100
	.word	4
	.word	_Label_3019
	.word	-104
	.word	4
	.word	_Label_3020
	.word	-108
	.word	4
	.word	_Label_3021
	.word	-112
	.word	4
	.word	_Label_3022
	.word	-116
	.word	4
	.word	_Label_3023
	.word	-120
	.word	4
	.word	_Label_3024
	.word	-124
	.word	4
	.word	_Label_3025
	.word	-128
	.word	4
	.word	_Label_3026
	.word	-132
	.word	4
	.word	_Label_3027
	.word	-136
	.word	4
	.word	_Label_3028
	.word	-140
	.word	4
	.word	_Label_3029
	.word	-144
	.word	4
	.word	_Label_3030
	.word	-148
	.word	4
	.word	_Label_3031
	.word	-152
	.word	4
	.word	_Label_3032
	.word	-156
	.word	4
	.word	_Label_3033
	.word	-160
	.word	4
	.word	_Label_3034
	.word	-164
	.word	4
	.word	_Label_3035
	.word	-168
	.word	4
	.word	0
_Label_2994:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2995:
	.ascii	"Pself\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2990\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2987\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2986\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2976\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_2962\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_2960\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_2957\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_2956\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_2955\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_3035:
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
_Label_4539:
	push	r0
	sub	r1,1,r1
	bne	_Label_4539
	mov	1209,r13		! source line 1209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1214,r13		! source line 1214
	mov	"\0\0RE",r10
!   _temp_3038 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3038 [entry ] into _temp_3039
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
!   Data Move: _temp_3037 = *_temp_3039  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3036 = _temp_3037 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3036  (sizeInBytes=4)
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
	.word	_Label_3040
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3041
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3042
	.word	12
	.word	4
	.word	_Label_3043
	.word	-12
	.word	4
	.word	_Label_3044
	.word	-16
	.word	4
	.word	_Label_3045
	.word	-20
	.word	4
	.word	_Label_3046
	.word	-24
	.word	4
	.word	0
_Label_3040:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_3041:
	.ascii	"Pself\0"
	.align
_Label_3042:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3036\0"
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
_Label_4540:
	push	r0
	sub	r1,1,r1
	bne	_Label_4540
	mov	1219,r13		! source line 1219
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0RE",r10
!   _temp_3049 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3049 [entry ] into _temp_3050
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
!   Data Move: _temp_3048 = *_temp_3050  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3047 = _temp_3048 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3047  (sizeInBytes=4)
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
	.word	_Label_3051
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3052
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3053
	.word	12
	.word	4
	.word	_Label_3054
	.word	-12
	.word	4
	.word	_Label_3055
	.word	-16
	.word	4
	.word	_Label_3056
	.word	-20
	.word	4
	.word	_Label_3057
	.word	-24
	.word	4
	.word	0
_Label_3051:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_3052:
	.ascii	"Pself\0"
	.align
_Label_3053:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3050\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_3049\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_3048\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_3047\0"
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
_Label_4541:
	push	r0
	sub	r1,1,r1
	bne	_Label_4541
	mov	1228,r13		! source line 1228
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0AS",r10
!   _temp_3058 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_3058 [entry ] into _temp_3059
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
!   _temp_3063 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3063 [entry ] into _temp_3064
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
!   Data Move: _temp_3062 = *_temp_3064  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3061 = _temp_3062 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_3060 = _temp_3061 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3059 = _temp_3060  (sizeInBytes=4)
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
	.word	_Label_3065
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3066
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3067
	.word	12
	.word	4
	.word	_Label_3068
	.word	16
	.word	4
	.word	_Label_3069
	.word	-12
	.word	4
	.word	_Label_3070
	.word	-16
	.word	4
	.word	_Label_3071
	.word	-20
	.word	4
	.word	_Label_3072
	.word	-24
	.word	4
	.word	_Label_3073
	.word	-28
	.word	4
	.word	_Label_3074
	.word	-32
	.word	4
	.word	_Label_3075
	.word	-36
	.word	4
	.word	0
_Label_3065:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_3066:
	.ascii	"Pself\0"
	.align
_Label_3067:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3068:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_3069:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3070:
	.byte	'?'
	.ascii	"_temp_3063\0"
	.align
_Label_3071:
	.byte	'?'
	.ascii	"_temp_3062\0"
	.align
_Label_3072:
	.byte	'?'
	.ascii	"_temp_3061\0"
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
_Label_4542:
	push	r0
	sub	r1,1,r1
	bne	_Label_4542
	mov	1238,r13		! source line 1238
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1242,r13		! source line 1242
	mov	"\0\0RE",r10
!   _temp_3079 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3079 [entry ] into _temp_3080
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
!   Data Move: _temp_3078 = *_temp_3080  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3077 = _temp_3078 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3077) then goto _Label_3081
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3081
!   _temp_3076 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3082
_Label_3081:
!   _temp_3076 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3082:
!   ReturnResult: _temp_3076  (sizeInBytes=1)
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
	.word	_Label_3083
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3084
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3085
	.word	12
	.word	4
	.word	_Label_3086
	.word	-16
	.word	4
	.word	_Label_3087
	.word	-20
	.word	4
	.word	_Label_3088
	.word	-24
	.word	4
	.word	_Label_3089
	.word	-28
	.word	4
	.word	_Label_3090
	.word	-9
	.word	1
	.word	0
_Label_3083:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_3084:
	.ascii	"Pself\0"
	.align
_Label_3085:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3086:
	.byte	'?'
	.ascii	"_temp_3080\0"
	.align
_Label_3087:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3088:
	.byte	'?'
	.ascii	"_temp_3078\0"
	.align
_Label_3089:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3090:
	.byte	'C'
	.ascii	"_temp_3076\0"
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
_Label_4543:
	push	r0
	sub	r1,1,r1
	bne	_Label_4543
	mov	1247,r13		! source line 1247
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0RE",r10
!   _temp_3094 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3094 [entry ] into _temp_3095
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
!   Data Move: _temp_3093 = *_temp_3095  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3092 = _temp_3093 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3092) then goto _Label_3096
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3096
!   _temp_3091 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3097
_Label_3096:
!   _temp_3091 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3097:
!   ReturnResult: _temp_3091  (sizeInBytes=1)
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
	.word	_Label_3098
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3099
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3100
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_3098:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_3099:
	.ascii	"Pself\0"
	.align
_Label_3100:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3101:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3105:
	.byte	'C'
	.ascii	"_temp_3091\0"
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
_Label_4544:
	push	r0
	sub	r1,1,r1
	bne	_Label_4544
	mov	1256,r13		! source line 1256
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1260,r13		! source line 1260
	mov	"\0\0RE",r10
!   _temp_3109 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3109 [entry ] into _temp_3110
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
!   Data Move: _temp_3108 = *_temp_3110  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3107 = _temp_3108 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3107) then goto _Label_3111
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3111
!   _temp_3106 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3112
_Label_3111:
!   _temp_3106 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3112:
!   ReturnResult: _temp_3106  (sizeInBytes=1)
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
	.word	_Label_3113
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3114
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3115
	.word	12
	.word	4
	.word	_Label_3116
	.word	-16
	.word	4
	.word	_Label_3117
	.word	-20
	.word	4
	.word	_Label_3118
	.word	-24
	.word	4
	.word	_Label_3119
	.word	-28
	.word	4
	.word	_Label_3120
	.word	-9
	.word	1
	.word	0
_Label_3113:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_3114:
	.ascii	"Pself\0"
	.align
_Label_3115:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3116:
	.byte	'?'
	.ascii	"_temp_3110\0"
	.align
_Label_3117:
	.byte	'?'
	.ascii	"_temp_3109\0"
	.align
_Label_3118:
	.byte	'?'
	.ascii	"_temp_3108\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3107\0"
	.align
_Label_3120:
	.byte	'C'
	.ascii	"_temp_3106\0"
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
_Label_4545:
	push	r0
	sub	r1,1,r1
	bne	_Label_4545
	mov	1265,r13		! source line 1265
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1269,r13		! source line 1269
	mov	"\0\0RE",r10
!   _temp_3124 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3124 [entry ] into _temp_3125
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
!   Data Move: _temp_3123 = *_temp_3125  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3122 = _temp_3123 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3122) then goto _Label_3126
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3126
!   _temp_3121 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3127
_Label_3126:
!   _temp_3121 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3127:
!   ReturnResult: _temp_3121  (sizeInBytes=1)
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
	.word	_Label_3128
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3129
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3130
	.word	12
	.word	4
	.word	_Label_3131
	.word	-16
	.word	4
	.word	_Label_3132
	.word	-20
	.word	4
	.word	_Label_3133
	.word	-24
	.word	4
	.word	_Label_3134
	.word	-28
	.word	4
	.word	_Label_3135
	.word	-9
	.word	1
	.word	0
_Label_3128:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_3129:
	.ascii	"Pself\0"
	.align
_Label_3130:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3135:
	.byte	'C'
	.ascii	"_temp_3121\0"
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
_Label_4546:
	push	r0
	sub	r1,1,r1
	bne	_Label_4546
	mov	1274,r13		! source line 1274
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1278,r13		! source line 1278
	mov	"\0\0AS",r10
!   _temp_3136 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3136 [entry ] into _temp_3137
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
!   _temp_3140 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3140 [entry ] into _temp_3141
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
!   Data Move: _temp_3139 = *_temp_3141  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3138 = _temp_3139 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3137 = _temp_3138  (sizeInBytes=4)
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
	.word	_Label_3142
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3143
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3144
	.word	12
	.word	4
	.word	_Label_3145
	.word	-12
	.word	4
	.word	_Label_3146
	.word	-16
	.word	4
	.word	_Label_3147
	.word	-20
	.word	4
	.word	_Label_3148
	.word	-24
	.word	4
	.word	_Label_3149
	.word	-28
	.word	4
	.word	_Label_3150
	.word	-32
	.word	4
	.word	0
_Label_3142:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_3143:
	.ascii	"Pself\0"
	.align
_Label_3144:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3145:
	.byte	'?'
	.ascii	"_temp_3141\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3140\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3139\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3136\0"
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
_Label_4547:
	push	r0
	sub	r1,1,r1
	bne	_Label_4547
	mov	1283,r13		! source line 1283
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0AS",r10
!   _temp_3151 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3151 [entry ] into _temp_3152
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
!   _temp_3155 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3155 [entry ] into _temp_3156
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
!   Data Move: _temp_3154 = *_temp_3156  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3153 = _temp_3154 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3152 = _temp_3153  (sizeInBytes=4)
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
	.word	_Label_3157
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3158
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3159
	.word	12
	.word	4
	.word	_Label_3160
	.word	-12
	.word	4
	.word	_Label_3161
	.word	-16
	.word	4
	.word	_Label_3162
	.word	-20
	.word	4
	.word	_Label_3163
	.word	-24
	.word	4
	.word	_Label_3164
	.word	-28
	.word	4
	.word	_Label_3165
	.word	-32
	.word	4
	.word	0
_Label_3157:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_3158:
	.ascii	"Pself\0"
	.align
_Label_3159:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3156\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3155\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3154\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3153\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3152\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3151\0"
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
_Label_4548:
	push	r0
	sub	r1,1,r1
	bne	_Label_4548
	mov	1292,r13		! source line 1292
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0AS",r10
!   _temp_3166 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3166 [entry ] into _temp_3167
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
!   _temp_3170 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3170 [entry ] into _temp_3171
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
!   Data Move: _temp_3169 = *_temp_3171  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3168 = _temp_3169 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3167 = _temp_3168  (sizeInBytes=4)
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
	.word	_Label_3172
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3173
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3174
	.word	12
	.word	4
	.word	_Label_3175
	.word	-12
	.word	4
	.word	_Label_3176
	.word	-16
	.word	4
	.word	_Label_3177
	.word	-20
	.word	4
	.word	_Label_3178
	.word	-24
	.word	4
	.word	_Label_3179
	.word	-28
	.word	4
	.word	_Label_3180
	.word	-32
	.word	4
	.word	0
_Label_3172:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_3173:
	.ascii	"Pself\0"
	.align
_Label_3174:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3170\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3169\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3168\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3167\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3166\0"
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
_Label_4549:
	push	r0
	sub	r1,1,r1
	bne	_Label_4549
	mov	1301,r13		! source line 1301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1305,r13		! source line 1305
	mov	"\0\0AS",r10
!   _temp_3181 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3181 [entry ] into _temp_3182
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
!   _temp_3185 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3185 [entry ] into _temp_3186
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
!   Data Move: _temp_3184 = *_temp_3186  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3183 = _temp_3184 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3182 = _temp_3183  (sizeInBytes=4)
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
	.word	_Label_3187
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3188
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3189
	.word	12
	.word	4
	.word	_Label_3190
	.word	-12
	.word	4
	.word	_Label_3191
	.word	-16
	.word	4
	.word	_Label_3192
	.word	-20
	.word	4
	.word	_Label_3193
	.word	-24
	.word	4
	.word	_Label_3194
	.word	-28
	.word	4
	.word	_Label_3195
	.word	-32
	.word	4
	.word	0
_Label_3187:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_3188:
	.ascii	"Pself\0"
	.align
_Label_3189:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3190:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3191:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3192:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3193:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3194:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3195:
	.byte	'?'
	.ascii	"_temp_3181\0"
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
_Label_4550:
	push	r0
	sub	r1,1,r1
	bne	_Label_4550
	mov	1310,r13		! source line 1310
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0AS",r10
!   _temp_3196 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3196 [entry ] into _temp_3197
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
!   _temp_3200 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3200 [entry ] into _temp_3201
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
!   Data Move: _temp_3199 = *_temp_3201  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3198 = _temp_3199 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3197 = _temp_3198  (sizeInBytes=4)
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
	.word	_Label_3202
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3203
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3204
	.word	12
	.word	4
	.word	_Label_3205
	.word	-12
	.word	4
	.word	_Label_3206
	.word	-16
	.word	4
	.word	_Label_3207
	.word	-20
	.word	4
	.word	_Label_3208
	.word	-24
	.word	4
	.word	_Label_3209
	.word	-28
	.word	4
	.word	_Label_3210
	.word	-32
	.word	4
	.word	0
_Label_3202:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_3203:
	.ascii	"Pself\0"
	.align
_Label_3204:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3205:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3206:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3207:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3208:
	.byte	'?'
	.ascii	"_temp_3198\0"
	.align
_Label_3209:
	.byte	'?'
	.ascii	"_temp_3197\0"
	.align
_Label_3210:
	.byte	'?'
	.ascii	"_temp_3196\0"
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
_Label_4551:
	push	r0
	sub	r1,1,r1
	bne	_Label_4551
	mov	1319,r13		! source line 1319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0AS",r10
!   _temp_3211 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3211 [entry ] into _temp_3212
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
!   _temp_3215 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3215 [entry ] into _temp_3216
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
!   Data Move: _temp_3214 = *_temp_3216  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3213 = _temp_3214 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3212 = _temp_3213  (sizeInBytes=4)
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
	.word	_Label_3217
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3218
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3219
	.word	12
	.word	4
	.word	_Label_3220
	.word	-12
	.word	4
	.word	_Label_3221
	.word	-16
	.word	4
	.word	_Label_3222
	.word	-20
	.word	4
	.word	_Label_3223
	.word	-24
	.word	4
	.word	_Label_3224
	.word	-28
	.word	4
	.word	_Label_3225
	.word	-32
	.word	4
	.word	0
_Label_3217:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_3218:
	.ascii	"Pself\0"
	.align
_Label_3219:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3220:
	.byte	'?'
	.ascii	"_temp_3216\0"
	.align
_Label_3221:
	.byte	'?'
	.ascii	"_temp_3215\0"
	.align
_Label_3222:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3223:
	.byte	'?'
	.ascii	"_temp_3213\0"
	.align
_Label_3224:
	.byte	'?'
	.ascii	"_temp_3212\0"
	.align
_Label_3225:
	.byte	'?'
	.ascii	"_temp_3211\0"
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
_Label_4552:
	push	r0
	sub	r1,1,r1
	bne	_Label_4552
	mov	1328,r13		! source line 1328
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0AS",r10
!   _temp_3226 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3226 [entry ] into _temp_3227
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
!   _temp_3230 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3230 [entry ] into _temp_3231
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
!   Data Move: _temp_3229 = *_temp_3231  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3228 = _temp_3229 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3227 = _temp_3228  (sizeInBytes=4)
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
	.word	_Label_3232
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3233
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3234
	.word	12
	.word	4
	.word	_Label_3235
	.word	-12
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
	.word	0
_Label_3232:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_3233:
	.ascii	"Pself\0"
	.align
_Label_3234:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3235:
	.byte	'?'
	.ascii	"_temp_3231\0"
	.align
_Label_3236:
	.byte	'?'
	.ascii	"_temp_3230\0"
	.align
_Label_3237:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3238:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3226\0"
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
_Label_4553:
	push	r0
	sub	r1,1,r1
	bne	_Label_4553
	mov	1337,r13		! source line 1337
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1341,r13		! source line 1341
	mov	"\0\0AS",r10
!   _temp_3241 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3241 [entry ] into _temp_3242
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
!   _temp_3245 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3245 [entry ] into _temp_3246
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
!   Data Move: _temp_3244 = *_temp_3246  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3243 = _temp_3244 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3242 = _temp_3243  (sizeInBytes=4)
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
	.word	_Label_3247
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3248
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3249
	.word	12
	.word	4
	.word	_Label_3250
	.word	-12
	.word	4
	.word	_Label_3251
	.word	-16
	.word	4
	.word	_Label_3252
	.word	-20
	.word	4
	.word	_Label_3253
	.word	-24
	.word	4
	.word	_Label_3254
	.word	-28
	.word	4
	.word	_Label_3255
	.word	-32
	.word	4
	.word	0
_Label_3247:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_3248:
	.ascii	"Pself\0"
	.align
_Label_3249:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3250:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3251:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3252:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3253:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3242\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3241\0"
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
_Label_4554:
	push	r0
	sub	r1,1,r1
	bne	_Label_4554
	mov	1346,r13		! source line 1346
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3257 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3257 [0 ] into _temp_3258
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
!   _temp_3256 = _temp_3258		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_3259 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3256  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3259  sizeInBytes=4
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
	.word	_Label_3260
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3261
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3262
	.word	-12
	.word	4
	.word	_Label_3263
	.word	-16
	.word	4
	.word	_Label_3264
	.word	-20
	.word	4
	.word	_Label_3265
	.word	-24
	.word	4
	.word	0
_Label_3260:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_3261:
	.ascii	"Pself\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3259\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3258\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3256\0"
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
_Label_4555:
	push	r0
	sub	r1,1,r1
	bne	_Label_4555
	mov	1357,r13		! source line 1357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1372,r13		! source line 1372
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3266
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3266
	jmp	_Label_3267
_Label_3266:
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
	jmp	_Label_3268
_Label_3267:
! ELSE...
	mov	1374,r13		! source line 1374
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3270		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3270
!	jmp	_Label_3269
_Label_3269:
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
_Label_3270:
! END IF...
_Label_3268:
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
_Label_3271:
!	jmp	_Label_3272
_Label_3272:
	mov	1381,r13		! source line 1381
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3275		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3275
!	jmp	_Label_3274
_Label_3274:
! THEN...
	mov	1383,r13		! source line 1383
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3276 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3276  sizeInBytes=4
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
_Label_3275:
! IF STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0IF",r10
	mov	1386,r13		! source line 1386
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3280) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3279  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3279 then goto _Label_3278 else goto _Label_3277
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3277
	jmp	_Label_3278
_Label_3277:
! THEN...
	mov	1387,r13		! source line 1387
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3281 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3281  sizeInBytes=4
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
_Label_3278:
! ASSIGNMENT STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0AS",r10
	mov	1390,r13		! source line 1390
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3283) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3282  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_3282 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0WH",r10
_Label_3284:
!   if offset >= 8192 then goto _Label_3286		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3286
!	jmp	_Label_3285
_Label_3285:
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
!   Data Move: _temp_3287 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_3287  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_3289		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3289
!	jmp	_Label_3288
_Label_3288:
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
_Label_3289:
! END WHILE...
	jmp	_Label_3284
_Label_3286:
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
	jmp	_Label_3271
_Label_3273:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_3290
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_3291
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3292
	.word	12
	.word	4
	.word	_Label_3293
	.word	16
	.word	4
	.word	_Label_3294
	.word	20
	.word	4
	.word	_Label_3295
	.word	-9
	.word	1
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
	.word	-10
	.word	1
	.word	_Label_3301
	.word	-32
	.word	4
	.word	_Label_3302
	.word	-36
	.word	4
	.word	_Label_3303
	.word	-40
	.word	4
	.word	_Label_3304
	.word	-44
	.word	4
	.word	_Label_3305
	.word	-48
	.word	4
	.word	0
_Label_3290:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_3291:
	.ascii	"Pself\0"
	.align
_Label_3292:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3293:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3294:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3295:
	.byte	'C'
	.ascii	"_temp_3287\0"
	.align
_Label_3296:
	.byte	'?'
	.ascii	"_temp_3283\0"
	.align
_Label_3297:
	.byte	'?'
	.ascii	"_temp_3282\0"
	.align
_Label_3298:
	.byte	'?'
	.ascii	"_temp_3281\0"
	.align
_Label_3299:
	.byte	'?'
	.ascii	"_temp_3280\0"
	.align
_Label_3300:
	.byte	'C'
	.ascii	"_temp_3279\0"
	.align
_Label_3301:
	.byte	'?'
	.ascii	"_temp_3276\0"
	.align
_Label_3302:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3303:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3304:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3305:
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
_Label_4556:
	push	r0
	sub	r1,1,r1
	bne	_Label_4556
	mov	1411,r13		! source line 1411
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3306
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3306
	jmp	_Label_3307
_Label_3306:
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
	jmp	_Label_3308
_Label_3307:
! ELSE...
	mov	1424,r13		! source line 1424
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3310		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3310
!	jmp	_Label_3309
_Label_3309:
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
_Label_3310:
! END IF...
_Label_3308:
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
_Label_3311:
!	jmp	_Label_3312
_Label_3312:
	mov	1429,r13		! source line 1429
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3317		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3317
	jmp	_Label_3314
_Label_3317:
	mov	1431,r13		! source line 1431
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3319) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3318  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_3318 then goto _Label_3316 else goto _Label_3314
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_3314
	jmp	_Label_3316
_Label_3316:
	mov	1432,r13		! source line 1432
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3321) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3320  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3320 then goto _Label_3315 else goto _Label_3314
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3314
	jmp	_Label_3315
_Label_3314:
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
_Label_3315:
! ASSIGNMENT STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0AS",r10
	mov	1435,r13		! source line 1435
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3323) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3322  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_3322 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0WH",r10
_Label_3324:
!   if offset >= 8192 then goto _Label_3326		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3326
!	jmp	_Label_3325
_Label_3325:
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
!   Data Move: _temp_3327 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_3327  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_3329		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3329
!	jmp	_Label_3328
_Label_3328:
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
_Label_3329:
! END WHILE...
	jmp	_Label_3324
_Label_3326:
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
	jmp	_Label_3311
_Label_3313:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_3330
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3331
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3332
	.word	12
	.word	4
	.word	_Label_3333
	.word	16
	.word	4
	.word	_Label_3334
	.word	20
	.word	4
	.word	_Label_3335
	.word	-9
	.word	1
	.word	_Label_3336
	.word	-16
	.word	4
	.word	_Label_3337
	.word	-20
	.word	4
	.word	_Label_3338
	.word	-24
	.word	4
	.word	_Label_3339
	.word	-10
	.word	1
	.word	_Label_3340
	.word	-28
	.word	4
	.word	_Label_3341
	.word	-11
	.word	1
	.word	_Label_3342
	.word	-32
	.word	4
	.word	_Label_3343
	.word	-36
	.word	4
	.word	_Label_3344
	.word	-40
	.word	4
	.word	_Label_3345
	.word	-44
	.word	4
	.word	0
_Label_3330:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_3331:
	.ascii	"Pself\0"
	.align
_Label_3332:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3333:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3334:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3335:
	.byte	'C'
	.ascii	"_temp_3327\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3323\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3322\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3321\0"
	.align
_Label_3339:
	.byte	'C'
	.ascii	"_temp_3320\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3319\0"
	.align
_Label_3341:
	.byte	'C'
	.ascii	"_temp_3318\0"
	.align
_Label_3342:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3343:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3344:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3345:
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
_Label_4557:
	push	r0
	sub	r1,1,r1
	bne	_Label_4557
	mov	1453,r13		! source line 1453
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0IF",r10
	mov	1477,r13		! source line 1477
	mov	"\0\0SE",r10
!   _temp_3349 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3350) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3349  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3348  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_3348 >= 4 then goto _Label_3347		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3347
!	jmp	_Label_3346
_Label_3346:
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
_Label_3347:
! IF STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_3352		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3352
!	jmp	_Label_3351
_Label_3351:
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
_Label_3352:
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
!   _temp_3355 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_3354 = _temp_3355 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_3356 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_3357) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3354  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_3356  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3353  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_3353  (sizeInBytes=4)
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
	.word	_Label_3358
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3359
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3360
	.word	12
	.word	4
	.word	_Label_3361
	.word	16
	.word	4
	.word	_Label_3362
	.word	20
	.word	4
	.word	_Label_3363
	.word	-12
	.word	4
	.word	_Label_3364
	.word	-16
	.word	4
	.word	_Label_3365
	.word	-20
	.word	4
	.word	_Label_3366
	.word	-24
	.word	4
	.word	_Label_3367
	.word	-28
	.word	4
	.word	_Label_3368
	.word	-32
	.word	4
	.word	_Label_3369
	.word	-36
	.word	4
	.word	_Label_3370
	.word	-40
	.word	4
	.word	_Label_3371
	.word	-44
	.word	4
	.word	0
_Label_3358:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_3359:
	.ascii	"Pself\0"
	.align
_Label_3360:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_3361:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3362:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_3363:
	.byte	'?'
	.ascii	"_temp_3357\0"
	.align
_Label_3364:
	.byte	'?'
	.ascii	"_temp_3356\0"
	.align
_Label_3365:
	.byte	'?'
	.ascii	"_temp_3355\0"
	.align
_Label_3366:
	.byte	'?'
	.ascii	"_temp_3354\0"
	.align
_Label_3367:
	.byte	'?'
	.ascii	"_temp_3353\0"
	.align
_Label_3368:
	.byte	'?'
	.ascii	"_temp_3350\0"
	.align
_Label_3369:
	.byte	'?'
	.ascii	"_temp_3349\0"
	.align
_Label_3370:
	.byte	'?'
	.ascii	"_temp_3348\0"
	.align
_Label_3371:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3372
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3372:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3373
	.word	_sourceFileName
	.word	309		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3373:
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
_Label_4558:
	push	r0
	sub	r1,1,r1
	bne	_Label_4558
	mov	2323,r13		! source line 2323
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3374 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3374  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2324,r13		! source line 2324
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2325,r13		! source line 2325
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2327,r13		! source line 2327
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2328,r13		! source line 2328
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2329,r13		! source line 2329
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2331,r13		! source line 2331
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
	mov	2332,r13		! source line 2332
	mov	"\0\0SE",r10
!   _temp_3376 = &semUsedInSynchMethods
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
	mov	2333,r13		! source line 2333
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
	mov	2334,r13		! source line 2334
	mov	"\0\0SE",r10
!   _temp_3378 = &diskBusy
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
	mov	2334,r13		! source line 2334
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
	.word	_Label_3379
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3380
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3381
	.word	-12
	.word	4
	.word	_Label_3382
	.word	-16
	.word	4
	.word	_Label_3383
	.word	-20
	.word	4
	.word	_Label_3384
	.word	-24
	.word	4
	.word	_Label_3385
	.word	-28
	.word	4
	.word	0
_Label_3379:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3380:
	.ascii	"Pself\0"
	.align
_Label_3381:
	.byte	'?'
	.ascii	"_temp_3378\0"
	.align
_Label_3382:
	.byte	'?'
	.ascii	"_temp_3377\0"
	.align
_Label_3383:
	.byte	'?'
	.ascii	"_temp_3376\0"
	.align
_Label_3384:
	.byte	'?'
	.ascii	"_temp_3375\0"
	.align
_Label_3385:
	.byte	'?'
	.ascii	"_temp_3374\0"
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
_Label_4559:
	push	r0
	sub	r1,1,r1
	bne	_Label_4559
	mov	2339,r13		! source line 2339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2352,r13		! source line 2352
	mov	"\0\0SE",r10
!   _temp_3386 = &diskBusy
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
	mov	2353,r13		! source line 2353
	mov	"\0\0WH",r10
_Label_3387:
!	jmp	_Label_3388
_Label_3388:
	mov	2353,r13		! source line 2353
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0SE",r10
!   _temp_3390 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3391) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3390  sizeInBytes=4
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
	mov	2357,r13		! source line 2357
	mov	"\0\0SE",r10
!   _temp_3392 = &semUsedInSynchMethods
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
	mov	2360,r13		! source line 2360
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3401 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3395
	cmp	r1,2
	be	_Label_3396
	cmp	r1,3
	be	_Label_3397
	cmp	r1,4
	be	_Label_3398
	cmp	r1,5
	be	_Label_3399
	cmp	r1,6
	be	_Label_3400
	jmp	_Label_3393
! CASE 1...
_Label_3395:
! SEND STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0SE",r10
!   _temp_3402 = &diskBusy
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
	mov	2363,r13		! source line 2363
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3396:
! CALL STATEMENT...
!   _temp_3403 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3403  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2365,r13		! source line 2365
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3397:
! CALL STATEMENT...
!   _temp_3404 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3404  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2367,r13		! source line 2367
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3398:
! CALL STATEMENT...
!   _temp_3405 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3405  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2369,r13		! source line 2369
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3399:
! BREAK STATEMENT...
	mov	2373,r13		! source line 2373
	mov	"\0\0BR",r10
	jmp	_Label_3394
! CASE 6...
_Label_3400:
! CALL STATEMENT...
!   _temp_3406 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3406  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2375,r13		! source line 2375
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3393:
! CALL STATEMENT...
!   _temp_3407 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3407  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2377,r13		! source line 2377
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3394:
! END WHILE...
	jmp	_Label_3387
_Label_3389:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3408
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3409
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3410
	.word	12
	.word	4
	.word	_Label_3411
	.word	16
	.word	4
	.word	_Label_3412
	.word	20
	.word	4
	.word	_Label_3413
	.word	-12
	.word	4
	.word	_Label_3414
	.word	-16
	.word	4
	.word	_Label_3415
	.word	-20
	.word	4
	.word	_Label_3416
	.word	-24
	.word	4
	.word	_Label_3417
	.word	-28
	.word	4
	.word	_Label_3418
	.word	-32
	.word	4
	.word	_Label_3419
	.word	-36
	.word	4
	.word	_Label_3420
	.word	-40
	.word	4
	.word	_Label_3421
	.word	-44
	.word	4
	.word	_Label_3422
	.word	-48
	.word	4
	.word	_Label_3423
	.word	-52
	.word	4
	.word	0
_Label_3408:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3409:
	.ascii	"Pself\0"
	.align
_Label_3410:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3411:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3412:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3413:
	.byte	'?'
	.ascii	"_temp_3407\0"
	.align
_Label_3414:
	.byte	'?'
	.ascii	"_temp_3406\0"
	.align
_Label_3415:
	.byte	'?'
	.ascii	"_temp_3405\0"
	.align
_Label_3416:
	.byte	'?'
	.ascii	"_temp_3404\0"
	.align
_Label_3417:
	.byte	'?'
	.ascii	"_temp_3403\0"
	.align
_Label_3418:
	.byte	'?'
	.ascii	"_temp_3402\0"
	.align
_Label_3419:
	.byte	'?'
	.ascii	"_temp_3401\0"
	.align
_Label_3420:
	.byte	'?'
	.ascii	"_temp_3392\0"
	.align
_Label_3421:
	.byte	'?'
	.ascii	"_temp_3391\0"
	.align
_Label_3422:
	.byte	'?'
	.ascii	"_temp_3390\0"
	.align
_Label_3423:
	.byte	'?'
	.ascii	"_temp_3386\0"
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
	mov	2386,r13		! source line 2386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2401,r13		! source line 2401
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2404,r13		! source line 2404
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
	mov	2405,r13		! source line 2405
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
	mov	2406,r13		! source line 2406
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
	mov	2407,r13		! source line 2407
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
	mov	2407,r13		! source line 2407
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
	.word	_Label_3424
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3425
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3426
	.word	12
	.word	4
	.word	_Label_3427
	.word	16
	.word	4
	.word	_Label_3428
	.word	20
	.word	4
	.word	_Label_3429
	.word	24
	.word	4
	.word	0
_Label_3424:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3425:
	.ascii	"Pself\0"
	.align
_Label_3426:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3427:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3428:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3429:
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
_Label_4560:
	push	r0
	sub	r1,1,r1
	bne	_Label_4560
	mov	2412,r13		! source line 2412
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0SE",r10
!   _temp_3430 = &diskBusy
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
	mov	2425,r13		! source line 2425
	mov	"\0\0WH",r10
_Label_3431:
!	jmp	_Label_3432
_Label_3432:
	mov	2425,r13		! source line 2425
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2426,r13		! source line 2426
	mov	"\0\0SE",r10
!   _temp_3434 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3435) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3434  sizeInBytes=4
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
	mov	2428,r13		! source line 2428
	mov	"\0\0SE",r10
!   _temp_3436 = &semUsedInSynchMethods
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
	mov	2431,r13		! source line 2431
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3445 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3439
	cmp	r1,2
	be	_Label_3440
	cmp	r1,3
	be	_Label_3441
	cmp	r1,4
	be	_Label_3442
	cmp	r1,5
	be	_Label_3443
	cmp	r1,6
	be	_Label_3444
	jmp	_Label_3437
! CASE 1...
_Label_3439:
! SEND STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0SE",r10
!   _temp_3446 = &diskBusy
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
	mov	2434,r13		! source line 2434
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3440:
! CALL STATEMENT...
!   _temp_3447 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3447  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2436,r13		! source line 2436
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3441:
! CALL STATEMENT...
!   _temp_3448 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3448  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2438,r13		! source line 2438
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3442:
! CALL STATEMENT...
!   _temp_3449 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3449  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2440,r13		! source line 2440
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3443:
! BREAK STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0BR",r10
	jmp	_Label_3438
! CASE 6...
_Label_3444:
! CALL STATEMENT...
!   _temp_3450 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3450  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2446,r13		! source line 2446
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3437:
! CALL STATEMENT...
!   _temp_3451 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3451  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2448,r13		! source line 2448
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3438:
! END WHILE...
	jmp	_Label_3431
_Label_3433:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3452
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3453
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3454
	.word	12
	.word	4
	.word	_Label_3455
	.word	16
	.word	4
	.word	_Label_3456
	.word	20
	.word	4
	.word	_Label_3457
	.word	-12
	.word	4
	.word	_Label_3458
	.word	-16
	.word	4
	.word	_Label_3459
	.word	-20
	.word	4
	.word	_Label_3460
	.word	-24
	.word	4
	.word	_Label_3461
	.word	-28
	.word	4
	.word	_Label_3462
	.word	-32
	.word	4
	.word	_Label_3463
	.word	-36
	.word	4
	.word	_Label_3464
	.word	-40
	.word	4
	.word	_Label_3465
	.word	-44
	.word	4
	.word	_Label_3466
	.word	-48
	.word	4
	.word	_Label_3467
	.word	-52
	.word	4
	.word	0
_Label_3452:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3453:
	.ascii	"Pself\0"
	.align
_Label_3454:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3455:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3456:
	.byte	'I'
	.ascii	"memoryAddr\0"
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
	.ascii	"_temp_3446\0"
	.align
_Label_3463:
	.byte	'?'
	.ascii	"_temp_3445\0"
	.align
_Label_3464:
	.byte	'?'
	.ascii	"_temp_3436\0"
	.align
_Label_3465:
	.byte	'?'
	.ascii	"_temp_3435\0"
	.align
_Label_3466:
	.byte	'?'
	.ascii	"_temp_3434\0"
	.align
_Label_3467:
	.byte	'?'
	.ascii	"_temp_3430\0"
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
	mov	2457,r13		! source line 2457
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2474,r13		! source line 2474
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
	mov	2475,r13		! source line 2475
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
	mov	2476,r13		! source line 2476
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
	mov	2477,r13		! source line 2477
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
	mov	2477,r13		! source line 2477
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
	.word	_Label_3468
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3469
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3470
	.word	12
	.word	4
	.word	_Label_3471
	.word	16
	.word	4
	.word	_Label_3472
	.word	20
	.word	4
	.word	_Label_3473
	.word	24
	.word	4
	.word	0
_Label_3468:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3469:
	.ascii	"Pself\0"
	.align
_Label_3470:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3471:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3472:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3473:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3474
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
_Label_3474:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3475
	.word	_sourceFileName
	.word	332		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3475:
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
_Label_4561:
	push	r0
	sub	r1,1,r1
	bne	_Label_4561
	mov	2488,r13		! source line 2488
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3476 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3476  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2495,r13		! source line 2495
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2496,r13		! source line 2496
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
	mov	2497,r13		! source line 2497
	mov	"\0\0SE",r10
!   _temp_3478 = &fileManagerLock
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
	mov	2500,r13		! source line 2500
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
	mov	2501,r13		! source line 2501
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
	mov	2502,r13		! source line 2502
	mov	"\0\0SE",r10
!   _temp_3481 = &anFCBBecameFree
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
	mov	2503,r13		! source line 2503
	mov	"\0\0AS",r10
!   _temp_3482 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3484 = &_temp_3483
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3484 = _temp_3484 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3486 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4562:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4562
!   _temp_3486 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3488:
!   Data Move: *_temp_3484 = _temp_3486  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4563:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4563
!   _temp_3484 = _temp_3484 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3485 = _temp_3485 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3485) then goto _Label_3488
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3488
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3489 = &_temp_3483
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4564
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4564:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3482 = *_temp_3489  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4565:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4565
! FOR STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3494 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3495 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3494  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3490:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3495 then goto _Label_3493		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3493
_Label_3491:
	mov	2505,r13		! source line 2505
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0AS",r10
!   _temp_3496 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3496 [i ] into _temp_3497
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
!   _temp_3498 = _temp_3497 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3498 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0SE",r10
!   _temp_3499 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3499 [i ] into _temp_3500
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
	mov	2508,r13		! source line 2508
	mov	"\0\0SE",r10
!   _temp_3502 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3502 [i ] into _temp_3503
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
!   _temp_3501 = _temp_3503		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3504 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3501  sizeInBytes=4
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
_Label_3492:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3490
! END FOR
_Label_3493:
! ASSIGNMENT STATEMENT...
	mov	2512,r13		! source line 2512
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
	mov	2513,r13		! source line 2513
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
	mov	2514,r13		! source line 2514
	mov	"\0\0SE",r10
!   _temp_3507 = &anOpenFileBecameFree
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
	mov	2515,r13		! source line 2515
	mov	"\0\0AS",r10
!   _temp_3508 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3510 = &_temp_3509
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3510 = _temp_3510 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3512 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4566:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4566
!   _temp_3512 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3514:
!   Data Move: *_temp_3510 = _temp_3512  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4567:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4567
!   _temp_3510 = _temp_3510 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3511 = _temp_3511 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3511) then goto _Label_3514
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3514
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3515 = &_temp_3509
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4568
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4568:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3508 = *_temp_3515  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4569:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4569
! FOR STATEMENT...
	mov	2517,r13		! source line 2517
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3520 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3521 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3520  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3516:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3521 then goto _Label_3519		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3519
_Label_3517:
	mov	2517,r13		! source line 2517
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0AS",r10
!   _temp_3522 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3522 [i ] into _temp_3523
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
!   _temp_3524 = _temp_3523 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3524 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0SE",r10
!   _temp_3526 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3526 [i ] into _temp_3527
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
!   _temp_3525 = _temp_3527		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3528 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3525  sizeInBytes=4
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
_Label_3518:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3516
! END FOR
_Label_3519:
! ASSIGNMENT STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4570:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4570
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0AS",r10
!   _temp_3530 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3531 = _temp_3530 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3531 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0AS",r10
	mov	2529,r13		! source line 2529
	mov	"\0\0SE",r10
!   _temp_3532 = &_P_Kernel_frameManager
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
	mov	2530,r13		! source line 2530
	mov	"\0\0SE",r10
!   _temp_3533 = &_P_Kernel_diskDriver
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
	mov	2530,r13		! source line 2530
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
	.word	_Label_3534
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3535
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3536
	.word	-12
	.word	4
	.word	_Label_3537
	.word	-16
	.word	4
	.word	_Label_3538
	.word	-20
	.word	4
	.word	_Label_3539
	.word	-24
	.word	4
	.word	_Label_3540
	.word	-28
	.word	4
	.word	_Label_3541
	.word	-32
	.word	4
	.word	_Label_3542
	.word	-36
	.word	4
	.word	_Label_3543
	.word	-40
	.word	4
	.word	_Label_3544
	.word	-44
	.word	4
	.word	_Label_3545
	.word	-48
	.word	4
	.word	_Label_3546
	.word	-52
	.word	4
	.word	_Label_3547
	.word	-56
	.word	4
	.word	_Label_3548
	.word	-60
	.word	4
	.word	_Label_3549
	.word	-64
	.word	4
	.word	_Label_3550
	.word	-68
	.word	4
	.word	_Label_3551
	.word	-72
	.word	4
	.word	_Label_3552
	.word	-100
	.word	28
	.word	_Label_3553
	.word	-104
	.word	4
	.word	_Label_3554
	.word	-108
	.word	4
	.word	_Label_3555
	.word	-392
	.word	284
	.word	_Label_3556
	.word	-396
	.word	4
	.word	_Label_3557
	.word	-400
	.word	4
	.word	_Label_3558
	.word	-404
	.word	4
	.word	_Label_3559
	.word	-408
	.word	4
	.word	_Label_3560
	.word	-412
	.word	4
	.word	_Label_3561
	.word	-416
	.word	4
	.word	_Label_3562
	.word	-420
	.word	4
	.word	_Label_3563
	.word	-424
	.word	4
	.word	_Label_3564
	.word	-428
	.word	4
	.word	_Label_3565
	.word	-432
	.word	4
	.word	_Label_3566
	.word	-436
	.word	4
	.word	_Label_3567
	.word	-440
	.word	4
	.word	_Label_3568
	.word	-444
	.word	4
	.word	_Label_3569
	.word	-448
	.word	4
	.word	_Label_3570
	.word	-452
	.word	4
	.word	_Label_3571
	.word	-456
	.word	4
	.word	_Label_3572
	.word	-460
	.word	4
	.word	_Label_3573
	.word	-500
	.word	40
	.word	_Label_3574
	.word	-504
	.word	4
	.word	_Label_3575
	.word	-508
	.word	4
	.word	_Label_3576
	.word	-912
	.word	404
	.word	_Label_3577
	.word	-916
	.word	4
	.word	_Label_3578
	.word	-920
	.word	4
	.word	_Label_3579
	.word	-924
	.word	4
	.word	_Label_3580
	.word	-928
	.word	4
	.word	_Label_3581
	.word	-932
	.word	4
	.word	_Label_3582
	.word	-936
	.word	4
	.word	_Label_3583
	.word	-940
	.word	4
	.word	_Label_3584
	.word	-944
	.word	4
	.word	0
_Label_3534:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3535:
	.ascii	"Pself\0"
	.align
_Label_3536:
	.byte	'?'
	.ascii	"_temp_3533\0"
	.align
_Label_3537:
	.byte	'?'
	.ascii	"_temp_3532\0"
	.align
_Label_3538:
	.byte	'?'
	.ascii	"_temp_3531\0"
	.align
_Label_3539:
	.byte	'?'
	.ascii	"_temp_3530\0"
	.align
_Label_3540:
	.byte	'?'
	.ascii	"_temp_3529\0"
	.align
_Label_3541:
	.byte	'?'
	.ascii	"_temp_3528\0"
	.align
_Label_3542:
	.byte	'?'
	.ascii	"_temp_3527\0"
	.align
_Label_3543:
	.byte	'?'
	.ascii	"_temp_3526\0"
	.align
_Label_3544:
	.byte	'?'
	.ascii	"_temp_3525\0"
	.align
_Label_3545:
	.byte	'?'
	.ascii	"_temp_3524\0"
	.align
_Label_3546:
	.byte	'?'
	.ascii	"_temp_3523\0"
	.align
_Label_3547:
	.byte	'?'
	.ascii	"_temp_3522\0"
	.align
_Label_3548:
	.byte	'?'
	.ascii	"_temp_3521\0"
	.align
_Label_3549:
	.byte	'?'
	.ascii	"_temp_3520\0"
	.align
_Label_3550:
	.byte	'?'
	.ascii	"_temp_3515\0"
	.align
_Label_3551:
	.byte	'?'
	.ascii	"_temp_3513\0"
	.align
_Label_3552:
	.byte	'?'
	.ascii	"_temp_3512\0"
	.align
_Label_3553:
	.byte	'?'
	.ascii	"_temp_3511\0"
	.align
_Label_3554:
	.byte	'?'
	.ascii	"_temp_3510\0"
	.align
_Label_3555:
	.byte	'?'
	.ascii	"_temp_3509\0"
	.align
_Label_3556:
	.byte	'?'
	.ascii	"_temp_3508\0"
	.align
_Label_3557:
	.byte	'?'
	.ascii	"_temp_3507\0"
	.align
_Label_3558:
	.byte	'?'
	.ascii	"_temp_3506\0"
	.align
_Label_3559:
	.byte	'?'
	.ascii	"_temp_3505\0"
	.align
_Label_3560:
	.byte	'?'
	.ascii	"_temp_3504\0"
	.align
_Label_3561:
	.byte	'?'
	.ascii	"_temp_3503\0"
	.align
_Label_3562:
	.byte	'?'
	.ascii	"_temp_3502\0"
	.align
_Label_3563:
	.byte	'?'
	.ascii	"_temp_3501\0"
	.align
_Label_3564:
	.byte	'?'
	.ascii	"_temp_3500\0"
	.align
_Label_3565:
	.byte	'?'
	.ascii	"_temp_3499\0"
	.align
_Label_3566:
	.byte	'?'
	.ascii	"_temp_3498\0"
	.align
_Label_3567:
	.byte	'?'
	.ascii	"_temp_3497\0"
	.align
_Label_3568:
	.byte	'?'
	.ascii	"_temp_3496\0"
	.align
_Label_3569:
	.byte	'?'
	.ascii	"_temp_3495\0"
	.align
_Label_3570:
	.byte	'?'
	.ascii	"_temp_3494\0"
	.align
_Label_3571:
	.byte	'?'
	.ascii	"_temp_3489\0"
	.align
_Label_3572:
	.byte	'?'
	.ascii	"_temp_3487\0"
	.align
_Label_3573:
	.byte	'?'
	.ascii	"_temp_3486\0"
	.align
_Label_3574:
	.byte	'?'
	.ascii	"_temp_3485\0"
	.align
_Label_3575:
	.byte	'?'
	.ascii	"_temp_3484\0"
	.align
_Label_3576:
	.byte	'?'
	.ascii	"_temp_3483\0"
	.align
_Label_3577:
	.byte	'?'
	.ascii	"_temp_3482\0"
	.align
_Label_3578:
	.byte	'?'
	.ascii	"_temp_3481\0"
	.align
_Label_3579:
	.byte	'?'
	.ascii	"_temp_3480\0"
	.align
_Label_3580:
	.byte	'?'
	.ascii	"_temp_3479\0"
	.align
_Label_3581:
	.byte	'?'
	.ascii	"_temp_3478\0"
	.align
_Label_3582:
	.byte	'?'
	.ascii	"_temp_3477\0"
	.align
_Label_3583:
	.byte	'?'
	.ascii	"_temp_3476\0"
	.align
_Label_3584:
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
_Label_4571:
	push	r0
	sub	r1,1,r1
	bne	_Label_4571
	mov	2537,r13		! source line 2537
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0SE",r10
!   _temp_3585 = &fileManagerLock
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
!   _temp_3586 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3586  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2540,r13		! source line 2540
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2541,r13		! source line 2541
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3591 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3592 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3591  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3587:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3592 then goto _Label_3590		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3590
_Label_3588:
	mov	2541,r13		! source line 2541
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3593 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3593  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2542,r13		! source line 2542
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2543,r13		! source line 2543
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3594 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3594  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2544,r13		! source line 2544
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0SE",r10
!   _temp_3595 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3595 [i ] into _temp_3596
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
_Label_3589:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3587
! END FOR
_Label_3590:
! CALL STATEMENT...
!   _temp_3597 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3597  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2547,r13		! source line 2547
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0SE",r10
!   _temp_3598 = _function_213_printFCB
	set	_function_213_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3599 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3598  sizeInBytes=4
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
	mov	2549,r13		! source line 2549
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3600 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3600  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2550,r13		! source line 2550
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2551,r13		! source line 2551
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3605 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3606 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3605  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3601:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3606 then goto _Label_3604		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3604
_Label_3602:
	mov	2551,r13		! source line 2551
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3607 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3607  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2552,r13		! source line 2552
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2553,r13		! source line 2553
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3608 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3608  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2554,r13		! source line 2554
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3610 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3610 [i ] into _temp_3611
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
!   _temp_3609 = _temp_3611		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3609  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2555,r13		! source line 2555
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3612 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3612  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2556,r13		! source line 2556
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0SE",r10
!   _temp_3613 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3613 [i ] into _temp_3614
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
_Label_3603:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3601
! END FOR
_Label_3604:
! CALL STATEMENT...
!   _temp_3615 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3615  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2559,r13		! source line 2559
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0SE",r10
!   _temp_3616 = _function_212_printOpen
	set	_function_212_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3617 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3616  sizeInBytes=4
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
	mov	2561,r13		! source line 2561
	mov	"\0\0SE",r10
!   _temp_3618 = &fileManagerLock
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
	mov	2561,r13		! source line 2561
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
	.word	_Label_3619
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3620
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3621
	.word	-12
	.word	4
	.word	_Label_3622
	.word	-16
	.word	4
	.word	_Label_3623
	.word	-20
	.word	4
	.word	_Label_3624
	.word	-24
	.word	4
	.word	_Label_3625
	.word	-28
	.word	4
	.word	_Label_3626
	.word	-32
	.word	4
	.word	_Label_3627
	.word	-36
	.word	4
	.word	_Label_3628
	.word	-40
	.word	4
	.word	_Label_3629
	.word	-44
	.word	4
	.word	_Label_3630
	.word	-48
	.word	4
	.word	_Label_3631
	.word	-52
	.word	4
	.word	_Label_3632
	.word	-56
	.word	4
	.word	_Label_3633
	.word	-60
	.word	4
	.word	_Label_3634
	.word	-64
	.word	4
	.word	_Label_3635
	.word	-68
	.word	4
	.word	_Label_3636
	.word	-72
	.word	4
	.word	_Label_3637
	.word	-76
	.word	4
	.word	_Label_3638
	.word	-80
	.word	4
	.word	_Label_3639
	.word	-84
	.word	4
	.word	_Label_3640
	.word	-88
	.word	4
	.word	_Label_3641
	.word	-92
	.word	4
	.word	_Label_3642
	.word	-96
	.word	4
	.word	_Label_3643
	.word	-100
	.word	4
	.word	_Label_3644
	.word	-104
	.word	4
	.word	_Label_3645
	.word	-108
	.word	4
	.word	_Label_3646
	.word	-112
	.word	4
	.word	_Label_3647
	.word	-116
	.word	4
	.word	0
_Label_3619:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3620:
	.ascii	"Pself\0"
	.align
_Label_3621:
	.byte	'?'
	.ascii	"_temp_3618\0"
	.align
_Label_3622:
	.byte	'?'
	.ascii	"_temp_3617\0"
	.align
_Label_3623:
	.byte	'?'
	.ascii	"_temp_3616\0"
	.align
_Label_3624:
	.byte	'?'
	.ascii	"_temp_3615\0"
	.align
_Label_3625:
	.byte	'?'
	.ascii	"_temp_3614\0"
	.align
_Label_3626:
	.byte	'?'
	.ascii	"_temp_3613\0"
	.align
_Label_3627:
	.byte	'?'
	.ascii	"_temp_3612\0"
	.align
_Label_3628:
	.byte	'?'
	.ascii	"_temp_3611\0"
	.align
_Label_3629:
	.byte	'?'
	.ascii	"_temp_3610\0"
	.align
_Label_3630:
	.byte	'?'
	.ascii	"_temp_3609\0"
	.align
_Label_3631:
	.byte	'?'
	.ascii	"_temp_3608\0"
	.align
_Label_3632:
	.byte	'?'
	.ascii	"_temp_3607\0"
	.align
_Label_3633:
	.byte	'?'
	.ascii	"_temp_3606\0"
	.align
_Label_3634:
	.byte	'?'
	.ascii	"_temp_3605\0"
	.align
_Label_3635:
	.byte	'?'
	.ascii	"_temp_3600\0"
	.align
_Label_3636:
	.byte	'?'
	.ascii	"_temp_3599\0"
	.align
_Label_3637:
	.byte	'?'
	.ascii	"_temp_3598\0"
	.align
_Label_3638:
	.byte	'?'
	.ascii	"_temp_3597\0"
	.align
_Label_3639:
	.byte	'?'
	.ascii	"_temp_3596\0"
	.align
_Label_3640:
	.byte	'?'
	.ascii	"_temp_3595\0"
	.align
_Label_3641:
	.byte	'?'
	.ascii	"_temp_3594\0"
	.align
_Label_3642:
	.byte	'?'
	.ascii	"_temp_3593\0"
	.align
_Label_3643:
	.byte	'?'
	.ascii	"_temp_3592\0"
	.align
_Label_3644:
	.byte	'?'
	.ascii	"_temp_3591\0"
	.align
_Label_3645:
	.byte	'?'
	.ascii	"_temp_3586\0"
	.align
_Label_3646:
	.byte	'?'
	.ascii	"_temp_3585\0"
	.align
_Label_3647:
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
_Label_4572:
	push	r0
	sub	r1,1,r1
	bne	_Label_4572
	mov	2566,r13		! source line 2566
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2582,r13		! source line 2582
	mov	"\0\0AS",r10
	mov	2582,r13		! source line 2582
	mov	"\0\0SE",r10
!   _temp_3648 = &_P_Kernel_fileManager
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
	mov	2583,r13		! source line 2583
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3649
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3649
	jmp	_Label_3650
_Label_3649:
! THEN...
	mov	2584,r13		! source line 2584
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3650:
! SEND STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0SE",r10
!   _temp_3651 = &fileManagerLock
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
	mov	2589,r13		! source line 2589
	mov	"\0\0WH",r10
_Label_3652:
	mov	2589,r13		! source line 2589
	mov	"\0\0SE",r10
!   _temp_3655 = &openFileFreeList
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
!   if result==true then goto _Label_3653 else goto _Label_3654
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3654
	jmp	_Label_3653
_Label_3653:
	mov	2589,r13		! source line 2589
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0SE",r10
!   _temp_3656 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3657 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3656  sizeInBytes=4
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
	jmp	_Label_3652
_Label_3654:
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0AS",r10
	mov	2592,r13		! source line 2592
	mov	"\0\0SE",r10
!   _temp_3658 = &openFileFreeList
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
	mov	2595,r13		! source line 2595
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3659 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3659 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3660 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3660 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3661 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3661 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2601,r13		! source line 2601
	mov	"\0\0SE",r10
!   _temp_3662 = &fileManagerLock
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
	mov	2602,r13		! source line 2602
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
	.word	_Label_3663
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3664
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3665
	.word	12
	.word	4
	.word	_Label_3666
	.word	-12
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
	.word	0
_Label_3663:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3664:
	.ascii	"Pself\0"
	.align
_Label_3665:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3666:
	.byte	'?'
	.ascii	"_temp_3662\0"
	.align
_Label_3667:
	.byte	'?'
	.ascii	"_temp_3661\0"
	.align
_Label_3668:
	.byte	'?'
	.ascii	"_temp_3660\0"
	.align
_Label_3669:
	.byte	'?'
	.ascii	"_temp_3659\0"
	.align
_Label_3670:
	.byte	'?'
	.ascii	"_temp_3658\0"
	.align
_Label_3671:
	.byte	'?'
	.ascii	"_temp_3657\0"
	.align
_Label_3672:
	.byte	'?'
	.ascii	"_temp_3656\0"
	.align
_Label_3673:
	.byte	'?'
	.ascii	"_temp_3655\0"
	.align
_Label_3674:
	.byte	'?'
	.ascii	"_temp_3651\0"
	.align
_Label_3675:
	.byte	'?'
	.ascii	"_temp_3648\0"
	.align
_Label_3676:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3677:
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
_Label_4573:
	push	r0
	sub	r1,1,r1
	bne	_Label_4573
	mov	2607,r13		! source line 2607
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2635,r13		! source line 2635
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
	mov	2636,r13		! source line 2636
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3679		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3679
!	jmp	_Label_3678
_Label_3678:
! THEN...
	mov	2638,r13		! source line 2638
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3680 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3680  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2638,r13		! source line 2638
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3679:
! ASSIGNMENT STATEMENT...
	mov	2642,r13		! source line 2642
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
	mov	2643,r13		! source line 2643
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2644,r13		! source line 2644
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
	mov	2645,r13		! source line 2645
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2648,r13		! source line 2648
	mov	"\0\0WH",r10
_Label_3681:
!   if numFiles <= 0 then goto _Label_3683		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3683
!	jmp	_Label_3682
_Label_3682:
	mov	2648,r13		! source line 2648
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3684 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3684  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2649,r13		! source line 2649
	mov	"\0\0CA",r10
	call	_function_214_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3685 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3685  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2651,r13		! source line 2651
	mov	"\0\0CA",r10
	call	_function_214_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3686 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3686  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2653,r13		! source line 2653
	mov	"\0\0CA",r10
	call	_function_214_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3690 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3690 then goto _Label_3688		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3688
!	jmp	_Label_3689
_Label_3689:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3692
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
!   _temp_3691 = _temp_3692		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3691  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2656,r13		! source line 2656
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3687 else goto _Label_3688
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3688
	jmp	_Label_3687
_Label_3687:
! THEN...
	mov	2657,r13		! source line 2657
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0BR",r10
	jmp	_Label_3683
! END IF...
_Label_3688:
! ASSIGNMENT STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3681
_Label_3683:
! IF STATEMENT...
	mov	2664,r13		! source line 2664
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3694		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3694
!	jmp	_Label_3693
_Label_3693:
! THEN...
	mov	2665,r13		! source line 2665
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3694:
! SEND STATEMENT...
	mov	2668,r13		! source line 2668
	mov	"\0\0SE",r10
!   _temp_3695 = &fileManagerLock
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
	mov	2670,r13		! source line 2670
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3700 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3701 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3700  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3696:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3701 then goto _Label_3699		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3699
_Label_3697:
	mov	2670,r13		! source line 2670
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0AS",r10
!   _temp_3702 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3702 [i ] into _temp_3703
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
!   fcb = _temp_3703		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3707 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3706 = *_temp_3707  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3706 != start then goto _Label_3705		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3705
!	jmp	_Label_3704
_Label_3704:
! THEN...
	mov	2673,r13		! source line 2673
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3708 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3711 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3710 = *_temp_3711  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3709 = _temp_3710 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3708 = _temp_3709  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2674,r13		! source line 2674
	mov	"\0\0SE",r10
!   _temp_3712 = &fileManagerLock
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
	mov	2675,r13		! source line 2675
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3705:
!   Increment the FOR-LOOP index variable and jump back
_Label_3698:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3696
! END FOR
_Label_3699:
! WHILE STATEMENT...
	mov	2680,r13		! source line 2680
	mov	"\0\0WH",r10
_Label_3713:
	mov	2680,r13		! source line 2680
	mov	"\0\0SE",r10
!   _temp_3716 = &fcbFreeList
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
!   if result==true then goto _Label_3714 else goto _Label_3715
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3715
	jmp	_Label_3714
_Label_3714:
	mov	2680,r13		! source line 2680
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0SE",r10
!   _temp_3717 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3718 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3717  sizeInBytes=4
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
	jmp	_Label_3713
_Label_3715:
! ASSIGNMENT STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0AS",r10
	mov	2683,r13		! source line 2683
	mov	"\0\0SE",r10
!   _temp_3719 = &fcbFreeList
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
	mov	2686,r13		! source line 2686
	mov	"\0\0SE",r10
!   _temp_3720 = &fileManagerLock
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
	mov	2689,r13		! source line 2689
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3721 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3721 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2690,r13		! source line 2690
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3722 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3722 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2691,r13		! source line 2691
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3723 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3723 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3728 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3727 = *_temp_3728  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3727 < 0 then goto _Label_3726		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3726
	jmp	_Label_3724
_Label_3726:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3729 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3729 ) then goto _Label_3725		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3725
!	jmp	_Label_3724
_Label_3724:
! THEN...
	mov	2693,r13		! source line 2693
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3730 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3730  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2693,r13		! source line 2693
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3725:
! RETURN STATEMENT...
	mov	2695,r13		! source line 2695
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
	.word	_Label_3731
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3732
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3733
	.word	12
	.word	4
	.word	_Label_3734
	.word	-12
	.word	4
	.word	_Label_3735
	.word	-16
	.word	4
	.word	_Label_3736
	.word	-20
	.word	4
	.word	_Label_3737
	.word	-24
	.word	4
	.word	_Label_3738
	.word	-28
	.word	4
	.word	_Label_3739
	.word	-32
	.word	4
	.word	_Label_3740
	.word	-36
	.word	4
	.word	_Label_3741
	.word	-40
	.word	4
	.word	_Label_3742
	.word	-44
	.word	4
	.word	_Label_3743
	.word	-48
	.word	4
	.word	_Label_3744
	.word	-52
	.word	4
	.word	_Label_3745
	.word	-56
	.word	4
	.word	_Label_3746
	.word	-60
	.word	4
	.word	_Label_3747
	.word	-64
	.word	4
	.word	_Label_3748
	.word	-68
	.word	4
	.word	_Label_3749
	.word	-72
	.word	4
	.word	_Label_3750
	.word	-76
	.word	4
	.word	_Label_3751
	.word	-80
	.word	4
	.word	_Label_3752
	.word	-84
	.word	4
	.word	_Label_3753
	.word	-88
	.word	4
	.word	_Label_3754
	.word	-92
	.word	4
	.word	_Label_3755
	.word	-96
	.word	4
	.word	_Label_3756
	.word	-100
	.word	4
	.word	_Label_3757
	.word	-104
	.word	4
	.word	_Label_3758
	.word	-108
	.word	4
	.word	_Label_3759
	.word	-112
	.word	4
	.word	_Label_3760
	.word	-116
	.word	4
	.word	_Label_3761
	.word	-120
	.word	4
	.word	_Label_3762
	.word	-124
	.word	4
	.word	_Label_3763
	.word	-128
	.word	4
	.word	_Label_3764
	.word	-132
	.word	4
	.word	_Label_3765
	.word	-136
	.word	4
	.word	_Label_3766
	.word	-140
	.word	4
	.word	_Label_3767
	.word	-144
	.word	4
	.word	_Label_3768
	.word	-148
	.word	4
	.word	_Label_3769
	.word	-152
	.word	4
	.word	_Label_3770
	.word	-156
	.word	4
	.word	_Label_3771
	.word	-160
	.word	4
	.word	0
_Label_3731:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3732:
	.ascii	"Pself\0"
	.align
_Label_3733:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3734:
	.byte	'?'
	.ascii	"_temp_3730\0"
	.align
_Label_3735:
	.byte	'?'
	.ascii	"_temp_3729\0"
	.align
_Label_3736:
	.byte	'?'
	.ascii	"_temp_3728\0"
	.align
_Label_3737:
	.byte	'?'
	.ascii	"_temp_3727\0"
	.align
_Label_3738:
	.byte	'?'
	.ascii	"_temp_3723\0"
	.align
_Label_3739:
	.byte	'?'
	.ascii	"_temp_3722\0"
	.align
_Label_3740:
	.byte	'?'
	.ascii	"_temp_3721\0"
	.align
_Label_3741:
	.byte	'?'
	.ascii	"_temp_3720\0"
	.align
_Label_3742:
	.byte	'?'
	.ascii	"_temp_3719\0"
	.align
_Label_3743:
	.byte	'?'
	.ascii	"_temp_3718\0"
	.align
_Label_3744:
	.byte	'?'
	.ascii	"_temp_3717\0"
	.align
_Label_3745:
	.byte	'?'
	.ascii	"_temp_3716\0"
	.align
_Label_3746:
	.byte	'?'
	.ascii	"_temp_3712\0"
	.align
_Label_3747:
	.byte	'?'
	.ascii	"_temp_3711\0"
	.align
_Label_3748:
	.byte	'?'
	.ascii	"_temp_3710\0"
	.align
_Label_3749:
	.byte	'?'
	.ascii	"_temp_3709\0"
	.align
_Label_3750:
	.byte	'?'
	.ascii	"_temp_3708\0"
	.align
_Label_3751:
	.byte	'?'
	.ascii	"_temp_3707\0"
	.align
_Label_3752:
	.byte	'?'
	.ascii	"_temp_3706\0"
	.align
_Label_3753:
	.byte	'?'
	.ascii	"_temp_3703\0"
	.align
_Label_3754:
	.byte	'?'
	.ascii	"_temp_3702\0"
	.align
_Label_3755:
	.byte	'?'
	.ascii	"_temp_3701\0"
	.align
_Label_3756:
	.byte	'?'
	.ascii	"_temp_3700\0"
	.align
_Label_3757:
	.byte	'?'
	.ascii	"_temp_3695\0"
	.align
_Label_3758:
	.byte	'?'
	.ascii	"_temp_3692\0"
	.align
_Label_3759:
	.byte	'?'
	.ascii	"_temp_3691\0"
	.align
_Label_3760:
	.byte	'?'
	.ascii	"_temp_3690\0"
	.align
_Label_3761:
	.byte	'?'
	.ascii	"_temp_3686\0"
	.align
_Label_3762:
	.byte	'?'
	.ascii	"_temp_3685\0"
	.align
_Label_3763:
	.byte	'?'
	.ascii	"_temp_3684\0"
	.align
_Label_3764:
	.byte	'?'
	.ascii	"_temp_3680\0"
	.align
_Label_3765:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3766:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3767:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3768:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3769:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3770:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3771:
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
_Label_4574:
	push	r0
	sub	r1,1,r1
	bne	_Label_4574
	mov	2708,r13		! source line 2708
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0IF",r10
!   _temp_3774 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3774 then goto _Label_3773		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3773
!	jmp	_Label_3772
_Label_3772:
! THEN...
	mov	2711,r13		! source line 2711
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3773:
! SEND STATEMENT...
	mov	2713,r13		! source line 2713
	mov	"\0\0SE",r10
!   _temp_3775 = &fileManagerLock
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
	mov	2714,r13		! source line 2714
	mov	"\0\0SE",r10
!   _temp_3776 = &_P_Kernel_fileManager
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
	mov	2715,r13		! source line 2715
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3777 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3777  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2716,r13		! source line 2716
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3778 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3781 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3780 = *_temp_3781  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3779 = _temp_3780 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3778 = _temp_3779  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2717,r13		! source line 2717
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3785 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3784 = *_temp_3785  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3784 > 0 then goto _Label_3783		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3783
!	jmp	_Label_3782
_Label_3782:
! THEN...
	mov	2718,r13		! source line 2718
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2718,r13		! source line 2718
	mov	"\0\0SE",r10
!   _temp_3786 = &openFileFreeList
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
	mov	2719,r13		! source line 2719
	mov	"\0\0SE",r10
!   _temp_3787 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3788 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3787  sizeInBytes=4
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
	mov	2720,r13		! source line 2720
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3789 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3792 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3791 = *_temp_3792  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3790 = _temp_3791 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3789 = _temp_3790  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2721,r13		! source line 2721
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3796 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3795 = *_temp_3796  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3795 > 0 then goto _Label_3794		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3794
!	jmp	_Label_3793
_Label_3793:
! THEN...
	mov	2722,r13		! source line 2722
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2722,r13		! source line 2722
	mov	"\0\0SE",r10
!   _temp_3797 = &fcbFreeList
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
	mov	2723,r13		! source line 2723
	mov	"\0\0SE",r10
!   _temp_3798 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3799 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3798  sizeInBytes=4
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
_Label_3794:
! END IF...
_Label_3783:
! SEND STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0SE",r10
!   _temp_3800 = &fileManagerLock
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
	mov	2726,r13		! source line 2726
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
	.word	_Label_3801
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3802
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3803
	.word	12
	.word	4
	.word	_Label_3804
	.word	-12
	.word	4
	.word	_Label_3805
	.word	-16
	.word	4
	.word	_Label_3806
	.word	-20
	.word	4
	.word	_Label_3807
	.word	-24
	.word	4
	.word	_Label_3808
	.word	-28
	.word	4
	.word	_Label_3809
	.word	-32
	.word	4
	.word	_Label_3810
	.word	-36
	.word	4
	.word	_Label_3811
	.word	-40
	.word	4
	.word	_Label_3812
	.word	-44
	.word	4
	.word	_Label_3813
	.word	-48
	.word	4
	.word	_Label_3814
	.word	-52
	.word	4
	.word	_Label_3815
	.word	-56
	.word	4
	.word	_Label_3816
	.word	-60
	.word	4
	.word	_Label_3817
	.word	-64
	.word	4
	.word	_Label_3818
	.word	-68
	.word	4
	.word	_Label_3819
	.word	-72
	.word	4
	.word	_Label_3820
	.word	-76
	.word	4
	.word	_Label_3821
	.word	-80
	.word	4
	.word	_Label_3822
	.word	-84
	.word	4
	.word	_Label_3823
	.word	-88
	.word	4
	.word	_Label_3824
	.word	-92
	.word	4
	.word	_Label_3825
	.word	-96
	.word	4
	.word	_Label_3826
	.word	-100
	.word	4
	.word	_Label_3827
	.word	-104
	.word	4
	.word	0
_Label_3801:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3802:
	.ascii	"Pself\0"
	.align
_Label_3803:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3804:
	.byte	'?'
	.ascii	"_temp_3800\0"
	.align
_Label_3805:
	.byte	'?'
	.ascii	"_temp_3799\0"
	.align
_Label_3806:
	.byte	'?'
	.ascii	"_temp_3798\0"
	.align
_Label_3807:
	.byte	'?'
	.ascii	"_temp_3797\0"
	.align
_Label_3808:
	.byte	'?'
	.ascii	"_temp_3796\0"
	.align
_Label_3809:
	.byte	'?'
	.ascii	"_temp_3795\0"
	.align
_Label_3810:
	.byte	'?'
	.ascii	"_temp_3792\0"
	.align
_Label_3811:
	.byte	'?'
	.ascii	"_temp_3791\0"
	.align
_Label_3812:
	.byte	'?'
	.ascii	"_temp_3790\0"
	.align
_Label_3813:
	.byte	'?'
	.ascii	"_temp_3789\0"
	.align
_Label_3814:
	.byte	'?'
	.ascii	"_temp_3788\0"
	.align
_Label_3815:
	.byte	'?'
	.ascii	"_temp_3787\0"
	.align
_Label_3816:
	.byte	'?'
	.ascii	"_temp_3786\0"
	.align
_Label_3817:
	.byte	'?'
	.ascii	"_temp_3785\0"
	.align
_Label_3818:
	.byte	'?'
	.ascii	"_temp_3784\0"
	.align
_Label_3819:
	.byte	'?'
	.ascii	"_temp_3781\0"
	.align
_Label_3820:
	.byte	'?'
	.ascii	"_temp_3780\0"
	.align
_Label_3821:
	.byte	'?'
	.ascii	"_temp_3779\0"
	.align
_Label_3822:
	.byte	'?'
	.ascii	"_temp_3778\0"
	.align
_Label_3823:
	.byte	'?'
	.ascii	"_temp_3777\0"
	.align
_Label_3824:
	.byte	'?'
	.ascii	"_temp_3776\0"
	.align
_Label_3825:
	.byte	'?'
	.ascii	"_temp_3775\0"
	.align
_Label_3826:
	.byte	'?'
	.ascii	"_temp_3774\0"
	.align
_Label_3827:
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
_Label_4575:
	push	r0
	sub	r1,1,r1
	bne	_Label_4575
	mov	2731,r13		! source line 2731
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2736,r13		! source line 2736
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3831 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3830 = *_temp_3831  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3830) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3832 = _temp_3830 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3832 ) then goto _Label_3829		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3829
!	jmp	_Label_3828
_Label_3828:
! THEN...
	mov	2737,r13		! source line 2737
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2737,r13		! source line 2737
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3837 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3836 = *_temp_3837  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3836) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3838 = _temp_3836 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3835 = *_temp_3838  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3835 >= 0 then goto _Label_3834		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3834
!	jmp	_Label_3833
_Label_3833:
! THEN...
	mov	2738,r13		! source line 2738
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3839 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3839  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2738,r13		! source line 2738
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3834:
! ASSIGNMENT STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3841 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3840 = *_temp_3841  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3840) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3842 = _temp_3840 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3842 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2741,r13		! source line 2741
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3846 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3845 = *_temp_3846  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3845) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3847 = _temp_3845 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3844 = *_temp_3847  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3850 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3849 = *_temp_3850  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3849) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3851 = _temp_3849 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3848 = *_temp_3851  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3843 = _temp_3844 + _temp_3848		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3854 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3853 = *_temp_3854  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3853) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3855 = _temp_3853 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3852 = *_temp_3855  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3856 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3843  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3852  sizeInBytes=4
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
_Label_3829:
! RETURN STATEMENT...
	mov	2736,r13		! source line 2736
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
	.word	_Label_3857
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3858
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3859
	.word	12
	.word	4
	.word	_Label_3860
	.word	-12
	.word	4
	.word	_Label_3861
	.word	-16
	.word	4
	.word	_Label_3862
	.word	-20
	.word	4
	.word	_Label_3863
	.word	-24
	.word	4
	.word	_Label_3864
	.word	-28
	.word	4
	.word	_Label_3865
	.word	-32
	.word	4
	.word	_Label_3866
	.word	-36
	.word	4
	.word	_Label_3867
	.word	-40
	.word	4
	.word	_Label_3868
	.word	-44
	.word	4
	.word	_Label_3869
	.word	-48
	.word	4
	.word	_Label_3870
	.word	-52
	.word	4
	.word	_Label_3871
	.word	-56
	.word	4
	.word	_Label_3872
	.word	-60
	.word	4
	.word	_Label_3873
	.word	-64
	.word	4
	.word	_Label_3874
	.word	-68
	.word	4
	.word	_Label_3875
	.word	-72
	.word	4
	.word	_Label_3876
	.word	-76
	.word	4
	.word	_Label_3877
	.word	-80
	.word	4
	.word	_Label_3878
	.word	-84
	.word	4
	.word	_Label_3879
	.word	-88
	.word	4
	.word	_Label_3880
	.word	-92
	.word	4
	.word	_Label_3881
	.word	-96
	.word	4
	.word	_Label_3882
	.word	-100
	.word	4
	.word	_Label_3883
	.word	-104
	.word	4
	.word	_Label_3884
	.word	-108
	.word	4
	.word	0
_Label_3857:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3858:
	.ascii	"Pself\0"
	.align
_Label_3859:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3860:
	.byte	'?'
	.ascii	"_temp_3856\0"
	.align
_Label_3861:
	.byte	'?'
	.ascii	"_temp_3855\0"
	.align
_Label_3862:
	.byte	'?'
	.ascii	"_temp_3854\0"
	.align
_Label_3863:
	.byte	'?'
	.ascii	"_temp_3853\0"
	.align
_Label_3864:
	.byte	'?'
	.ascii	"_temp_3852\0"
	.align
_Label_3865:
	.byte	'?'
	.ascii	"_temp_3851\0"
	.align
_Label_3866:
	.byte	'?'
	.ascii	"_temp_3850\0"
	.align
_Label_3867:
	.byte	'?'
	.ascii	"_temp_3849\0"
	.align
_Label_3868:
	.byte	'?'
	.ascii	"_temp_3848\0"
	.align
_Label_3869:
	.byte	'?'
	.ascii	"_temp_3847\0"
	.align
_Label_3870:
	.byte	'?'
	.ascii	"_temp_3846\0"
	.align
_Label_3871:
	.byte	'?'
	.ascii	"_temp_3845\0"
	.align
_Label_3872:
	.byte	'?'
	.ascii	"_temp_3844\0"
	.align
_Label_3873:
	.byte	'?'
	.ascii	"_temp_3843\0"
	.align
_Label_3874:
	.byte	'?'
	.ascii	"_temp_3842\0"
	.align
_Label_3875:
	.byte	'?'
	.ascii	"_temp_3841\0"
	.align
_Label_3876:
	.byte	'?'
	.ascii	"_temp_3840\0"
	.align
_Label_3877:
	.byte	'?'
	.ascii	"_temp_3839\0"
	.align
_Label_3878:
	.byte	'?'
	.ascii	"_temp_3838\0"
	.align
_Label_3879:
	.byte	'?'
	.ascii	"_temp_3837\0"
	.align
_Label_3880:
	.byte	'?'
	.ascii	"_temp_3836\0"
	.align
_Label_3881:
	.byte	'?'
	.ascii	"_temp_3835\0"
	.align
_Label_3882:
	.byte	'?'
	.ascii	"_temp_3832\0"
	.align
_Label_3883:
	.byte	'?'
	.ascii	"_temp_3831\0"
	.align
_Label_3884:
	.byte	'?'
	.ascii	"_temp_3830\0"
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
_Label_4576:
	push	r0
	sub	r1,1,r1
	bne	_Label_4576
	mov	2750,r13		! source line 2750
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0SE",r10
!   _temp_3885 = &fileManagerLock
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
	mov	2766,r13		! source line 2766
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3891		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3891
!   _temp_3890 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3892
_Label_3891:
!   _temp_3890 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3892:
!   if _temp_3890 then goto _Label_3889 else goto _Label_3886
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3886
	jmp	_Label_3889
_Label_3889:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3895 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3894 = *_temp_3895  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3894 == 0 then goto _Label_3896		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3896
!   _temp_3893 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3897
_Label_3896:
!   _temp_3893 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3897:
!   if _temp_3893 then goto _Label_3888 else goto _Label_3886
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3886
	jmp	_Label_3888
_Label_3888:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3900 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3899 = *_temp_3900  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3899) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3901 = _temp_3899 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3898 = *_temp_3901  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3898 >= 0 then goto _Label_3887		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3887
!	jmp	_Label_3886
_Label_3886:
! THEN...
	mov	2767,r13		! source line 2767
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3902 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3902  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2767,r13		! source line 2767
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3887:
! ASSIGNMENT STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3903 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3903  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0WH",r10
_Label_3904:
!   if numBytes <= 0 then goto _Label_3906		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3906
!	jmp	_Label_3905
_Label_3905:
	mov	2770,r13		! source line 2770
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2779,r13		! source line 2779
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
	mov	2780,r13		! source line 2780
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
	mov	2784,r13		! source line 2784
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3910 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3909 = *_temp_3910  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3909 == sector then goto _Label_3908		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3908
!	jmp	_Label_3907
_Label_3907:
! THEN...
	mov	2785,r13		! source line 2785
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2785,r13		! source line 2785
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3911) then goto _runtimeErrorNullPointer
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
	mov	2787,r13		! source line 2787
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3914 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3913 = *_temp_3914  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3912 = sector + _temp_3913		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3916 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3915 = *_temp_3916  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3917 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3912  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3915  sizeInBytes=4
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
	mov	2790,r13		! source line 2790
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3918 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3918 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3919 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3919 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3908:
! ASSIGNMENT STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3921 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3920 = *_temp_3921  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3920 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2794,r13		! source line 2794
	mov	"\0\0AS",r10
!   _temp_3922 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3922  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2794,r13		! source line 2794
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
	mov	2798,r13		! source line 2798
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2799,r13		! source line 2799
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2800,r13		! source line 2800
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3904
_Label_3906:
! SEND STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0SE",r10
!   _temp_3923 = &fileManagerLock
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
	mov	2809,r13		! source line 2809
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
	.word	_Label_3924
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3925
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3926
	.word	12
	.word	4
	.word	_Label_3927
	.word	16
	.word	4
	.word	_Label_3928
	.word	20
	.word	4
	.word	_Label_3929
	.word	24
	.word	4
	.word	_Label_3930
	.word	-16
	.word	4
	.word	_Label_3931
	.word	-20
	.word	4
	.word	_Label_3932
	.word	-24
	.word	4
	.word	_Label_3933
	.word	-28
	.word	4
	.word	_Label_3934
	.word	-32
	.word	4
	.word	_Label_3935
	.word	-36
	.word	4
	.word	_Label_3936
	.word	-40
	.word	4
	.word	_Label_3937
	.word	-44
	.word	4
	.word	_Label_3938
	.word	-48
	.word	4
	.word	_Label_3939
	.word	-52
	.word	4
	.word	_Label_3940
	.word	-56
	.word	4
	.word	_Label_3941
	.word	-60
	.word	4
	.word	_Label_3942
	.word	-64
	.word	4
	.word	_Label_3943
	.word	-68
	.word	4
	.word	_Label_3944
	.word	-72
	.word	4
	.word	_Label_3945
	.word	-76
	.word	4
	.word	_Label_3946
	.word	-80
	.word	4
	.word	_Label_3947
	.word	-84
	.word	4
	.word	_Label_3948
	.word	-88
	.word	4
	.word	_Label_3949
	.word	-92
	.word	4
	.word	_Label_3950
	.word	-96
	.word	4
	.word	_Label_3951
	.word	-100
	.word	4
	.word	_Label_3952
	.word	-104
	.word	4
	.word	_Label_3953
	.word	-9
	.word	1
	.word	_Label_3954
	.word	-10
	.word	1
	.word	_Label_3955
	.word	-108
	.word	4
	.word	_Label_3956
	.word	-112
	.word	4
	.word	_Label_3957
	.word	-116
	.word	4
	.word	_Label_3958
	.word	-120
	.word	4
	.word	_Label_3959
	.word	-124
	.word	4
	.word	_Label_3960
	.word	-128
	.word	4
	.word	0
_Label_3924:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3925:
	.ascii	"Pself\0"
	.align
_Label_3926:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3927:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3928:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3929:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3930:
	.byte	'?'
	.ascii	"_temp_3923\0"
	.align
_Label_3931:
	.byte	'?'
	.ascii	"_temp_3922\0"
	.align
_Label_3932:
	.byte	'?'
	.ascii	"_temp_3921\0"
	.align
_Label_3933:
	.byte	'?'
	.ascii	"_temp_3920\0"
	.align
_Label_3934:
	.byte	'?'
	.ascii	"_temp_3919\0"
	.align
_Label_3935:
	.byte	'?'
	.ascii	"_temp_3918\0"
	.align
_Label_3936:
	.byte	'?'
	.ascii	"_temp_3917\0"
	.align
_Label_3937:
	.byte	'?'
	.ascii	"_temp_3916\0"
	.align
_Label_3938:
	.byte	'?'
	.ascii	"_temp_3915\0"
	.align
_Label_3939:
	.byte	'?'
	.ascii	"_temp_3914\0"
	.align
_Label_3940:
	.byte	'?'
	.ascii	"_temp_3913\0"
	.align
_Label_3941:
	.byte	'?'
	.ascii	"_temp_3912\0"
	.align
_Label_3942:
	.byte	'?'
	.ascii	"_temp_3911\0"
	.align
_Label_3943:
	.byte	'?'
	.ascii	"_temp_3910\0"
	.align
_Label_3944:
	.byte	'?'
	.ascii	"_temp_3909\0"
	.align
_Label_3945:
	.byte	'?'
	.ascii	"_temp_3903\0"
	.align
_Label_3946:
	.byte	'?'
	.ascii	"_temp_3902\0"
	.align
_Label_3947:
	.byte	'?'
	.ascii	"_temp_3901\0"
	.align
_Label_3948:
	.byte	'?'
	.ascii	"_temp_3900\0"
	.align
_Label_3949:
	.byte	'?'
	.ascii	"_temp_3899\0"
	.align
_Label_3950:
	.byte	'?'
	.ascii	"_temp_3898\0"
	.align
_Label_3951:
	.byte	'?'
	.ascii	"_temp_3895\0"
	.align
_Label_3952:
	.byte	'?'
	.ascii	"_temp_3894\0"
	.align
_Label_3953:
	.byte	'C'
	.ascii	"_temp_3893\0"
	.align
_Label_3954:
	.byte	'C'
	.ascii	"_temp_3890\0"
	.align
_Label_3955:
	.byte	'?'
	.ascii	"_temp_3885\0"
	.align
_Label_3956:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3957:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3958:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3959:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3960:
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
_Label_4577:
	push	r0
	sub	r1,1,r1
	bne	_Label_4577
	mov	2814,r13		! source line 2814
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0SE",r10
!   _temp_3961 = &fileManagerLock
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
	mov	2831,r13		! source line 2831
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3967		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3967
!   _temp_3966 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3968
_Label_3967:
!   _temp_3966 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3968:
!   if _temp_3966 then goto _Label_3965 else goto _Label_3962
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3962
	jmp	_Label_3965
_Label_3965:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3971 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3970 = *_temp_3971  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3970 == 0 then goto _Label_3972		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3972
!   _temp_3969 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3973
_Label_3972:
!   _temp_3969 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3973:
!   if _temp_3969 then goto _Label_3964 else goto _Label_3962
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3962
	jmp	_Label_3964
_Label_3964:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3976 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3975 = *_temp_3976  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3975) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3977 = _temp_3975 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3974 = *_temp_3977  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3974 >= 0 then goto _Label_3963		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3963
!	jmp	_Label_3962
_Label_3962:
! THEN...
	mov	2832,r13		! source line 2832
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3978 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3978  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2832,r13		! source line 2832
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3963:
! ASSIGNMENT STATEMENT...
	mov	2834,r13		! source line 2834
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3979 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3979  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0WH",r10
_Label_3980:
!   if numBytes <= 0 then goto _Label_3982		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3982
!	jmp	_Label_3981
_Label_3981:
	mov	2835,r13		! source line 2835
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2844,r13		! source line 2844
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
	mov	2845,r13		! source line 2845
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
	mov	2849,r13		! source line 2849
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3986 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3985 = *_temp_3986  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3985 == sector then goto _Label_3984		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3984
!	jmp	_Label_3983
_Label_3983:
! THEN...
	mov	2851,r13		! source line 2851
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3987) then goto _runtimeErrorNullPointer
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
_Label_3984:
! ASSIGNMENT STATEMENT...
	mov	2853,r13		! source line 2853
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3989 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3988 = *_temp_3989  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3988 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2854,r13		! source line 2854
	mov	"\0\0AS",r10
!   _temp_3990 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3990  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2854,r13		! source line 2854
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2855,r13		! source line 2855
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3994 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3993 = *_temp_3994  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3993 != sector then goto _Label_3992		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3992
!	jmp	_Label_3991
_Label_3991:
	jmp	_Label_3995
_Label_3992:
! ELSE...
	mov	2857,r13		! source line 2857
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2857,r13		! source line 2857
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3998
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3998
	jmp	_Label_3997
_Label_3998:
!   if bytesToMove != 8192 then goto _Label_3997		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3997
!	jmp	_Label_3996
_Label_3996:
	jmp	_Label_3999
_Label_3997:
! ELSE...
	mov	2861,r13		! source line 2861
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2861,r13		! source line 2861
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4002 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_4001 = *_temp_4002  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_4000 = sector + _temp_4001		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4004 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_4003 = *_temp_4004  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_4005 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_4000  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_4003  sizeInBytes=4
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
_Label_3999:
! END IF...
_Label_3995:
! ASSIGNMENT STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4006 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_4006 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2866,r13		! source line 2866
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4007 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_4007 = 1  (sizeInBytes=1)
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
	mov	2870,r13		! source line 2870
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2871,r13		! source line 2871
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2872,r13		! source line 2872
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2873,r13		! source line 2873
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3980
_Label_3982:
! SEND STATEMENT...
	mov	2880,r13		! source line 2880
	mov	"\0\0SE",r10
!   _temp_4008 = &fileManagerLock
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
	mov	2882,r13		! source line 2882
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
	.word	_Label_4009
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_4010
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4011
	.word	12
	.word	4
	.word	_Label_4012
	.word	16
	.word	4
	.word	_Label_4013
	.word	20
	.word	4
	.word	_Label_4014
	.word	24
	.word	4
	.word	_Label_4015
	.word	-16
	.word	4
	.word	_Label_4016
	.word	-20
	.word	4
	.word	_Label_4017
	.word	-24
	.word	4
	.word	_Label_4018
	.word	-28
	.word	4
	.word	_Label_4019
	.word	-32
	.word	4
	.word	_Label_4020
	.word	-36
	.word	4
	.word	_Label_4021
	.word	-40
	.word	4
	.word	_Label_4022
	.word	-44
	.word	4
	.word	_Label_4023
	.word	-48
	.word	4
	.word	_Label_4024
	.word	-52
	.word	4
	.word	_Label_4025
	.word	-56
	.word	4
	.word	_Label_4026
	.word	-60
	.word	4
	.word	_Label_4027
	.word	-64
	.word	4
	.word	_Label_4028
	.word	-68
	.word	4
	.word	_Label_4029
	.word	-72
	.word	4
	.word	_Label_4030
	.word	-76
	.word	4
	.word	_Label_4031
	.word	-80
	.word	4
	.word	_Label_4032
	.word	-84
	.word	4
	.word	_Label_4033
	.word	-88
	.word	4
	.word	_Label_4034
	.word	-92
	.word	4
	.word	_Label_4035
	.word	-96
	.word	4
	.word	_Label_4036
	.word	-100
	.word	4
	.word	_Label_4037
	.word	-104
	.word	4
	.word	_Label_4038
	.word	-108
	.word	4
	.word	_Label_4039
	.word	-112
	.word	4
	.word	_Label_4040
	.word	-9
	.word	1
	.word	_Label_4041
	.word	-10
	.word	1
	.word	_Label_4042
	.word	-116
	.word	4
	.word	_Label_4043
	.word	-120
	.word	4
	.word	_Label_4044
	.word	-124
	.word	4
	.word	_Label_4045
	.word	-128
	.word	4
	.word	_Label_4046
	.word	-132
	.word	4
	.word	_Label_4047
	.word	-136
	.word	4
	.word	0
_Label_4009:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_4010:
	.ascii	"Pself\0"
	.align
_Label_4011:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_4012:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_4013:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_4014:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_4015:
	.byte	'?'
	.ascii	"_temp_4008\0"
	.align
_Label_4016:
	.byte	'?'
	.ascii	"_temp_4007\0"
	.align
_Label_4017:
	.byte	'?'
	.ascii	"_temp_4006\0"
	.align
_Label_4018:
	.byte	'?'
	.ascii	"_temp_4005\0"
	.align
_Label_4019:
	.byte	'?'
	.ascii	"_temp_4004\0"
	.align
_Label_4020:
	.byte	'?'
	.ascii	"_temp_4003\0"
	.align
_Label_4021:
	.byte	'?'
	.ascii	"_temp_4002\0"
	.align
_Label_4022:
	.byte	'?'
	.ascii	"_temp_4001\0"
	.align
_Label_4023:
	.byte	'?'
	.ascii	"_temp_4000\0"
	.align
_Label_4024:
	.byte	'?'
	.ascii	"_temp_3994\0"
	.align
_Label_4025:
	.byte	'?'
	.ascii	"_temp_3993\0"
	.align
_Label_4026:
	.byte	'?'
	.ascii	"_temp_3990\0"
	.align
_Label_4027:
	.byte	'?'
	.ascii	"_temp_3989\0"
	.align
_Label_4028:
	.byte	'?'
	.ascii	"_temp_3988\0"
	.align
_Label_4029:
	.byte	'?'
	.ascii	"_temp_3987\0"
	.align
_Label_4030:
	.byte	'?'
	.ascii	"_temp_3986\0"
	.align
_Label_4031:
	.byte	'?'
	.ascii	"_temp_3985\0"
	.align
_Label_4032:
	.byte	'?'
	.ascii	"_temp_3979\0"
	.align
_Label_4033:
	.byte	'?'
	.ascii	"_temp_3978\0"
	.align
_Label_4034:
	.byte	'?'
	.ascii	"_temp_3977\0"
	.align
_Label_4035:
	.byte	'?'
	.ascii	"_temp_3976\0"
	.align
_Label_4036:
	.byte	'?'
	.ascii	"_temp_3975\0"
	.align
_Label_4037:
	.byte	'?'
	.ascii	"_temp_3974\0"
	.align
_Label_4038:
	.byte	'?'
	.ascii	"_temp_3971\0"
	.align
_Label_4039:
	.byte	'?'
	.ascii	"_temp_3970\0"
	.align
_Label_4040:
	.byte	'C'
	.ascii	"_temp_3969\0"
	.align
_Label_4041:
	.byte	'C'
	.ascii	"_temp_3966\0"
	.align
_Label_4042:
	.byte	'?'
	.ascii	"_temp_3961\0"
	.align
_Label_4043:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_4044:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_4045:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_4046:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_4047:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_4048
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_4048:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4049
	.word	_sourceFileName
	.word	357		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_4049:
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
_Label_4578:
	push	r0
	sub	r1,1,r1
	bne	_Label_4578
	mov	2918,r13		! source line 2918
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2919,r13		! source line 2919
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2920,r13		! source line 2920
	mov	"\0\0AS",r10
	mov	2920,r13		! source line 2920
	mov	"\0\0SE",r10
!   _temp_4050 = &_P_Kernel_frameManager
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
	mov	2921,r13		! source line 2921
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2922,r13		! source line 2922
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2923,r13		! source line 2923
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2923,r13		! source line 2923
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
	.word	_Label_4051
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_4052
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4053
	.word	-12
	.word	4
	.word	0
_Label_4051:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_4052:
	.ascii	"Pself\0"
	.align
_Label_4053:
	.byte	'?'
	.ascii	"_temp_4050\0"
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
_Label_4579:
	push	r0
	sub	r1,1,r1
	bne	_Label_4579
	mov	2928,r13		! source line 2928
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4054 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_4054  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2929,r13		! source line 2929
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2930,r13		! source line 2930
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4055 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_4055  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2931,r13		! source line 2931
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2932,r13		! source line 2932
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4056 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_4056  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2933,r13		! source line 2933
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2934,r13		! source line 2934
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4057 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4057  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2935,r13		! source line 2935
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2936,r13		! source line 2936
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4058 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4058  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2937,r13		! source line 2937
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2938,r13		! source line 2938
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_4059 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4059  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2939,r13		! source line 2939
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2940,r13		! source line 2940
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2941,r13		! source line 2941
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2941,r13		! source line 2941
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
	.word	_Label_4060
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_4061
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4062
	.word	-12
	.word	4
	.word	_Label_4063
	.word	-16
	.word	4
	.word	_Label_4064
	.word	-20
	.word	4
	.word	_Label_4065
	.word	-24
	.word	4
	.word	_Label_4066
	.word	-28
	.word	4
	.word	_Label_4067
	.word	-32
	.word	4
	.word	0
_Label_4060:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_4061:
	.ascii	"Pself\0"
	.align
_Label_4062:
	.byte	'?'
	.ascii	"_temp_4059\0"
	.align
_Label_4063:
	.byte	'?'
	.ascii	"_temp_4058\0"
	.align
_Label_4064:
	.byte	'?'
	.ascii	"_temp_4057\0"
	.align
_Label_4065:
	.byte	'?'
	.ascii	"_temp_4056\0"
	.align
_Label_4066:
	.byte	'?'
	.ascii	"_temp_4055\0"
	.align
_Label_4067:
	.byte	'?'
	.ascii	"_temp_4054\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_4068
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_4068:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4069
	.word	_sourceFileName
	.word	374		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_4069:
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
_Label_4580:
	push	r0
	sub	r1,1,r1
	bne	_Label_4580
	mov	2952,r13		! source line 2952
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4070 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4070  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2953,r13		! source line 2953
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2954,r13		! source line 2954
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4071 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4071  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2955,r13		! source line 2955
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2956,r13		! source line 2956
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_4073		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4073
!	jmp	_Label_4072
_Label_4072:
! THEN...
	mov	2957,r13		! source line 2957
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2957,r13		! source line 2957
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
	jmp	_Label_4074
_Label_4073:
! ELSE...
	mov	2959,r13		! source line 2959
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_4075 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4075  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2959,r13		! source line 2959
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_4074:
! RETURN STATEMENT...
	mov	2956,r13		! source line 2956
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
	.word	_Label_4076
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_4077
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4078
	.word	-12
	.word	4
	.word	_Label_4079
	.word	-16
	.word	4
	.word	_Label_4080
	.word	-20
	.word	4
	.word	0
_Label_4076:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_4077:
	.ascii	"Pself\0"
	.align
_Label_4078:
	.byte	'?'
	.ascii	"_temp_4075\0"
	.align
_Label_4079:
	.byte	'?'
	.ascii	"_temp_4071\0"
	.align
_Label_4080:
	.byte	'?'
	.ascii	"_temp_4070\0"
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
_Label_4581:
	push	r0
	sub	r1,1,r1
	bne	_Label_4581
	mov	2965,r13		! source line 2965
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2975,r13		! source line 2975
	mov	"\0\0SE",r10
!   _temp_4081 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_4082 = _temp_4081 + 4
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
	mov	2976,r13		! source line 2976
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2977,r13		! source line 2977
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
	mov	2978,r13		! source line 2978
	mov	"\0\0SE",r10
!   _temp_4083 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_4084 = _temp_4083 + 4
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
	mov	2979,r13		! source line 2979
	mov	"\0\0RE",r10
	mov	2979,r13		! source line 2979
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_4087 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_4086  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_4085  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_4085  (sizeInBytes=1)
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
	.word	_Label_4088
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_4089
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4090
	.word	12
	.word	4
	.word	_Label_4091
	.word	16
	.word	4
	.word	_Label_4092
	.word	-16
	.word	4
	.word	_Label_4093
	.word	-20
	.word	4
	.word	_Label_4094
	.word	-9
	.word	1
	.word	_Label_4095
	.word	-24
	.word	4
	.word	_Label_4096
	.word	-28
	.word	4
	.word	_Label_4097
	.word	-32
	.word	4
	.word	_Label_4098
	.word	-36
	.word	4
	.word	_Label_4099
	.word	-40
	.word	4
	.word	0
_Label_4088:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_4089:
	.ascii	"Pself\0"
	.align
_Label_4090:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_4091:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_4092:
	.byte	'?'
	.ascii	"_temp_4087\0"
	.align
_Label_4093:
	.byte	'?'
	.ascii	"_temp_4086\0"
	.align
_Label_4094:
	.byte	'C'
	.ascii	"_temp_4085\0"
	.align
_Label_4095:
	.byte	'?'
	.ascii	"_temp_4084\0"
	.align
_Label_4096:
	.byte	'?'
	.ascii	"_temp_4083\0"
	.align
_Label_4097:
	.byte	'?'
	.ascii	"_temp_4082\0"
	.align
_Label_4098:
	.byte	'?'
	.ascii	"_temp_4081\0"
	.align
_Label_4099:
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
_Label_4582:
	push	r0
	sub	r1,1,r1
	bne	_Label_4582
	mov	2984,r13		! source line 2984
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2989,r13		! source line 2989
	mov	"\0\0IF",r10
	mov	2989,r13		! source line 2989
	mov	"\0\0SE",r10
!   _temp_4103 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_4104) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4103  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_4102  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4102 then goto _Label_4101 else goto _Label_4100
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4100
	jmp	_Label_4101
_Label_4100:
! THEN...
	mov	2990,r13		! source line 2990
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4105 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4105  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2990,r13		! source line 2990
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4101:
! RETURN STATEMENT...
	mov	2992,r13		! source line 2992
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
	.word	_Label_4106
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_4107
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4108
	.word	-16
	.word	4
	.word	_Label_4109
	.word	-20
	.word	4
	.word	_Label_4110
	.word	-24
	.word	4
	.word	_Label_4111
	.word	-9
	.word	1
	.word	_Label_4112
	.word	-28
	.word	4
	.word	0
_Label_4106:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_4107:
	.ascii	"Pself\0"
	.align
_Label_4108:
	.byte	'?'
	.ascii	"_temp_4105\0"
	.align
_Label_4109:
	.byte	'?'
	.ascii	"_temp_4104\0"
	.align
_Label_4110:
	.byte	'?'
	.ascii	"_temp_4103\0"
	.align
_Label_4111:
	.byte	'C'
	.ascii	"_temp_4102\0"
	.align
_Label_4112:
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
_Label_4583:
	push	r0
	sub	r1,1,r1
	bne	_Label_4583
	mov	2997,r13		! source line 2997
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3023,r13		! source line 3023
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4116 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_4115 = *_temp_4116  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_4115) then goto _Label_4114
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_4114
!	jmp	_Label_4113
_Label_4113:
! THEN...
	mov	3024,r13		! source line 3024
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4117 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_4117  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3024,r13		! source line 3024
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4114:
! IF STATEMENT...
	mov	3028,r13		! source line 3028
	mov	"\0\0IF",r10
	mov	3028,r13		! source line 3028
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_4121) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4120  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_4120 == 1112300152 then goto _Label_4119		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_4119
!	jmp	_Label_4118
_Label_4118:
! THEN...
	mov	3029,r13		! source line 3029
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4122 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_4122  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3029,r13		! source line 3029
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3030,r13		! source line 3030
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4119:
! ASSIGNMENT STATEMENT...
	mov	3034,r13		! source line 3034
	mov	"\0\0AS",r10
	mov	3034,r13		! source line 3034
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_4123) then goto _runtimeErrorNullPointer
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
	mov	3035,r13		! source line 3035
	mov	"\0\0AS",r10
	mov	3035,r13		! source line 3035
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_4124) then goto _runtimeErrorNullPointer
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
	mov	3036,r13		! source line 3036
	mov	"\0\0AS",r10
	mov	3036,r13		! source line 3036
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_4125) then goto _runtimeErrorNullPointer
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
	mov	3037,r13		! source line 3037
	mov	"\0\0AS",r10
	mov	3037,r13		! source line 3037
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_4126) then goto _runtimeErrorNullPointer
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
	mov	3038,r13		! source line 3038
	mov	"\0\0AS",r10
	mov	3038,r13		! source line 3038
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_4127) then goto _runtimeErrorNullPointer
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
	mov	3039,r13		! source line 3039
	mov	"\0\0AS",r10
	mov	3039,r13		! source line 3039
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_4128) then goto _runtimeErrorNullPointer
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
	mov	3042,r13		! source line 3042
	mov	"\0\0IF",r10
!   _temp_4131 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_4131) then goto _Label_4130
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_4130
!	jmp	_Label_4129
_Label_4129:
! THEN...
	mov	3043,r13		! source line 3043
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4132 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_4132  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3043,r13		! source line 3043
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3044,r13		! source line 3044
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4130:
! ASSIGNMENT STATEMENT...
	mov	3046,r13		! source line 3046
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
	mov	3050,r13		! source line 3050
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_4134
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_4134
!	jmp	_Label_4133
_Label_4133:
! THEN...
	mov	3051,r13		! source line 3051
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4135 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_4135  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3051,r13		! source line 3051
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3052,r13		! source line 3052
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4134:
! IF STATEMENT...
	mov	3056,r13		! source line 3056
	mov	"\0\0IF",r10
!   _temp_4138 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_4138) then goto _Label_4137
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_4137
!	jmp	_Label_4136
_Label_4136:
! THEN...
	mov	3057,r13		! source line 3057
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4139 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_4139  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3057,r13		! source line 3057
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3058,r13		! source line 3058
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4137:
! IF STATEMENT...
	mov	3060,r13		! source line 3060
	mov	"\0\0IF",r10
!   _temp_4142 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_4142 then goto _Label_4141		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_4141
!	jmp	_Label_4140
_Label_4140:
! THEN...
	mov	3061,r13		! source line 3061
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4143 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_4143  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3061,r13		! source line 3061
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3062,r13		! source line 3062
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4141:
! ASSIGNMENT STATEMENT...
	mov	3064,r13		! source line 3064
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
	mov	3067,r13		! source line 3067
	mov	"\0\0IF",r10
!   _temp_4146 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_4146) then goto _Label_4145
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_4145
!	jmp	_Label_4144
_Label_4144:
! THEN...
	mov	3068,r13		! source line 3068
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4147 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_4147  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3068,r13		! source line 3068
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3069,r13		! source line 3069
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4145:
! IF STATEMENT...
	mov	3071,r13		! source line 3071
	mov	"\0\0IF",r10
!   _temp_4150 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_4150 then goto _Label_4149		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_4149
!	jmp	_Label_4148
_Label_4148:
! THEN...
	mov	3072,r13		! source line 3072
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4151 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_4151  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3072,r13		! source line 3072
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3073,r13		! source line 3073
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4149:
! ASSIGNMENT STATEMENT...
	mov	3075,r13		! source line 3075
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
	mov	3078,r13		! source line 3078
	mov	"\0\0AS",r10
!   _temp_4154 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_4153 = _temp_4154 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_4152 = _temp_4153 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_4152 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3093,r13		! source line 3093
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_4156		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4156
!	jmp	_Label_4155
_Label_4155:
! THEN...
	mov	3094,r13		! source line 3094
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4157 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_4157  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3094,r13		! source line 3094
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_4158 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_4158  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3095,r13		! source line 3095
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_4159 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_4159  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3096,r13		! source line 3096
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3097,r13		! source line 3097
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4156:
! SEND STATEMENT...
	mov	3099,r13		! source line 3099
	mov	"\0\0SE",r10
!   _temp_4160 = &_P_Kernel_frameManager
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
	mov	3105,r13		! source line 3105
	mov	"\0\0IF",r10
	mov	3105,r13		! source line 3105
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_4164) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4163  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_4163 == 707406378 then goto _Label_4162		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4162
!	jmp	_Label_4161
_Label_4161:
! THEN...
	mov	3106,r13		! source line 3106
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4165 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_4165  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3106,r13		! source line 3106
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3107,r13		! source line 3107
	mov	"\0\0SE",r10
!   _temp_4166 = &_P_Kernel_frameManager
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
	mov	3108,r13		! source line 3108
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4162:
! ASSIGNMENT STATEMENT...
	mov	3112,r13		! source line 3112
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
	mov	3113,r13		! source line 3113
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4171 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4172 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4171  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_4167:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4172 then goto _Label_4170		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4170
_Label_4168:
	mov	3113,r13		! source line 3113
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3114,r13		! source line 3114
	mov	"\0\0AS",r10
	mov	3114,r13		! source line 3114
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
	mov	3117,r13		! source line 3117
	mov	"\0\0IF",r10
	mov	3117,r13		! source line 3117
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_4176) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4175  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_4175 then goto _Label_4174 else goto _Label_4173
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_4173
	jmp	_Label_4174
_Label_4173:
! THEN...
	mov	3118,r13		! source line 3118
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4177 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_4177  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3118,r13		! source line 3118
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3119,r13		! source line 3119
	mov	"\0\0SE",r10
!   _temp_4178 = &_P_Kernel_frameManager
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
	mov	3120,r13		! source line 3120
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4174:
! SEND STATEMENT...
	mov	3122,r13		! source line 3122
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
	mov	3123,r13		! source line 3123
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_4169:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_4167
! END FOR
_Label_4170:
! IF STATEMENT...
	mov	3127,r13		! source line 3127
	mov	"\0\0IF",r10
	mov	3127,r13		! source line 3127
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_4182) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4181  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_4181 == 707406378 then goto _Label_4180		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4180
!	jmp	_Label_4179
_Label_4179:
! THEN...
	mov	3128,r13		! source line 3128
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4183 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_4183  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3128,r13		! source line 3128
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3129,r13		! source line 3129
	mov	"\0\0SE",r10
!   _temp_4184 = &_P_Kernel_frameManager
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
	mov	3130,r13		! source line 3130
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4180:
! FOR STATEMENT...
	mov	3134,r13		! source line 3134
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4189 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4190 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4189  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_4185:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4190 then goto _Label_4188		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4188
_Label_4186:
	mov	3134,r13		! source line 3134
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3135,r13		! source line 3135
	mov	"\0\0AS",r10
	mov	3135,r13		! source line 3135
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
	mov	3138,r13		! source line 3138
	mov	"\0\0IF",r10
	mov	3138,r13		! source line 3138
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_4194) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4193  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4193 then goto _Label_4192 else goto _Label_4191
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4191
	jmp	_Label_4192
_Label_4191:
! THEN...
	mov	3139,r13		! source line 3139
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4195 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_4195  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3139,r13		! source line 3139
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3140,r13		! source line 3140
	mov	"\0\0SE",r10
!   _temp_4196 = &_P_Kernel_frameManager
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
	mov	3141,r13		! source line 3141
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4192:
! ASSIGNMENT STATEMENT...
	mov	3143,r13		! source line 3143
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_4187:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_4185
! END FOR
_Label_4188:
! IF STATEMENT...
	mov	3147,r13		! source line 3147
	mov	"\0\0IF",r10
	mov	3147,r13		! source line 3147
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_4200) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4199  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_4199 == 707406378 then goto _Label_4198		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4198
!	jmp	_Label_4197
_Label_4197:
! THEN...
	mov	3148,r13		! source line 3148
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4201 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4201  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3148,r13		! source line 3148
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3149,r13		! source line 3149
	mov	"\0\0SE",r10
!   _temp_4202 = &_P_Kernel_frameManager
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
	mov	3150,r13		! source line 3150
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4198:
! ASSIGNMENT STATEMENT...
	mov	3154,r13		! source line 3154
	mov	"\0\0AS",r10
	mov	3154,r13		! source line 3154
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
	mov	3158,r13		! source line 3158
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3161,r13		! source line 3161
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
	.word	_Label_4203
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_4204
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4205
	.word	12
	.word	4
	.word	_Label_4206
	.word	-16
	.word	4
	.word	_Label_4207
	.word	-20
	.word	4
	.word	_Label_4208
	.word	-24
	.word	4
	.word	_Label_4209
	.word	-28
	.word	4
	.word	_Label_4210
	.word	-32
	.word	4
	.word	_Label_4211
	.word	-36
	.word	4
	.word	_Label_4212
	.word	-40
	.word	4
	.word	_Label_4213
	.word	-9
	.word	1
	.word	_Label_4214
	.word	-44
	.word	4
	.word	_Label_4215
	.word	-48
	.word	4
	.word	_Label_4216
	.word	-52
	.word	4
	.word	_Label_4217
	.word	-56
	.word	4
	.word	_Label_4218
	.word	-60
	.word	4
	.word	_Label_4219
	.word	-64
	.word	4
	.word	_Label_4220
	.word	-68
	.word	4
	.word	_Label_4221
	.word	-72
	.word	4
	.word	_Label_4222
	.word	-76
	.word	4
	.word	_Label_4223
	.word	-10
	.word	1
	.word	_Label_4224
	.word	-80
	.word	4
	.word	_Label_4225
	.word	-84
	.word	4
	.word	_Label_4226
	.word	-88
	.word	4
	.word	_Label_4227
	.word	-92
	.word	4
	.word	_Label_4228
	.word	-96
	.word	4
	.word	_Label_4229
	.word	-100
	.word	4
	.word	_Label_4230
	.word	-104
	.word	4
	.word	_Label_4231
	.word	-108
	.word	4
	.word	_Label_4232
	.word	-112
	.word	4
	.word	_Label_4233
	.word	-116
	.word	4
	.word	_Label_4234
	.word	-120
	.word	4
	.word	_Label_4235
	.word	-124
	.word	4
	.word	_Label_4236
	.word	-128
	.word	4
	.word	_Label_4237
	.word	-132
	.word	4
	.word	_Label_4238
	.word	-136
	.word	4
	.word	_Label_4239
	.word	-140
	.word	4
	.word	_Label_4240
	.word	-144
	.word	4
	.word	_Label_4241
	.word	-148
	.word	4
	.word	_Label_4242
	.word	-152
	.word	4
	.word	_Label_4243
	.word	-156
	.word	4
	.word	_Label_4244
	.word	-160
	.word	4
	.word	_Label_4245
	.word	-164
	.word	4
	.word	_Label_4246
	.word	-168
	.word	4
	.word	_Label_4247
	.word	-172
	.word	4
	.word	_Label_4248
	.word	-176
	.word	4
	.word	_Label_4249
	.word	-180
	.word	4
	.word	_Label_4250
	.word	-184
	.word	4
	.word	_Label_4251
	.word	-188
	.word	4
	.word	_Label_4252
	.word	-192
	.word	4
	.word	_Label_4253
	.word	-196
	.word	4
	.word	_Label_4254
	.word	-200
	.word	4
	.word	_Label_4255
	.word	-204
	.word	4
	.word	_Label_4256
	.word	-208
	.word	4
	.word	_Label_4257
	.word	-212
	.word	4
	.word	_Label_4258
	.word	-216
	.word	4
	.word	_Label_4259
	.word	-220
	.word	4
	.word	_Label_4260
	.word	-224
	.word	4
	.word	_Label_4261
	.word	-228
	.word	4
	.word	_Label_4262
	.word	-232
	.word	4
	.word	_Label_4263
	.word	-236
	.word	4
	.word	_Label_4264
	.word	-240
	.word	4
	.word	_Label_4265
	.word	-244
	.word	4
	.word	_Label_4266
	.word	-248
	.word	4
	.word	_Label_4267
	.word	-252
	.word	4
	.word	_Label_4268
	.word	-256
	.word	4
	.word	_Label_4269
	.word	-260
	.word	4
	.word	_Label_4270
	.word	-264
	.word	4
	.word	_Label_4271
	.word	-268
	.word	4
	.word	0
_Label_4203:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_4204:
	.ascii	"Pself\0"
	.align
_Label_4205:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_4206:
	.byte	'?'
	.ascii	"_temp_4202\0"
	.align
_Label_4207:
	.byte	'?'
	.ascii	"_temp_4201\0"
	.align
_Label_4208:
	.byte	'?'
	.ascii	"_temp_4200\0"
	.align
_Label_4209:
	.byte	'?'
	.ascii	"_temp_4199\0"
	.align
_Label_4210:
	.byte	'?'
	.ascii	"_temp_4196\0"
	.align
_Label_4211:
	.byte	'?'
	.ascii	"_temp_4195\0"
	.align
_Label_4212:
	.byte	'?'
	.ascii	"_temp_4194\0"
	.align
_Label_4213:
	.byte	'C'
	.ascii	"_temp_4193\0"
	.align
_Label_4214:
	.byte	'?'
	.ascii	"_temp_4190\0"
	.align
_Label_4215:
	.byte	'?'
	.ascii	"_temp_4189\0"
	.align
_Label_4216:
	.byte	'?'
	.ascii	"_temp_4184\0"
	.align
_Label_4217:
	.byte	'?'
	.ascii	"_temp_4183\0"
	.align
_Label_4218:
	.byte	'?'
	.ascii	"_temp_4182\0"
	.align
_Label_4219:
	.byte	'?'
	.ascii	"_temp_4181\0"
	.align
_Label_4220:
	.byte	'?'
	.ascii	"_temp_4178\0"
	.align
_Label_4221:
	.byte	'?'
	.ascii	"_temp_4177\0"
	.align
_Label_4222:
	.byte	'?'
	.ascii	"_temp_4176\0"
	.align
_Label_4223:
	.byte	'C'
	.ascii	"_temp_4175\0"
	.align
_Label_4224:
	.byte	'?'
	.ascii	"_temp_4172\0"
	.align
_Label_4225:
	.byte	'?'
	.ascii	"_temp_4171\0"
	.align
_Label_4226:
	.byte	'?'
	.ascii	"_temp_4166\0"
	.align
_Label_4227:
	.byte	'?'
	.ascii	"_temp_4165\0"
	.align
_Label_4228:
	.byte	'?'
	.ascii	"_temp_4164\0"
	.align
_Label_4229:
	.byte	'?'
	.ascii	"_temp_4163\0"
	.align
_Label_4230:
	.byte	'?'
	.ascii	"_temp_4160\0"
	.align
_Label_4231:
	.byte	'?'
	.ascii	"_temp_4159\0"
	.align
_Label_4232:
	.byte	'?'
	.ascii	"_temp_4158\0"
	.align
_Label_4233:
	.byte	'?'
	.ascii	"_temp_4157\0"
	.align
_Label_4234:
	.byte	'?'
	.ascii	"_temp_4154\0"
	.align
_Label_4235:
	.byte	'?'
	.ascii	"_temp_4153\0"
	.align
_Label_4236:
	.byte	'?'
	.ascii	"_temp_4152\0"
	.align
_Label_4237:
	.byte	'?'
	.ascii	"_temp_4151\0"
	.align
_Label_4238:
	.byte	'?'
	.ascii	"_temp_4150\0"
	.align
_Label_4239:
	.byte	'?'
	.ascii	"_temp_4147\0"
	.align
_Label_4240:
	.byte	'?'
	.ascii	"_temp_4146\0"
	.align
_Label_4241:
	.byte	'?'
	.ascii	"_temp_4143\0"
	.align
_Label_4242:
	.byte	'?'
	.ascii	"_temp_4142\0"
	.align
_Label_4243:
	.byte	'?'
	.ascii	"_temp_4139\0"
	.align
_Label_4244:
	.byte	'?'
	.ascii	"_temp_4138\0"
	.align
_Label_4245:
	.byte	'?'
	.ascii	"_temp_4135\0"
	.align
_Label_4246:
	.byte	'?'
	.ascii	"_temp_4132\0"
	.align
_Label_4247:
	.byte	'?'
	.ascii	"_temp_4131\0"
	.align
_Label_4248:
	.byte	'?'
	.ascii	"_temp_4128\0"
	.align
_Label_4249:
	.byte	'?'
	.ascii	"_temp_4127\0"
	.align
_Label_4250:
	.byte	'?'
	.ascii	"_temp_4126\0"
	.align
_Label_4251:
	.byte	'?'
	.ascii	"_temp_4125\0"
	.align
_Label_4252:
	.byte	'?'
	.ascii	"_temp_4124\0"
	.align
_Label_4253:
	.byte	'?'
	.ascii	"_temp_4123\0"
	.align
_Label_4254:
	.byte	'?'
	.ascii	"_temp_4122\0"
	.align
_Label_4255:
	.byte	'?'
	.ascii	"_temp_4121\0"
	.align
_Label_4256:
	.byte	'?'
	.ascii	"_temp_4120\0"
	.align
_Label_4257:
	.byte	'?'
	.ascii	"_temp_4117\0"
	.align
_Label_4258:
	.byte	'?'
	.ascii	"_temp_4116\0"
	.align
_Label_4259:
	.byte	'?'
	.ascii	"_temp_4115\0"
	.align
_Label_4260:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_4261:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_4262:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_4263:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_4264:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_4265:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_4266:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_4267:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_4268:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_4269:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_4270:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_4271:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
! 
! ===============  CLASS SerialDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_SerialDriver:
	.word	_Label_4272
	jmp	_Method_P_Kernel_SerialDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_SerialDriver_2	! 8:	PutChar
	jmp	_Method_P_Kernel_SerialDriver_3	! 12:	GetChar
	jmp	_Method_P_Kernel_SerialDriver_4	! 16:	SerialHandler
	.word	0
! 
! Class descriptor:
! 
_Label_4272:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4273
	.word	_sourceFileName
	.word	397		! line number
	.word	4308		! size of instances, in bytes
	.word	_P_Kernel_SerialDriver
	.word	_P_System_Object
	.word	0
_Label_4273:
	.ascii	"SerialDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_SerialDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_1,r1
	push	r1
	mov	37,r1
_Label_4584:
	push	r0
	sub	r1,1,r1
	bne	_Label_4584
	mov	3209,r13		! source line 3209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4274 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_4274  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	3211,r13		! source line 3211
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	3212,r13		! source line 3212
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	3213,r13		! source line 3213
	mov	"\0\0AS",r10
!   serial_status_word_address = 16776960		(4 bytes)
	set	16776960,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	3214,r13		! source line 3214
	mov	"\0\0AS",r10
!   serial_data_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	3215,r13		! source line 3215
	mov	"\0\0AS",r10
!   getBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3216,r13		! source line 3216
	mov	"\0\0AS",r10
!   putBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3217,r13		! source line 3217
	mov	"\0\0AS",r10
!   getBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3218,r13		! source line 3218
	mov	"\0\0AS",r10
!   getBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3219,r13		! source line 3219
	mov	"\0\0AS",r10
!   putBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3220,r13		! source line 3220
	mov	"\0\0AS",r10
!   putBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3221,r13		! source line 3221
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,12,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   serialLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! SEND STATEMENT...
	mov	3222,r13		! source line 3222
	mov	"\0\0SE",r10
!   _temp_4276 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-136]
!   Send message Init
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3223,r13		! source line 3223
	mov	"\0\0AS",r10
!   _temp_4277 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-132]
!   NEW ARRAY Constructor...
!   _temp_4279 = &_temp_4278
	add	r14,-128,r1
	store	r1,[r14+-112]
!   _temp_4279 = _temp_4279 + 4
	load	[r14+-112],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Next value...
	mov	10,r1
	store	r1,[r14+-108]
_Label_4281:
!   Data Move: *_temp_4279 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-112],r2
	storeb	r1,[r2]
!   _temp_4279 = _temp_4279 + 1
	load	[r14+-112],r1
	add	r1,1,r1
	store	r1,[r14+-112]
!   _temp_4280 = _temp_4280 + -1
	load	[r14+-108],r1
	add	r1,-1,r1
	store	r1,[r14+-108]
!   if intNotZero (_temp_4280) then goto _Label_4281
	load	[r14+-108],r1
	cmp	r1,r0
	bne	_Label_4281
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-128]
!   _temp_4282 = &_temp_4278
	add	r14,-128,r1
	store	r1,[r14+-104]
!   make sure array has size 10
	load	[r14+-132],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4585
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4585:
!   make sure array has size 10
	load	[r14+-104],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4277 = *_temp_4282  (sizeInBytes=16)
	load	[r14+-104],r5
	load	[r14+-132],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3224,r13		! source line 3224
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: getCharacterAvail = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,60,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   getCharacterAvail = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+60]
! SEND STATEMENT...
	mov	3225,r13		! source line 3225
	mov	"\0\0SE",r10
!   _temp_4284 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-96]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3226,r13		! source line 3226
	mov	"\0\0AS",r10
!   _temp_4285 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-92]
!   NEW ARRAY Constructor...
!   _temp_4287 = &_temp_4286
	add	r14,-88,r1
	store	r1,[r14+-72]
!   _temp_4287 = _temp_4287 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Next value...
	mov	10,r1
	store	r1,[r14+-68]
_Label_4289:
!   Data Move: *_temp_4287 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-72],r2
	storeb	r1,[r2]
!   _temp_4287 = _temp_4287 + 1
	load	[r14+-72],r1
	add	r1,1,r1
	store	r1,[r14+-72]
!   _temp_4288 = _temp_4288 + -1
	load	[r14+-68],r1
	add	r1,-1,r1
	store	r1,[r14+-68]
!   if intNotZero (_temp_4288) then goto _Label_4289
	load	[r14+-68],r1
	cmp	r1,r0
	bne	_Label_4289
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-88]
!   _temp_4290 = &_temp_4286
	add	r14,-88,r1
	store	r1,[r14+-64]
!   make sure array has size 10
	load	[r14+-92],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4586
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4586:
!   make sure array has size 10
	load	[r14+-64],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4285 = *_temp_4290  (sizeInBytes=16)
	load	[r14+-64],r5
	load	[r14+-92],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3227,r13		! source line 3227
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: putBufferSem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,104,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   putBufferSem = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+104]
! SEND STATEMENT...
	mov	3228,r13		! source line 3228
	mov	"\0\0SE",r10
!   _temp_4292 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3229,r13		! source line 3229
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialNeedsAttention = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,124,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   serialNeedsAttention = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+124]
! SEND STATEMENT...
	mov	3230,r13		! source line 3230
	mov	"\0\0SE",r10
!   _temp_4294 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3231,r13		! source line 3231
	mov	"\0\0AS",r10
!   _temp_4295 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-44]
	mov	3231,r13		! source line 3231
	mov	"\0\0SE",r10
!   _temp_4297 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-36]
!   Send message GetANewThread
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_4296  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_4296) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
	load	[r14+-40],r1
	load	[r1],r1
	set	_P_Kernel_Thread,r2
	cmp	r1,r2
	bne	_runtimeErrorWrongObject2
!   Data Move: *_temp_4295 = *_temp_4296  (sizeInBytes=4164)
	load	[r14+-40],r5
	load	[r14+-44],r4
	mov	1041,r3
_Label_4587:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4587
! SEND STATEMENT...
	mov	3232,r13		! source line 3232
	mov	"\0\0SE",r10
!   _temp_4298 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-32]
!   _temp_4299 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_4298  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3233,r13		! source line 3233
	mov	"\0\0AS",r10
!   _temp_4300 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-24]
!   _temp_4301 = _temp_4300 + 76
	load	[r14+-24],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_4301 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3234,r13		! source line 3234
	mov	"\0\0SE",r10
!   _temp_4302 = _function_210_SerialHandlerFunction
	set	_function_210_SerialHandlerFunction,r1
	store	r1,[r14+-16]
!   _temp_4303 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_4302  sizeInBytes=4
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
	mov	3235,r13		! source line 3235
	mov	"\0\0AS",r10
!   _P_Kernel_serialHasBeenInitialized = 1		(1 byte)
	mov	1,r1
	set	_P_Kernel_serialHasBeenInitialized,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3235,r13		! source line 3235
	mov	"\0\0RE",r10
	add	r15,152,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_1:
	.word	_sourceFileName
	.word	_Label_4304
	.word	4		! total size of parameters
	.word	148		! frame size = 148
	.word	_Label_4305
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4306
	.word	-12
	.word	4
	.word	_Label_4307
	.word	-16
	.word	4
	.word	_Label_4308
	.word	-20
	.word	4
	.word	_Label_4309
	.word	-24
	.word	4
	.word	_Label_4310
	.word	-28
	.word	4
	.word	_Label_4311
	.word	-32
	.word	4
	.word	_Label_4312
	.word	-36
	.word	4
	.word	_Label_4313
	.word	-40
	.word	4
	.word	_Label_4314
	.word	-44
	.word	4
	.word	_Label_4315
	.word	-48
	.word	4
	.word	_Label_4316
	.word	-52
	.word	4
	.word	_Label_4317
	.word	-56
	.word	4
	.word	_Label_4318
	.word	-60
	.word	4
	.word	_Label_4319
	.word	-64
	.word	4
	.word	_Label_4320
	.word	-68
	.word	4
	.word	_Label_4321
	.word	-72
	.word	4
	.word	_Label_4322
	.word	-88
	.word	16
	.word	_Label_4323
	.word	-92
	.word	4
	.word	_Label_4324
	.word	-96
	.word	4
	.word	_Label_4325
	.word	-100
	.word	4
	.word	_Label_4326
	.word	-104
	.word	4
	.word	_Label_4327
	.word	-108
	.word	4
	.word	_Label_4328
	.word	-112
	.word	4
	.word	_Label_4329
	.word	-128
	.word	16
	.word	_Label_4330
	.word	-132
	.word	4
	.word	_Label_4331
	.word	-136
	.word	4
	.word	_Label_4332
	.word	-140
	.word	4
	.word	_Label_4333
	.word	-144
	.word	4
	.word	0
_Label_4304:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_4305:
	.ascii	"Pself\0"
	.align
_Label_4306:
	.byte	'?'
	.ascii	"_temp_4303\0"
	.align
_Label_4307:
	.byte	'?'
	.ascii	"_temp_4302\0"
	.align
_Label_4308:
	.byte	'?'
	.ascii	"_temp_4301\0"
	.align
_Label_4309:
	.byte	'?'
	.ascii	"_temp_4300\0"
	.align
_Label_4310:
	.byte	'?'
	.ascii	"_temp_4299\0"
	.align
_Label_4311:
	.byte	'?'
	.ascii	"_temp_4298\0"
	.align
_Label_4312:
	.byte	'?'
	.ascii	"_temp_4297\0"
	.align
_Label_4313:
	.byte	'?'
	.ascii	"_temp_4296\0"
	.align
_Label_4314:
	.byte	'?'
	.ascii	"_temp_4295\0"
	.align
_Label_4315:
	.byte	'?'
	.ascii	"_temp_4294\0"
	.align
_Label_4316:
	.byte	'?'
	.ascii	"_temp_4293\0"
	.align
_Label_4317:
	.byte	'?'
	.ascii	"_temp_4292\0"
	.align
_Label_4318:
	.byte	'?'
	.ascii	"_temp_4291\0"
	.align
_Label_4319:
	.byte	'?'
	.ascii	"_temp_4290\0"
	.align
_Label_4320:
	.byte	'?'
	.ascii	"_temp_4288\0"
	.align
_Label_4321:
	.byte	'?'
	.ascii	"_temp_4287\0"
	.align
_Label_4322:
	.byte	'?'
	.ascii	"_temp_4286\0"
	.align
_Label_4323:
	.byte	'?'
	.ascii	"_temp_4285\0"
	.align
_Label_4324:
	.byte	'?'
	.ascii	"_temp_4284\0"
	.align
_Label_4325:
	.byte	'?'
	.ascii	"_temp_4283\0"
	.align
_Label_4326:
	.byte	'?'
	.ascii	"_temp_4282\0"
	.align
_Label_4327:
	.byte	'?'
	.ascii	"_temp_4280\0"
	.align
_Label_4328:
	.byte	'?'
	.ascii	"_temp_4279\0"
	.align
_Label_4329:
	.byte	'?'
	.ascii	"_temp_4278\0"
	.align
_Label_4330:
	.byte	'?'
	.ascii	"_temp_4277\0"
	.align
_Label_4331:
	.byte	'?'
	.ascii	"_temp_4276\0"
	.align
_Label_4332:
	.byte	'?'
	.ascii	"_temp_4275\0"
	.align
_Label_4333:
	.byte	'?'
	.ascii	"_temp_4274\0"
	.align
! 
! ===============  METHOD PutChar  ===============
! 
_Method_P_Kernel_SerialDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_2,r1
	push	r1
	mov	8,r1
_Label_4588:
	push	r0
	sub	r1,1,r1
	bne	_Label_4588
	mov	3239,r13		! source line 3239
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3240,r13		! source line 3240
	mov	"\0\0SE",r10
!   _temp_4334 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-36]
!   Send message Down
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3241,r13		! source line 3241
	mov	"\0\0SE",r10
!   _temp_4335 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	3242,r13		! source line 3242
	mov	"\0\0AS",r10
!   putBufferSize = putBufferSize + 1		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3243,r13		! source line 3243
	mov	"\0\0AS",r10
!   _temp_4336 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Move address of _temp_4336 [putBufferNextIn ] into _temp_4337
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+96],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: *_temp_4337 = value  (sizeInBytes=1)
	loadb	[r14+12],r1
	load	[r14+-24],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3244,r13		! source line 3244
	mov	"\0\0AS",r10
!   _temp_4338 = putBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   putBufferNextIn = _temp_4338 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+96]
! SEND STATEMENT...
	mov	3245,r13		! source line 3245
	mov	"\0\0SE",r10
!   _temp_4339 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	3246,r13		! source line 3246
	mov	"\0\0SE",r10
!   _temp_4340 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3246,r13		! source line 3246
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_2:
	.word	_sourceFileName
	.word	_Label_4341
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_4342
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4343
	.word	12
	.word	1
	.word	_Label_4344
	.word	-12
	.word	4
	.word	_Label_4345
	.word	-16
	.word	4
	.word	_Label_4346
	.word	-20
	.word	4
	.word	_Label_4347
	.word	-24
	.word	4
	.word	_Label_4348
	.word	-28
	.word	4
	.word	_Label_4349
	.word	-32
	.word	4
	.word	_Label_4350
	.word	-36
	.word	4
	.word	0
_Label_4341:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"PutChar\0"
	.align
_Label_4342:
	.ascii	"Pself\0"
	.align
_Label_4343:
	.byte	'C'
	.ascii	"value\0"
	.align
_Label_4344:
	.byte	'?'
	.ascii	"_temp_4340\0"
	.align
_Label_4345:
	.byte	'?'
	.ascii	"_temp_4339\0"
	.align
_Label_4346:
	.byte	'?'
	.ascii	"_temp_4338\0"
	.align
_Label_4347:
	.byte	'?'
	.ascii	"_temp_4337\0"
	.align
_Label_4348:
	.byte	'?'
	.ascii	"_temp_4336\0"
	.align
_Label_4349:
	.byte	'?'
	.ascii	"_temp_4335\0"
	.align
_Label_4350:
	.byte	'?'
	.ascii	"_temp_4334\0"
	.align
! 
! ===============  METHOD GetChar  ===============
! 
_Method_P_Kernel_SerialDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_3,r1
	push	r1
	mov	10,r1
_Label_4589:
	push	r0
	sub	r1,1,r1
	bne	_Label_4589
	mov	3249,r13		! source line 3249
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3251,r13		! source line 3251
	mov	"\0\0SE",r10
!   _temp_4351 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	3252,r13		! source line 3252
	mov	"\0\0WH",r10
_Label_4352:
!   if intIsZero (getBufferSize) then goto _Label_4353
	load	[r14+8],r1
	load	[r1+48],r1
	cmp	r1,r0
	be	_Label_4353
	jmp	_Label_4354
_Label_4353:
	mov	3252,r13		! source line 3252
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3253,r13		! source line 3253
	mov	"\0\0SE",r10
!   _temp_4355 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   _temp_4356 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_4355  sizeInBytes=4
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
	jmp	_Label_4352
_Label_4354:
! ASSIGNMENT STATEMENT...
	mov	3255,r13		! source line 3255
	mov	"\0\0AS",r10
!   _temp_4357 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Move address of _temp_4357 [getBufferNextOut ] into _temp_4358
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+56],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: ret = *_temp_4358  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	3256,r13		! source line 3256
	mov	"\0\0AS",r10
!   getBufferSize = getBufferSize - 1		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3257,r13		! source line 3257
	mov	"\0\0AS",r10
!   _temp_4359 = getBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   getBufferNextOut = _temp_4359 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+56]
! SEND STATEMENT...
	mov	3258,r13		! source line 3258
	mov	"\0\0SE",r10
!   _temp_4360 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	3259,r13		! source line 3259
	mov	"\0\0RE",r10
!   ReturnResult: ret  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_3:
	.word	_sourceFileName
	.word	_Label_4361
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_4362
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4363
	.word	-16
	.word	4
	.word	_Label_4364
	.word	-20
	.word	4
	.word	_Label_4365
	.word	-24
	.word	4
	.word	_Label_4366
	.word	-28
	.word	4
	.word	_Label_4367
	.word	-32
	.word	4
	.word	_Label_4368
	.word	-36
	.word	4
	.word	_Label_4369
	.word	-40
	.word	4
	.word	_Label_4370
	.word	-9
	.word	1
	.word	0
_Label_4361:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"GetChar\0"
	.align
_Label_4362:
	.ascii	"Pself\0"
	.align
_Label_4363:
	.byte	'?'
	.ascii	"_temp_4360\0"
	.align
_Label_4364:
	.byte	'?'
	.ascii	"_temp_4359\0"
	.align
_Label_4365:
	.byte	'?'
	.ascii	"_temp_4358\0"
	.align
_Label_4366:
	.byte	'?'
	.ascii	"_temp_4357\0"
	.align
_Label_4367:
	.byte	'?'
	.ascii	"_temp_4356\0"
	.align
_Label_4368:
	.byte	'?'
	.ascii	"_temp_4355\0"
	.align
_Label_4369:
	.byte	'?'
	.ascii	"_temp_4351\0"
	.align
_Label_4370:
	.byte	'C'
	.ascii	"ret\0"
	.align
! 
! ===============  METHOD SerialHandler  ===============
! 
_Method_P_Kernel_SerialDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_4,r1
	push	r1
	mov	25,r1
_Label_4590:
	push	r0
	sub	r1,1,r1
	bne	_Label_4590
	mov	3262,r13		! source line 3262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	3265,r13		! source line 3265
	mov	"\0\0WH",r10
_Label_4371:
!   _temp_4374 = _P_Kernel_serialHasBeenInitialized XOR 0		(bool)
	set	_P_Kernel_serialHasBeenInitialized,r1
	loadb	[r1],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_4374 then goto _Label_4373 else goto _Label_4372
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_4372
	jmp	_Label_4373
_Label_4372:
	mov	3265,r13		! source line 3265
	mov	"\0\0WB",r10
! END WHILE...
	jmp	_Label_4371
_Label_4373:
! WHILE STATEMENT...
	mov	3268,r13		! source line 3268
	mov	"\0\0WH",r10
_Label_4375:
!	jmp	_Label_4376
_Label_4376:
	mov	3268,r13		! source line 3268
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3269,r13		! source line 3269
	mov	"\0\0SE",r10
!   _temp_4378 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-100]
!   Send message Down
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3270,r13		! source line 3270
	mov	"\0\0IF",r10
!   if intIsZero (serial_status_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4382 = *serial_status_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   _temp_4381 = _temp_4382 AND 1		(int)
	load	[r14+-92],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-96]
!   if _temp_4381 <= 0 then goto _Label_4380		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4380
!	jmp	_Label_4379
_Label_4379:
! THEN...
	mov	3271,r13		! source line 3271
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3271,r13		! source line 3271
	mov	"\0\0SE",r10
!   _temp_4383 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Send message Lock
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3272,r13		! source line 3272
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4384 = *serial_data_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+8],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   inchar = intToChar (_temp_4384)
	load	[r14+-84],r1
	storeb	r1,[r14+-11]
! IF STATEMENT...
	mov	3273,r13		! source line 3273
	mov	"\0\0IF",r10
!   if getBufferSize < 10 then goto _Label_4386		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_4386
!	jmp	_Label_4385
_Label_4385:
! THEN...
	mov	3274,r13		! source line 3274
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4387 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_4387  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	3274,r13		! source line 3274
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inchar  sizeInBytes=1
	loadb	[r14+-11],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3275,r13		! source line 3275
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_4388 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_4388  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	3276,r13		! source line 3276
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_4389
_Label_4386:
! ELSE...
	mov	3278,r13		! source line 3278
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	3278,r13		! source line 3278
	mov	"\0\0AS",r10
!   getBufferSize = getBufferSize + 1		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3279,r13		! source line 3279
	mov	"\0\0AS",r10
!   _temp_4390 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Move address of _temp_4390 [getBufferNextIn ] into _temp_4391
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+52],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-68]
!   Data Move: *_temp_4391 = inchar  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3280,r13		! source line 3280
	mov	"\0\0AS",r10
!   _temp_4392 = getBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   getBufferNextIn = _temp_4392 rem 10		(int)
	load	[r14+-64],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+52]
! SEND STATEMENT...
	mov	3281,r13		! source line 3281
	mov	"\0\0SE",r10
!   _temp_4393 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   _temp_4394 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_4393  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4389:
! SEND STATEMENT...
	mov	3283,r13		! source line 3283
	mov	"\0\0SE",r10
!   _temp_4395 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Send message Unlock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4380:
! IF STATEMENT...
	mov	3285,r13		! source line 3285
	mov	"\0\0IF",r10
!   if intIsZero (serial_status_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4399 = *serial_status_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_4398 = _temp_4399 AND 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-48]
!   if _temp_4398 <= 0 then goto _Label_4397		(int)
	load	[r14+-48],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4397
!	jmp	_Label_4396
_Label_4396:
! THEN...
	mov	3286,r13		! source line 3286
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3286,r13		! source line 3286
	mov	"\0\0SE",r10
!   _temp_4400 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3287,r13		! source line 3287
	mov	"\0\0IF",r10
!   if putBufferSize <= 0 then goto _Label_4402		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4402
!	jmp	_Label_4401
_Label_4401:
! THEN...
	mov	3288,r13		! source line 3288
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3288,r13		! source line 3288
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4405 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Move address of _temp_4405 [putBufferNextOut ] into _temp_4406
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+100],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Data Move: _temp_4404 = *_temp_4406  (sizeInBytes=1)
	load	[r14+-28],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   _temp_4403 = charToInt (_temp_4404)
	loadb	[r14+-9],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-36]
!   Data Move: *serial_data_word_address = _temp_4403  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3289,r13		! source line 3289
	mov	"\0\0AS",r10
!   _temp_4407 = putBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   putBufferNextOut = _temp_4407 rem 10		(int)
	load	[r14+-24],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3290,r13		! source line 3290
	mov	"\0\0AS",r10
!   putBufferSize = putBufferSize - 1		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! SEND STATEMENT...
	mov	3291,r13		! source line 3291
	mov	"\0\0SE",r10
!   _temp_4408 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4402:
! SEND STATEMENT...
	mov	3293,r13		! source line 3293
	mov	"\0\0SE",r10
!   _temp_4409 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4397:
! END WHILE...
	jmp	_Label_4375
_Label_4377:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_4:
	.word	_sourceFileName
	.word	_Label_4410
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_4411
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4412
	.word	-16
	.word	4
	.word	_Label_4413
	.word	-20
	.word	4
	.word	_Label_4414
	.word	-24
	.word	4
	.word	_Label_4415
	.word	-28
	.word	4
	.word	_Label_4416
	.word	-32
	.word	4
	.word	_Label_4417
	.word	-9
	.word	1
	.word	_Label_4418
	.word	-36
	.word	4
	.word	_Label_4419
	.word	-40
	.word	4
	.word	_Label_4420
	.word	-44
	.word	4
	.word	_Label_4421
	.word	-48
	.word	4
	.word	_Label_4422
	.word	-52
	.word	4
	.word	_Label_4423
	.word	-56
	.word	4
	.word	_Label_4424
	.word	-60
	.word	4
	.word	_Label_4425
	.word	-64
	.word	4
	.word	_Label_4426
	.word	-68
	.word	4
	.word	_Label_4427
	.word	-72
	.word	4
	.word	_Label_4428
	.word	-76
	.word	4
	.word	_Label_4429
	.word	-80
	.word	4
	.word	_Label_4430
	.word	-84
	.word	4
	.word	_Label_4431
	.word	-88
	.word	4
	.word	_Label_4432
	.word	-92
	.word	4
	.word	_Label_4433
	.word	-96
	.word	4
	.word	_Label_4434
	.word	-100
	.word	4
	.word	_Label_4435
	.word	-10
	.word	1
	.word	_Label_4436
	.word	-11
	.word	1
	.word	0
_Label_4410:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"SerialHandler\0"
	.align
_Label_4411:
	.ascii	"Pself\0"
	.align
_Label_4412:
	.byte	'?'
	.ascii	"_temp_4409\0"
	.align
_Label_4413:
	.byte	'?'
	.ascii	"_temp_4408\0"
	.align
_Label_4414:
	.byte	'?'
	.ascii	"_temp_4407\0"
	.align
_Label_4415:
	.byte	'?'
	.ascii	"_temp_4406\0"
	.align
_Label_4416:
	.byte	'?'
	.ascii	"_temp_4405\0"
	.align
_Label_4417:
	.byte	'C'
	.ascii	"_temp_4404\0"
	.align
_Label_4418:
	.byte	'?'
	.ascii	"_temp_4403\0"
	.align
_Label_4419:
	.byte	'?'
	.ascii	"_temp_4400\0"
	.align
_Label_4420:
	.byte	'?'
	.ascii	"_temp_4399\0"
	.align
_Label_4421:
	.byte	'?'
	.ascii	"_temp_4398\0"
	.align
_Label_4422:
	.byte	'?'
	.ascii	"_temp_4395\0"
	.align
_Label_4423:
	.byte	'?'
	.ascii	"_temp_4394\0"
	.align
_Label_4424:
	.byte	'?'
	.ascii	"_temp_4393\0"
	.align
_Label_4425:
	.byte	'?'
	.ascii	"_temp_4392\0"
	.align
_Label_4426:
	.byte	'?'
	.ascii	"_temp_4391\0"
	.align
_Label_4427:
	.byte	'?'
	.ascii	"_temp_4390\0"
	.align
_Label_4428:
	.byte	'?'
	.ascii	"_temp_4388\0"
	.align
_Label_4429:
	.byte	'?'
	.ascii	"_temp_4387\0"
	.align
_Label_4430:
	.byte	'?'
	.ascii	"_temp_4384\0"
	.align
_Label_4431:
	.byte	'?'
	.ascii	"_temp_4383\0"
	.align
_Label_4432:
	.byte	'?'
	.ascii	"_temp_4382\0"
	.align
_Label_4433:
	.byte	'?'
	.ascii	"_temp_4381\0"
	.align
_Label_4434:
	.byte	'?'
	.ascii	"_temp_4378\0"
	.align
_Label_4435:
	.byte	'C'
	.ascii	"_temp_4374\0"
	.align
_Label_4436:
	.byte	'C'
	.ascii	"inchar\0"
	.align
