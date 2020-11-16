###### This is a bridge to `c libraries` on `Linux` and `Darwin` systems, it can be imported with one line of code.

###### instead of

```swift
#if os(Linux)
import Glibc
#else
import Darwin
#endif
```

###### we can just type

```swift
import C
```

#### Example of `c functions` in `swift`:

The following example creates a file pointer, like in c.

```swift
import C
...
var fp = fopen("path/To/File", "r+")
// check if file exists
if fp != nil {
  print("file exists")
  print(type(of: fp)) // `UnsafeMutablePointer<FILE>` == `FILE*`
  fclose(fp)
}
```

#### Importing C:

To include `C` in your project, you need to add the following to the `dependencies` attribute defined in your `Package.swift` file.
```swift
dependencies: [
  .package(url: "https://github.com/alja7dali/swift-c.git", from: "1.0.0")
]
```