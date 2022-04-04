$pat = "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"
$header = @{Authorization = 'Basic ' + [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(":$($pat)")) }
$url = "https://api.github.com/repos/Bhuvanesh05/Commands/pulls?state=all"
write-host "url : $url" 
$response = Invoke-RestMethod -Uri $url -Headers $header -Method Get

#$build = $response[0].id
for ($i = 0; $i -lt $response.Count; $i++) {
    $build = $response[$i].id
    $pullnum = $response[$i].number
    $build1 = $response[$i].head.ref
    $build2 = $response[$i].base.ref
    $build3 = $response[$i].state
    if(($build1 -eq 'sfdx') -and ($build2 -eq 'master'))
    {
        write-host "pull request ID:$build  
               pull Number:$pullnum  
               head branch:$build1  
               base branch:$build2
               pull request Status:$build3"
        #write-host "pull request Status:$build3"
      #  write-host "head branch:$build1"
       # write-host "base branch:$build2"
    }    
   
}