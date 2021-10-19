using namespace System.Net

# Input bindings are passed in via param block.
param($Request, $TriggerMetadata)

# Write to the Azure Functions log stream.
Write-Host "PowerShell HTTP trigger function processed a request."

# Interact with query parameters or the body of the request.
$firstName = $Request.Query.firstName
$lastName = $Request.Query.lastName
if (-not $firstName) {
    $firstName = $Request.Body.firstName
}
if (-not $lastName) {
    $lastName = $Request.Body.lastName
}
$body = "This HTTP triggered function executed successfully. Pass a name in the query string or in the request body for a personalized response."

if ($firstName -Or $lastName) {
    $body = "Hello, $firstName $lastName. This HTTP triggered function executed successfully."
}

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
    StatusCode = [HttpStatusCode]::OK
    Body = $body
})
