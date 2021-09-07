settings
projectile

	| fortyMilliseconds tenSeconds |
	fortyMilliseconds := UnitProvider soleInstance millisecond with: 40.
	tenSeconds := UnitProvider soleInstance second with: 10.
	^self
		  exampleWith: ProjectileExampleSetting new
		  steppingBy: fortyMilliseconds
		  over: tenSeconds