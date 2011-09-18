<!---- get all artists ordered by first name, note the second argument is a blank filter ---->
<cfset artists = EntityLoad( "Artist", {}, "firstname asc",{cacheable=true} ) />

<cfoutput>

<table width="400">
  <tr>
    <th>Artist</th>
    <th>Items</th>
    <th>Sold Items</th>
  </tr>
<cfloop array="#artists#" index="index">
  <tr>
  <cfif index.hasArt()>
    <td><a href="art.cfm?artistid=#index.getArtistID()#">#index.getFullName()#</a></td>
  <cfelse>
    <td>#index.getFullName()#</td>
  </cfif>
    <td>#index.getArtCount()#</td>
    <td>#index.getSoldItemsCount()#</td>
  </tr>
</cfloop>
</table>

</cfoutput>