PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	// cycle once when clicked
	rtClickTrig(CLK := xClick);
	IF rtClickTrig.Q THEN
		// check to see if we hit the upper bound;
		IF i = 9 THEN
			sHelloString := '';
			i := 0;
		ELSE
			// build the string one char at a time
			sHelloString := CONCAT(sHelloString, asHoldData[i]);
			i := i +1; // increment 1
		END_IF
		xClick := FALSE;
	END_IF
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)	
	
END_PROGRAM