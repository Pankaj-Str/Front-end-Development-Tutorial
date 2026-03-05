# What is HTML?
HTML = **HyperText Markup Language**  
It's the skeleton of every webpage. It tells the browser:  
"This is a heading", "This is a paragraph", "This is a picture", etc.

HTML uses **tags** — like little labels wrapped in `< >` symbols.

### Basic Rule of Tags
Most tags come in **pairs**:

```html
<opening-tag>   Content goes here   </closing-tag>
```

Some tags are **alone** (self-closing):

```html
<br>    or    <img ... >
```

### The Minimum HTML Page (Hello World!)

```html
<!DOCTYPE html>
<html>
<head>
    <title>My First Webpage</title>
</head>
<body>
    <h1>Hello World! 🌍</h1>
    <p>This is my first paragraph.</p>
</body>
</html>
```

**Save this as `index.html`** and open in any browser — you will see a real webpage!








### Basic Structure Explained








| Part          | What it does                              | Must have? |
|---------------|-------------------------------------------|------------|
| `<!DOCTYPE html>` | Tells browser → "This is modern HTML5"   | Yes        |
| `<html>` … `</html>` | The whole document                        | Yes        |
| `<head>` … `</head>` | Invisible info (title, settings)          | Yes        |
| `<title>` … `</title>` | Text shown in browser tab                | Yes        |
| `<body>` … `</body>` | Everything you actually see               | Yes        |

### Most Important Tags for Beginners (Top 12)

| Tag              | Purpose                              | Example                                      | Notes                             |
|------------------|--------------------------------------|----------------------------------------------|-----------------------------------|
| `<h1>` to `<h6>` | Headings (big to small)              | `<h1>Big Title</h1>`<br>`<h3>Smaller subtitle</h3>` | h1 = most important, only one per page usually |
| `<p>`            | Paragraph of text                    | `<p>This is normal text.</p>`                | Adds space before & after         |
| `<br>`           | Line break (new line)                | `First line<br>Second line`                  | No closing tag                    |
| `<hr>`           | Horizontal line (divider)            | `<p>Above</p><hr><p>Below</p>`               | No closing tag                    |
| `<strong>`       | **Bold + important**                 | `<strong>Pay attention!</strong>`            | Better than old `<b>`             |
| `<em>`           | *Italic + emphasis*                  | `<em>Whisper this part</em>`                 | Better than old `<i>`             |
| `<a>`            | Link / hyperlink                     | `<a href="https://google.com">Go to Google</a>` | href = destination                |
| `<img>`          | Show image                           | `<img src="cat.jpg" alt="Cute cat">`         | No closing tag, alt = very important |
| `<ul>` + `<li>`  | Bullet list                          | `<ul><li>Milk</li><li>Bread</li></ul>`       | Unordered list                    |
| `<ol>` + `<li>`  | Numbered list                        | `<ol><li>Wake up</li><li>Code</li></ol>`     | Ordered list                      |
| `<div>`          | Group things (like a box/container)  | `<div><h2>Section</h2><p>Text</p></div>`     | Very common with CSS later        |
| `<!-- comment -->` | Write notes (not visible)           | `<!-- This is a note -->`                    | Useful when learning              |

### Quick Practice Examples

1. **Headings + Paragraph + Bold**

```html
<h1>Welcome to My Page</h1>
<h2>About Me</h2>
<p>My name is <strong>Pankaj</strong> and I love coding!</p>
```

2. **List of Favorite Foods**

```html
<h3>My Favorite Foods</h3>
<ul>
    <li>Pizza 🍕</li>
    <li>Burger 🍔</li>
    <li>Momos 😋</li>
</ul>
```

3. **Link + Image**

```html
<p>Click here: <a href="https://youtube.com">Watch Coding Videos</a></p>

<img src="https://images.unsplash.com/photo-1518791841217-8f162f1e1131?w=400" alt="Cute puppy">
```

4. **Simple Bio Page**

```html
<!DOCTYPE html>
<html>
<head>
    <title>Pankaj's Bio</title>
</head>
<body>
    <h1>Hi, I'm Pankaj! 👋</h1>
    
    <p>I live in Mumbai and I'm learning web development.</p>
    
    <h2>My Skills</h2>
    <ul>
        <li>HTML</li>
        <li>CSS (learning)</li>
        <li>JavaScript (coming soon!)</li>
    </ul>
    
    <p>Follow me: <a href="https://x.com/codeswithpankaj">@codeswithpankaj</a></p>
</body>
</html>
```

### Quick Tips for Beginners
- Always close tags properly (except self-closing ones)
- Use lowercase for tag names (good habit)
- Indent code nicely — easier to read
- Add `alt="description"` to every `<img>`
- Practice by changing colors later with CSS (but first master HTML structure)

Want to practice more?  
Try making:
- Your school timetable (using `<table>` or `<ul>`)
- A list of your 5 favorite movies with links
- A simple "About Me" page
