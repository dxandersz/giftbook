# giftbook
Giftbook recognizes the increasing recognition of the emotional labor that marginalized groups have to undergo for the sake of teaching sensitivity, but giftbook looks to ameliorate that labor some. The point of reference here is [Humble Bundle](https://www.humblebundle.com/) - a software and e-book site that hosts tiered packages of e-books and games with a portion of the proceeds going to a charitable organization. Giftbook will take that format and more explicitly tether it to social movements. From bundles on the industrialization of the American criminal justice system to queer studies to black history to environmentalism, each bundle will be cause oriented and present literature built with education in mind - and the proceeds will go to an appropriate charity.

While giftbook is approaching the scale of the group Project Three and resembles it in terms of its design fundamentals, completing it and making it stand as distinct should be an achievable goal. The fundamentals here are familiar, and the scale will be somewhat stripped down thanks to the relatively more limited input (with the books you receive for each bundle being predicated entirely on how much you spend/donate). The potential here is large, but I'll be keeping things relatively restricted to customer-end proof of concept and scale outwards beyond MVP as the time scale permits.

## User Stories
Users stories will be broken down into phases as well as into individual segments for the major categories of interaction between the user and the app.

### Phase One: MVP
The viable product will be a working storefront on the customer end - excluding payment and delivery.

#### Home View
- Upon entering the site, the user can see a nav bar (persistent) along with a tiled list available giftboxes.
- Each gift box tile offers brief details on the box, expiration for the box, and the associated charity.
- The user can click on giftbox tiles and get routed to a specific product page.

#### About Us View
- The user can click the About Us button from any page and see information on giftbox.

#### Bundle View
- The user can expect an individual, detailed bundle page for each bundle listed on the main page.
- The bundle view will present headers for a 1, 5, and 10 dollar price tier.
- Each header will include a tiled list of each book in the bundle.
- Clicking on a tile will provide information on that book.
- The user can input a total to place an order.
- Upon input, the user will receive a dummy receipt.
- An email will be sent to an administrative email for processing.

#### Auth View
- The user can login or register from the nav bar from any view on the page.
- If logged out, the login/register options convert to a logout button.
- The user can see all product information without being logged in but will be prompted to register or login when trying to make a purchase.

### Phase Two: API Integration
API integration won't change the structure of the user experience, but it should create a more seamless experience and make life a lot easier in terms of continued administrative maintenance (and the hopeful integration of third party contributors). Integration with the Google Books API will be used to populate the information for each book in a bundle.

### Phase Three: Client Integration
The user diagrams will be extended with the inclusion of client users. Client users can create new bundles that can be saved and then incorporated into the site through a request to the administrator. We're getting squarely out of MOW territory and into the land of COWs here.

### Phase Four: General Quality of Life
This phase will see the tightening up of design elements and more robust inclusions in the user tab, including the ability to see all of their bundles and access detailed information on the books they own.

### Phase Five: Merchant Services
Well outside the scope of MVP, but merchant services is the eventual end goal, and demonstrate the ability for deployment beyond proof of concept.

## Schema
This [schema diagram](https://dbdesigner.page.link/qxKygvckd1h7FyzM7) should cover all the basics for MVP and well past. If/when I implement organizations, we may have to slide in a new table or two, but this should cover things for now.

## Wireframes
[Landing Page](https://wireframe.cc/gzMUMH) - displays when the user first comes to the page or clicks on the main logo.

[Individual Bundle Page](https://wireframe.cc/08NSC4) - displays when the user clicks through to one of the individual bundles.

[About Us Page](https://wireframe.cc/E5U2Ua) - displays when the user clicks About Us on the left side of the nav bar.

[Login/Register Page](https://wireframe.cc/FNks1W) - displays when the user clicks one of the buttons on the upper right or tries to make a purchase while not logged in.

[Receipt Page](https://wireframe.cc/AaemE9) - displays when the user completes an order.

## Technology
For its back end stack, giftbox will be using **Ruby on Rails**. The speed with which it can mock up a new back end will let things get up and running quickly while still leaving room to grow as the app does.

For similar reasons, the front end will be handled by **React**. As one of Javascript's most well regarded front end libraries, it has the versatility to handle the distinct landing pages for different boxes while allowing for some quick and distinctive styling.

The database will be handled through **Postgres**, and early post-MVP goals will include the folding in of the **Google Books API**.

## Timeline
The timeline takes into account the weekend as well as the difficulties of picking up a new platform (Rails) as well as the scale of the project.

**Initialization:** Getting the infrastructure for Rails and React in place, pre-migrations. All dependencies properly loaded and an app in place. Estimated Estimated completion: Friday September 18.

**Migration:** Plotting out and folding in migrations and seeds - to be completed on the weekend. Estimated completion: Monday September 21.

**Back End Development:** All of the routes in place to properly display the information to the user. All requests working as expected, albeit without a graphical overlay. Estimated completion: Tuesday September 22.

**Front End Development:** Views working via React, functioning styling for all of the views. Estimated completion: Thursday September 24.

**Authorization:** The user can register or login to an account. Proper tethering of the user to purchased bundles. Estimated completion: Friday September 25.

**Final Work/Post MVP:** Adding additional stretch features - API implementation in particular. Tighten up the styling, double check for bugs, clean up any issues that didn't quite get completed. Estimated completion: Monday September 28 (for better or worse).

## Foreseen Obstacles
Knowledge of Ruby on Rails is still fresh, but it should be manageable. I'll need to keep an eye on the database management to make sure it doesn't get out of control and pay especially close attention here. Try to set aside a little bit of extra time for the sake of making sure that auth is working the way it should.
