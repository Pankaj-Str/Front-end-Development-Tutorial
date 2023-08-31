## Topic
```
1. Math
2. Random
3. Booleans
4. Comparisons

```

**1. Math:**

The `Math` object in JavaScript provides a collection of methods for performing various mathematical operations. Here are some commonly used methods:

- `Math.abs(x)`: Returns the absolute value of `x`.
- `Math.sqrt(x)`: Returns the square root of `x`.
- `Math.pow(x, y)`: Returns `x` raised to the power of `y`.
- `Math.floor(x)`: Returns the largest integer less than or equal to `x`.
- `Math.ceil(x)`: Returns the smallest integer greater than or equal to `x`.
- `Math.round(x)`: Returns the rounded value of `x`.
- `Math.min(x1, x2, ..., xn)`: Returns the minimum value among the given arguments.
- `Math.max(x1, x2, ..., xn)`: Returns the maximum value among the given arguments.
- `Math.random()`: Returns a random floating-point number between 0 (inclusive) and 1 (exclusive).

**2. Random:**

The `Math.random()` method generates a pseudo-random floating-point number between 0 (inclusive) and 1 (exclusive). To generate random integers within a specific range, you can use the following formula:

```javascript
function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

let randomInt = getRandomInt(1, 10); // Generates a random integer between 1 and 10 (inclusive)
```

**3. Booleans:**

In JavaScript, a boolean is a data type that represents two values: `true` and `false`. Booleans are commonly used for making decisions in conditional statements. For example:

```javascript
let isTrue = true;
let isFalse = false;

if (isTrue) {
    console.log("This will be executed because isTrue is true.");
} else {
    console.log("This won't be executed.");
}
```

**4. Comparisons:**

JavaScript allows you to compare values using comparison operators to determine relationships between values. Comparison operators return boolean values (`true` or `false`). Here are some comparison operators:

- `==`: Equal to
- `===`: Equal to (strict equality, also checks data type)
- `!=`: Not equal to
- `!==`: Not equal to (strict inequality)
- `>`: Greater than
- `<`: Less than
- `>=`: Greater than or equal to
- `<=`: Less than or equal to

Logical operators can be used to combine multiple comparisons:

- `&&`: Logical AND (returns `true` if both operands are `true`)
- `||`: Logical OR (returns `true` if at least one operand is `true`)
- `!`: Logical NOT (negates the boolean value)

Example:

```javascript
let a = 5;
let b = 10;

console.log(a < b);   // Output: true
console.log(a === 5); // Output: true
console.log(a !== b); // Output: true

console.log(a < b && a === 5); // Output: true
console.log(a < b || b > 20);  // Output: true
console.log(!(a === b));       // Output: true
```

