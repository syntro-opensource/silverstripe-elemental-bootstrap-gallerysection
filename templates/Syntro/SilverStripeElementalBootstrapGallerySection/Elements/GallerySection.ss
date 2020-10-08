<div class="py-5 container text-center">
    <% if $ShowTitle || $Content %>
        <div class="mb-4">
            <% if $ShowTitle %>
                <h2>$Title</h2>
            <% end_if %>
            <% if $Content %>
                <p>$Content</p>
            <% end_if %>
        </div>
    <% end_if %>

    <div class="$ElementName__gallery card-columns">
        <% loop $GalleryImages %>
            <div class="card  rounded shadow border-0">
                <img src="$Image.Fit(600,600).URL" alt="$Title" class="card-img">
            </div>
        <% end_loop %>
    </div>
</div>
