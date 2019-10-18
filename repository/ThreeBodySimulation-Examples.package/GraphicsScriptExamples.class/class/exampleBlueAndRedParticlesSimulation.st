examples - grid - animation
exampleBlueAndRedParticlesSimulation

	| view viewSize gridConfiguration universeDraft renderer unitProvider meter second timeDelta duration buffer bufferWriterConsumer reader endPointConsumer simulation animation |
	view := RTView new.
	view canvas color: Color black.
	viewSize := 1000 @ 1000.
	view openInWindowSized: viewSize titled: 'Red and Blue'.	
	unitProvider := UnitProvider soleInstance.
	meter := unitProvider meter.
	
	universeDraft := self universeDraftBlueAndRedParticlesOfXKilogramsMovingInOppositeDirections.
	gridConfiguration := GridConfiguration withColor: Color gray size: 50 andDistance: (meter with: 1).
	
	renderer := UniverseRenderer basedOn: universeDraft and: gridConfiguration.
	renderer drawIn: view basedOn: universeDraft.
	GridRenderer new drawIn: view basedOn: gridConfiguration.
	
	second := unitProvider second.
	timeDelta := second with: 0.1.
	duration := second with: 100.
	buffer := Buffer new.
	reader := BufferPluggableReader on: buffer withDataDo: [:simulationStep | endPointConsumer process: simulationStep ].
	endPointConsumer := SimulationStepPluggableConsumer do: [:simulationStep |
		view clean.
		renderer drawIn: view basedOn: simulationStep value.
		GridRenderer new drawIn: view basedOn: gridConfiguration ].
	
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