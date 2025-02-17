Function Send-Email {
    param(
    [string]$to,
    [string]$subject,
    [string]$body
    )

    $outlook = New-Object -ComObject Outlook.Application
    $mail = $outlook.CreateItem(0)
    $mail.to = $to
    $mail.Subject = $subject
    $mail.Body = $body
    $mail.Send()
    $outbox = $namespace.GetDefaultFolder(4)
    while ($outbox.Items.Count -gt 0) {Write-Host "Sending..."; Start-Sleep 1}
}

function Send-SMTPEmail {
    param(
        [string]$body
        [string]$smtpServer
        [string]$fromEmail
        [string]$toEmail
        [string]$subject
    )
    $smtpParams = @{
        From       = $fromEmail
        To         = $toEmail
        Subject    = $subject
        Body       = $body
        SmtpServer = $smtpServer
    }
    Send-MailMessage @smtpParams
}
