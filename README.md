<h1 align="center">Tea Time</h1>
<div align="center"><img src="app/assets/images/11.png" alt="Homepage large" class="center" width="600" height="auto"></div>

Tea time is a web store application where users can buy monthly subscriptions to their favorite teas.
Tea Time is a monolith Ruby on Rails application with a [Stripe](https://stripe.com/?utm_campaign=paid_brand-US_Search_Brand_Stripe_Control-20047966507&utm_medium=cpc&utm_source=google&ad_content=656551963827&utm_term=stripe&utm_matchtype=e&utm_adposition=&utm_device=c&gclid=CjwKCAjwq4imBhBQEiwA9Nx1BsXHpqz8y7v2Er9TTUEDTh2-S3cI86S7QXrWnM1f0Ojq83MILXwwZxoCAyUQAvD_BwE) credit card payment integration, styled with bootstrap. Products can be stored via Stripe's dashboard, making the tea's rendered to the homepage view dynamic. Products are seeded by Stripe API. 

<code style="color : red"> Stay Tuned! This is an on going project </code> <br>

* [Deployed App Here](https://teatime-xith.onrender.com/)<br><br>

* Use the below information for logging in and payment
```
Email: guest@guest.com
Password: 123
Credit Card #: 4242 4242 4242 4242
```



The learning objectives for this project:
<ul>
  <li>Create the best user experience by displaying appealing views that are user friendly</li>
  <li>Integrate with Stripe for an easy checkout experience</li>
  <li>Create user authentication with login feature</li>
</ul>

Current functionality 
<ol>
  <li>login</li>
  <li>logout</li>
  <li>Create an account</li>
  <li>View teas within the homepage</li>
  <li>Purchase products/checkout with a credit card</li>
  <li>Has a cart that all items can be saved to</li>
  <li>A user can checkout with more than one item in their cart</li>
</ol>

Possible next steps:
[Project Board](https://github.com/users/Yuji3000/projects/7/views/1)

<br>

# Table of Contents
- [Flow of Application](#app-flow)
- [Tech & Tools Used](#tech-and-tools)
- [Contributors](#contributors)

# Tech and Tools

  #### Built With
  - ![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white) **2.7.4**
  - ![Rails](https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white) **5.2.8.1**
  - ![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)
  - ![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white)
  - ![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)
  - <img src="app/assets/images/bootstrap-logo.png" alt="Bootstrap" height="30">
  - <img src="app/assets/images/rspec_badge.png" alt="RSpec" height="30"> **3.12.0**
  - ![Render](https://img.shields.io/badge/Render-%46E3B7.svg?style=for-the-badge&logo=render&logoColor=white)


#### Gems Used:
  - [Stripe](https://github.com/stripe/stripe-ruby)
  - [Bootstrap](https://github.com/twbs/bootstrap) 
  - [BCrypt](https://github.com/bcrypt-ruby/bcrypt-ruby)
  - [Capybara](https://github.com/teamcapybara/capybara)
  - [Launchy](https://github.com/copiousfreetime/launchy)
  - [RSpec](https://github.com/rspec/rspec-metagem)
  - [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers)
  - [Pry](https://github.com/pry/pry-rails)
  - [Figaro](https://github.com/laserlemon/figaro)

  # App flow
  <li>Home page</li><br>
  <img src="app/assets/images/teatimemain.png" width=auto height=300px>
  <br><br><br>
  <li>Choose a tea and click subscribe</li><br>
   <img src="app/assets/images/one-tea.png">
   <br><br><br>
   <li>Sign up - users must be signed up to be able to subscribe</li><br>
   <img src="app/assets/images/sign-up.png" >
   <br><br><br>
   <li>Login - will route to homepage and user can click subscribe for the tea of their choice</li><br>
   <img src="app/assets/images/login.png" >
   <br><br><br>
   <li>Customers can view their cart and navigate to the payment page by clicking the buy button</li><br>
   <img src="app/assets/images/cart.png"  width=800px height=auto>
   <li>Pay with card - After payment will route to the home page</li><br>
   <img src="app/assets/images/pay-with-card.png"  width=auto height=300px>
   <br><br><br>
   <li>Success!!</li><br>
   <img src="app/assets/images/purchase-successful.png">
  <br><br><br>


  # Contributors

  <table>
  <tr>
    <td><img src="https://avatars.githubusercontent.com/u/108035840?v=4" width=auto height=110px></td>
  </tr>
  <tr>
    <td><strong>Yuji Kosakowski</strong></td>
  </tr>
  <tr>
    <td>
      <div align="center"><a href="https://github.com/Yuji3000">GitHub</a><br>
      <a href="https://www.linkedin.com/in/yujikosa/">LinkedIn</a></div>
    </td>
  </tr>
</table>
