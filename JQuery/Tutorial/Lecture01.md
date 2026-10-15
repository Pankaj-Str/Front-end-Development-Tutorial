# jQuery Effects Tutorial with Examples

jQuery effects help you create interactive web pages by showing, hiding, fading, sliding, and animating HTML elements without writing complex JavaScript.

## 1. Topics covered

[Show and Hidden Icon for application, web site, user interface design.](https://images.openai.com/static-rsc-4/1Myg3nmNxIlKHdXUll4C-aA_YA_pZg_eTjNXge1Pp7ofdLSVw4B4WOYfmP0Ee9x8tElu4M2SHJFqLDFmqSIXvYNlpu4-xn0io5PrD4Lf2ki86tIfOqevwfg9Y0LVcOGDi12MsdCPS_xwCp3dy1PmSkznlJV4CfPM3Vt-U4WtpbT1bcMzC_PRq0jSVNNWjj_w?purpose=inline)

1\. jQuery Hide/Show

Hide and display HTML elements using `hide()`, `show()`, and `toggle()`.

[How To Add & Edit Text Mask | Wix Studio](https://images.openai.com/static-rsc-4/xcAnyJeRQfqmFDCzk3gPg-m1ruTs57imlu-Ih9iVMpye-cbySl_e6_lNZ7VXEPX9QK0M4_1OSQNNx6EwEh9xU9YO_zbpxYctZUHya0lDyvWJxJZ87YQZ5CDql1QjSxzs2JLVL2GjYP5j8gi93PUkcre1--VoCE7stxxIwuxIb-M?purpose=inline)

2\. jQuery Fade

Learn `fadeIn()`, `fadeOut()`, `fadeToggle()`, and `fadeTo()`.

[10 Best Scroll-triggered Animation Plugins With JavaScript (2026 Update) | jQuery Script](https://images.openai.com/static-rsc-4/XLKimoGoWmv60bwhLLIiF7sT6SgcQWUvkmBh5viPgV1l1dKHQk-CX3kyGKvcipcDu6xZYhzmmiKYNPjnWc8xJYVYhza2-5Sg7ZI6I7D2L3ldd9cHeFaof0b2WQ-RngtmYUX7QQsvRue7FpzhCW6G0AvLF4BHFQMkxMvGpPjV4gM?purpose=inline)

3\. jQuery Slide

Use `slideDown()`, `slideUp()`, and `slideToggle()`.

[Sliding Shapes | Stage 4 Lesson | Coding Ireland](https://images.openai.com/static-rsc-4/2KuY8YjMZWv4LyvEILzCCMW6mS7qpnwXT0WhZXBTej-PumWN-l6SpgOnj6aBsCnKB84KSVLYkkSAkfGWAQaRNNYk0AzrJ5tvWCQ7qERkjzJr5DRDZwMYPQx_vBW9siAdzW94ZyuiOSzfPVaHkNvtdYSaocj2Oy9NW9TTRBKoKJ4?purpose=inline)

4\. jQuery Animate

Animate CSS properties with `animate()`.

[Video player for web and mobile apps. Vector illustration.](https://images.openai.com/static-rsc-4/3fe0WMvX39TbxUV6AMNyk1VcWqYcv9hLwb20szhIN2Q0TrI4BKxG-ouIXC0MNUZqMzqXVje1DG3N8Zl8UFoCO7W-lEMswHOxAooRYHv3qvElasROO3LG699HkkIjN9yMQNwN7l7jrGybNvmbNloa7XY_gMl3A9brUZER5_izxAGa70H6PKyAVKshcU25F9it?purpose=inline)

5\. jQuery stop()

Stop an animation before it finishes.

[Callback Functions](https://images.openai.com/static-rsc-4/gQhCK6qwbhVqP4d6EJTvwxZ98rNuSl-RhmIzIqtFF1uanWZLncuKzdKgMgtUbgAxUDYUenCSvV_gPYm7W8exKyX9ZvXsCYz5HR8t5H6jLxAzBsFUePThOmN5sZBKGACKr68UIqPG0w0IKl0nFAnVnDwdOfmwAG7KDw0JzEdmr_k?purpose=inline)

6\. jQuery Callback

Execute a function after an effect completes.

[Business Infographic template with numbers 5 options or steps. Vector illustration isolated on white background.](https://images.openai.com/static-rsc-4/QPh-AuQMXDrEPuQkEdKqYLQbdJ5vyAuub7-0DXS3LM9PonF2G7dhu0EZmuv1Eks_OAF-_Mn7ymEsTf8IF9ABFN1ntaRxc9P1AN24XL1ZrptBrUQX4uDG5N7xOxu5ZHXwcDpoUhsFW6o-HujjXZyxJ2CKJ3BPx_ZIK6Yaxz8duyO-mGUeqoSg_tnH6xQq6lxK?purpose=inline)

7\. jQuery Chaining

Apply multiple effects to the same element in sequence.

## 2. Setup: Create your first jQuery project

Create a file named `index.html`. We will use the jQuery CDN, so you don't need to install anything.

```

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>jQuery Effects Tutorial</title>

    <!-- jQuery Library -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

    <h1>My First jQuery Program</h1>
    <p id="message">Welcome to Codes With Pankaj!</p>

    <button id="btn">Click Me</button>

    <script>
        $(document).ready(function () {
            $("#btn").click(function () {
                $("#message").hide();
            });
        });
    </script>

</body>
</html>

```

How it works:

1. The jQuery library is loaded using the CDN.
2. `$(document).ready()` waits for the HTML document to be ready.
3. `$("#btn")` selects the button with ID `btn`.
4. `.click()` handles the button click.
5. `.hide()` hides the paragraph.

Note: An internet connection is required to load jQuery from the CDN.

## 3. jQuery Hide/Show

The `hide()` method hides an element, while `show()` displays it again.

### Example

```

<!DOCTYPE html>
<html>
<head>
    <title>jQuery Hide Show</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

    <h2 id="heading">Learn jQuery</h2>

    <button id="hideBtn">Hide</button>
    <button id="showBtn">Show</button>
    <button id="toggleBtn">Toggle</button>

    <script>
        $(document).ready(function () {

            $("#hideBtn").click(function () {
                $("#heading").hide(1000);
            });

            $("#showBtn").click(function () {
                $("#heading").show(1000);
            });

            $("#toggleBtn").click(function () {
                $("#heading").toggle(1000);
            });

        });
    </script>

</body>
</html>

```

Important methods

| Method       | Purpose                                                |
| ------------ | ------------------------------------------------------ |
| `hide()`     | Hides an element                                       |
| `show()`     | Displays an element                                    |
| `toggle()`   | Switches between hidden and visible                    |
| `hide(1000)` | Hides with an animation lasting approximately 1 second |

The duration is specified in milliseconds.

## 4. jQuery Fade Effects

Fade effects gradually change an element's visibility or opacity.

### Example: Fade In, Fade Out, Fade Toggle, and Fade To

```

<!DOCTYPE html>
<html>
<head>
    <title>jQuery Fade Effects</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

    <h2>jQuery Fade Effects</h2>

    <div id="box1" style="background: tomato; padding: 20px;">
        Fade Box 1
    </div>
    <br>

    <div id="box2" style="background: orange; padding: 20px;">
        Fade Box 2
    </div>
    <br>

    <button id="fadeOutBtn">Fade Out</button>
    <button id="fadeInBtn">Fade In</button>
    <button id="fadeToggleBtn">Fade Toggle</button>
    <button id="fadeToBtn">Fade To 30%</button>

    <script>
        $(document).ready(function () {

            $("#fadeOutBtn").click(function () {
                $("#box1").fadeOut(1000);
            });

            $("#fadeInBtn").click(function () {
                $("#box1").fadeIn(1000);
            });

            $("#fadeToggleBtn").click(function () {
                $("#box1").fadeToggle(1000);
            });

            $("#fadeToBtn").click(function () {
                $("#box2").fadeTo(1000, 0.3);
            });

        });
    </script>

</body>
</html>

```

Methods explained

- `fadeIn()` — gradually displays a hidden element.
- `fadeOut()` — gradually hides an element.
- `fadeToggle()` — switches between fading in and fading out.
- `fadeTo(1000, 0.3)` — changes opacity to 30% over approximately one second.

## 5. jQuery Slide Effects

Slide effects show or hide elements using a vertical sliding animation.

```

<!DOCTYPE html>
<html>
<head>
    <title>jQuery Slide Effects</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

    <h2>jQuery Slide Example</h2>

    <button id="downBtn">Slide Down</button>
    <button id="upBtn">Slide Up</button>
    <button id="toggleBtn">Slide Toggle</button>

    <br><br>

    <div id="panel"
         style="background: lightblue; padding: 30px;">
        Welcome to jQuery Slide Effects!
    </div>

    <script>
        $(document).ready(function () {

            $("#downBtn").click(function () {
                $("#panel").slideDown(1000);
            });

            $("#upBtn").click(function () {
                $("#panel").slideUp(1000);
            });

            $("#toggleBtn").click(function () {
                $("#panel").slideToggle(1000);
            });

        });
    </script>

</body>
</html>

```

Remember:

- `slideDown()` displays the panel.
- `slideUp()` hides the panel.
- `slideToggle()` switches between the two states.

To test `slideDown()`, first hide the panel using CSS: `display: none;`.

## 6. jQuery Animate

The `animate()` method creates custom animations by changing numeric CSS properties.

For example, we can increase a box's width and height and move it horizontally.

```

<!DOCTYPE html>
<html>
<head>
    <title>jQuery Animate</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

    <h2>jQuery Animation Example</h2>

    <button id="animateBtn">Start Animation</button>
    <br><br>

    <div id="box"
         style="background: steelblue;
                width: 100px;
                height: 100px;
                position: relative;">
    </div>

    <script>
        $(document).ready(function () {

            $("#animateBtn").click(function () {

                $("#box").animate({
                    left: "200px",
                    width: "200px",
                    height: "150px",
                    opacity: 0.5
                }, 2000);

            });

        });
    </script>

</body>
</html>

```

Explanation:

- `left: "200px"` moves the box to the right.
- `width: "200px"` increases the width.
- `height: "150px"` increases the height.
- `opacity: 0.5` makes the box partially transparent.
- `2000` specifies a duration of approximately two seconds.

The `position: relative` CSS property allows the box to move using `left`.

Important: jQuery `animate()` supports numeric CSS properties, not every CSS property. Properties such as `background-color` generally require a color-animation plugin or another approach.

## 7. jQuery stop()

The `stop()` method stops a running animation. It is useful when users need to interrupt an effect.

```

<!DOCTYPE html>
<html>
<head>
    <title>jQuery Stop</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

    <h2>jQuery Stop Animation</h2>

    <button id="startBtn">Start</button>
    <button id="stopBtn">Stop</button>

    <br><br>

    <div id="box"
         style="background: green;
                width: 100px;
                height: 100px;
                position: relative;">
    </div>

    <script>
        $(document).ready(function () {

            $("#startBtn").click(function () {
                $("#box").animate({
                    left: "300px",
                    width: "200px"
                }, 5000);
            });

            $("#stopBtn").click(function () {
                $("#box").stop();
            });

        });
    </script>

</body>
</html>

```

How it works:

1. Click Start to begin the five-second animation.
2. Click Stop before the animation finishes.
3. The box stops at its current position and size.

You can also use `stop(true, true)` to clear queued animations and jump to the current animation's end state.

## 8. jQuery Callback

A callback is a function that runs after an effect finishes. This helps ensure that the next action occurs at the correct time.

```

<!DOCTYPE html>
<html>
<head>
    <title>jQuery Callback</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

    <h2 id="heading">Learn Callback Functions</h2>

    <button id="hideBtn">Hide Heading</button>

    <script>
        $(document).ready(function () {

            $("#hideBtn").click(function () {

                $("#heading").hide(2000, function () {
                    alert("Heading has been hidden!");
                });

            });

        });
    </script>

</body>
</html>

```

Output sequence:

1. Click the button.
2. The heading disappears over approximately two seconds.
3. The alert appears after the hiding animation completes.

The callback is passed as the second argument to `hide()`.

## 9. jQuery Chaining

Chaining allows you to call multiple jQuery methods on the same selected element without repeatedly selecting it.

```

<!DOCTYPE html>
<html>
<head>
    <title>jQuery Chaining</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

    <h2 id="heading">Welcome to jQuery</h2>

    <button id="chainBtn">Run Effects</button>

    <script>
        $(document).ready(function () {

            $("#chainBtn").click(function () {

                $("#heading")
                    .css("color", "blue")
                    .slideUp(1000)
                    .slideDown(1000)
                    .fadeOut(1000)
                    .fadeIn(1000);

            });

        });
    </script>

</body>
</html>

```

Execution order:

1. Change the heading color to blue.
2. Slide the heading up.
3. Slide the heading down.
4. Fade the heading out.
5. Fade the heading back in.

The animation methods queue their effects in order. The `css()` change is applied immediately before the animations begin.

## 10. Quick revision table

| Method                      | Use                               |
| --------------------------- | --------------------------------- |
| `hide()` / `show()`         | Hide or display elements          |
| `toggle()`                  | Switch visibility                 |
| `fadeIn()` / `fadeOut()`    | Fade elements in or out           |
| `fadeToggle()`              | Toggle fade effects               |
| `fadeTo()`                  | Change opacity                    |
| `slideDown()` / `slideUp()` | Slide elements open or closed     |
| `slideToggle()`             | Toggle slide effects              |
| `animate()`                 | Animate numeric CSS properties    |
| `stop()`                    | Stop an animation                 |
| Callback                    | Run code after an effect finishes |
| Chaining                    | Combine multiple methods          |

## 11. Practice exercises

Try these exercises yourself to strengthen your understanding.

Practice checklist

0 of 6 completed

Hide and Show

Create a paragraph with Hide, Show, and Toggle buttons.

Fade Effects

Create three boxes and apply fadeIn(), fadeOut(), and fadeTo().

Slide Panel

Build a FAQ panel that opens and closes using slideToggle().

Custom Animation

Move a box 300px to the right and increase its width.

Stop Animation

Add Start and Stop buttons for a five-second animation.

Callback and Chaining

Display an alert after an animation and chain three effects.

Next step: Run each example in your browser, change the animation durations, and experiment with different HTML elements. Once you understand these seven effects, you'll be ready to use jQuery effects in interactive websites and projects.
