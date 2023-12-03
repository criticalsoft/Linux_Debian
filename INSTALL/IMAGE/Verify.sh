#https://www.debian.org/CD/verify


gpg --keyserver https://keyring.debian.org --recv-key "F41D 3034 2F35 4669 5F65  C669 4246 8F40 09EA 8AC3"
gpg --verify ./debian-live-testing-*.sign ./debian-live-testing-*.txt


sha256sum --binary ./*.iso
sha256sum --ignore-missing --check ./debian-live-testing-*.txt



