# Awaitables
Things that you can await upon.

[![license](https://img.shields.io/github/license/mashape/apistatus.svg)]()
[![GitHub release](https://img.shields.io/github/release/randymarsh77/awaitables.svg)]()
[![SPM](https://img.shields.io/badge/SPM-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)
[![Build Status](https://api.travis-ci.org/randymarsh77/awaitables.svg?branch=master)](https://travis-ci.org/randymarsh77/awaitables)
[![codebeat badge](https://codebeat.co/badges/09e7fb1d-1af4-41f7-8f2f-c39ee10c4d36)](https://codebeat.co/projects/github-com-randymarsh77-awaitables-master)

# Usage
Use with [Async](https://github.com/randymarsh77/async)

# Examples
Signals, like sigint and sigkill
```
import Async
import Awaitables

let signal = await (Signals(SIGINT, SIGKILL))
```

Some point in the future
```
import Async
import Awaitables
import Time

await (Time.Never)
```

Cancellation
```
import Async
import Awaitables
import Cancellation

let token = CancellationTokenSource().token
await (token.untilCanceled())
```
