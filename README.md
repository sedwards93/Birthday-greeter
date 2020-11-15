# Birthday Greeter

Your challenge is to build a web app that will ask the user for a name and birthday.

When the user submits the form, and depending on the current date, the app will either:

-   wish the user happy birthday
-   tell them how long they'll have to wait until their next birthday

## 

This birthday greeter was my second time using the Sinatra framework to build a simple web app. I used Sinatra's modular style when setting up my environment, and used Capybara to feature test the two user stories listed above. This was my first time dealing with Ruby's date class. In order to stub my testing I used the Timecop gem, which I included in my Gemfile.

I would like to make the following improvements to my app:

 - Improve the HTML formatting.
 - Add CSS to make the app more visually appealing.
 - Have the app wish the user "Happy Birthday" on their birthday. 
 - Create a return button so that the user can enter another date. 