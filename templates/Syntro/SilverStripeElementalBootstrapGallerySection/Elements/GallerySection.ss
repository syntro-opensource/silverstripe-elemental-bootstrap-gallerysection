<% require javascript('syntro/silverstripe-elemental-bootstrap-gallerysection:client/dist/gallery.js') %>
<% require css('syntro/silverstripe-elemental-bootstrap-gallerysection:client/dist/bundle.css') %>
<% include Syntro\SilverStripeElementalBaseitems\ContentBlock %>

<div class="{$ElementName}__gallery card-columns">
    <% loop $GalleryImages %>
        <div class="{$Up.ElementName}__image-holder card">
            <a class="{$Up.ElementName}__image-link" href="$Image.URL" data-width="$Image.width" data-height="$Image.height" data-placeholder="$Image.Fit(600,600).URL" data-caption="$Caption">
                <img src="$Image.Fit(600,600).URL" alt="$Title" class="{$Up.ElementName}__image card-img">
            </a>
        </div>
    <% end_loop %>
</div>

<% include Syntro\SilverStripeElementalBootstrapGallerySection\PSWP %>
