# CSS Text Properties

CSS **text properties** are used to control how text looks on a webpage: its color, alignment, size, spacing, decoration, shadow, capitalization, and more.


---

# Step 1: Create a Basic HTML File

Create a file named:

```text
index.html
```

Add:

```html
<!DOCTYPE html>
<html>
<head>
    <title>CSS Text Properties</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <h1>Welcome to CSS</h1>

    <p>
        CSS is used to style HTML elements and make websites
        beautiful and easy to use.
    </p>

</body>
</html>
```

Now create:

```text
style.css
```

We'll write all our CSS inside this file.

---

# Step 2: `color`

The `color` property changes the **text color**.

```css
h1 {
    color: blue;
}
```

You can use:

### Named color

```css
h1 {
    color: red;
}
```

### HEX

```css
h1 {
    color: #ff0000;
}
```

### RGB

```css
h1 {
    color: rgb(255, 0, 0);
}
```

### Example

```css
h1 {
    color: #2563eb;
}

p {
    color: #555555;
}
```

---

# Step 3: `text-align`

`text-align` controls the **horizontal alignment of text**.

```css
h1 {
    text-align: center;
}
```

There are several common values:

```css
text-align: left;
text-align: center;
text-align: right;
text-align: justify;
```

### Example

```css
h1 {
    text-align: center;
}

p {
    text-align: justify;
}
```

### What happens?

The heading moves to the center.

The paragraph spreads across the available width.

---

# Step 4: `text-decoration`

This property adds decoration to text.

### Underline

```css
h1 {
    text-decoration: underline;
}
```

### Overline

```css
h1 {
    text-decoration: overline;
}
```

### Line through

```css
h1 {
    text-decoration: line-through;
}
```

### Remove decoration

This is especially useful for links.

```css
a {
    text-decoration: none;
}
```

For example:

```html
<a href="#">Visit Website</a>
```

Normally links have an underline.

```css
a {
    text-decoration: none;
}
```

removes it.

---

# Step 5: `text-transform`

`text-transform` controls capitalization.

### Uppercase

```css
h1 {
    text-transform: uppercase;
}
```

Output:

```text
WELCOME TO CSS
```

### Lowercase

```css
h1 {
    text-transform: lowercase;
}
```

Output:

```text
welcome to css
```

### Capitalize

```css
h1 {
    text-transform: capitalize;
}
```

Output:

```text
Welcome To Css
```

Common values:

```css
text-transform: uppercase;
text-transform: lowercase;
text-transform: capitalize;
text-transform: none;
```

---

# Step 6: `text-indent`

`text-indent` adds space before the **first line of a paragraph**.

```css
p {
    text-indent: 50px;
}
```

Example:

```html
<p>
    CSS is a stylesheet language used to design and style
    webpages.
</p>
```

The first line will start 50px from the normal position.

This is commonly used in article or document-style content.

---

# Step 7: `letter-spacing`

`letter-spacing` controls the space between individual characters.

```css
h1 {
    letter-spacing: 3px;
}
```

Example:

```css
h1 {
    letter-spacing: 5px;
}
```

The letters become more separated.

You can also use negative values:

```css
h1 {
    letter-spacing: -1px;
}
```

### Practical example

```css
.logo {
    letter-spacing: 4px;
}
```

This can create a modern logo-style effect.

---

# Step 8: `word-spacing`

`word-spacing` controls the space between words.

```css
p {
    word-spacing: 10px;
}
```

For example:

```text
CSS is easy to learn
```

will have more space between each word.

You can reduce spacing too:

```css
p {
    word-spacing: 2px;
}
```

---

# Step 9: `line-height`

This is one of the **most important text properties**.

`line-height` controls the vertical space between lines of text.

```css
p {
    line-height: 1.6;
}
```

Example:

```css
p {
    font-size: 18px;
    line-height: 1.6;
}
```

For paragraphs, something like:

```css
line-height: 1.5;
```

to

```css
line-height: 1.8;
```

often improves readability.

### Why is it important?

Without enough line spacing:

```text
CSS is easy to learn.
CSS is used to style webpages.
CSS makes websites beautiful.
```

The text can feel crowded.

With proper `line-height`, it becomes easier to read.

---

# Step 10: `text-shadow`

`text-shadow` adds a shadow behind text.

Basic syntax:

```css
text-shadow: horizontal vertical blur color;
```

Example:

```css
h1 {
    text-shadow: 2px 2px 5px gray;
}
```

Here:

```text
2px → horizontal position
2px → vertical position
5px → blur
gray → shadow color
```

Another example:

```css
h1 {
    color: white;
    text-shadow: 2px 2px 4px black;
}
```

---

# Step 11: `white-space`

`white-space` controls how whitespace and line breaks are handled.

For example:

```css
p {
    white-space: nowrap;
}
```

`nowrap` prevents the text from automatically moving to a new line.

Common values include:

```css
white-space: normal;
white-space: nowrap;
white-space: pre;
```

For beginners, remember:

**`nowrap` = don't wrap the text to the next line.**

---

# Step 12: `text-overflow`

`text-overflow` controls what happens when text doesn't fit inside its container.

A common combination is:

```css
.box {
    width: 200px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
```

This can produce:

