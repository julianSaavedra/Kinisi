private
positionForNewParticle

	^self
		new: [:particle | particle position ]
		using: self positionGenerator