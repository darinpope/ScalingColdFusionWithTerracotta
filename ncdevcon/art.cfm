<!---- get artist by id ---->
<cfset artist = EntityLoad( "artist", url.artistid, True ) />

<cfoutput>

<h2>#artist.getFullName()#</h2>

<table width="400">
  <tr>
    <th>Item</th>
    <th>Price</th>
    <th>Sold</th>
  </tr>
<cfloop array="#artist.getArt()#" index="index">
  <tr>
    <td>#index.getArtName()#</td>
    <td>#index.getPrice()#</td>
    <td>#index.getIsSold()#</td>
  </tr>
</cfloop>
</table>

<p><a href="index.cfm">View list</a></p>

</cfoutput>