```text
This is a very long tex...
```

The `...` is called an **ellipsis**.

### Complete example

```html
<div class="box">
    This is a very long sentence that will not fit inside the box.
</div>
```

```css
.box {
    width: 200px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
```

---

# Step 13: `overflow-wrap`

Sometimes a very long word can break the layout.

For example:

```text
ThisIsAVeryVeryVeryLongWordThatDoesNotFit
```

Use:

```css
p {
    overflow-wrap: break-word;
}
```

This allows long content to wrap when necessary.

---

# Step 14: `word-break`

`word-break` controls how words should break.

Example:

```css
p {
    word-break: break-word;
}
```

A common value is:

```css
word-break: break-all;
```

But be careful with `break-all`, because it can break words at almost any character.

---

# Step 15: `direction`

The `direction` property controls the direction of text.

For normal left-to-right text:

```css
p {
    direction: ltr;
}
```

For right-to-left languages:

```css
p {
    direction: rtl;
}
```

Common values:

```css
direction: ltr;
direction: rtl;
```

---

# Step 16: `vertical-align`

`vertical-align` is mainly used for inline or table-cell elements.

Example:

```css
img {
    vertical-align: middle;
}
```

Common values:

```css
vertical-align: top;
vertical-align: middle;
vertical-align: bottom;
```

---

# Step 17: Combining Multiple Text Properties

Now let's combine what we've learned.

### HTML

```html
<h1>Learn CSS</h1>

<p class="description">
    CSS helps us create beautiful and professional websites.
</p>
```

### CSS

```css
h1 {
    color: #2563eb;
    text-align: center;
    text-transform: uppercase;
    letter-spacing: 3px;
    text-shadow: 2px 2px 4px #cccccc;
}

.description {
    color: #444444;
    text-align: justify;
    line-height: 1.7;
    word-spacing: 5px;
}
```

Here we've used several properties together.

---

# Step 18: Practical Website Example

Let's create a small **CSS Course Card**.

### HTML

```html
<!DOCTYPE html>
<html>
<head>
    <title>CSS Course Card</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <div class="course-card">

        <h1>CSS Course</h1>

        <h2>Learn CSS From Beginner to Advanced</h2>

        <p>
            Learn how to style websites using colors, fonts,
            backgrounds, spacing, layouts and modern CSS techniques.
        </p>

        <a href="#">Learn More</a>

    </div>

</body>
</html>
```

### CSS

```css
body {
    background-color: #f5f5f5;
}

.course-card {
    width: 500px;
    margin: 50px auto;
    background-color: white;
    padding: 30px;
}

.course-card h1 {
    color: #2563eb;
    text-align: center;
    text-transform: uppercase;
    letter-spacing: 3px;
}

.course-card h2 {
    color: #222;
    text-align: center;
}

.course-card p {
    color: #555;
    line-height: 1.7;
    word-spacing: 2px;
    text-align: justify;
}

.course-card a {
    color: #2563eb;
    text-decoration: none;
}
```

---

# Step 19: Most Important CSS Text Properties

For beginners, focus on these first:

| Property          | What it does                  |
| ----------------- | ----------------------------- |
| `color`           | Text color                    |
| `text-align`      | Text alignment                |
| `text-decoration` | Underline/line-through etc.   |
| `text-transform`  | Uppercase/lowercase           |
| `text-indent`     | First-line indentation        |
| `letter-spacing`  | Space between letters         |
| `word-spacing`    | Space between words           |
| `line-height`     | Space between lines           |
| `text-shadow`     | Shadow behind text            |
| `white-space`     | Controls text wrapping        |
| `text-overflow`   | Controls overflowing text     |
| `overflow-wrap`   | Breaks long words when needed |
| `word-break`      | Controls word breaking        |
| `direction`       | Text direction                |
| `vertical-align`  | Vertical alignment            |

---

# Step 20: Easy Way to Remember

Think about a paragraph:

```text
        CSS IS AWESOME
        ↑
      color
```

Then:

```text
CSS IS AWESOME
      ↑
  text-align
```

Then:

```text
C S S   I S   A W E S O M E
↑ ↑ ↑
letter-spacing
```

Then:

```text
CSS is awesome.
                  ↓
             line-height
CSS makes websites beautiful.
```

So you can remember:

```text
color              → What color?
text-align         → Where?
text-decoration    → Decoration?
text-transform     → Capital or small?
letter-spacing     → Space between letters?
word-spacing       → Space between words?
line-height        → Space between lines?
text-shadow        → Shadow?
white-space        → How should text wrap?
text-overflow      → What happens when text doesn't fit?
```

## Final Beginner Practice

Try creating this:

```html
<h1>Welcome to Codes With Pankaj</h1>

<p>
    Learn HTML and CSS step by step and build beautiful websites.
</p>

<a href="#">Start Learning</a>
```

Then apply:

```css
h1 {
    color: blue;
    text-align: center;
    text-transform: uppercase;
    letter-spacing: 2px;
}

p {
    color: #555;
    text-align: justify;
    line-height: 1.6;
    word-spacing: 3px;
}

a {
    color: red;
    text-decoration: none;
}
```

This single example covers the **core CSS text properties you'll use most often in real websites**.
