# Polished Example Applications <img src="images/polished_logo_transparent.png" align="right" width="120" />

Example Shiny applications using [polished](https://github.com/Tychobra/polished) for authentication and user management.

You can sign into each of the apps linked below using:

 - email: demo@tychobra.com
 - password: polished

Additionally, the code for each app is available in this repo.  To run the apps locally, you will need to set up polished.  Set up instructions are available at this link: [https://github.com/Tychobra/polished/edit/master/README.md](https://github.com/Tychobra/polished/edit/master/README.md)

#### 1. 01_minimal_example

[Live App](https://tychobra.shinyapps.io/01_minimal_example)

This app uses the API available at <a href="https://polished.tech">polished.tech</a> which is the easiest way to set up polished.  All you need is to copy for secret API key provided by polished.tech and give your app a name, then the polished.tech API does the rest.

#### 2. 02_custom_sign_in

[Live App](https://tychobra.shinyapps.io/02_custom_sign_in)

Companies often want to add their logos and branding to the sign in and register pages.  With polished, you can easily customize these pages.  Just pass your custom UI to the `sign_in_page_ui` argument of `secure_ui()`.  

#### 3. 03_no_invite_required

[Live App](https://tychobra.shinyapps.io/03_no_invite_required)

Allow anyone to register and sign in to your app (i.e. no invite required to register and sign in).

#### 4. 04_apps_dashboard

[Live App](https://tychobra.shinyapps.io/04_apps_dashboard)

With `polished`, users can sign in to multiple Shiny apps using the same email/password sign in credentials.  This allows you to make a dashboard of Shiny apps.  Users who sign into the dashboard of Shiny apps (or any Shiny app hosted in the same polished project) will then not have to reenter their credentials to switch between the Shiny apps they are authorized to access.  You can set user access at a per Shiny application level.  These are the example Shiny apps we included in the Shiny Apps Dashboard
  - [04_basic_insurer_dashboard](https://tychobra.shinyapps.io/04_basic_insurer_dashboard)
  - [04_interest_rate_walk](https://tychobra.shinyapps.io/04_interest_rate_walk)

#### 5. 05_flex_dashboard

[Live App](https://tychobra.shinyapps.io/05_flex_dashboard)

Deploy a flex dashboard.

#### 6. 06_your_own_firebase_project

Enhance the security of your polished Shiny apps by configuring them with your own Firebase 
project.

#### 7. 07_custom_admin_functionality - coming soon

You can add custom tabs to the admin dashboard by passing the ui and server code to the `secure_ui()` and `secure_server()` functions.  Example coming soon.
