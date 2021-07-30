set -ex
echo "build path "${build_path}""
echo "${github.action_path }"

curl --location --request POST 'https://api.sofy.ai/api/AppTests/buildUpload' \
--header "SubscriptionKey: ${subscription_key}" \
--form "applicationFile=@"${build_path}""
