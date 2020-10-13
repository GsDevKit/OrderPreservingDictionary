tests
testKeyAtIdentityValue
	| dictionary |

	dictionary := self emptyDictionary.
	dictionary defaultValue: self defaultValue.
	self orderedAssociations do: [:each |
		self assert:
			(dictionary keyAtIdentityValue: each value) equals: self defaultValue.

		dictionary add: each.
		self assert:
			(dictionary keyAtIdentityValue: each value) equals: each key.
		self assert:
			(dictionary keyAtIdentityValue: each value copy) equals: self defaultValue].