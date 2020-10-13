tests
testAt
	| dictionary |

	dictionary := self emptyDictionary.
	dictionary defaultValue: self defaultValue.
	self orderedAssociations do: [:each |
		self assert: (dictionary at: each key) equals: self defaultValue.

		dictionary add: each.
		self assert: (dictionary at: each key) equals: each value].