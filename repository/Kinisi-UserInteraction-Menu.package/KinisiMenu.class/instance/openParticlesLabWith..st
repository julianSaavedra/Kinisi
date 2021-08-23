options
openParticlesLabWith: example

	| presenterConfiguration |
	presenterConfiguration := LabPresenterSpecification forUniverseParticlesWith: example.
	self openLabBasedOn: presenterConfiguration