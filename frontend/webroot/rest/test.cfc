component rest="true" restPath="/test"
{

    remote function testFunctionGet() httpMethod="GET"
    {
        myReturnVar = {};
        myReturnVar["success"] = true;
        myReturnVar["method"] = "GET";
        myReturnVar["timestamp"] = now();

        return myReturnVar;
    }

    remote function testFunctionPost() httpMethod="POST"
    {
        myReturnVar = {};
        myReturnVar["success"] = true;
        myReturnVar["method"] = "POST";
        myReturnVar["timestamp"] = now();

        return myReturnVar;
    }

}
