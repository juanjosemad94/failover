Function Send-AlertMessage ($Message)
{
    $MailServers = (Resolve-DnsName -Type MX -Name "archiechristopher.co.uk").NameExchange
    $MailFrom = "me@archiechristopher.co.uk"
    $MailTo = "archie.christopher@exponential-e.com"

    try { Send-MailMessage -SmtpServer $MailServers[1] -From $MailFrom -To $MailTo -Subject $Message -Body $Message }
    catch { Send-MailMessage -SmtpServer $MailServers[2] -From $MailFrom -To $MailTo -Subject $Mesage -Body $Message }
}


$Message = "This is a test"

Send-AlertMessage $Message