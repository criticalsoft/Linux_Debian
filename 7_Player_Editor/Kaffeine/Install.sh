sudo apt install -y kaffeine




# cp ./kaffeinerc ~/.config/




# FIX: System Crash When Open Video
# Black Screen On Debian
# tee --append ~/.profile << EOF
# export VDPAU_DRIVER=va_gl
# EOF
#ReLogIn




# # FIX: CanNot Multiple Instance (But Lose Global App Menu)
# tee ~/.local/share/applications/org.kde.kaffeine.desktop << EOF
# [Desktop Entry]
# Name=Kaffeine
# Exec=dbus-launch kaffeine %U
# GenericName=Media Player
# Categories=Qt;KDE;AudioVideo;Player;
# Icon=kaffeine
# MimeType=application/ogg;application/ram;application/vnd.rn-realmedia;application/x-matroska;application/x-ogg;application/x-quicktime-media-link;application/x-shockwave-flash;application/x-shorten;application/xspf+xml;audio/ac3;audio/amr;audio/amr-wb;audio/basic;audio/flac;audio/mp4;audio/mpeg;audio/ogg;audio/vnd.rn-realaudio;audio/webm;audio/x-aiff;audio/x-flac;audio/x-it;audio/x-m4a;audio/x-m4b;audio/x-matroska;audio/x-mod;audio/x-mp3;audio/x-mpeg;audio/x-mpegurl;audio/x-ms-asx;audio/x-ms-wma;audio/x-musepack;audio/x-pn-realaudio;audio/x-pn-realaudio-plugin;audio/x-s3m;audio/x-scpls;audio/x-stm;audio/x-tta;audio/x-voc;audio/x-vorbis+ogg;audio/x-wav;audio/x-wavpack;audio/x-xm;image/vnd.rn-realpix;inode/directory;misc/ultravox;video/dv;video/mp2t;video/mp4;video/mp4v-es;video/mpeg;video/msvideo;video/ogg;video/quicktime;video/vnd.rn-realvideo;video/webm;video/x-anim;video/x-avi;video/x-fli;video/x-flic;video/x-flv;video/x-matroska;video/x-mng;video/x-mpeg;video/x-ms-asf;video/x-ms-wmv;video/x-msvideo;video/x-nsv;video/x-ogm+ogg;x-content/audio-cdda;x-content/audio-player;x-content/video-dvd;x-content/video-svcd;x-content/video-vcd;x-scheme-handler/mms;x-scheme-handler/rtmp;x-scheme-handler/rtsp;
# Type=Application
# EOF




