<div class="film-page left">
<div class="shadow-container">
    <div class="black-border">
        <div class="data-container">
            <ul class="nomargin">
                <li class="title"><%= @film.title %></li>
                <li class="greenlight-<%= @film.is_fully_funded_light? %>"></li>
                <li class="raised"><%= @film.total_funded %></li>
                <li class="goal">raised of <%= @film.funding_goal_display %> goal</li>
                <li class="days"><%= @film.days_remaining %></li>
            </ul>
            <div class="progress progress-striped active">
                <div class="bar" style="width: <%= @film.percent_funded %>%;"></div>
            </div>

        </div>

        <div class="film-white-wrap">
            <ul class="thumbnails">
                <li class="">
                    <a href="#" class="thumbnail">  
                        <img src="<%= @film.film_poster_url.to_s %>" alt="<%= @film.title %>">
                    </a>
                </li>   
            </ul>
        </div>
    </div>
</div>
</div>

<div class="share">
    <p>Share this Film</p>
    <div id="" style="margin-bottom: 15px;">
        <div class="share-item">
            <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://passer.by<%= url_for(@film) %>" data-text="Fund this film: " data-via="passerby" data-size="large" data-related="" data-hashtags="<%= @film.title.gsub(' ', '') %>">Tweet</a>
            <% if @film.twitter.present? %>
            <a href="https://twitter.com/<%= @film.twitter %>" class="twitter-follow-button" data-show-count="true" data-size="large">Follow @<%= @film.twitter %></a>
            <% end %>
			<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
		</div>
		<div class="share-item">
			<div class="fb-like" data-href="http://passer.by<%= url_for(@film) %>" data-send="true" data-width="250" data-show-faces="false"></div>
		</div>
    </div>
</div>