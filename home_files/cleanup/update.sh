#!/bin/zsh

file="/home/liam/.update.log"

check_file() {
        filename=$1

        file_timestamp=$(head -n 1 "$filename")
        current_timestamp=$(date +%s)
        time_diff=$((current_timestamp - file_timestamp))

        if (( time_diff > 604800 )); then
                # Show GUI dialog (requires zenity or kdialog)
                if command -v zenity &> /dev/null; then
                        if zenity --question --text="Update system packages?" --title="System Update"; then
                                pkexec dnf update -y
                                date +%s > "$filename"
                                zenity --info --text="System updated." --title="Success"
                        else
                                zenity --info --text="Update skipped." --title="Skipped"
                        fi
                elif command -v kdialog &> /dev/null; then
                        if kdialog --yesno "Update system packages?"; then
                                pkexec dnf update -y
                                date +%s > "$filename"
                                kdialog --msgbox "System updated."
                        else
                                kdialog --msgbox "Update skipped."
                        fi
                fi
        fi
}

if [ -e "$file" ]; then
        check_file "$file"
else
        touch "$file"
        echo 0 > "$file"
        check_file "$file"
fi

