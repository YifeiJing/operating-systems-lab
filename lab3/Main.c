code Main

  -- OS Class: Project 3
  --
  -- <itsuhi kei>
  --

  -- This package contains the following:
  --     Dining Philospohers
-----------------------------  Main  ---------------------------------

  function main ()
     --  InitializeScheduler ()
     --  DiningPhilosophers ()
     --  ThreadFinish ()

-- Uncomment this section to test sleeping barber --
	 InitializeScheduler ()
	 SleepingBarber ()
	 ThreadFinish ()

--      FatalError ("Need to implement")
    endFunction




-----------------------------  Dining Philosophers  ----------------------------

  -- This code is an implementation of the Dining Philosophers problem.  Each
  -- philosopher is simulated with a thread.  Each philosopher thinks for a while
  -- and then wants to eat.  Before eating, he must pick up both his forks.
  -- After eating, he puts down his forks.  Each fork is shared between
  -- two philosophers and there are 5 philosophers and 5 forks arranged in a
  -- circle.
  --
  -- Since the forks are shared, access to them is controlled by a monitor
  -- called "ForkMonitor".  The monitor is an object with two "entry" methods:
  --     PickupForks (phil)
  --     PutDownForks (phil)
  -- The philsophers are numbered 0 to 4 and each of these methods is passed an 
  -- integer indicating which philospher wants to pickup (or put down) the forks.
  -- The call to "PickUpForks" will wait until both of his forks are
  -- available.  The call to "PutDownForks" will never wait and may also
  -- wake up threads (i.e., philosophers) who are waiting.
  --
  -- Each philospher is in exactly one state: HUNGRY, EATING, or THINKING.  Each
  -- time a philosopher's state changes, a line of output is printed.  The 
  -- output is organized so that each philosopher has column of output with the
  -- following code letters:
  --           E    --  eating
  --           .    --  thinking
  --         blank  --  hungry (i.e., waiting for forks)
  -- By reading down a column, you can see the history of a philosopher.
  --
  -- The forks are not modeled explicitly.  A fork is only picked up
  -- by a philosopher if he can pick up both forks at the same time and begin
  -- eating.  To know whether a fork is available, it is sufficient to simply
  -- look at the status's of the two adjacent philosophers.  (Another way to 
  -- state the problem is to forget about the forks altogether and stipulate 
  -- that a philosopher may only eat when his two neighbors are not eating.)

  enum HUNGRY, EATING, THINKING
  var
    mon: ForkMonitor
    philospher: array [5] of Thread = new array of Thread {5 of new Thread }

  function DiningPhilosophers ()

      print ("Plato\n")
      print ("    Sartre\n")
      print ("        Kant\n")
      print ("            Nietzsche\n")
      print ("                Aristotle\n")

      mon = new ForkMonitor
      mon.Init ()
      mon.PrintAllStatus ()

      philospher[0].Init ("Plato")
      philospher[0].Fork (PhilosphizeAndEat, 0)

      philospher[1].Init ("Sartre")
      philospher[1].Fork (PhilosphizeAndEat, 1)

      philospher[2].Init ("Kant")
      philospher[2].Fork (PhilosphizeAndEat, 2)

      philospher[3].Init ("Nietzsche")
      philospher[3].Fork (PhilosphizeAndEat, 3)

      philospher[4].Init ("Aristotle")
      philospher[4].Fork (PhilosphizeAndEat, 4)

     endFunction

  function PhilosphizeAndEat (p: int)
    -- The parameter "p" identifies which philosopher this is.
    -- In a loop, he will think, acquire his forks, eat, and
    -- put down his forks.
      var
        i: int
      for i = 1 to 7
        -- Now he is thinking
        mon.PickupForks (p)
        -- Now he is eating
        mon.PutDownForks (p)
      endFor
    endFunction

  class ForkMonitor
    superclass Object
    fields
      status: array [5] of int -- For each philosopher: HUNGRY, EATING, or THINKING
      lock: Mutex
      cond: Condition
    methods
      Init ()
      PickupForks (p: int)
      PutDownForks (p: int)
      PrintAllStatus ()
      CheckFork (p: int) returns bool
  endClass

  behavior ForkMonitor

    method Init ()
      -- Initialize so that all philosophers are THINKING.
      status = new array of int { 5 of THINKING }
      lock = new Mutex
      cond = new Condition
      lock.Init ()
      cond.Init ()
      endMethod

    method PickupForks (p: int)
      -- This method is called when philosopher 'p' wants to eat.
      lock.Lock ()
      status[p] = HUNGRY
      self.PrintAllStatus ()
      while !self.CheckFork (p)
	cond.Wait (&lock)
      endWhile
	status[p] = EATING
	self.PrintAllStatus ()
      lock.Unlock ()
      endMethod

    method PutDownForks (p: int)
      -- This method is called when the philosopher 'p' is done eating.
      lock.Lock ()
      status[p] = THINKING
      self.PrintAllStatus ()
      cond.Broadcast (&lock)
      lock.Unlock ()
      endMethod

    method PrintAllStatus ()
      -- Print a single line showing the status of all philosophers.
      --      '.' means thinking
      --      ' ' means hungry
      --      'E' means eating
      -- Note that this method is internal to the monitor.  Thus, when
      -- it is called, the monitor lock will already have been acquired
      -- by the thread.  Therefore, this method can never be re-entered,
      -- since only one thread at a time may execute within the monitor.
      -- Consequently, printing is safe.  This method calls the "print"
      -- routine several times to print a single line, but these will all
      -- happen without interuption.
        var
          p: int
        for p = 0 to 4
          switch status [p]
            case HUNGRY:
              print ("    ")
              break
            case EATING:
              print ("E   ")
              break
            case THINKING:
              print (".   ")
              break
          endSwitch
        endFor
        nl ()
      endMethod

    method CheckFork (p: int) returns bool
	if status[(p + 4) % 5] != EATING && status[(p + 6) % 5] != EATING
		return true
	endIf
	return false
    endMethod

  endBehavior

