# MPV Player

This directory contains configuration files, scripts, and shaders for the [mpv](https://mpv.io/) media player.

## Structure

*   `.config/mpv/`: The main directory for mpv's user-specific configuration.
    *   `mpv.conf`: The primary configuration file. This file contains settings for video output, audio, subtitles, performance, and default behaviors.
    *   `input.conf`: Defines custom key bindings and mouse actions, overriding the default controls.
    *   `FSRCNN_x2_r2_32-0-2.glsl`, `FSRCNNX_x2_16-0-4-1.glsl`, `FSRCNNX_x2_8-0-4-1.glsl`, `NVScaler.glsl`, `NVSharpen.glsl`: These are GLSL shaders used for video upscaling and sharpening, enhancing video quality.
    *   `script-opts/`: Contains configuration files for mpv Lua scripts.
        *   `jellyfin.conf`: Configuration for the `jellyfin.lua` script.
        *   `quality-menu.conf`: Configuration for the `quality-menu.lua` script.
    *   `scripts/`: Contains Lua scripts that extend mpv's functionality.
        *   `gestures.lua`: Adds mouse gesture support.
        *   `jellyfin.lua`: Integrates mpv with a Jellyfin media server.
        *   `mpv-kscreen-doctor.lua`: A script related to screen management, possibly for KDE.
        *   `quality-menu.lua`: Adds a menu for changing video quality on-the-fly.
        *   `spdif-switcher.lua`: A script for switching audio output to SPDIF.
