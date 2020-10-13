tests
testAtIfAbsentPut
	| dictionary |

	dictionary := self emptyDictionary.
	self orderedAssociations do: [:each |
		self assert:
			(dictionary
				at: each key
				ifAbsentPut: [each value]) equals: each value.
		self assert:
			(dictionary
				at: each key
				ifAbsentPut: [self fail]) equals: each value].