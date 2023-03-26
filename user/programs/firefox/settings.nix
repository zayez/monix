{
  ###############################################
  ################### BASIC #####################
  ###############################################

  "browser.startup.homepage" = "about:newtab";


  ###############################################
  #################### UX #######################
  ###############################################

  # show compact mode
  "browser.compactmode.show" = true;

  # make bookmarks toolbar visible
  "browser.toolbars.bookmarks.visibility" = "always";

  # enables compact view
  "browser.uidensity" = 1;

  # set devtools theme to dark
  "devtools.theme" = "dark";

  # disable fullscreen message
  "full-screen-api.warning.timeout" = 0;

  # makes the layout smaller
  "layout.css.devPixelsPerPx" = "0.9";

  # smooth scroll speed
  "mousewheel.min_line_scroll_amount" = 15;

  # frakking drm
  "media.gmp-widevinecdm.enabled" = true;
  "media.eme.enabled" = true;


  ###############################################
  ################## WEBGL ######################
  ###############################################

  "webgl.disabled" = false;


  ###############################################
  ################ PERFORMANCE ##################
  ###############################################

  # reduces how often the session is stored, reducing disk I/O
  # if the browser should crash, the restored session may be 59 seconds out of date
  "browser.sessionstore.interval" = 60000;


  ###############################################
  #################### GTK ######################
  ###############################################

  # gtk theming
  "widget.non-native-theme.enabled" = false;
  "widget.content.gtk-theme-override" = "Ant-Dark";
  # enables user chrome configuration
  "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
  # adds MPRIS-support
  "media.hardwaremediakeys.enabled" = true;


  ###############################################
  ################# TELEMETRY ###################
  ###############################################

  # disable telemetry
  "toolkit.telemetry.archive.enabled" = false;
  "toolkit.telemetry.enabled" = false;
  "toolkit.telemetry.rejected" = true;
  "toolkit.telemetry.server" = "";
  "toolkit.telemetry.unified" = false;
  "toolkit.telemetry.unifiedIsOptIn" = false;


  ###############################################
  ################ PERMISSIONS ##################
  ###############################################

  # block new requests asking to access your stuff
  "permissions.default.camera" = 2;
  "permissions.default.desktop-notification" = 2;
  "permissions.default.geo" = 2;
  "permissions.default.microphone" = 2;
  "permissions.default.xr" = 2;

  ###############################################
  ################## PRIVACY ####################
  ###############################################

  #  tweaks suggested by privacytools.io
  "beacon.enabled" = false;
  # "browser.sessionstore.max_tabs_undo" = 0;
  "browser.send_pings" = false;
  "browser.urlbar.speculativeConnect.enabled" = false;
  "browser.sessionstore.privacy_level" = 2;
  "browser.safebrowsing.downloads.remote.enabled" = false;
  "dom.event.clipboardevents.enabled" = false;
  "media.navigator.enabled" = false;
  "network.cookie.cookieBehavior" = 1;
  "network.http.referer.XOriginPolicy" = 2;
  "network.http.referer.XOriginTrimmingPolicy" = 2;
  "network.IDN_show_punycode" = true;
  "privacy.donottrackheader.enabled" = true;
  "privacy.firstparty.isolate" = true;
  "privacy.resistFingerprinting" = true;
  "privacy.trackingprotection.fingerprinting.enabled" = true;
  "privacy.trackingprotection.cryptomining.enabled" = true;
  "privacy.trackingprotection.enabled" = true;
}