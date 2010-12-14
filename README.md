TestNSDateFormatter
===================

This is a test project to evaluate the costs to allocate an NSDateFormatter object.

Description
------------------
The application generates a bunch of worker threads. The time each threads needs to fulfill its
tasks is taken and added up.
Dependend on the user's choice the threads allocate and initalize multiple NSDateFormatter objects.
The times taken are printed into the console.


Screenshot
------------------
The screenshot shows the user interface of the application.

![TestNSDateFormatter](https://github.com/johnjohndoe/TestNSDateFormatter/raw/master/screenshot.png "TestNSDateFormatter")


Configuration
------------------

The following configuration is used for the project.

* Objective-C
* Xcode 3.2.2 64-bit
* Mac OS X 10.6 SDK
* x86_64
* Debug configuration
* Objective-C Garbage Collection: Required [-fobjc-gc-only]