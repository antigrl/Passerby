<div id="film-tab" class="span12 tab-pane active">
	<div class="row-fluid">
	    <div class="span9 film-title">
	        <div>
	            <h2><%= @film.title %></h2>
	            <p><%= @film.logline %></p>
	            <div class="thumbnails">
	               <%= auto_html(@film.trailer) { youtube(:width => 480, :height => 360); vimeo(:width => 480, :height => 360) }.html_safe %>
	            </div>
	            <br />
	            <div id="film-description"><%= raw @film.rendered_description %></div>
	        </div>
	    </div>
	
	    <div class="span3 reward right">
		    <h3>Rewards</h3>
		    <div class="rewards-list">
			<% @film.rewards.order("amount asc").each do |reward| %>
		    <p><strong>$<%= reward.amount %> - <%= reward.title %></strong><br />
		    <%= reward.description %></p>
		    <hr>
		    <% end %>
		    </div>
	    </div>
	</div>
</div>