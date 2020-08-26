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

    <div class="$ElementName__gallery row justify-content-center">
        <% loop $GalleryImages %>
            <div class="col-6 col-md-4 col-lg-3 my-2">
                <img src="$Image.Fill(800,800).URL" alt="$Title" class="img-fluid rounded shadow">
            </div>
        <% end_loop %>
    </div>
</div>
