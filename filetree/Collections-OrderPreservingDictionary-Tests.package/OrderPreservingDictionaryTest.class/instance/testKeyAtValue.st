tests
testKeyAtValue
	| dictionary |

	dictionary := self emptyDictionary.
	dictionary defaultValue: self defaultValue.
	self orderedAssociations do: [:each |
		self assert: (dictionary keyAtValue: each value) equals: self defaultValue.

		dictionary add: each.
		self assert: (dictionary keyAtValue: each value) equals: each key].