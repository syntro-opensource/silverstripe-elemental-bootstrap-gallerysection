<% include Syntro\SilverStripeElementalBaseitems\ContentBlock %>

<div class="{$ElementName}__gallery card-columns">
    <% loop $GalleryImages %>
        <div class="{$ElementName}__image card  rounded shadow border-0">
            <img src="$Image.Fit(600,600).URL" alt="$Title" class="card-img">
        </div>
    <% end_loop %>
</div>
