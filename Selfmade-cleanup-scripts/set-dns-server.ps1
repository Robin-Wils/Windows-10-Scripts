#   Description:
# This script sets the dns server on each not hidden network interface.


$dnsServer = 9.9.9.9

foreach ($interface in Get-NetAdapter) {
    Set-DnsClientServerAddress -InterfaceIndex $interface.InterfaceIndex -ServerAddresses $dnsServer
}
