#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

#=================================================
# PERSONAL HELPERS
#=================================================
_download_nzbget_from_docker() {

ynh_docker_image_extract --dest_dir="$install_dir" --image_spec="linuxserver/nzbget:latest"


    # Move files from the extract to the live directory
    ynh_secure_remove --file="$install_dir/live/"
    mkdir -p "$install_dir/live/"
    mv -f "$install_dir/build/"{nzbget} "$install_dir/live/"
    ynh_secure_remove --file="$install_dir/build"

    chmod 750 "$install_dir"
    chmod -R o-rwx "$install_dir"
    chown -R $app:$app "$install_dir"
}
#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
