.class public Lcyanogenmod/themes/ThemeChangeRequest$Builder;
.super Ljava/lang/Object;
.source "ThemeChangeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/themes/ThemeChangeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mPerAppOverlays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRequestType:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

.field mThemeComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWallpaperId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    .line 207
    sget-object v0, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->USER_REQUEST:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    iput-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mRequestType:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/res/ThemeConfig;)V
    .locals 1
    .param p1, "themeConfig"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    .line 207
    sget-object v0, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->USER_REQUEST:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    iput-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mRequestType:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    .line 213
    if-eqz p1, :cond_0

    .line 214
    invoke-direct {p0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->buildChangeRequestFromThemeConfig(Landroid/content/res/ThemeConfig;)V

    .line 212
    :cond_0
    return-void
.end method

.method private buildChangeRequestFromThemeConfig(Landroid/content/res/ThemeConfig;)V
    .locals 4
    .param p1, "themeConfig"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 304
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getFontPkgName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 305
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getFontPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setFont(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    .line 307
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 308
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setIcons(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    .line 310
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayPkgName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 311
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setOverlay(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    .line 313
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayForStatusBar()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 314
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayForStatusBar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setStatusBar(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    .line 316
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayForNavBar()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 317
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayForNavBar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setNavBar(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    .line 321
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getAppThemes()Ljava/util/Map;

    move-result-object v2

    .line 322
    .local v2, "themes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "appPkgName$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 323
    .local v0, "appPkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->isPerAppThemeComponent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 324
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ThemeConfig$AppTheme;

    invoke-virtual {v3}, Landroid/content/res/ThemeConfig$AppTheme;->getOverlayPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setAppOverlay(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    goto :goto_0

    .line 303
    .end local v0    # "appPkgName":Ljava/lang/String;
    :cond_6
    return-void
.end method


# virtual methods
.method public build()Lcyanogenmod/themes/ThemeChangeRequest;
    .locals 7

    .prologue
    .line 299
    new-instance v0, Lcyanogenmod/themes/ThemeChangeRequest;

    iget-object v1, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    iget-object v2, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    .line 300
    iget-object v3, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mRequestType:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    iget-wide v4, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mWallpaperId:J

    .line 299
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcyanogenmod/themes/ThemeChangeRequest;-><init>(Ljava/util/Map;Ljava/util/Map;Lcyanogenmod/themes/ThemeChangeRequest$RequestType;JLcyanogenmod/themes/ThemeChangeRequest;)V

    return-object v0
.end method

.method public setAlarm(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 257
    const-string/jumbo v0, "mods_alarms"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppOverlay(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "appPkgName"    # Ljava/lang/String;
    .param p2, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 282
    if-eqz p1, :cond_0

    .line 283
    if-eqz p2, :cond_1

    .line 284
    iget-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_0
    :goto_0
    return-object p0

    .line 286
    :cond_1
    iget-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setBootanimation(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 239
    const-string/jumbo v0, "mods_bootanim"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 273
    if-eqz p2, :cond_0

    .line 274
    iget-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :goto_0
    return-object p0

    .line 276
    :cond_0
    iget-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFont(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string/jumbo v0, "mods_fonts"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIcons(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string/jumbo v0, "mods_icons"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLiveLockScreen(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 269
    const-string/jumbo v0, "mods_live_lock_screen"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLockWallpaper(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 253
    const-string/jumbo v0, "mods_lockscreen"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNavBar(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 227
    const-string/jumbo v0, "mods_navigation_bar"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNotification(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 261
    const-string/jumbo v0, "mods_notifications"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOverlay(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 219
    const-string/jumbo v0, "mods_overlays"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRequestType(Lcyanogenmod/themes/ThemeChangeRequest$RequestType;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 0
    .param p1, "requestType"    # Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    .prologue
    .line 294
    if-eqz p1, :cond_0

    .end local p1    # "requestType":Lcyanogenmod/themes/ThemeChangeRequest$RequestType;
    :goto_0
    iput-object p1, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mRequestType:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    .line 295
    return-object p0

    .line 294
    .restart local p1    # "requestType":Lcyanogenmod/themes/ThemeChangeRequest$RequestType;
    :cond_0
    sget-object p1, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->USER_REQUEST:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    goto :goto_0
.end method

.method public setRingtone(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 265
    const-string/jumbo v0, "mods_ringtones"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setStatusBar(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string/jumbo v0, "mods_status_bar"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setWallpaper(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 243
    const-string/jumbo v0, "mods_homescreen"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setWallpaperId(J)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 248
    iput-wide p1, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mWallpaperId:J

    .line 249
    return-object p0
.end method
