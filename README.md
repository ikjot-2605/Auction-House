# README

Installation Steps to set up the project and run it from scratch: 




1) Go to https://github.com/ikjot-2605/IRIS_191CS123_Ruby-On-Rails. Click on clone or download, and download the zip file in your downloads folder.
2) Now go to your downloads folder and extract files somewhere in your system.
3) After extracting files, open terminal and open the terminal in the folder of the extracted files which will be named like -"IRIS_191CS123_Ruby-On-Rails-master"
4) Once you are in the terminal with the folder opened, run "bundle install" in the terminal.
5) If it shows a success message like - "Bundle complete! 18 Gemfile dependencies, 80 gems now installed.", great, otherwise check your rails version. I am using the latest version with the latest gems installed.
6) Next run "rake db:migrate" to include the migrations.
7) It will show an error saying 
error Couldn't find an integrity file                                                                                                                                                                      
error Found 1 errors.                                                                                                                                                                                      


========================================
  Your Yarn packages are out of date!
  Please run `yarn install --check-files` to update.
========================================


To disable this check, please change `check_yarn_integrity`
to `false` in your webpacker config file (config/webpacker.yml).


yarn check v1.22.4
info Visit https://yarnpkg.com/en/docs/cli/check for documentation about this command.
8) To overcome this, Please run `yarn install --check-files` in the terminal.
  It should show the following
  
  yarn install v1.22.4
[1/4] Resolving packages...
[2/4] Fetching packages...
info fsevents@1.2.12: The platform "linux" is incompatible with this module.
info "fsevents@1.2.12" is an optional dependency and failed compatibility check. Excluding it from installation.
[3/4] Linking dependencies...
warning " > webpack-dev-server@3.10.3" has unmet peer dependency "webpack@^4.0.0 || ^5.0.0".
warning "webpack-dev-server > webpack-dev-middleware@3.7.2" has unmet peer dependency "webpack@^4.0.0".
[4/4] Building fresh packages...
Done in 17.04s.
9) Once this is done,run rake db:migrate once again, now it should work perfectly.
10) Now installation is complete, please run rails s and redirect yourself to http://localhost:3000/ and the login page should now be infront of you. Please sign-up as user and enjoy the site :)




All implemented features:

1) If you click the "want to sell" link on top, you will be redirected to a new product page, where you can fill in the details and upload for auction.
2) A navigation bar on top to navigate seamlessly through the site.
3) Once a product is created, it is visible to all users as a listing in the store(Home page).
4) You can choose to bid on a product by a "Bid now" button on each listing in the store homepage.
5) If the deadline is reached for a particular product, The highest bidder gets an option to claim the item.
6) If he claims the item, the seller will be notified by a message "Your item has been claimed by ....." on the product  index page itself.
7) Once the claim process is over, that product is removed from the store listings and is available in the claimed user's My claims button.
8) All the bids placed, items claimed can be viewed from the NavBar items -> "My bids" and "My Claims"
9) A Dashboard of items uploaded is available for the user on clicking the My Products button. It will be empty if no products have been uploaded by the current user.
10)A dashboard for claimed items is available with "My Claims" button on the navbar.
11)Lastly, image upload functionality is available too.
12)All tasks have been accomplished.
(For easier testing, I recommend going to views/store/index.html.erb and modify it to be <%if (product.deadline-Date.today)>0&&current_user.email==b..........%>. This way you can see the claim functionality in work.)



Non-implemented/Planned features:

1) A mail will be sent to the highest bidder once the deadline is over by the Mailgun gem giving him 24 hours to claim item, if item not claimed within 24 hours, the highest bid will be deleted and the second highest bidder will be given a chance to claim so as to reduce the seller's issues of a user not claiming.

2) Creating a category of products page where users can look for listings categorically


Known bugs:

Just one bug that I could find during testing is that it accepts bid lower than the starting bid without showing an error message but that's okay because one of the conditions while claiming is that if the maximum bid is lower than the starting bid for a given product, then no one can claim the item.

References used:
1) Agile web development with Rails 5.1 - (For concepts as this is my first time creating a web application with any Framework)
2) https://guides.rubyonrails.org/ for help with small features and functions
3) https://www.w3schools.com/ for help with the frontend part

Side Note : This is my first time creating any sort of web application, hope it's good enough to get an interview.
Thanks.

