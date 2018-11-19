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

ADDRESS FORM FOR NON-USERS
<form>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
      <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Password</label>
      <input type="password" class="form-control" id="inputPassword4" placeholder="Password">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
      <select id="inputState" class="form-control">
        <option selected>Choose...</option>
        <option>...</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="text" class="form-control" id="inputZip">
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Sign in</button>
</form>

DONE


UPLOADING OF FIT PIC
                           <p>
                                <%= form.label :image_url, "Upload Image" %><br>
                                <%= form.file_field :image_url %>
                            </p>



Select style and measurements 
                            <p>
                                <%= form.label "Shirt Style" %><br>
                                <%= form.collection_select :style_id, @styles, :id, :style, prompt: true%>
                            </p>

                            <p>
                                <%= form.label "Shirt Measurements" %><br>
                                <%= form.collection_select :measurement_id, @measurements, :id, :measurements, prompt: true%>
                            </p>



<%# BUILD THIS PART AFTER STYLE AND MEASUREMENT FORM CREATION IS DONE %>
                        <div class = "container">
                            <%= form_with model: @order_item, url: user_order_order_items_path, local: true do |form| %>

                            <p>
                                <%= form.label :product_name, "Product Name" %><br>
                                <%= form.text_field :product_name %>
                            </p>

                            <p>
                                <%= form.label :price %><br>
                                <%= form.text_field :price %>
                            </p>

                            <p>
                                <%= form.label :description %><br>
                                <%= form.text_area :description %>
                            </p>

                            <p>
                                <%= form.submit, value = 'Add to Cart' %>
                            </p>

                            <% end %>
                        </div>












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
