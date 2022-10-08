# List keystore content
keytool -list -keystore <name.keystore file>

# Export cert from keystore
keytool -exportcert -v -alias "<alias.name>" -keystore "<name.keystore file>" -storepass "<password>" -rfc -file "<result-file.crt>"

# Import cert to Linux system keystore
keytool -import -trustcacerts -alias <alias-name> -file result-file.crt -keystore /etc/pki/java/cacerts

# Check cert existing
keytool -list -keystore /etc/pki/java/cacerts | grep <alias-name>
