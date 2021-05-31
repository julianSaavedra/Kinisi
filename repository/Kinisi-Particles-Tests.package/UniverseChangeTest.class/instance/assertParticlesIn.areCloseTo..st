asserting
assertParticlesIn: resultUniverse areCloseTo: expectedUniverse

	resultUniverse particles do: [:resultParticle | 
		self assert: resultParticle in: expectedUniverse with: [:expectedParticle | 
				self assert: resultParticle mass equals: expectedParticle mass.
				self assertVector: resultParticle position closeTo: expectedParticle position.
				self assertVector: resultParticle velocity closeTo: expectedParticle velocity.
				self assertVector: resultParticle acceleration 	closeTo: expectedParticle acceleration ] ]