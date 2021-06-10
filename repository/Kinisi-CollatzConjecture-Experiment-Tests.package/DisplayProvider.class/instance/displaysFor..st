connecting
displaysFor: experiment
 
	^experiment observationInterfaces collect: [:interface |
		interface connectToDisplayUsing: self ]