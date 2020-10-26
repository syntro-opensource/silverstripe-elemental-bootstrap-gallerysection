<% if $ShowTitle || $Content %>
    <div class="{$ElementName}__contentholder mb-4 text-center">
        <% if $ShowTitle %>
            <h2 class="mb-4 {$ElementName}__title">$Title</h2>
        <% end_if %>
        <% if $Content %>
            <p class="{$ElementName}__content">$Content</p>
        <% end_if %>
    </div>
<% end_if %>

<div class="{$ElementName}__gallery card-columns">
    <% loop $GalleryImages %>
        <div class="{$ElementName}__image card  rounded shadow border-0">
            <img src="$Image.Fit(600,600).URL" alt="$Title" class="card-img">
        </div>
    <% end_loop %>
</div>
