<cfset getArtists = cacheGet("cacheItemKey", "basicArtistsCache")>

<cfif !isNull(getArtists)>
	<p>found artists: #getArtists#</p>
</cfif>
<cfif isNull(getArtists)>
    <cfset cachePut("cacheItemKey", "thisIsTheValue",0,300,"basicArtistsCache")>
</cfif>
