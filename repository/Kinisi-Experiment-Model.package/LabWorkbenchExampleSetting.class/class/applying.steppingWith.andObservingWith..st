instance creation
applying: observationSetting steppingWith: steppingSetting andObservingWith: scenarioSetting

	^self new
		initializeApplying: scenarioSetting
		steppingWith: steppingSetting
		andObservingWith: observationSetting