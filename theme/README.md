# Theme

This directory contains theming and customization settings for the desktop environment, including GTK themes, icon themes, and cursor themes.

## Structure

*   `.gtkrc-2.0`: Configuration file for GTK 2 applications.
*   `.config/`:
    *   `gtk-2.0/`: Contains settings for GTK 2 applications.
        *   `gtkfilechooser.ini`: Settings for the GTK file chooser dialog.
    *   `gtk-3.0/`: Contains settings and CSS for GTK 3 applications.
        *   `settings.ini`: General settings for GTK 3 applications.
        *   `gtk.css`, `colors.css`: Custom CSS to override the theme's default appearance.
        *   `assets/`: Contains SVG assets for window controls (close, minimize, maximize).
    *   `gtk-4.0/`: Contains settings and CSS for GTK 4 applications, similar to the `gtk-3.0` directory.
*   `.icons/`: Contains cursor themes.
    *   `Layan-border-cursors/`
    *   `Nordic-cursors/`
    *   `Sweet-cursors/`
    *   `WhiteSur-cursors/`
*   `.themes/`: Contains the `Layan-Dark` GTK theme, which includes assets for `gnome-shell`, `gtk-2.0`, `gtk-3.0`, `gtk-4.0`, and other components.
