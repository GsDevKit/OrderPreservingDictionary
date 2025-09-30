# Order Preserving Dictionary

*OrderPreservingDictionary* preserves the order in which elements were added to to it.

[![Unit Tests](https://github.com/pharo-contributions/OrderPreservingDictionary/workflows/Build/badge.svg?branch=master)](https://github.com/pharo-contributions/OrderPreservingDictionary/actions?query=workflow%3ABuild)
[![Coverage Status](https://codecov.io/github/pharo-contributions/OrderPreservingDictionary/coverage.svg?branch=master)](https://codecov.io/gh/pharo-contributions/OrderPreservingDictionary/branch/master)

[![Pharo 6](https://img.shields.io/badge/Pharo-6.0-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 7](https://img.shields.io/badge/Pharo-7.0-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 8](https://img.shields.io/badge/Pharo-8.0-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 9](https://img.shields.io/badge/Pharo-9.0-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 10](https://img.shields.io/badge/Pharo-10-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 11](https://img.shields.io/badge/Pharo-11-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 12](https://img.shields.io/badge/Pharo-12-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 13](https://img.shields.io/badge/Pharo-13-%23aac9ff.svg)](https://pharo.org/download)

## Quick Start 

### Installation 

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

### Usage

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
