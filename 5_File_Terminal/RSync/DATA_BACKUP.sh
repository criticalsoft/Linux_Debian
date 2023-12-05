# --recursive: recurse into directories (Not Meaning Create Sub Folder, If Destination Path WithOut Sub Folder It Will Delete All Data Inside Destination)
# --delete: delete extraneous files from dest dirs
# --size-only: skip files that match in size
# --archive: archive mode is -rlptgoD (no -A,-X,-U,-N,-H)
# --dry-run: Test

rsync --recursive --progress --delete --size-only --archive --human-readable --verbose \
/media/$USER/DATA/ /media/$USER/BACKUP/DATA/

# --exclude '$RECYCLE.BIN/' \
# --exclude 'System Volume Information/' \
# --exclude '.Trashes/' \
# --exclude 'found.*/' \

# --exclude 'Thumbs.db' \
# --exclude '.fseventsd/' \
# --exclude '.Spotlight-*/' \
# --exclude '.TemporaryItems/' \
# --exclude '.com.apple.timemachine.donotpresent' \




# sync
# echo SYNC



