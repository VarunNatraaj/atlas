==========================
          Atlas 
==========================

Atlas is a simple gem inspired from "Sextant" to list all the routes in your rails application from your browser. It is the faster alternative to running "rake routes" from your terminal.


Dependencies:
-------------

This gem is written specifically for Rails 2.3.18 and probably won't work in other versions. If you're looking to run in Rails 3+ application, check out the "Sextant" gem here:

https://github.com/schneems/sextant

Installation and running:
-------------------------

1. Add:
    gem "atlas", :git => "git://github.com/VarunNatraaj/atlas.git"
2. Run bundle install
3. Add:
    "include Atlas" without quotes to your ApplicationController
4. Start app and hit 'domain/atlas/routes' and you should see all the routes in your app.