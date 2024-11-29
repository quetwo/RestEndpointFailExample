<cfadmin
        action="getRestMappings"
        type="web"
        password="#server.system.environment.LUCEE_ADMIN_PASSWORD#"
        returnVariable="restweb"/>

<cfadmin
        action="getRestMappings"
        type="server"
        password="#server.system.environment.LUCEE_ADMIN_PASSWORD#"
        returnVariable="restserver"/>

<cfdump var="#restweb#" label="Current REST Endpoints (web context)">
<cfdump var="#restserver#" label="Current REST Endpoints (server context)">
<hr>
<cfdump var="#server#" label="Server Variable Output">