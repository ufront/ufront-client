# ufront-client

Ufront is a powerful MVC web framework written in Haxe.  `ufront-client` is a collection of libraries that allow you to run Ufront apps client-side, in the browser using Javascript. You can share most of your code with the server and communicate seamlessly.

This repository actually does not contain any source, rather just a `haxelib.json` and `extraParams.hxml` that include the required libraries and parameters, so you can just add `-lib ufront-client` to your projects.

Example Setup:

```haxe
import ufront.app.ClientJsApplication;
import app.controller.*;

class Client {
	static var clientApp:ClientJsApplication;

	static function main() {
		clientApp = new ClientJsApplication({
			indexController: HomeController,
			defaultLayout: "layout.html"
		});

		// Listen to any history changes using PushState, and process each request.
		clientApp.listen();
		// Process the current request. Only need to run this if the server didn't render the page already.
		clientApp.executeRequest();
	}
}
```
