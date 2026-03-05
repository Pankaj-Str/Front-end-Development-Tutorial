# basic and important HTML tags

### 1. The Absolute Minimum Structure (Skeleton of Every HTML Page)

```html
<!DOCTYPE html>          ← Tells browser: "This is HTML5"
<html>                   ← The root / main container of the page

    <head>               ← Invisible part (settings & title)
        <title>My First Page</title>   ← Text in browser tab
    </head>

    <body>               ← Visible part – everything users see
        <h1>Hello World!</h1>
        <p>This is my first webpage.</p>
    </body>

</html>
```

You **must** always start with these 5 main parts:

| Tag                  | What it does                              | Must close? | Required? |
|----------------------|-------------------------------------------|-------------|-----------|
| `<!DOCTYPE html>`    | Says "use modern HTML"                    | No          | Yes       |
| `<html>` … `</html>` | Wraps the entire document                 | Yes         | Yes       |
| `<head>` … `</head>` | Contains title, meta info, links to CSS/JS| Yes         | Yes       |
| `<title>` … `</title>`| Text shown in browser tab               | Yes         | Yes       |
| `<body>` … `</body>` | All visible content goes here             | Yes         | Yes       |

### 2. Most Common Basic Tags Inside `<body>`

| Tag              | Meaning                     | Example                                      | Notes / Tip                              |
|------------------|-----------------------------|----------------------------------------------|------------------------------------------|
| `<h1>` to `<h6>` | Headings (big → small)      | `<h1>Main Title</h1>`<br>`<h3>Small heading</h3>` | Use only **one** `<h1>` per page usually |
| `<p>`            | Paragraph                   | `<p>This is normal text.</p>`                | Browser adds space before & after        |
| `<strong>`       | **Bold + important**        | `I am <strong>very serious</strong>`         | Better than old `<b>` tag                |
| `<em>`           | *Italic + emphasis*         | `She said <em>please</em>`                   | Better than old `<i>` tag                |
| `<br>`           | Line break (new line)       | `Line 1<br>Line 2`                           | No closing tag                           |
| `<hr>`           | Horizontal line / divider   | `<p>Top</p><hr><p>Bottom</p>`                | No closing tag                           |

### 3. Two Very Important Tags Almost Everyone Uses

| Tag       | Purpose                  | Basic Example                                          | Very Important Notes                     |
|-----------|--------------------------|--------------------------------------------------------|------------------------------------------|
| `<a>`     | Makes a link             | `<a href="https://google.com">Go to Google</a>`        | `href=` = where the link goes            |
| `<img>`   | Shows an image           | `<img src="cat.jpg" alt="cute cat photo">`             | No closing tag + always write `alt=`     |

### Quick One-Page Example Using Only Basic Tags

```html
<!DOCTYPE html>
<html>
<head>
    <title>Hello from Mumbai!</title>
</head>
<body>

    <h1>Hi, I am Pankaj!</h1>
    
    <h2>Welcome to my first webpage</h2>
    
    <p>I live in <strong>Mumbai</strong> and I love learning to code.</p>
    
    <p>Follow me here:<br>
    <a href="https://x.com/codeswithpankaj">My X profile → @codeswithpankaj</a></p>
    
    <hr>
    
    <h3>My favorite things:</h3>
    <p>1. Coding<br>2. Music<br>3. Food 😋</p>

</body>
</html>
```

### Super Quick Summary – The 8 Most Basic Tags You Need First

1. `<!DOCTYPE html>`
2. `<html>`
3. `<head>`
4. `<title>`
5. `<body>`
6. `<h1>` (or `<h2>`, `<h3>`)
7. `<p>`
8. `<strong>`, `<em>`, `<br>`

Master these 8 tags → you can already make simple, clean pages!

