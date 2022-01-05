instance creation
toSeconds

	^self
		with: 'Seconds'
		using: [:amount | Duration seconds: amount]
		and: [:period | period seconds + (period wholeMilliseconds / 1000) ]