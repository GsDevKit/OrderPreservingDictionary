# Order Preserving Dictionary
[![Build Status](https://travis-ci.org/brunobuzzi/OrderPreservingDictionary.svg?branch=gemstone)](https://github.com/brunobuzzi/OrderPreservingDictionary) [![Coverage Status](https://coveralls.io/repos/github/pharo-contributions/OrderPreservingDictionary/badge.svg?branch=master)](https://coveralls.io/github/pharo-contributions/OrderPreservingDictionary?branch=master)

## Installation

### Metacello
```smalltalk
Metacello new
	baseline: 'OrderPreservingDictionary';
	repository: 'github://GsDevKit/OrderPreservingDictionary:gemstone/filetree';
	load.
```
### tODE command line
```
project install --url=http://gsdevkit.github.io/GsDevKit_home/OrderPreservingDictionary.ston
project load OrderPreservingDictionary
```

## Usage

OrderPreservingDictionary preserves the order in which elements were added to to it.

Basic **Dictionary**

```smalltalk
(dict := Dictionary new)
	at: #apple put: 20;
	at: #orange put: 15.

dict keys. "#(#orange #apple)"
```

**OrderPreservingDictionary**

```smalltalk
(dict := OrderPreservingDictionary new)
	at: #apple put: 20;
	at: #orange put: 15.

dict keys. "#(#apple #orange)"
```
