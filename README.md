# Random-function
Easily get random number, linear or exponentially.

For example, if you want to print 10 numbers, with values between 1 and 10 (inclusive), AND with a higher proportion at the higher end of the range, you could do this:

```Swift
for _ in 1...10 {
    print(random(from: 1, to: 10, distribution: .higher))
}
```

Or if you want the distribution linear, you can do:

```Swift
for _ in 1...10 {
    print(random(from: 1, to: 10, distribution: .linear))
}
```

which in short-form is:

```Swift
for _ in 1...10 {
    print(random(from: 1, to: 10))
}
```

# Note:

`Swift` now supports getting random numbers (linearly) by using `Type.random(in: Range)`:

```let randomNumber = Float.random(in: -1...1)
```
