#if os(Linux)
@_exported import Glibc
#elseif os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
@_exported import Darwin
#else
#error("Unsupported Operating System")
#endif