instance creation
toMilliseconds

	^self
		with: 'Milliseconds'
		using: [:amount | Duration milliSeconds: amount]
		and: [:period | period seconds * 1000 + period wholeMilliseconds]