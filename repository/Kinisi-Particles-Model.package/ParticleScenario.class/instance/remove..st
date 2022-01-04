configuring
remove: changeSpecification
 
	[ changeSpecifications removeKey: changeSpecification name ]
		on: KeyNotFound
		do: [ ExperimentError signal: ('Specification that is being removed does not exist in particle <1s>' expandMacrosWith: self particleName) ]