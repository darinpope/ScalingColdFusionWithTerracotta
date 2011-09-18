<cfdump var="#cacheGetAllids("foooCache")#"> 
<cfset x=createuuid()> 
<cfset cacheput(x,"bar",createtimespan(1,1,0,0),createtimespan(0,1,0,0),"foooCache")> 
<cfdump var="#cacheGet(x,"foooCache")#">