settings
projectile

	| period interfaceDefinition modelSetting fortyMilliseconds tenSeconds steppingSetting |
	period := Duration milliSeconds: 40.
	interfaceDefinition := InterfaceDefinition
		                       named: 'Animation'
		                       with: UniverseAnimationInterfaceSpec new.
	modelSetting := ParticlesWorkbenchExampleSetting new.
	fortyMilliseconds := UnitProvider soleInstance millisecond with: 40.
	tenSeconds := UnitProvider soleInstance second with: 10.
	steppingSetting := SteppingWorkbenchSetting stepBy: fortyMilliseconds over: tenSeconds. 
	^LabWorkbenchExampleSetting
		apply: modelSetting
		applyStepping: steppingSetting 
		withPeriod: period
		withAll: {interfaceDefinition}