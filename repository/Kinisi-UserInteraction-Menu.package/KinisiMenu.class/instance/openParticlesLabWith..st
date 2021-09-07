options
openParticlesLabWith: example

	| presenterConfiguration |
	presenterConfiguration := LabPresenterSpecification forUniverseParticlesShowing: example.
	self openLabBasedOn: presenterConfiguration