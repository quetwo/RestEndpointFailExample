component
{
    this.name = "test-application";
    this.sessionmanagement = true;
    this.sessiontimeout = createTimespan(0,0,30,0);   // 0 days, 0 hours, 30 minutes, 0 seconds
    this.applicationtimeout = createTimespan(0, 12, 0, 0);  // 0 days, 12 hours, 0 minutes, 0 seconds

    function onApplicationStart()
    {
        RestInitApplication(expandPath('./rest'), '/testrest', false, server.system.environment.LUCEE_ADMIN_PASSWORD);
        writelog(log="Application",text="Got to onApplicationStart(), Init REST endpoints complete.");
    }

    function onSessionStart()
    {

    }

}