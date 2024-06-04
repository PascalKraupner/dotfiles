#!/bin/bash
appimage_urls=(
    "https://github.com/Sn8z/Poddr/releases/download/2.0.0/Poddr-2.0.0.AppImage"
)

# Create a temporary directory for downloading AppImages
temp_dir=$(mktemp -d -t appimages-XXXXXX)
echo "Temporary directory created at: $temp_dir"

# Function to download and integrate AppImages
download_and_integrate_appimages() {
    for url in "${appimage_urls[@]}"; do
        echo "Downloading AppImage from $url..."
        wget -P "$temp_dir" "$url"
        if [ $? -ne 0 ]; then
            echo "Failed to download $url"
            continue
        fi
        
        # Extract the filename from the URL
        filename=$(basename "$url")
        
        # Make the AppImage executable
        chmod +x "$temp_dir/$filename"
        
        # Use ail-cli to integrate the AppImage
        echo "Integrating $filename..."
        ail-cli integrate "$temp_dir/$filename"
        if [ $? -ne 0 ]; then
            echo "Failed to integrate $filename"
        else
            echo "$filename integrated successfully."
        fi
    done
}

download_and_integrate_appimages

# Clean up: Delete the temporary directory and its contents
rm -rf "$temp_dir"
echo "Temporary files cleaned up."

