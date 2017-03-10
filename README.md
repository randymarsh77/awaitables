# Awaitables
Things that you can await upon.

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
