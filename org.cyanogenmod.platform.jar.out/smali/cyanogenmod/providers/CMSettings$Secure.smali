.class public final Lcyanogenmod/providers/CMSettings$Secure;
.super Landroid/provider/Settings$NameValueTable;
.source "CMSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/providers/CMSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/providers/CMSettings$Secure$1;,
        Lcyanogenmod/providers/CMSettings$Secure$2;
    }
.end annotation


# static fields
.field public static final ADB_NOTIFY:Ljava/lang/String; = "adb_notify"

.field public static final ADB_PORT:Ljava/lang/String; = "adb_port"

.field public static final ADVANCED_MODE:Ljava/lang/String; = "advanced_mode"

.field public static final ADVANCED_REBOOT:Ljava/lang/String; = "advanced_reboot"

.field public static final APP_PERFORMANCE_PROFILES_ENABLED:Ljava/lang/String; = "app_perf_profiles_enabled"

.field public static final BUTTON_BACKLIGHT_TIMEOUT:Ljava/lang/String; = "button_backlight_timeout"

.field public static final BUTTON_BRIGHTNESS:Ljava/lang/String; = "button_brightness"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_THEME_COMPONENTS:Ljava/lang/String; = "default_theme_components"

.field public static final DEFAULT_THEME_PACKAGE:Ljava/lang/String; = "default_theme_package"

.field public static final DEVELOPMENT_SHORTCUT:Ljava/lang/String; = "development_shortcut"

.field public static final DEVICE_HOSTNAME:Ljava/lang/String; = "device_hostname"

.field public static final DEV_FORCE_SHOW_NAVBAR:Ljava/lang/String; = "dev_force_show_navbar"

.field public static final DISPLAY_GAMMA_CALIBRATION_PREFIX:Ljava/lang/String; = "display_gamma_"

.field public static final FEATURE_TOUCH_HOVERING:Ljava/lang/String; = "feature_touch_hovering"

.field public static final KEYBOARD_BRIGHTNESS:Ljava/lang/String; = "keyboard_brightness"

.field public static final KILL_APP_LONGPRESS_BACK:Ljava/lang/String; = "kill_app_longpress_back"

