.class public Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;
.super Lcom/android/server/SystemService;
.source "CMStatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;,
        Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;,
        Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$1;,
        Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$2;
    }
.end annotation


# static fields
.field static final MAX_PACKAGE_TILES:I = 0x4

.field private static final REASON_PACKAGE_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CMStatusBarManagerService"


# instance fields
.field private mContext:Landroid/content/Context;

.field final mCustomTileByKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomTileListeners:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

.field private mHandler:Landroid/os/Handler;

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field final mQSTileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/os/IBinder;

.field private final mUserProfiles:Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mCustomTileListeners:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    return-object v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mUserProfiles:Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;Ljava/lang/String;II)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->checkDosProtection(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;Lcyanogenmod/app/StatusBarPanelCustomTile;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "sbc"    # Lcyanogenmod/app/StatusBarPanelCustomTile;
    .param p2, "listener"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->isVisibleToListener(Lcyanogenmod/app/StatusBarPanelCustomTile;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;)V
    .locals 0
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->enforceBindCustomTileListener()V

    return-void
.end method

.method static synthetic -wrap4(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->enforceCustomTilePublish()V

    return-void
.end method

.method static synthetic -wrap5(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "info"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "userId"    # I

    .prologue
    invoke-direct/range {p0 .. p7}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->removeCustomTileFromListenerLocked(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;

    invoke-direct {v0}, Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mUserProfiles:Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 76
    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mCustomTileByKey:Landroid/util/ArrayMap;

    .line 105
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$1;-><init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 177
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$2;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$2;-><init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mService:Landroid/os/IBinder;

    .line 81
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method private static checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->isCallerSystem()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    return-void

    .line 380
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 382
    .local v2, "uid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 383
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    .line 382
    invoke-interface {v3, p0, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 384
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1

    .line 385
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 392
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 387
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :try_start_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 388
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 389
    const-string/jumbo v5, " which is owned by uid "

    .line 388
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 389
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 388
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 376
    :cond_2
    return-void
.end method

.method private checkDosProtection(Ljava/lang/String;II)Z
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .prologue
    .line 316
    invoke-static {p2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->isUidSystem(I)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "android"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 319
    :goto_0
    if-nez v3, :cond_3

    .line 320
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, "count":I
    :try_start_0
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 324
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 325
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;

    .line 326
    .local v4, "r":Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    iget-object v5, v4, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v5}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v5}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getUserId()I

    move-result v5

    if-ne v5, p3, :cond_1

    .line 327
    add-int/lit8 v1, v1, 0x1

    .line 328
    const/4 v5, 0x4

    if-lt v1, v5, :cond_1

    .line 329
    const-string/jumbo v5, "CMStatusBarManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package has already posted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 330
    const-string/jumbo v8, " custom tiles.  Not showing more.  package="

    .line 329
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    const/4 v5, 0x1

    monitor-exit v6

    return v5

    .line 316
    .end local v0    # "N":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "r":Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    :cond_0
    const/4 v3, 0x1

    .local v3, "isSystemTile":Z
    goto :goto_0

    .line 324
    .end local v3    # "isSystemTile":Z
    .restart local v0    # "N":I
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "r":Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4    # "r":Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    :cond_2
    monitor-exit v6

    .line 337
    .end local v0    # "N":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_3
    const/4 v5, 0x0

    return v5

    .line 320
    .restart local v1    # "count":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private customTileMatchesUserId(Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;I)Z
    .locals 3
    .param p1, "r"    # Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 413
    if-eq p2, v2, :cond_0

    .line 415
    invoke-virtual {p1}, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->getUserId()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v0

    .line 417
    :cond_1
    invoke-virtual {p1}, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->getUserId()I

    move-result v1

    if-eq v1, p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enforceBindCustomTileListener()V
    .locals 3

    .prologue
    .line 528
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mContext:Landroid/content/Context;

    .line 529
    const-string/jumbo v1, "cyanogenmod.permission.BIND_CUSTOM_TILE_LISTENER_SERVICE"

    .line 530
    const-string/jumbo v2, "StatusBarManagerService"

    .line 528
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method private enforceCustomTilePublish()V
    .locals 3

    .prologue
    .line 522
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mContext:Landroid/content/Context;

    .line 523
    const-string/jumbo v1, "cyanogenmod.permission.PUBLISH_CUSTOM_TILE"

    .line 524
    const-string/jumbo v2, "StatusBarManagerService"

    .line 522
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method private enforceSystemOrSystemUI(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 516
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method private static isCallerSystem()Z
    .locals 1

    .prologue
    .line 403
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private static isUidSystem(I)Z
    .locals 4
    .param p0, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 397
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 398
    .local v0, "appid":I
    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    .line 399
    const/16 v3, 0x3e9

    if-ne v0, v3, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v1

    .line 399
    :cond_1
    if-eqz p0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isVisibleToListener(Lcyanogenmod/app/StatusBarPanelCustomTile;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "sbc"    # Lcyanogenmod/app/StatusBarPanelCustomTile;
    .param p2, "listener"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 535
    invoke-virtual {p1}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    return v0
.end method

.method private removeCustomTileFromListenerLocked(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "info"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "userId"    # I

    .prologue
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    move-object v7, p1

    .line 422
    invoke-virtual/range {v0 .. v7}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->removeCustomTileWithTagInternal(IILjava/lang/String;Ljava/lang/String;IILorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)V

    .line 421
    return-void
.end method

.method private removeCustomTileLocked(Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;ZI)V
    .locals 4
    .param p1, "r"    # Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    .prologue
    .line 494
    if-eqz p2, :cond_0

    .line 495
    invoke-virtual {p1}, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->getCustomTile()Lcyanogenmod/app/CustomTile;

    move-result-object v1

    iget-object v1, v1, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 497
    :try_start_0
    invoke-virtual {p1}, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->getCustomTile()Lcyanogenmod/app/CustomTile;

    move-result-object v1

    iget-object v1, v1, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->getCustomTile()Lcyanogenmod/app/CustomTile;

    move-result-object v1

    iget v1, v1, Lcyanogenmod/app/CustomTile;->icon:I

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->getCustomTile()Lcyanogenmod/app/CustomTile;

    move-result-object v1

    iget-object v1, v1, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 508
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->isCanceled:Z

    .line 509
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mCustomTileListeners:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    iget-object v2, p1, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v1, v2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->notifyRemovedLocked(Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    .line 512
    :cond_2
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mCustomTileByKey:Landroid/util/ArrayMap;

    iget-object v2, p1, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v2}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 501
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v1, "CMStatusBarManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "canceled PendingIntent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v3}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method createCustomTileWithTagInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcyanogenmod/app/CustomTile;[II)V
    .locals 13
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "customTile"    # Lcyanogenmod/app/CustomTile;
    .param p8, "idOut"    # [I
    .param p9, "incomingUserId"    # I

    .prologue
    .line 264
    if-eqz p1, :cond_0

    if-nez p7, :cond_1

    .line 265
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "null not allowed: pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 266
    const-string/jumbo v3, " id="

    .line 265
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 266
    const-string/jumbo v3, " customTile="

    .line 265
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_1
    const-string/jumbo v6, "createCustomTileWithTag"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p9

    move-object v7, p1

    .line 269
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 271
    .local v11, "userId":I
    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 274
    .local v10, "user":Landroid/os/UserHandle;
    iget-object v12, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;

    move-object v2, p0

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p6

    move-object/from16 v7, p5

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v11}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;-><init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;Lcyanogenmod/app/CustomTile;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/os/UserHandle;I)V

    invoke-virtual {v12, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    const/4 v1, 0x0

    aput p6, p8, v1

    .line 262
    return-void
.end method

.method indexOfQsTileLocked(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 343
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 344
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;

    invoke-virtual {v2}, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    return v1

    .line 343
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method indexOfQsTileLocked(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    .line 353
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    .line 354
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 355
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 356
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;

    .line 357
    .local v3, "r":Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    invoke-direct {p0, v3, p4}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->customTileMatchesUserId(Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v4}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getId()I

    move-result v4

    if-eq v4, p3, :cond_1

    .line 355
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_1
    if-nez p2, :cond_3

    .line 361
    iget-object v4, v3, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v4}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 369
    :cond_2
    iget-object v4, v3, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v4}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 370
    return v0

    .line 365
    :cond_3
    iget-object v4, v3, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v4}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 373
    .end local v3    # "r":Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    :cond_4
    const/4 v4, -0x1

    return v4
.end method

.method public onStart()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 86
    const-string/jumbo v0, "CMStatusBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCMStatusBar cmstatusbar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;-><init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mCustomTileListeners:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    .line 88
    const-string/jumbo v0, "cmstatusbar"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 90
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v3, "pkgFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 100
    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 101
    .local v8, "sdFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method removeAllCustomTilesInt(Ljava/lang/String;ZIILorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "doit"    # Z
    .param p3, "userId"    # I
    .param p4, "reason"    # I
    .param p5, "listener"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 462
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 463
    :try_start_0
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 464
    .local v0, "N":I
    const/4 v3, 0x0

    .line 465
    .local v3, "removedTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;>;"
    add-int/lit8 v1, v0, -0x1

    .end local v3    # "removedTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;>;"
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_6

    .line 466
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;

    .line 467
    .local v2, "r":Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    invoke-direct {p0, v2, p3}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->customTileMatchesUserId(Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 465
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {v2}, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->getUserId()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    if-eqz p1, :cond_0

    .line 474
    :cond_2
    if-eqz p1, :cond_3

    iget-object v7, v2, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v7}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 477
    :cond_3
    if-nez v3, :cond_4

    .line 478
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 480
    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    if-nez p2, :cond_5

    monitor-exit v6

    .line 482
    return v4

    .line 484
    :cond_5
    :try_start_1
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 485
    const/4 v7, 0x0

    invoke-direct {p0, v2, v7, p4}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->removeCustomTileLocked(Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 462
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "r":Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4

    .line 487
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_6
    if-eqz v3, :cond_7

    :goto_2
    monitor-exit v6

    return v4

    :cond_7
    move v4, v5

    goto :goto_2
.end method

.method removeCustomTileWithTagInternal(IILjava/lang/String;Ljava/lang/String;IILorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)V
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "userId"    # I
    .param p7, "listener"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 428
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$4;-><init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void
.end method
