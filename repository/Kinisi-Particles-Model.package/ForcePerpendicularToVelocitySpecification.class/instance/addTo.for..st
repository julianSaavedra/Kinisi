accessing
addTo: changeDescription for: targetParticle

	forceOrientation
		ifClockwiseDo: [
			changeDescription
				addForceClockwisePerpendicularToVelocityWith: forceModule
				for: targetParticle ]
		ifCounterclockwiseDo: [
			changeDescription
				addForceCounterclockwisePerpendicularToVelocityWith: forceModule
				for: targetParticle ]