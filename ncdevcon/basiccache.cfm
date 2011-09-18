<cfset getArtists = cacheGet("artistQuery", "basicArtistsCache")>

<cfif isNull(getArtists)>
	<cfquery name="getArtists" datasource="cfartgallery">SELECT * from artists</cfquery>
    <cfset cachePut("artistQuery", "#getArtists#",0,300,"basicArtistsCache")>
</cfif>

<!--- dump the query from cache --->
<cfdump var="#getArtists#">
