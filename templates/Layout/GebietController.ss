<div class="content-container">
  <% if Level(2) %>
  $Breadcrumbs
  <% end_if %>
	<article>
		<h1>$Title</h1>
		<div class="content">$Content
                <% loop Routen %>
                  $Name ($Grad) - 
                <% end_loop %>
                </div>

	</article>
		$Form
		$PageComments
</div>
<% include SideBar %>