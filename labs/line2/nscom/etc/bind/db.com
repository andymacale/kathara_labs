$TTL   60000
@               IN      SOA     nscom.com.    root.nscom.com. (
                        2006031201 ; serial
                        28800 ; refresh
                        14400 ; retry
                        3600000 ; expire
                        0 ; negative cache ttl
                        )
@                       IN      NS      nscom.com.
nscom.com.               IN      A       150.0.0.44

web.com.     IN      A       200.0.0.55