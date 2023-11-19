# Pre-Run
- Aura/setup.sh

# (0)
- Heiter/setup.sh
- Heiter/start-dns-server.sh

# (1)


# (2) & (3) & (5)
- Aura/start-dhcp-relay.sh

- Himmel/setup.sh
- Himmel/start-dhcp-server.sh

# Restart Revolte

# (4)
- Heiter/enable-dns-forwarder.sh

# (6)
- Lawine/setup.sh
- Lawine/enable-php-server.sh

- Linie/setup.sh
- Linie/enable-php-server.sh

- Lugner/setup.sh
- Lugner/enable-php-server.sh

# (7)
- Eisen/setup.sh
- Eisen/enable-load-balancer.sh

- Revolte/setup.sh
- Revolte/test-load-balancer.sh

# (8)
- Eisen/set-load-balancer-roundrobin.sh
- Revolte/test-load-balancer.sh

- Eisen/set-load-balancer-leastconnection.sh
- Revolte/test-load-balancer.sh

- Eisen/set-load-balancer-iphash.sh
- Revolte/test-load-balancer.sh

- Eisen/set-load-balancer-generichash.sh
- Revolte/test-load-balancer.sh

# (9)
- Eisen/set-load-balancer-roundrobin-1.sh
- Revolte/test-load-balancer.sh

- Eisen/set-load-balancer-roundrobin-2.sh
- Revolte/test-load-balancer.sh

- Eisen/set-load-balancer-roundrobin-3.sh
- Revolte/test-load-balancer.sh

# (10)
- Eisen/enable-authentication.sh

Username: 
> netics 

Password: 
> ajkf11

# (11)
- Eisen/enable-its-path.sh

# (12)
- Eisen/enable-ip-filter.sh

# (13)
- Denken/setup.sh
- Denken/enable-mysql.sh

# (14)
- Fern/setup.sh
- Fern/start-laravel.sh

- Flamme/setup.sh
- Flamme/start-laravel.sh

- Frieren/setup.sh
- Frieren/start-laravel.sh

# (15)
- Revolte/test-laravel-register

# (16)
- Revolte/test-laravel-login

# (17)
- Revolte/test-laravel-me

# (18)
- Eisen/enable-granz-channel.sh

- lynx granz.channel.f11.com

# (19)
- Lawine/increase-performance-1.sh
- Linie/increase-performance-1.sh
- Lugner/increase-performance-1.sh
- test-load-balancer-performance.sh

- Lawine/increase-performance-2.sh
- Linie/increase-performance-2.sh
- Lugner/increase-performance-2.sh
- test-load-balancer-performance.sh

- Lawine/increase-performance-3.sh
- Linie/increase-performance-3.sh
- Lugner/increase-performance-3.sh
- test-load-balancer-performance.sh

# (20)
- Eisen/set-load-balancer-leastconnection-after-performance.sh
- test-load-balancer-performance.sh