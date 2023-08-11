# Operators

JavaScript supports a variety of operators that allow you to perform operations on values. These operators can be categorized into different types based on their functionality. Let's explore some of the most common types of operators in JavaScript:

1. **Arithmetic Operators:**
   These operators are used for basic mathematical calculations.
   
   ```javascript
   let a = 10;
   let b = 5;
   
   let sum = a + b; // Addition
   let difference = a - b; // Subtraction
   let product = a * b; // Multiplication
   let quotient = a / b; // Division
   let remainder = a % b; // Modulus (remainder of division)
   ```

2. **Assignment Operators:**
   These operators are used to assign values to variables.
   
   ```javascript
   let x = 10;
   x += 5; // Equivalent to x = x + 5;
   x -= 3; // Equivalent to x = x - 3;
   x *= 2; // Equivalent to x = x * 2;
   x /= 4; // Equivalent to x = x / 4;
   ```

3. **Comparison Operators:**
   These operators are used to compare values and return boolean results.
   
   ```javascript
   let p = 10;
   let q = 5;
   
   let isEqual = p === q; // Strict equality
   let isNotEqual = p !== q; // Strict inequality
   let isGreater = p > q; // Greater than
   let isLess = p < q; // Less than
   let isGreaterOrEqual = p >= q; // Greater than or equal to
   let isLessOrEqual = p <= q; // Less than or equal to
   ```

4. **Logical Operators:**
   These operators are used to perform logical operations on boolean values.
   
   ```javascript
   let isTrue = true;
   let isFalse = false;
   
   let andResult = isTrue && isFalse; // Logical AND
   let orResult = isTrue || isFalse; // Logical OR
   let notResult = !isTrue; // Logical NOT
   ```

5. **Unary Operators:**
   These operators are used with a single operand.
   
   ```javascript
   let number = 5;
   
   let positiveNumber = +number; // Unary plus
   let negativeNumber = -number; // Unary minus
   let isTruthy = !false; // Logical NOT (also used as a unary operator)
   ```

6. **Increment and Decrement Operators:**
   These operators are used to increase or decrease a variable's value by 1.
   
   ```javascript
   let counter = 0;
   
   counter++; // Increment by 1 (post-increment)
   ++counter; // Increment by 1 (pre-increment)
   
   counter--; // Decrement by 1 (post-decrement)
   --counter; // Decrement by 1 (pre-decrement)
   ```

7. **String Concatenation Operator:**
   The `+` operator can also be used to concatenate strings.
   
   ```javascript
   let firstName = "John";
   let lastName = "Doe";
   
   let fullName = firstName + " " + lastName; // Concatenation
   ```
