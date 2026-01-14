#!/bin/bash

# Update system
apt-get update -y

# Install web server
apt-get install -y nginx

# Create custom welcome page
cat > /var/www/html/index.html << EOL
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to ${environment}</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; padding: 50px; }
        h1 { color: #333; }
        .info { background: #f4f4f4; padding: 20px; margin: 20px auto; width: 50%; border-radius: 5px; }
    </style>
</head>
<body>
    <h1>Welcome to ${environment} Environment!</h1>
    <div class="info">
        <h2>Instance Details</h2>
        <p><strong>Hostname:</strong> $(hostname)</p>
        <p><strong>Instance #:</strong> ${instance_index}</p>
        <p><strong>Environment:</strong> ${environment}</p>
    </div>
    <div class="info">
        <h2>System Status</h2>
        <p><strong>Uptime:</strong> $(uptime -p)</p>
        <p><strong>Deployment Time:</strong> $(date)</p>
    </div>
</body>
</html>
EOL

# Start nginx
systemctl enable nginx
systemctl start nginx

echo "Instance ${instance_index} in ${environment} environment is ready!"
