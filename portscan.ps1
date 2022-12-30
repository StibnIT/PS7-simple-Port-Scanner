# Define the range of ports to scan
$startPort = 1
$endPort = 65535

# Loop through each port in the range
for ($i = $startPort; $i -le $endPort; $i++) {
  # Test connection to the current port
  $connection = Test-NetConnection -ComputerName <Computerhere> -Port $i

  # If the connection was successful, the port is open
  if ($connection.TcpTestSucceeded) {
    Write-Host "Port $i is open"
  }
}
