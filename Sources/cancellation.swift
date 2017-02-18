import Foundation
import Async
import Cancellation

public extension CancellationToken
{
	func UntilCanceled() -> Task<Void> {
		let task = async {
			Async.Suspend()
		}
		_ = try! self.register {
			Async.Wake(task)
		}
		return task
	}
}
