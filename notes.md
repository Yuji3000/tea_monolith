To reset postgres DB Via Render

curl --request POST 'https://api.render.com/v1/services/<service-ID>/jobs' \
    --header 'Authorization: Bearer API_TOKEN' \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "startCommand": "rake db:reset"
    }'


  Fix for Render deploy error: Key must be 16 bytes
    https://stackoverflow.com/questions/54064347/rails-during-asset-precompile-throws-error-key-must-be-16-bytes


    previous nav bar below 

<div class="navbar navbar-expand-md fixed-top bg-white border-bottom border-dark container-fluid">
      <ul class="nav">
        <li class="nav-item">
          <%= link_to "Home", "/", method: :get, class: "nav-link active" %>
        
        </li>
        <li class="nav-item">
            <% if logged_in? %>
              <%= link_to "Logout", sessions_path, method: :delete, class: "nav-link active"  %>
            <% else %>
              <%= link_to "Log In", sessions_path, method: :new, class: "nav-link active"  %> 
            <% end %>
        </li>
        <li class="nav-item">
            <% if logged_in? %>
              <%= link_to "Cart", "/carts", method: :get, class: "nav-link active"  %>
            <% end %>
        </li>
        <li class="nav-item">
            <% if !logged_in? %>
              <%= link_to "Sign Up", "users/new", method: :get, class: "nav-link active"  %>
            <% end %>
        </li>
      </ul>
</div>

<div class="navbar-right">
            <%= link_to carts_path do %>
              <i class="bi bi-cart"></i>
            <% end %>

            <div class="user-icons d-flex mb-2">
                <i class="bi bi-person"></i>
            </div>
        </div>


        <div class="videos">
      <iframe width="560" height="315" src="https://www.youtube.com/embed/7EePjNxfkOg?si=9dVMMG-uty_1FwwZ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    </div>
    <div class="videos">
      <iframe width="560" height="315" src="https://www.youtube.com/embed/-rZp4L-ig_w?si=e7rhuoP_cJ_nfDe7" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    </div>
    <div class="videos">
      <iframe width="560" height="315" src="https://www.youtube.com/embed/RClUyq3kf7E?si=cYUe_hmqxVOcT2cH" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>