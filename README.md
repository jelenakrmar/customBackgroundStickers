# iMessage sticker pack with customized background.

Simple sticker application created to demonstrate subclassing of MSStickerBrowserViewController. It can be used as a starter kit for creating new sticker packs - just change assets and background color!

In this example, I am just changing the **background color** and using `MSStickerBrowserViewController`.

To create similar app, just follow these steps:

1. Create iMessage app
2. Add Container View into `MessagesViewCtontroller` (Storyboard)
3. Subclass `MSStickerBrowserViewController` and set the class of newly created View Controller in Storyboard
4.In your `MSStickerBrowserViewController` subclass, implement:
- Loading of stickers
- `numberOfStickers(in:)`
- `stickerBrowserView(_:stickerAt:)`
5. Make simple customizations
- Change background color (or background image) of container view (Storyboard/code)
- Add button/text/link on top of or behind the sticker browser view
- You can use this app as a starter kit when creating your own app - just replace existing images with your own, and set the background that you like.

You can also check out [more advanced approach](https://github.com/jelenakrmar/customStickerApp).

This app is a part of the short [tutorial on iMessage sticker apps](http://www.slideshare.net/JelenaKrmar/different-types-of-sticker-apps-72003132).

<img src="https://raw.githubusercontent.com/jelenakrmar/customBackgroundStickers/master/Screenshot.png" />
