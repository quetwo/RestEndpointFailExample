component
{
    this.name = "okta-middleware";
    this.sessionmanagement = true;
    this.sessiontimeout = createTimespan(0,0,30,0);   // 0 days, 0 hours, 30 minutes, 0 seconds
    this.applicationtimeout = createTimespan(0, 12, 0, 0);  // 0 days, 12 hours, 0 minutes, 0 seconds

    function onApplicationStart()
    {
        RestInitApplication(expandPath('./rest'), '/okta', false, server.system.environment.LUCEE_ADMIN_PASSWORD);
        writelog(log="Application",text="Init REST endpoints complete.");

        application.thisHost = server.system.environment.HOST;
        application.avaya.sid = server.system.environment.avaya_sid;
        application.avaya.token = server.system.environment.avaya_token;
        application.avaya.phoneNumber = server.system.environment.avaya_phonenumber;
        application.auth.user = server.system.environment.AUTH_USER;
        application.auth.password = server.system.environment.AUTH_PASSWORD;
    }

    function onSessionStart()
    {

    }

    function onMissingTemplate(required string targetPage)
    {
        writeOutput("");
        return true;
    }

}