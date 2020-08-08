test - stepping definition
testNumberOfRepetitionsCannotBeNegative

		self
			should: [ SteppingDefinition repeat: -5 ]
			raise: Error
			whoseDescriptionIncludes: 'Repetitions cannot be negative'