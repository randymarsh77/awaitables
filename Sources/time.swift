import Foundation
import Async
import Time

public extension Time
{
	public static var Never: Task<Void> {
		return async {
			Async.Suspend()
		}
	}
}
