Argon2 Library
==

Wrapper around the [reference C implementation of Argon2](https://github.com/charlykno64/phc-winner-argon2-calloc).
                          

iOS Usage
--

Add the following line to your Podfile:

```ruby
pod 'SignalArgon2CAlloc'
```

Install the pod with the a terminal at the same path as your Podfile:

```ruby
pod install
```

Use it:

```swift
let (rawHash, encodedHash) = Argon2.hash(
    iterations: 1,
    memoryInKiB: 32 * 1024,
    threads: 1,
    password: password,
    salt: salt,
    desiredLength: 32,
    variant: .id,
    version: .v13
)
```
