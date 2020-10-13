tests
testCollect
	super testCollect.

	self assert:
		(self dictionaryWithOrderedAssociations
			defaultValue: self defaultValue;
			collect: [:each | each]) defaultValue equals: self defaultValue.