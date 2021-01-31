import Foundation
import Async
import Time

public extension Time
{
	static var Never: Task<Void> {
		return async {
			Async.Suspend()
		}
	}
}
