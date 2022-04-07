[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 
$url = "https://login.salesforce.com/services/oauth2/token"
#$tokenurl = [System.Web.HttpUtility]::UrlEncode($url)
$postParams = @{
    grant_type    = "password";
    client_id     = "3MVG9pRzvMkjMb6m1QPIFMudXWT5BnSpe8r._hT_ybwiW879HMK94vNsmzlrHxMj7.YQc_6d0RO4UrTl0Ej09";
    client_secret = "73EE65AD8E6120F30738AD62422053D17D821E24CB9BCFE036AAFF71CC0D2DA5";
    username      = "kumarbhuvanesh625@resourceful-raccoon-1fy2x0.com";
    password      = "Bhuvakies@321PW8XyERf7e8isfmalaBGbDlL";
}
 
$access_token1 = Invoke-RestMethod -Uri $url -Method POST -Body $postParams
Write-host  $access_token1
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 
$access_token = "00D5j000005IKPQ!ARAAQFeGUO_zVT.xpVRBNNFgdm8GSyLW0qJmnA5j8R9Uf7QQnwuvmDk2_2Hi.2q.AotyrL0bHs05RF9.BE7GoBxD36CBnQAB"
$header = @{"Authorization" = "OAuth "+"$access_token" }
$url = "https://resourceful-raccoon-1fy2x0-dev-ed.my.salesforce.com/services/data/v53.0/sObjects/Account"
$bod = @{
    "Name": "TestAccountAPI"
    "Description": ""
}
Invoke-RestMethod -Uri $url -Headers $header -Method GET