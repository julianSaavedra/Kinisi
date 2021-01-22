examples
exampleEarthAndSunSimulation

	| day simulation timeDelta duration |
	day := UnitProvider soleInstance day.
	timeDelta := day with: 1.
	duration := day with: 365.

	simulation := Simulation
		startingWith: self earthAndSunUniverse
		changingBy: [:stepDuration :currentState |
			(UniverseGravitationalChange from: currentState during: stepDuration) finalState ]
		over: timeDelta
		during: duration.

	simulation run.

	^simulation result