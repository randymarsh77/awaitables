import Foundation
import Async
import Scope
import Streams

internal class GlobalSignals
{
	static let SignalStream = Streams.Stream<Int32>()
	static let Registrations = [Int32]()

	static func TrapIfNecessary(_ sig: Int32) -> Void
	{
		if (Registrations.contains(sig)) {
			return
		}

		signal(sig) { (signal: Int32) in
			GlobalSignals.SignalStream.publish(signal)
		}
	}
}

public func Signals(_ sigs: Int32...) -> Task<Int32> {
	for sig in sigs {
		GlobalSignals.TrapIfNecessary(sig)
	}

	var trappedSignal: Int32 = -1
	let task: Task<Int32> = async {
		Async.Suspend()
		return trappedSignal
	}

	var subscription: Scope? = nil
	subscription = GlobalSignals.SignalStream.subscribe { signal in
		if (sigs.contains(signal)) {
			trappedSignal = signal
			subscription!.dispose()
			Async.Wake(task)
		}
	}
	return task
}
