private
modifyInitialStateBasedOn: modifier
 
	| targetState |
	targetState := CollatzConjectureState with: modifier initialValue. 
	initialState := targetState 