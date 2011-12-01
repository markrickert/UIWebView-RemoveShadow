# UIWebView+RemoveShadow
iOS UIWebView category to remove the top and bottom shadow that Apple automatically adds to every UIWebView.

This is particularly useful if you want to use HTML to create a view in your application that's scrollable and want to use your own self.view.backgroundColor or similar.

# Example Usage

```#import "UIWebView+RemoveShadow.h"```

Then in your ```-(void)ViewDidLoad``` method:

```[self.yourWebview makeTransparentAndRemoveShadow];```

That's it! Now when your user scrolls up and down on your UIWebView, they won't see the shadows.

Turns this:

![With Shadow](http://i.imgur.com/l703b.png)

Into this:

![Without Shadow](http://i.imgur.com/5xoaq.png)