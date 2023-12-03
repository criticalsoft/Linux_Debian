sudo apt install -y libpam-google-authenticator




# FIX: Enter code from app
notify-send --icon=kgpg --expire-time=0 --app-name="KGpg" "
System Time Must Correct
"
systemsettings kcm_clock




# sudo google-authenticator
google-authenticator




# --append: Two Factor Authentication
# Comment All: Random Password
sudo tee --append /etc/pam.d/common-auth << EOF
auth required pam_google_authenticator.so
EOF

sudo tee --append /etc/pam.d/common-session << EOF
auth required pam_google_authenticator.so
EOF

# TODO: SSH OTP



