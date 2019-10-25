examples - grid - animation
exampleEarthAndSunAnimationWithBuffer

	| view viewSize animation universeDraft day simulation timeDelta duration buffer gridConfiguration renderer endPointConsumer reader bufferWriterConsumer |

	view := RTView new.
	view canvas color: Color black.
	viewSize := 1000 @ 1000.
	view openInWindowSized: viewSize titled: 'Earth and Sun'.
	universeDraft := self earthAndSunInitialUniverseDraft.
	gridConfiguration := self earthAndSunExampleGridConfiguration.
	
	renderer := UniverseRenderer basedOn: universeDraft and: gridConfiguration.
	renderer drawIn: view basedOn: universeDraft.
	GridRenderer new drawIn: view basedOn: gridConfiguration.

	day := UnitProvider soleInstance day.
	timeDelta := day with: 1.
	duration := day with: 365.
	buffer := Buffer new.
	reader := BufferPluggableReader on: buffer withDataDo: [:simulationStep | endPointConsumer process: simulationStep ].
	endPointConsumer := SimulationStepPluggableConsumer processWith: [:simulationStep |
		view clean.
		renderer drawIn: view basedOn: simulationStep value.
		"GridRenderer new drawIn: view basedOn: gridConfiguration"].
	bufferWriterConsumer := SimulationStepBufferWriterConsumer on: buffer.
	
	simulation := Simulation
		startingWith: universeDraft asUniverseState
		changingBy: [:stepDuration :currentState |
			(UniverseStateChange from: currentState during: stepDuration) finalState ]
		over: timeDelta
		during: duration
		informingStepsTo: bufferWriterConsumer.

	simulation run.
	
	animation := RTActiveAnimation new.
	animation intervalInMilliseconds: 40.
	animation blockToExecute: [ reader read ].
	"Starts animation"
	animation inView: view