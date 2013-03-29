coming-soon
===========

A simple landing page email collector, but with 90% more parentheses than the leading brand.

What is coming-soon?
--------------------

**coming-soon** is a simple Clojure/ClojureScript/Redis powered "landing page" application that takes just a few minute to setup. With coming-soon you can quickly put up a page to publicize your new idea and collect email addresses of people who want to be notified when you are ready to launch.

![Silver Bullet Example](http://coming-soon-resources.s3.amazonaws.com/coming-soon-example.png)

(Here is the [configuration file](https://github.com/SnootyMonkey/coming-soon/blob/master/examples/silver_bullet/config.edn) for the Silver Bullet example.)

coming-soon is inspired by the Ruby app [LandingPad.rb](https://github.com/swanson/LandingPad.rb) by [Matt Swanson](https://github.com/swanson).

What can coming-soon do?
------------------------

Some of the Fantastic Features:

* Captures: email, when they signed up, and what website they came from
* All the text on the landing page can be configured in a simple config file
* Many of the styles can be configured as well using the same config file
* User defined fonts, logo and background image using, you guessed it, the same file
* Google Analytics is supported as a setting, so you can track views and conversion rates for signing up
* Twitter, Facebook, GitHub and blog links are supported as a setting in the config file
* Go beyond the config file and change all the HTML and CSS to put whatever you'd like on the page
* The CSS is Twitter Bootstrap
* All the third-party resources are hosted on a [CDN](http://en.wikipedia.org/wiki/Content_delivery_network)
* There's no code that's not Clojure or ClojureScript, so... there's that

Why use coming-soon?
--------------------

It's very simple and very free (as in, there is no cost). Edit the config file. Deploy to Heroku for free. Then get on with building your app. It's even faster than using many of the software as a service options.

As an example, the above landing page and the following landing pages were configured using just the configuration file with no custom HTML, CSS or coding.

[![Falklandsophile Example](http://coming-soon-resources.s3.amazonaws.com/coming-soon-example2-small.png)](http://coming-soon-resources.s3.amazonaws.com/coming-soon-example2-full.png)

(Here is the [configuration file](https://github.com/SnootyMonkey/coming-soon/blob/master/examples/falklandsophile/config.edn) for the Falklandsophile example.)

[![IdeaFerret Example](http://coming-soon-resources.s3.amazonaws.com/coming-soon-example3-small.png)](http://coming-soon-resources.s3.amazonaws.com/coming-soon-example3-full.png)

(Here is the [configuration file](https://github.com/SnootyMonkey/coming-soon/blob/master/examples/ideaferret/config.edn) for the IdeaFerret example.)

It's also very free (as in, free to do whatever you like with it), so if it only does 80% of what you want, and you prefer to do the other 20% in Clojure/ClojureScript, it's probably for you. 

Or if you want to go nuts on the templates and build some truly custom HTML and CSS for your landing page, then you have that option. You aren't locked into off-the-shelf templates or WYSIWYG editors or limited customization options like you are with many of the software as a service landing pages.

Here is the same landing page with just n lines of CSS.

![IdeaFerret Example](http://coming-soon-resources.s3.amazonaws.com/coming-soon-example.png)

Why NOT to use coming-soon?
---------------------------

Can you answer the question, "Why do you want to host your own lander (even if Heroku is doing it for you) with open source software rather than use a service?"

If you don't have a great answer, there are LOTS of fully hosted alternatives for landing pages, it's a crowded space for these services, and there is likely a better option for you in this list:

* [Launch Rock](http://launchrock.co/) - the granddaddy of launch page services, tries to get users to share
* [Unbounce](http://unbounce.com) - lots of templates, A/B testing, drag n' drop WYSIWYG, on the expensive side
* [Strikingly](https://www.strikingly.com/) - for small general websites, but has email capture
* [Kickofflabs](http://www.kickofflabs.com/) - fairly comprehensive, widgets for external integrations, email campaigns
* [My Beta List](http://my.betali.st/) - also focused on user sharing
* [Launch Effect](http://launcheffectapp.com/) - Wordpress theme
* [Prefinery](http://www.prefinery.com/) - fairly comprehensive beta management, invite codes, viral sharing, feedback and surveys
* [ooomf](http://ooomf.com) - for mobile apps
* [LaunchGator](http://launch.deskgator.com/)
* [Mailchimp](http://mailchimp.com) - you probably think of them as the email list back end only, but they can serve up the email capture page too
	
What do I need to have to use it?
---------------------------------

coming-soon can be hosted on [Heroku](http://heroku.com) for free. Once you update the settings, just deploy it to Heroku and point a domain at it. That's all there is to it. You are then in business, and can get back to hacking on your app so that you have something to launch and send to all those email addresses you're collecting!

Quick Start - 10 Minutes to Heroku
----------------------------------

1. Make sure you have the Heroku pre-reqs: [http://devcenter.heroku.com/articles/quickstart#prerequisites]()

	Setup an account on [Heroku](heroku.com) (you can use a free account)  

	Account Setup Instructions: [http://devcenter.heroku.com/articles/quickstart]()  
  
1. Download coming-soon:

	https://github.com/SnootyMonkey/coming-soon/archive/master.zip

	Unzip coming-soon and navigate to the directory it creates:

	unzip coming-soon
	cd coming-soon

1. Open 'config.edn' in a text editor.  You should see a 'coming-soon' block where you can enter admin access details, and a 'landing-page' block where you can configure the appearance of the landing page (your site's name, a summary, colors, background, etc).

	The 'coming-soon' block is where you set the admin username and password for accessing your stored contacts -- **PLEASE CHANGE THIS!**

	You can set your Google Analytics tracking id in the 'landing-page' block if you have an account.

1. Replace the logo file resources/public/img/logo.png with your own logo.

1. Once you have edited 'config.edn' to add your app's settings, run the following commands from your project folder:

	git init
  git add .
  git commit -m "Setting up my landing page."

1. Now create your Heroku app by running from your project folder:

	heroku create

1. Now run `git push heroku master` to push the code to your Heroku app.  Once it's finished, run `heroku open` to launch a browser and go to your app.  

	You should see a landing page and be able to enter in an email address.

1.	To view the contact information that's been entered into your landing page, navigate to **http://your-heroku-machine-name.heroku.com/contacts**.  You will need to enter the admin username and password that you setup in 'config.edn'.  

	You should see a table listing the name, type and referral URL for anyone that has signed up for your app.

	![](http://coming-soon-resources.s3.amazonaws.com/coming-soon-admin.png)

1.  You will probably want a custom domain, following the instructions here [http://devcenter.heroku.com/articles/custom-domains]() to setup your domain to point to your brand-new landing page.

## Guide to the configuration file

(todo list and explain the configuration settings)

## It looks good, but I want it to be more blue

You can modify any of the HTML, CSS and images to customize your page. Just remember, you need to push any changes to Heroku so your live page will be updated.

(todo list and explain HTML and CSS)

(todo list all the significant IDs and classes in the HTML)

## It works well, but I want it to make my coffee too

You can modify any of the Clojure and ClojureScript code to customize the behavior of your landing page. Just remember, you need to push any changes to Heroku so your live page will be updated.

(todo list and explain important code and development steps)

lein ring server-headless
lein cljsbuild once
lein cljsbuild auto

Who made this treasure? Can I use it? Can I contribute enhancements?
--------------------------------------------------------------------

coming-soon is written by Sean Johnson, the founder of [Snooty Monkey](http://snootymonkey.com).

coming-soon is licensed with the [MIT license](https://github.com/SnootyMonkey/coming-soon/blob/master/MIT-LICENSE.txt), so you are free to use it pretty much however you'd like, in accordance with the license terms.

It's not required by the license terms, but please [drop me a note](http://snootmonkey.com/contact.html) and let me know the URL of your landing page so I can take a look.

Please fork coming-soon on GitHub if you'd like to enhance it, and send me your pull requests if you'd like to contribute back your enhancements. I promise to look at every pull request and incorporate it, or at least provide feedback on why if I won't.

Development Progress
--------------------
Please refer to [Milestones.md](Milestones.md) for a breakdown of development progress.

Links
-----
* [GitHub Project](http://github.com/SnootyMonkey/coming-soon)
* [Issue Tracker](http://github.com/SnootyMonkey/coming-soon/issues)
* [Development Roadmap](Milestones.md)
* [Live Demo Example]()