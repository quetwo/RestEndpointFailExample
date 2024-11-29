component rest="true" restPath="/test"
{

    public function testFunction() httpMethod="GET"
    {
        myReturnVar = {};
        myReturnVar["success"] = true;
        myReturnVar["method"] = "GET";
        myReturnVar["timestamp"] = now();

        return myReturnVar;
    }

    public function testFunction() httpMethod="POST"
    {
        myReturnVar = {};
        myReturnVar["success"] = true;
        myReturnVar["method"] = "POST";
        myReturnVar["timestamp"] = now();

        return myReturnVar;
    }

}
