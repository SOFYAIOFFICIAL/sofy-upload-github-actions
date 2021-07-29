set -ex
echo "build path "${build_path}""

curl --location --request POST 'https://api-sofy-test.azurewebsites.net/api/AppTests/buildUpload' \
--header "SubscriptionKey: ${subscription_key}" \
--form "applicationFile=@"${build_path}""