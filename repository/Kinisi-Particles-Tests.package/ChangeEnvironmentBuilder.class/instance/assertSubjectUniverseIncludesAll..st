building configuration
assertSubjectUniverseIncludesAll: particles

	particles do:[:particle | self assertSubjectUniverseIncludes: particle ]