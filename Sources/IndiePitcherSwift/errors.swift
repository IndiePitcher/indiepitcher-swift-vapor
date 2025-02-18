public struct IndiePitcherRequestError: Error, Equatable, Sendable {
    var statusCode: UInt
    var reason: String

    public init(statusCode: UInt, reason: String) {
        self.statusCode = statusCode
        self.reason = reason
    }
}
