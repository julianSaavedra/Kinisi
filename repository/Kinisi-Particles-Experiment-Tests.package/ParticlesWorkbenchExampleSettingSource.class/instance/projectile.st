settings
projectile

	| period interfaceDefinition modelSetting fortyMilliseconds fiveSeconds steppingSetting |
	period := Duration milliSeconds: 40.
	interfaceDefinition := InterfaceDefinition
		                       named: 'Animation'
		                       with: UniverseAnimationInterfaceSpec new.
	modelSetting := ParticlesWorkbenchExampleSetting new.
	fortyMilliseconds := UnitProvider soleInstance millisecond with: 40.
	fiveSeconds := UnitProvider soleInstance second with: 5.
	steppingSetting := SteppingWorkbenchSetting stepBy: fortyMilliseconds over: fiveSeconds. 
	^LabWorkbenchExampleSetting
		apply: modelSetting
		applyStepping: steppingSetting 
		withPeriod: period
		withAll: {interfaceDefinition}