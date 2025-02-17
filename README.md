Email Sending PowerShell Script

This PowerShell script provides two functions for sending emails using either Microsoft Outlook or an SMTP server.

Features
- **Send-Email**: Uses Microsoft Outlook to send emails.
- **Send-SMTPEmail**: Uses an SMTP server to send emails.

Prerequisites
- PowerShell (latest version recommended)
- Microsoft Outlook installed (for `Send-Email` function)
- SMTP server details (for `Send-SMTPEmail` function)

Installation
1. Save the script as `SendEmail.ps1`.
2. Ensure you have the necessary permissions to execute PowerShell scripts.

Usage
#Sending Email via Outlook
```powershell
Send-Email -to "recipient@example.com" -subject "Test Email" -body "This is a test email sent via Outlook."
```

#Sending Email via SMTP
```powershell
Send-SMTPEmail -body "This is a test email sent via SMTP." `
               -smtpServer "smtp.example.com" `
               -fromEmail "sender@example.com" `
               -toEmail "recipient@example.com" `
               -subject "Test Email"
```

Customization
- Modify the `Send-Email` function to include attachments.
- Adjust the `Send-SMTPEmail` function to support authentication.

License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

