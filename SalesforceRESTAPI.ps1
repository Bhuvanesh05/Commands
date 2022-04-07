$access_token = "00D5j000005IKPQ!ARAAQFeGUO_zVT.xpVRBNNFgdm8GSyLW0qJmnA5j8R9Uf7QQnwuvmDk2_2Hi.2q.AotyrL0bHs05RF9.BE7GoBxD36CBnQAB"
#$user = "kumarbhuvanesh625@resourceful-raccoon-1fy2x0.com"
#$token = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(("{0}:{1}" -f $user, $personalToken)))
$header = @{"Authorization" = "OAuth " + $access_token }
#$username = "kumarbhuvanesh625@empathetic-badger-nug693.com"
#$password = "Bhuvakies@321"
$URI = "https://resourceful-raccoon-1fy2x0-dev-ed.my.salesforce.com/services/data/v53.0/limits"
$method = "GET"
$contenttype = "application/json"
$response = Invoke-restmethod -URI $URI -contenttype $contenttype -Headers $header 