------------------------------- Sleeping barber -------------------------------
-- Eight status: enter (E)
--		 sit in chair (S)
--		 Begin hair cut (B)
--		 Finish hair cut (F)
--		 Leave (L)
--		 Barber starts hair cut (start)
--		 Barber ends hair cut (end)
--		 Customers are out of the shop, the null state (OUT)
-- Five chairs: XXXXX
-- The sequencce of a correct output: E (S) start S F end L


   enum E, S, B, F, L, start, end, OUT
var
   customers: array [10] of Thread = new array of Thread { 10 of new Thread }
   statuss: array [10] of int = new array of int { 10 of OUT }
   mutex: Mutex = new Mutex
   barber: Semaphore = new Semaphore
   seats: int

function SleepingBarber ()

  var 
   i: int
      mutex.Init ()
      barber.Init (1)
      seats = 5

      print ("       Barber   1  2  3  4  5  6  7  8  9  10\n")

      PrintAllStatus ()

      for i = 0 to 9
	customers[i].Init ("Customer")
	customers[i].Fork (CustomerInShop, i)
      endFor
      endFunction

function CustomerInShop (c: int)
  -- Enter the shop and find a seat
	EnterTheShop (c)
	 LeaveShop (c)
      endFunction

function EnterTheShop (c: int)
    mutex.Lock ()
    statuss[c] = E
    PrintAllStatus ()
    if hasSeats ()
	seats = seats - 1
	statuss[c] = S
	PrintAllStatus ()
	statuss[c] = OUT
	mutex.Unlock ()
	barber.Down ()
	mutex.Lock ()
	statuss[c] = start
	PrintAllStatus ()
	statuss[c] = B
	seats = seats + 1
	PrintAllStatus ()
	statuss[c] = OUT
	mutex.Unlock ()
	currentThread.Yield ()
	mutex.Lock ()
	statuss[c] = F
	PrintAllStatus ()
	statuss[c] = end
	PrintAllStatus ()
	statuss[c] = OUT
	barber.Up ()
    endIf
	mutex.Unlock ()
endFunction

function LeaveShop (c: int)
  -- The last step, the customer leave shop and wake up the other custemers waiting on the seats
     mutex.Lock ()
     statuss[c] = L
     PrintAllStatus ()
     statuss[c] = OUT
     mutex.Unlock ()
endFunction

function hasSeats () returns bool
      return seats > 0
endFunction

function PrintAllStatus ()
var 
   i: int
   h: bool
   p: int
	h = false
  -- Print seats
	for i = 1 to 5 - seats
	   print("X")
	endFor
	for i = 1 to seats
	   print("_")
	endFor
  -- indent
	print("  ")
  -- barber status
	for i = 0 to 9
	   if statuss[i] == start
		print("start ")
		h = true
		break
	   elseIf statuss[i] == end
		print("end   ")
		h = true
		break
	   endIf
	endFor
	if ! h
	   print("      ")
	endIf
  -- indent
	print(" ")
  -- customer status
	for p = 0 to 9
	   switch statuss [p]
		case OUT:
		   print("   ")
		   break
		case E:
		   print("  E")
		   break
		case S:
		   print("  S")
		   break
		case B:
		   print("  B")
		   break
		case F:
		   print("  F")
		   break
		case L:
		   print("  L")
		   break
		default: print("   ")
	   endSwitch
	endFor
	nl ()
endFunction

endCode
