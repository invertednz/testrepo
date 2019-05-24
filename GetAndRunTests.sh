#url
#url="http://appsurify.dev.appsurify.com"
url=$1
#API Key
#apiKey="MTpEbzhXQThOaW14bHVQTVdZZXNBTTVLT0xhZ00"
apiKey=$2
#Project
#project="2"
project=$3
#Test Suite
#testsuite="1"
testsuite=$4
#get commit
commitId=$5

echo $url
echo $apiKey
echo $project
echo $testsuite
echo $commitId

mvn -Dtest=com.example.project.ExampleTests#Area1Test1,com.example.project.ExampleTests#Area1Test2,com.example.project.ExampleTests#Area1Test3,com.example.project.ExampleTests#Area1Test4,com.example.project.ExampleTests#Area1Test5 test