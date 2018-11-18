articles.error.any?
articles.error.full_messages


Dropdown box for categories
<li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" style="color:#FFFFFF;" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Categories</a>

          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <% Category.all.each do |category| %>
              <%= link_to category.product_category, category_products_path(category), :class => "dropdown-item" %>
            <% end %>
          </div>
        </li>
        
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="search" placeholder="Find products" aria-label="Search">
            <button class="btn btn-info my-2 my-sm-0" type="submit">Search</button>
        </form>

LINK TO WEBSITES FOR IMAGES
<%= link_to href: 'http://www.example.com/' do %>
    <%= image_tag 'happyface.png', width: 136, height: 67, alt: 'a face that is unnervingly happy'%>
<% end %>

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
