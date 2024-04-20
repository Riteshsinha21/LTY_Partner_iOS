# README #

LTY PARTNER:

### How do I get set up? ###

* Make sure you have the Xcode version 14.0 or above installed.
* Download the project files from the repo.
* Install CocoaPods.
* Run pod install so you can install the dependencies in your project.
* Open the xcworkspace file in xcode.
* Review the code and make sure you understand what it does.
* Run the "LTY_Partner" Scheme.

### USAGE: ###

* In order to login in the dev environment, use the below credentials:

  Id - mailto:cts1@yopmail.com 
  Password - Paswword@321

### ARCHITECTURE: ###

* Project is implemented using MVVM Architecture.

### STRUCTURE: ###

* "APIServices": Files and resources realted to make APi Calls.
* "Constant": Files having End Point Urls and common methods used all over the app.
* "Connection": Files having methods to check internet Connectivity.
* "Controllers": Files are listed as per screen names.  
* "Storyboard": Multiple storyboard as per the modules of app.

NOTE: Project have two schemes :
* LTY_Partner - This is for development, and production (both end points are mentioned in Constants file.)
* LTY_Partner Staging - This is for staging.

Dev Base URl - "https://identity.dev.ltytech.ch/api/ims/v1/partner/"
Staging Base URl - "https://identity.stage.ltytech.ch/api/ims/v1/partner/"
Prod Base URl - "https://identity.prod.ltytech.ch/api/ims/v1/partner/"
