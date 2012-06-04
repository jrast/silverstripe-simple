<div class="content-container">
  <% if Level(2) %>
  $Breadcrumbs
  <% end_if %>
	<article>
		<h1>$Title</h1>
		<div class="content">$Content</div>
                <% if Gebiete %>
                <h2>Gebiete</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Region/Ort</th>
                            <th>Anzahl Routen</th>
                            <th>Schwierigkeit</th>
                            <th>Kletterstil</th>
                            <th>Gesteinsart</th>
                        </tr> 
                    </thead>
                    <tbody>
                    <% loop Gebiete %>
                    <tr>
                        <td><a href="$Link">$Name</a></td>
                        <td>$Region.Name</td>
                        <td>$Routen.Count()</td>
                        <td>$EinfachsteRoute.Grad - $SchwierigsteRoute.Grad</td>
                        <td>$Stil</td>
                        <td>$Gestein.Name</td>
                    </tr>
                    <% end_loop %>
                    </tbody>
                </table>
                <% end_if %>
	</article>
		$Form
		$PageComments
</div>
<% include SideBar %>