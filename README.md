README
======

This is a sample project on how to implement the SignatureView, that you can find at https://github.com/jcmontiel/SignatureView.git

HOW TO USE IT
-------------

You must add the OpenGLES.framework and QuartzCore.framework to the Xcode project. Implement the SignatureView repository as git sub module.

EXAMPLE
-------

Here is an example of how to implement the SignatureViewController and it's signature view into your own viewControllers.

This example has been updated to better use Interface Builder, taking advantage of Autolayout.

	//
	- (void)viewDidLoad
	{
		[super viewDidLoad];
  
        [self.signatureController viewDidLoad];
	}


	- (void) signatureViewController:(SignatureViewController *)viewController didSign:(NSData *)signature;
	{
		NSData *thisSignature = signature;
		// 
		// Do something with thisSignature, like save it to a file or a database as binary data.
		//
	}

LICENSE
-------

Copyright (C) 2012 by Em Sevn, LLC

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
