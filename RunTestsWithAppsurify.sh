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
commitId=`git log -1 --pretty="%H"`
run_id=""
report=$5

run_id=""

echo $url
echo $apiKey
echo $project
echo $testsuite
echo $commitId

. ./GetAndRunTests.sh "$1" "$2" "$3" "$4" "$commitId" 

. ./PushResultsToAppsurify.sh "$1" "$2" "$3" "$4" "$commitId" "$report"

echo $run_id

. ./GetResultsFromAppsurify.sh "$1" "$2" "$3" "$4" "$commitId" "$report"

