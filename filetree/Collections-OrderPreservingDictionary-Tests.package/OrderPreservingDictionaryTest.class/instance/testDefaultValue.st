tests
testDefaultValue
	| dictionary |
	
	dictionary := self dictionaryClass defaultValue: self defaultValue.
	self
		assert: dictionary defaultValue equals: self defaultValue;
		assert: (dictionary defaultValue: self newDefaultValue) == dictionary;
		assert: dictionary defaultValue equals: self newDefaultValue.