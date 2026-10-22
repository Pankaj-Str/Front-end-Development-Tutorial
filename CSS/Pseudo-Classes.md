# CSS Pseudo-Classes and Pseudo-Elements

## 1. What is a Pseudo-Class?

A pseudo-class is used to style an HTML element when it is in a particular state or when it matches a specific condition.

For example:

- When you move your mouse over a button.
- When you click or focus on an input field.
- When you select the first paragraph in a list.

Syntax:

```
selector:pseudo-class {
    property: value;
}
```

### Example 1: `:hover`

When you move your mouse over a button, its background color changes.

Live example — move your mouse over the button

Hover Over Me

The green color represents the hover state.

HTML

```
<button>Hover Over Me</button>
```

CSS

```
button {
    background-color: blue;
    color: white;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
}

button:hover {
    background-color: green;
}
```

Explanation:

- `button` selects the button.
- `button:hover` applies styles when the mouse pointer is over the button.
- The background changes from blue to green.

### Example 2: `:focus`

When you click an input field or move to it using the keyboard, it receives focus.

```
<input type="text" placeholder="Enter your name">
```

```
input:focus {
    border: 2px solid blue;
    outline: none;
}
```

Explanation: When the input field receives focus, its border becomes blue.

### Example 3: `:first-child`

Selects an element if it is the first child of its parent.

```
<div>
    <p>First paragraph</p>
    <p>Second paragraph</p>
    <p>Third paragraph</p>
</div>
```

```
p:first-child {
    color: red;
}
```

Output: Only `First paragraph` becomes red.

### Common CSS pseudo-classes

| Pseudo-class    | Purpose                                                     |
| --------------- | ----------------------------------------------------------- |
| `:hover`        | When the mouse is over an element                           |
| `:focus`        | When an element receives focus                              |
| `:active`       | While an element is being activated, such as during a click |
| `:first-child`  | Selects an element that is the first child                  |
| `:last-child`   | Selects an element that is the last child                   |
| `:nth-child(2)` | Selects an element that is the second child                 |
| `:checked`      | Selects a checked checkbox or radio button                  |
| `:disabled`     | Selects a disabled form element                             |

## 2. What is a Pseudo-Element?

A pseudo-element is used to style a specific part of an HTML element or insert generated content before or after its content.

For example:

- Changing the first letter of a paragraph.
- Styling the first line of text.
- Adding content before or after an element.

Syntax:

```
selector::pseudo-element {
    property: value;
}
```

Notice that pseudo-elements usually use two colons (`::`).

### Example 1: `::first-letter`

Changes the style of the first letter of a paragraph.

HTML

```
<p>welcome to CSS programming.</p>
```

CSS

```
p::first-letter {
    color: red;
    font-size: 40px;
    font-weight: bold;
}
```

Output concept:

# W

welcome to CSS programming.

The first letter is enlarged and colored red.

### Example 2: `::first-line`

Changes the style of the first formatted line of a paragraph.

HTML

```
<p>
    CSS makes websites beautiful.
    It helps us style text, colors, and layouts.
</p>
```

CSS

```
p::first-line {
    color: blue;
    font-weight: bold;
}
```

Explanation: The first formatted line becomes blue and bold. The line depends on the available width of the element.

### Example 3: `::before`

Adds generated content before an element's existing content.

HTML

```
<p>Learn CSS</p>
```

CSS

```
p::before {
    content: "Hello! ";
    color: red;
}
```

Output:

Hello! Learn CSS

The word `Hello!` appears before `Learn CSS`.

### Example 4: `::after`

Adds generated content after an element's existing content.

HTML

```
<p>Learn CSS</p>
```

CSS

```
p::after {
    content: " Successfully!";
    color: green;
}
```

Output:

Learn CSS Successfully!

The words `Successfully!` appear after `Learn CSS`.

Important: `::before` and `::after` commonly use the `content` property to insert generated content.

### Common CSS pseudo-elements

| Pseudo-element   | Purpose                                               |
| ---------------- | ----------------------------------------------------- |
| `::before`       | Inserts generated content before an element's content |
| `::after`        | Inserts generated content after an element's content  |
| `::first-letter` | Styles the first letter                               |
| `::first-line`   | Styles the first formatted line                       |
| `::selection`    | Styles text selected by the user                      |
| `::placeholder`  | Styles placeholder text in an input                   |

## 3. Difference Between Pseudo-Class and Pseudo-Element

| Pseudo-Class                                          | Pseudo-Element                                             |
| ----------------------------------------------------- | ---------------------------------------------------------- |
| Selects an element in a particular state or condition | Targets a specific part of an element or generated content |
| Usually uses one colon (`:`)                          | Usually uses two colons (`::`)                             |
| Example: `button:hover`                               | Example: `p::first-letter`                                 |
| Can react to user interaction                         | Can style parts of text or add generated content           |

Easy way to remember:

- Pseudo-class = State or condition — `:hover`, `:focus`, `:checked`
- Pseudo-element = Part of an element or generated content — `::before`, `::after`, `::first-letter`

## 4. Practice Example

Try this complete HTML and CSS example. Copy it into a file named `index.html` and open it in your browser.

```

<!DOCTYPE html>
<html>
<head>
    <title>CSS Pseudo Example</title>

    <style>
        /* Pseudo-class */
        button:hover {
            background-color: green;
            color: white;
        }

        /* Pseudo-element */
        p::first-letter {
            color: red;
            font-size: 30px;
        }

        /* Pseudo-element */
        h2::before {
            content: "★ ";
            color: orange;
        }

        /* Pseudo-class */
        li:first-child {
            color: blue;
        }
    </style>
</head>
<body>

    <h2>Learn CSS</h2>

    <p>CSS is easy to learn.</p>

    <button>Move Mouse Here</button>

    <ul>
        <li>HTML</li>
        <li>CSS</li>
        <li>JavaScript</li>
    </ul>

</body>
</html>

```

What will happen?

1. The heading gets a star before its text.
2. The first letter of the paragraph becomes larger and red.
3. The button turns green when you hover over it.
4. The first list item, `HTML`, becomes blue.