.field public static final LEGACY_SECURE_SETTINGS:[Ljava/lang/String;

.field public static final LIVE_DISPLAY_COLOR_MATRIX:Ljava/lang/String; = "live_display_color_matrix"

.field public static final LIVE_LOCK_SCREEN_ENABLED:Ljava/lang/String; = "live_lock_screen_enabled"

.field public static final LOCKSCREEN_INTERNALLY_ENABLED:Ljava/lang/String; = "lockscreen_internally_enabled"

.field public static final LOCKSCREEN_TARGETS:Ljava/lang/String; = "lockscreen_target_actions"

.field public static final LOCKSCREEN_VISUALIZER_ENABLED:Ljava/lang/String; = "lockscreen_visualizer"

.field public static final LOCK_PASS_TO_SECURITY_VIEW:Ljava/lang/String; = "lock_screen_pass_to_security_view"

.field public static final NAVIGATION_RING_TARGETS:[Ljava/lang/String;

.field public static final PERFORMANCE_PROFILE:Ljava/lang/String; = "performance_profile"

.field public static final POWER_MENU_ACTIONS:Ljava/lang/String; = "power_menu_actions"

.field public static final PRIVACY_GUARD_DEFAULT:Ljava/lang/String; = "privacy_guard_default"

.field public static final PRIVACY_GUARD_NOTIFICATION:Ljava/lang/String; = "privacy_guard_notification"

.field public static final PROTECTED_COMPONENTS:Ljava/lang/String; = "protected_components"

.field public static final PROTECTED_COMPONENTS_MANAGER_VALIDATOR:Lcyanogenmod/providers/CMSettings$Validator;

.field public static final PROTECTED_COMPONENTS_VALIDATOR:Lcyanogenmod/providers/CMSettings$Validator;

.field public static final PROTECTED_COMPONENT_MANAGERS:Ljava/lang/String; = "protected_component_managers"

.field public static final QS_LOCATION_ADVANCED:Ljava/lang/String; = "qs_location_advanced"

.field public static final QS_SHOW_BRIGHTNESS_SLIDER:Ljava/lang/String; = "qs_show_brightness_slider"

.field public static final QS_TILES:Ljava/lang/String; = "sysui_qs_tiles"

.field public static final QS_USE_MAIN_TILES:Ljava/lang/String; = "sysui_qs_main_tiles"

.field public static final RECENTS_LONG_PRESS_ACTIVITY:Ljava/lang/String; = "recents_long_press_activity"

.field public static final RING_HOME_BUTTON_BEHAVIOR:Ljava/lang/String; = "ring_home_button_behavior"

.field public static final RING_HOME_BUTTON_BEHAVIOR_ANSWER:I = 0x2

.field public static final RING_HOME_BUTTON_BEHAVIOR_DEFAULT:I = 0x1

.field public static final RING_HOME_BUTTON_BEHAVIOR_DO_NOTHING:I = 0x1

.field public static final STATS_COLLECTION:Ljava/lang/String; = "stats_collection"

.field public static final STATS_COLLECTION_REPORTED:Ljava/lang/String; = "stats_collection_reported"

.field public static final SYS_PROP_CM_SETTING_VERSION:Ljava/lang/String; = "sys.cm_settings_secure_version"

.field public static final THEME_PREV_BOOT_API_LEVEL:Ljava/lang/String; = "theme_prev_boot_api_level"

.field public static final VALIDATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcyanogenmod/providers/CMSettings$Validator;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIBRATOR_INTENSITY:Ljava/lang/String; = "vibrator_intensity"

.field public static final __MAGICAL_TEST_PASSING_ENABLER:Ljava/lang/String; = "___magical_test_passing_enabler"

.field private static final sNameValueCache:Lcyanogenmod/providers/CMSettings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2030
    const-string/jumbo v0, "content://cmsettings/secure"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/providers/CMSettings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 2034
    new-instance v0, Lcyanogenmod/providers/CMSettings$NameValueCache;

    .line 2035
    const-string/jumbo v1, "sys.cm_settings_secure_version"

    .line 2036
    sget-object v2, Lcyanogenmod/providers/CMSettings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 2037
    const-string/jumbo v3, "GET_secure"

    .line 2038
    const-string/jumbo v4, "PUT_secure"

    .line 2034
    invoke-direct {v0, v1, v2, v3, v4}, Lcyanogenmod/providers/CMSettings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcyanogenmod/providers/CMSettings$Secure;->sNameValueCache:Lcyanogenmod/providers/CMSettings$NameValueCache;

    .line 2445
    new-array v0, v8, [Ljava/lang/String;

    .line 2446
    const-string/jumbo v1, "navigation_ring_targets_0"

    aput-object v1, v0, v5

    .line 2447
    const-string/jumbo v1, "navigation_ring_targets_1"

    aput-object v1, v0, v6

    .line 2448
    const-string/jumbo v1, "navigation_ring_targets_2"

    aput-object v1, v0, v7

    .line 2445
    sput-object v0, Lcyanogenmod/providers/CMSettings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    .line 2688
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    .line 2689
    const-string/jumbo v1, "advanced_mode"

    aput-object v1, v0, v5

    .line 2690
    const-string/jumbo v1, "button_backlight_timeout"

    aput-object v1, v0, v6

    .line 2691
    const-string/jumbo v1, "button_brightness"

    aput-object v1, v0, v7

    .line 2692
    const-string/jumbo v1, "default_theme_components"

    aput-object v1, v0, v8

    .line 2693
    const-string/jumbo v1, "default_theme_package"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2694
    const-string/jumbo v1, "dev_force_show_navbar"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2695
    const-string/jumbo v1, "keyboard_brightness"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 2696
    const-string/jumbo v1, "power_menu_actions"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 2697
    const-string/jumbo v1, "stats_collection"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 2698
    const-string/jumbo v1, "qs_show_brightness_slider"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 2699
    const-string/jumbo v1, "sysui_qs_tiles"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 2700
    const-string/jumbo v1, "sysui_qs_main_tiles"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 2701
    sget-object v1, Lcyanogenmod/providers/CMSettings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    aget-object v1, v1, v5

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 2702
    sget-object v1, Lcyanogenmod/providers/CMSettings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    aget-object v1, v1, v6

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 2703
    sget-object v1, Lcyanogenmod/providers/CMSettings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    aget-object v1, v1, v7

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 2704
    const-string/jumbo v1, "recents_long_press_activity"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 2705
    const-string/jumbo v1, "adb_notify"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 2706
    const-string/jumbo v1, "adb_port"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 2707
    const-string/jumbo v1, "device_hostname"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 2708
    const-string/jumbo v1, "kill_app_longpress_back"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 2709
    const-string/jumbo v1, "protected_components"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 2710
    const-string/jumbo v1, "live_display_color_matrix"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 2711
    const-string/jumbo v1, "advanced_reboot"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 2712
    const-string/jumbo v1, "theme_prev_boot_api_level"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 2713
    const-string/jumbo v1, "lockscreen_target_actions"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 2714
    const-string/jumbo v1, "ring_home_button_behavior"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 2715
    const-string/jumbo v1, "privacy_guard_default"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 2716
    const-string/jumbo v1, "privacy_guard_notification"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 2717
    const-string/jumbo v1, "development_shortcut"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 2718
    const-string/jumbo v1, "performance_profile"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 2719
    const-string/jumbo v1, "app_perf_profiles_enabled"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 2720
    const-string/jumbo v1, "qs_location_advanced"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 2721
    const-string/jumbo v1, "lockscreen_visualizer"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 2722
    const-string/jumbo v1, "lock_screen_pass_to_security_view"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 2688
    sput-object v0, Lcyanogenmod/providers/CMSettings$Secure;->LEGACY_SECURE_SETTINGS:[Ljava/lang/String;

    .line 2735
    new-instance v0, Lcyanogenmod/providers/CMSettings$Secure$1;

    invoke-direct {v0}, Lcyanogenmod/providers/CMSettings$Secure$1;-><init>()V

    sput-object v0, Lcyanogenmod/providers/CMSettings$Secure;->PROTECTED_COMPONENTS_VALIDATOR:Lcyanogenmod/providers/CMSettings$Validator;

    .line 2755
    new-instance v0, Lcyanogenmod/providers/CMSettings$Secure$2;

    invoke-direct {v0}, Lcyanogenmod/providers/CMSettings$Secure$2;-><init>()V

    sput-object v0, Lcyanogenmod/providers/CMSettings$Secure;->PROTECTED_COMPONENTS_MANAGER_VALIDATOR:Lcyanogenmod/providers/CMSettings$Validator;

    .line 2782
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2781
    sput-object v0, Lcyanogenmod/providers/CMSettings$Secure;->VALIDATORS:Ljava/util/Map;

    .line 2784
    sget-object v0, Lcyanogenmod/providers/CMSettings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "protected_components"

    sget-object v2, Lcyanogenmod/providers/CMSettings$Secure;->PROTECTED_COMPONENTS_VALIDATOR:Lcyanogenmod/providers/CMSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2785
    sget-object v0, Lcyanogenmod/providers/CMSettings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "protected_component_managers"

    sget-object v2, Lcyanogenmod/providers/CMSettings$Secure;->PROTECTED_COMPONENTS_MANAGER_VALIDATOR:Lcyanogenmod/providers/CMSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2029
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static getDelimitedStringAsList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2066
    invoke-static {p0, p1}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2067
    .local v1, "baseString":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2068
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2069
    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2070
    .local v0, "array":[Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 2071
    .local v2, "item":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2070
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2074
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2077
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "item":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 2344
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .prologue
    .line 2310
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F
    .param p3, "userId"    # I

    .prologue
    .line 2316
    invoke-static {p0, p1, p3}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2318
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "def":F
    :cond_0
    return p2

    .line 2319
    .restart local p2    # "def":F
    :catch_0
    move-exception v0

    .line 2320
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 2350
    invoke-static {p0, p1, p2}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2351
    .local v1, "v":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2352
    new-instance v2, Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;

    invoke-direct {v2, p1}, Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2355
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2356
    :catch_0
    move-exception v0

    .line 2357
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;

    invoke-direct {v2, p1}, Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 2171
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 2138
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 2177
    invoke-static {p0, p1, p2}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2179
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2180
    :catch_0
    move-exception v0

    .line 2181
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;

    invoke-direct {v2, p1}, Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userId"    # I

    .prologue
    .line 2143
    invoke-static {p0, p1, p3}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2145
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "def":I
    :cond_0
    return p2

    .line 2146
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 2147
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 2258
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 2223
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 2264
    invoke-static {p0, p1, p2}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2266
    .local v1, "valString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 2267
    :catch_0
    move-exception v0

    .line 2268
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;

    invoke-direct {v2, p1}, Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J
    .param p4, "userId"    # I

    .prologue
    .line 2229
    invoke-static {p0, p1, p4}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2232
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 2236
    .local v2, "value":J
    :goto_0
    return-wide v2

    .line 2232
    .end local v2    # "value":J
    :cond_0
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0

    .line 2233
    .end local v2    # "value":J
    :catch_0
    move-exception v0

    .line 2234
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2097
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2103
    sget-object v0, Lcyanogenmod/providers/CMSettings$Secure;->sNameValueCache:Lcyanogenmod/providers/CMSettings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Lcyanogenmod/providers/CMSettings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2087
    sget-object v0, Lcyanogenmod/providers/CMSettings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$NameValueTable;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isLegacySetting(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 2729
    sget-object v0, Lcyanogenmod/providers/CMSettings$Secure;->LEGACY_SECURE_SETTINGS:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 2375
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "userId"    # I

    .prologue
    .line 2381
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcyanogenmod/providers/CMSettings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 2199
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userId"    # I

    .prologue
    .line 2205
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcyanogenmod/providers/CMSettings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putListAsDelimitedString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2052
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 2053
    .local v0, "store":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2051
    return-void
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 2286
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public static putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I

    .prologue
    .line 2292
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Lcyanogenmod/providers/CMSettings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2114
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 2120
    sget-object v0, Lcyanogenmod/providers/CMSettings$Secure;->sNameValueCache:Lcyanogenmod/providers/CMSettings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcyanogenmod/providers/CMSettings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static shouldInterceptSystemProvider(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 2792
    const/4 v0, 0x0

    return v0
.end method