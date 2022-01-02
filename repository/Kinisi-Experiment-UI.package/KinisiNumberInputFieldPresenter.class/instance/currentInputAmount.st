private
currentInputAmount

	^[ numberInput number ]
		on: Error do: [ :error |
		 Error signal: ('<1s> is not a valid number [Error: <2s>]'
			expandMacrosWith: numberInput text
			with: error messageText) ]