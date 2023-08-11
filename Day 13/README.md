# If Else

The `if...else` statement is used for making decisions based on certain conditions. It allows you to execute different blocks of code depending on whether a specified condition is `true` or `false`. Here's how the `if...else` statement works:

```javascript
if (condition) {
    // Code to execute if the condition is true
} else {
    // Code to execute if the condition is false
}
```

**Example:**

```javascript
let age = 18;

if (age >= 18) {
    console.log("You are an adult.");
} else {
    console.log("You are not yet an adult.");
}
```

In the example above, if the `age` variable is greater than or equal to 18, the code within the first block (inside the `if` statement) will be executed, printing "You are an adult." Otherwise, the code within the `else` block will be executed, printing "You are not yet an adult."

**Nested If-Else:**

You can also nest `if...else` statements to create more complex decision-making logic:

```javascript
let temperature = 25;

if (temperature > 30) {
    console.log("It's a hot day!");
} else if (temperature >= 20) {
    console.log("It's a nice day.");
} else {
    console.log("It's a bit chilly.");
}
```

In this example, the code checks the value of the `temperature` variable and prints different messages based on different temperature ranges.

**Multiple Conditions (Logical Operators):**

You can use logical operators like `&&` (logical AND) and `||` (logical OR) to combine multiple conditions:

```javascript
let isSunny = true;
let isWarm = true;

if (isSunny && isWarm) {
    console.log("It's a sunny and warm day!");
} else {
    console.log("The weather is not sunny and warm.");
}
```

The `if...else` statement is fundamental to control the flow of your code based on conditions. It allows you to create flexible and dynamic programs that react to different scenarios.
