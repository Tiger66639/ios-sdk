## DreamFactory iOS API and sample application

The DreamFactory iOS API provides easy access to native REST services available in DreamFactory and to other remote web services that you make available in DreamFactory.

You can find the DreamFactory iOS API and documentation [here](example-ios/api/).

A sample iOS Objective-C application that uses the DreamFactory API is located in [example-ios/](example-ios).

The live API documentation included in the DreamFactory Admin Console is a great way to learn how the DreamFactory REST API works.
Check out how to use the live API docs [here](https://github.com/dreamfactorysoftware/dsp-core/wiki/API-Docs). You can view and test an example of the live API docs [here](https://dsp-sandman1.cloud.dreamfactory.com/swagger/).

## Quickstart

####Getting DreamFactory on your local machine

To download and install DreamFactory, follow the instructions [here](https://github.com/dreamfactorysoftware/dsp-core/wiki/Usage-Options). Alternatively, you can create a [free hosted developer account](http://www.dreamfactory.com) at www.dreamfactory.com if you don't want to install DreamFactory locally.

Launch the DreamFactory Admin Console by going to localhost:8080 in your favorite browser and logging in. 

Navigate to the Config tab and click on CORS in the left sidebar. To enable [CORS](https://en.wikipedia.org/wiki/Cross-origin_resource_sharing) for development purposes, click add, set the host to *, allow all HTTP verbs and check the enabled box. Click update when you are done. More info on setting up CORS is [here](https://github.com/dreamfactorysoftware/dsp-core/wiki/CORs-Configuration).

####Running the example iOS Address Book app
From the Apps menu in the DreamFactory Admin Console, click the import tab and import the package from "https://raw.github.com/dreamfactorysoftware/app-address-book-ios/master/add_ios.dfpkg". Set the storage service to local file storage and the storage container to applications. Click the Update button when done.

Almost there! Download this repo to your local machine. Open and run the project in Xcode. You can log in to the app with the username and password you used for the DreamFactory Admin Console. 

More info on the DreamFactory iOS API can be found [here](example-ios/api/). 

More detailed instructions and a list of API calls used by the "Address Book" sample application are located in the readme [here](example-ios/SampleApp#sampleapp).
