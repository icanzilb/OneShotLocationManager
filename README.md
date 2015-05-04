OneShotLocationManager (Swift)
=========

#### ver 0.1

Contents of this readme

* <a href="#intro">Intro</a>
* <a href=“#example”>Code Example</a>
* <a href="#credit">Credit</a>
* <a href="#license">License</a>

<a name="intro"></a>
Intro
========

Since <code>CLLocationManager</code> doesn’t support block based APIs sometimes it’s very annoying to setup a delegate and implement all delegate methods if you just want to fetch the current location once and that’s it.

<code>OneShotLocationManager</code> is a class that solves that problem in Swift. Whenever you need to fetch the current device location you just need to create an instance of <code>OneShotLocationManager</code> and call the method to fetch a location. It will request the necessary authorizations and return the current location. Very easy. It just works.

Installation
========
_The infrastructure and best practices for distributing Swift libraries is currently being developed by the developer community during this beta period of the language and Xcode. In the meantime, you can simply download this repository as a ZIP file and drag the `OneShotLocationManager.swift` file into your Xcode project._

---
<a name=“example”></a>

Code Example
========

#### How to get the current location

Here's the simplest way to use OneShotLocationManager in Swift:

<pre lang="swift">
//in your view controller
var manager: OneShotLocationManager?

override func viewDidLoad() {
  manager = OneShotLocationManager()
  manager!.fetchWithCompletion {location, error in

    // fetch location or an error
    if let loc = location {
      println(location)
    } else if let err = error {
      println(err.localizedDescription)
    }
    self.manager = nil
  }
}
</pre>

For a **complete example app** check out the included Xcode project in this repository.

<a name="credit"></a>

Credit
========

Author: **Marin Todorov**

* [https://github.com/icanzilb](https://github.com/icanzilb)
* [https://twitter.com/icanzilb](https://twitter.com/icanzilb)
* [http://www.touch-code-magazine.com/about/](http://www.touch-code-magazine.com/about/)

<a name="license"></a> 
License
========
OneShotLocationManager is available under the MIT license. See the LICENSE file for more info.
