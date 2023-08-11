# String Methods

Certainly! Here are some commonly used string methods in JavaScript:

**1. `length`:**
Returns the length (number of characters) of a string.

```javascript
let str = "Hello, world!";
console.log(str.length); // Output: 13
```

**2. `toUpperCase()` and `toLowerCase()`:**
Converts the string to uppercase or lowercase.

```javascript
let str = "Hello, world!";
console.log(str.toUpperCase()); // Output: HELLO, WORLD!
console.log(str.toLowerCase()); // Output: hello, world!
```

**3. `indexOf()`:**
Finds the index of the first occurrence of a substring within the string. Returns -1 if not found.

```javascript
let str = "Hello, world!";
console.log(str.indexOf("world")); // Output: 7
console.log(str.indexOf("universe")); // Output: -1
```

**4. `includes()`:**
Checks if a substring exists within the string. Returns `true` or `false`.

```javascript
let str = "Hello, world!";
console.log(str.includes("Hello")); // Output: true
console.log(str.includes("universe")); // Output: false
```

**5. `slice()`:**
Extracts a portion of a string based on start and end indices (end index not included).

```javascript
let str = "Hello, world!";
console.log(str.slice(7)); // Output: world!
console.log(str.slice(0, 5)); // Output: Hello
```

**6. `substr()`:**
Similar to `slice()`, but the second parameter specifies the length of the substring.

```javascript
let str = "Hello, world!";
console.log(str.substr(7, 5)); // Output: world
```

**7. `replace()`:**
Replaces a substring with another substring.

```javascript
let str = "Hello, world!";
console.log(str.replace("world", "universe")); // Output: Hello, universe!
```

**8. `trim()`:**
Removes leading and trailing whitespace from a string.

```javascript
let str = "   Hello, world!   ";
console.log(str.trim()); // Output: Hello, world!
```

**9. `charAt()` and `charCodeAt()`:**
`charAt()` returns the character at a specified index. `charCodeAt()` returns the Unicode value of the character at a specified index.

```javascript
let str = "Hello";
console.log(str.charAt(2)); // Output: l
console.log(str.charCodeAt(2)); // Output: 108 (Unicode value for 'l')
```

**10. `split()`:**
Splits a string into an array of substrings based on a specified separator.

```javascript
let str = "apple,banana,orange";
let fruits = str.split(",");
console.log(fruits); // Output: ["apple", "banana", "orange"]
```

## Search for substrings within a string using the `indexOf()` method, the `search()` method, or regular expressions.

**1. `indexOf()` Method:**

The `indexOf()` method returns the index of the first occurrence of a substring within a string. If the substring is not found, it returns -1.

```javascript
let str = "Hello, world!";
let index = str.indexOf("world");
console.log(index); // Output: 7
```

**2. `search()` Method:**

The `search()` method searches for a regular expression pattern within a string and returns the index of the first match. If no match is found, it returns -1.

```javascript
let str = "Hello, world!";
let index = str.search(/world/);
console.log(index); // Output: 7
```

**3. Regular Expressions:**

You can also use regular expressions with the `match()` method to find matches and obtain more detailed information.

```javascript
let str = "Hello, world!";
let matches = str.match(/world/);
console.log(matches); // Output: ["world"]
```

**4. `lastIndexOf()` Method:**

The `lastIndexOf()` method works like `indexOf()`, but it starts searching from the end of the string.

```javascript
let str = "Hello, world! Hello";
let index = str.lastIndexOf("Hello");
console.log(index); // Output: 13
```

**5. Case-Insensitive Search:**

Both `indexOf()` and `search()` are case-sensitive. To perform a case-insensitive search, you can use a regular expression with the `i` flag.

```javascript
let str = "Hello, world!";
let index = str.search(/WORLD/i); // Case-insensitive search
console.log(index); // Output: 7
```

## String Templates

JavaScript template literals, introduced in ECMAScript 6 (ES6), provide a convenient way to create strings that can contain dynamic content, expressions, and multiline text. Template literals are enclosed by backticks (`` ` ``) and allow you to embed expressions within `${}` placeholders. Here's how you can use template literals:

**1. Basic Usage:**

```javascript
let name = "Alice";
let greeting = `Hello, ${name}!`;
console.log(greeting); // Output: Hello, Alice!
```

**2. Multiline Strings:**

Template literals are particularly useful for creating multiline strings without explicitly using escape characters or concatenation.

```javascript
let message = `
    This is a multiline
    string using template literals.
`;

console.log(message);
```

**3. Expressions:**

You can embed expressions inside `${}` placeholders within template literals.

```javascript
let num1 = 5;
let num2 = 3;
let sum = `${num1} + ${num2} = ${num1 + num2}`;
console.log(sum); // Output: 5 + 3 = 8
```

**4. Function Calls:**

You can call functions within template literals and include their return values.

```javascript
function greet(name) {
    return `Hello, ${name}!`;
}

let userName = "Bob";
console.log(greet(userName)); // Output: Hello, Bob!
```

**5. Advanced Usage:**

You can even nest template literals within each other to create more complex content.

```javascript
let amount = 100;
let taxRate = 0.15;
let invoice = `
    Total amount: $${amount}
    Tax: $${amount * taxRate}
    Grand total: $${amount + (amount * taxRate)}
`;

console.log(invoice);
```

Template literals provide a cleaner and more readable way to construct strings with dynamic content. They are especially valuable when creating HTML templates or any other string-based content that requires interpolation of values.
