.class public Lorg/cyanogenmod/platform/internal/ProfileManagerService;
.super Lcom/android/server/SystemService;
.source "ProfileManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/ProfileManagerService$ProfilesObserver;,
        Lorg/cyanogenmod/platform/internal/ProfileManagerService$1;,
        Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;,
        Lorg/cyanogenmod/platform/internal/ProfileManagerService$3;,
        Lorg/cyanogenmod/platform/internal/ProfileManagerService$4;,
        Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;
    }
.end annotation


# static fields
.field public static final KEYGUARD_CLASS:Ljava/lang/String; = "com.android.systemui.keyguard.KeyguardService"

.field public static final KEYGUARD_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final LOCAL_LOGV:Z = false

.field private static final MSG_SEND_PROFILE_STATE:I = 0xa

.field static final PROFILE_FILE:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "CMProfileService"

.field private static final mWildcardUUID:Ljava/util/UUID;


# instance fields
.field private mActiveProfile:Lcyanogenmod/app/Profile;

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mBindKeyguard:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDirty:Z

.field private mEmptyProfile:Lcyanogenmod/app/Profile;

.field private mGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Landroid/app/NotificationGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field private mKeyguardService:Lcom/android/internal/policy/IKeyguardService;

.field private mProfileNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mProfiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lcyanogenmod/app/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/os/IBinder;

.field private mTriggerHelper:Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;

.field private mWildcardGroup:Landroid/app/NotificationGroup;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Lcyanogenmod/app/Profile;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mBindKeyguard:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    return v0
.end method

.method static synthetic -get4(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Lcyanogenmod/app/Profile;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mEmptyProfile:Lcyanogenmod/app/Profile;

    return-object v0
.end method

.method static synthetic -get5(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get6(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get9(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Landroid/app/NotificationGroup;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;

    return-object v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    return p1
.end method

.method static synthetic -set1(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mKeyguardService:Lcom/android/internal/policy/IKeyguardService;

    return-object p1
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Ljava/util/UUID;Z)Z
    .locals 1
    .param p1, "profileUuid"    # Ljava/util/UUID;
    .param p2, "doInit"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->setActiveProfileInternal(Ljava/util/UUID;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Ljava/util/UUID;)Lcyanogenmod/app/Profile;
    .locals 1
    .param p1, "profileUuid"    # Ljava/util/UUID;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->getProfileInternal(Ljava/util/UUID;)Lcyanogenmod/app/Profile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Landroid/app/NotificationGroup;)V
    .locals 0
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->addNotificationGroupInternal(Landroid/app/NotificationGroup;)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Lcyanogenmod/app/Profile;)V
    .locals 0
    .param p1, "profile"    # Lcyanogenmod/app/Profile;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->addProfileInternal(Lcyanogenmod/app/Profile;)V

    return-void
.end method

.method static synthetic -wrap4(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->bindKeyguard()V

    return-void
.end method

.method static synthetic -wrap5(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->enforceChangePermissions()V

    return-void
.end method

.method static synthetic -wrap6(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->initialize()V

    return-void
.end method

.method static synthetic -wrap7(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Z)V
    .locals 0
    .param p1, "skipFile"    # Z

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->initialize(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->persistIfDirty()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "profiles.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    sput-object v0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    .line 90
    const-string/jumbo v0, "a126d48a-aaef-47c4-baed-7f0e44aeffe5"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 89
    sput-object v0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mWildcardUUID:Ljava/util/UUID;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$1;-><init>(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mBindKeyguard:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;-><init>(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 124
    new-instance v0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$3;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$3;-><init>(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    new-instance v0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$4;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$4;-><init>(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 247
    new-instance v0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;-><init>(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mService:Landroid/os/IBinder;

    .line 170
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    .line 171
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mHandler:Landroid/os/Handler;

    .line 172
    const-string/jumbo v0, "profile"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 168
    return-void
.end method

.method private addNotificationGroupInternal(Landroid/app/NotificationGroup;)V
    .locals 4
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 733
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 736
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "profile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    .line 737
    .local v0, "profile":Lcyanogenmod/app/Profile;
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->ensureGroupInProfile(Lcyanogenmod/app/Profile;Landroid/app/NotificationGroup;Z)V

    goto :goto_0

    .line 740
    .end local v0    # "profile":Lcyanogenmod/app/Profile;
    .end local v1    # "profile$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    .line 732
    return-void
.end method

.method private addProfileInternal(Lcyanogenmod/app/Profile;)V
    .locals 6
    .param p1, "profile"    # Lcyanogenmod/app/Profile;

    .prologue
    const/4 v5, 0x1

    .line 491
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "group$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 492
    .local v0, "group":Landroid/app/NotificationGroup;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->ensureGroupInProfile(Lcyanogenmod/app/Profile;Landroid/app/NotificationGroup;Z)V

    goto :goto_0

    .line 494
    .end local v0    # "group":Landroid/app/NotificationGroup;
    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;

    invoke-direct {p0, p1, v2, v5}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->ensureGroupInProfile(Lcyanogenmod/app/Profile;Landroid/app/NotificationGroup;Z)V

    .line 495
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iput-boolean v5, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    .line 489
    return-void
.end method

.method private bindKeyguard()V
    .locals 5

    .prologue
    .line 193
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mKeyguardService:Lcom/android/internal/policy/IKeyguardService;

    if-nez v1, :cond_0

    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 195
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "com.android.systemui.keyguard.KeyguardService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 197
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x1

    .line 196
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    const-string/jumbo v1, "CMProfileService"

    const-string/jumbo v2, "error binding to keyguard service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private enforceChangePermissions()V
    .locals 3

    .prologue
    .line 589
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    .line 590
    const-string/jumbo v1, "cyanogenmod.permission.MODIFY_PROFILES"

    .line 591
    const-string/jumbo v2, "You do not have permissions to change the Profile Manager."

    .line 589
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method private ensureGroupInProfile(Lcyanogenmod/app/Profile;Landroid/app/NotificationGroup;Z)V
    .locals 5
    .param p1, "profile"    # Lcyanogenmod/app/Profile;
    .param p2, "group"    # Landroid/app/NotificationGroup;
    .param p3, "defaultGroup"    # Z

    .prologue
    .line 502
    invoke-virtual {p2}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcyanogenmod/app/Profile;->getProfileGroup(Ljava/util/UUID;)Lcyanogenmod/app/ProfileGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 503
    return-void

    .line 508
    :cond_0
    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getProfileGroups()[Lcyanogenmod/app/ProfileGroup;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 509
    .local v0, "pg":Lcyanogenmod/app/ProfileGroup;
    invoke-virtual {v0, p2, p3}, Lcyanogenmod/app/ProfileGroup;->matches(Landroid/app/NotificationGroup;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 510
    return-void

    .line 508
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    .end local v0    # "pg":Lcyanogenmod/app/ProfileGroup;
    :cond_2
    new-instance v1, Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {p2}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcyanogenmod/app/ProfileGroup;-><init>(Ljava/util/UUID;Z)V

    invoke-virtual {p1, v1}, Lcyanogenmod/app/Profile;->addProfileGroup(Lcyanogenmod/app/ProfileGroup;)V

    .line 501
    return-void
.end method

.method private getProfileInternal(Ljava/util/UUID;)Lcyanogenmod/app/Profile;
    .locals 7
    .param p1, "profileUuid"    # Ljava/util/UUID;

    .prologue
    .line 520
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 521
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcyanogenmod/app/Profile;

    return-object v3

    .line 524
    :cond_0
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    .line 525
    .local v0, "p":Lcyanogenmod/app/Profile;
    invoke-virtual {v0}, Lcyanogenmod/app/Profile;->getSecondaryUuids()[Ljava/util/UUID;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    .line 526
    .local v2, "uuid":Ljava/util/UUID;
    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 527
    return-object v0

    .line 525
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 532
    .end local v0    # "p":Lcyanogenmod/app/Profile;
    .end local v2    # "uuid":Ljava/util/UUID;
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method private getXmlString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "<profiles>\n<active>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v5}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string/jumbo v5, "</active>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcyanogenmod/app/Profile;

    .line 546
    .local v3, "p":Lcyanogenmod/app/Profile;
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v5}, Lcyanogenmod/app/Profile;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_0

    .line 548
    .end local v3    # "p":Lcyanogenmod/app/Profile;
    :cond_0
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "g$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationGroup;

    .line 549
    .local v1, "g":Landroid/app/NotificationGroup;
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v5}, Landroid/app/NotificationGroup;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_1

    .line 551
    .end local v1    # "g":Landroid/app/NotificationGroup;
    :cond_1
    const-string/jumbo v5, "</profiles>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private initialiseStructure()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 658
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 659
    const/high16 v2, 0x3f030000    # 0.51171875f

    .line 658
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 661
    .local v0, "xml":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->loadXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    .line 662
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    .line 663
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->persistIfDirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 657
    return-void

    .line 664
    :catchall_0
    move-exception v1

    .line 665
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 664
    throw v1
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->initialize(Z)V

    .line 214
    return-void
.end method

.method private initialize(Z)V
    .locals 7
    .param p1, "skipFile"    # Z

    .prologue
    .line 219
    new-instance v4, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6, p0}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    iput-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mTriggerHelper:Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;

    .line 220
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    .line 221
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    .line 222
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;

    .line 223
    new-instance v4, Lcyanogenmod/app/Profile;

    const-string/jumbo v5, "EmptyProfile"

    invoke-direct {v4, v5}, Lcyanogenmod/app/Profile;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mEmptyProfile:Lcyanogenmod/app/Profile;

    .line 224
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    .line 226
    move v3, p1

    .line 228
    .local v3, "init":Z
    if-nez p1, :cond_0

    .line 230
    :try_start_0
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->loadFromFile()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v3    # "init":Z
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 240
    :try_start_1
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->initialiseStructure()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 218
    :cond_1
    :goto_1
    return-void

    .line 233
    .restart local v3    # "init":Z
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x1

    .local v3, "init":Z
    goto :goto_0

    .line 231
    .end local v0    # "e":Ljava/io/IOException;
    .local v3, "init":Z
    :catch_1
    move-exception v1

    .line 232
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v3, 0x1

    .local v3, "init":Z
    goto :goto_0

    .line 241
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "init":Z
    :catch_2
    move-exception v2

    .line 242
    .local v2, "ex":Ljava/lang/Throwable;
    const-string/jumbo v4, "CMProfileService"

    const-string/jumbo v5, "Error loading xml from resource: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private loadFromFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 604
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 605
    .local v2, "xppf":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 606
    .local v1, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/FileReader;

    sget-object v3, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 607
    .local v0, "fr":Ljava/io/FileReader;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 608
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->loadXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    .line 609
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 610
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->persistIfDirty()V

    .line 603
    return-void
.end method

.method private loadXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V
    .locals 11
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 615
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 616
    .local v2, "event":I
    const/4 v0, 0x0

    .line 617
    :goto_0
    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    const-string/jumbo v6, "profiles"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 643
    :try_start_0
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->setActiveProfileInternal(Ljava/util/UUID;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :goto_1
    return-void

    .line 618
    :cond_0
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 619
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v6, "active"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 621
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "active":Ljava/lang/String;
    const-string/jumbo v6, "CMProfileService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Found active: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    .end local v0    # "active":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 623
    .restart local v3    # "name":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "profile"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 624
    invoke-static {p1, p2}, Lcyanogenmod/app/Profile;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/app/Profile;

    move-result-object v5

    .line 625
    .local v5, "prof":Lcyanogenmod/app/Profile;
    invoke-direct {p0, v5}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->addProfileInternal(Lcyanogenmod/app/Profile;)V

    .line 627
    if-nez v0, :cond_1

    .line 628
    invoke-virtual {v5}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "active":Ljava/lang/String;
    goto :goto_2

    .line 630
    .end local v0    # "active":Ljava/lang/String;
    .end local v5    # "prof":Lcyanogenmod/app/Profile;
    :cond_3
    const-string/jumbo v6, "notificationGroup"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 631
    invoke-static {p1, p2}, Landroid/app/NotificationGroup;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/NotificationGroup;

    move-result-object v4

    .line 632
    .local v4, "ng":Landroid/app/NotificationGroup;
    invoke-direct {p0, v4}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->addNotificationGroupInternal(Landroid/app/NotificationGroup;)V

    goto :goto_2

    .line 634
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "ng":Landroid/app/NotificationGroup;
    :cond_4
    if-ne v2, v10, :cond_1

    .line 635
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Premature end of file while reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 644
    :catch_0
    move-exception v1

    .line 645
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 646
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/UUID;

    invoke-direct {p0, v6, v9}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->setActiveProfileInternal(Ljava/util/UUID;Z)Z

    .line 653
    :goto_3
    iput-boolean v10, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    goto/16 :goto_1

    .line 650
    :cond_5
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcyanogenmod/app/Profile;

    invoke-virtual {p0, v6, v9}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->setActiveProfileInternal(Lcyanogenmod/app/Profile;Z)V

    goto :goto_3
.end method

.method private declared-synchronized persistIfDirty()V
    .locals 9

    .prologue
    monitor-enter p0

    .line 556
    :try_start_0
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    .line 557
    .local v0, "dirty":Z
    if-nez v0, :cond_1

    .line 558
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "profile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcyanogenmod/app/Profile;

    .line 559
    .local v5, "profile":Lcyanogenmod/app/Profile;
    invoke-virtual {v5}, Lcyanogenmod/app/Profile;->isDirty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 560
    const/4 v0, 0x1

    .line 565
    .end local v0    # "dirty":Z
    .end local v5    # "profile":Lcyanogenmod/app/Profile;
    .end local v6    # "profile$iterator":Ljava/util/Iterator;
    :cond_1
    if-nez v0, :cond_3

    .line 566
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "group$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationGroup;

    .line 567
    .local v3, "group":Landroid/app/NotificationGroup;
    invoke-virtual {v3}, Landroid/app/NotificationGroup;->isDirty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 568
    const/4 v0, 0x1

    .line 573
    .end local v3    # "group":Landroid/app/NotificationGroup;
    .end local v4    # "group$iterator":Ljava/util/Iterator;
    :cond_3
    if-eqz v0, :cond_4

    .line 575
    :try_start_1
    const-string/jumbo v7, "CMProfileService"

    const-string/jumbo v8, "Saving profile data..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v2, Ljava/io/FileWriter;

    sget-object v7, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 577
    .local v2, "fw":Ljava/io/FileWriter;
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->getXmlString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 579
    const-string/jumbo v7, "CMProfileService"

    const-string/jumbo v8, "Save completed."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    .line 581
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v7}, Landroid/app/backup/BackupManager;->dataChanged()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "fw":Ljava/io/FileWriter;
    :cond_4
    :goto_0
    monitor-exit p0

    .line 555
    return-void

    .line 582
    :catch_0
    move-exception v1

    .line 583
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private setActiveProfileInternal(Ljava/util/UUID;Z)Z
    .locals 3
    .param p1, "profileUuid"    # Ljava/util/UUID;
    .param p2, "doInit"    # Z

    .prologue
    .line 670
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    const-string/jumbo v0, "CMProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot set active profile to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 672
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 671
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 672
    const-string/jumbo v2, " - does not exist."

    .line 671
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v0, 0x0

    return v0

    .line 677
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    invoke-virtual {p0, v0, p2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->setActiveProfileInternal(Lcyanogenmod/app/Profile;Z)V

    .line 678
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method getActiveProfileInternal()Lcyanogenmod/app/Profile;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    return-object v0
.end method

.method getProfileList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcyanogenmod/app/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    .prologue
    .line 205
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 206
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->bindKeyguard()V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 209
    const-string/jumbo v1, "system_profiles_enabled"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 210
    new-instance v2, Lorg/cyanogenmod/platform/internal/ProfileManagerService$ProfilesObserver;

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$ProfilesObserver;-><init>(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Landroid/os/Handler;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 208
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const v4, 0x3f060032

    .line 177
    new-instance v1, Landroid/app/backup/BackupManager;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 179
    new-instance v1, Landroid/app/NotificationGroup;

    .line 180
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 182
    sget-object v3, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mWildcardUUID:Ljava/util/UUID;

    .line 179
    invoke-direct {v1, v2, v4, v3}, Landroid/app/NotificationGroup;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;

    .line 184
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->initialize()V

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    return-void
.end method

.method setActiveProfileInternal(Lcyanogenmod/app/Profile;Z)V
    .locals 5
    .param p1, "newActiveProfile"    # Lcyanogenmod/app/Profile;
    .param p2, "doInit"    # Z

    .prologue
    .line 694
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->enforceChangePermissions()V

    .line 696
    const-string/jumbo v2, "CMProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set active profile to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 697
    const-string/jumbo v4, " - "

    .line 696
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 697
    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    .line 696
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    .line 700
    .local v1, "lastProfile":Lcyanogenmod/app/Profile;
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    .line 701
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    .line 703
    if-eqz p2, :cond_1

    .line 706
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mKeyguardService:Lcom/android/internal/policy/IKeyguardService;

    invoke-virtual {v2, v3, v4}, Lcyanogenmod/app/Profile;->doSelect(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V

    .line 709
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "cyanogenmod.platform.intent.action.PROFILE_SELECTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v0, "broadcast":Landroid/content/Intent;
    const-string/jumbo v2, "name"

    .line 711
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v3}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 710
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    const-string/jumbo v2, "uuid"

    .line 713
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v3}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 712
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-string/jumbo v2, "lastName"

    .line 715
    invoke-virtual {v1}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 714
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    const-string/jumbo v2, "lastUuid"

    .line 717
    invoke-virtual {v1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 716
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 720
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->persistIfDirty()V

    .line 685
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    if-eq v1, v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 723
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "cyanogenmod.platform.intent.action.PROFILE_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    .restart local v0    # "broadcast":Landroid/content/Intent;
    const-string/jumbo v2, "name"

    .line 725
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v3}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 724
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    const-string/jumbo v2, "uuid"

    .line 727
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v3}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 726
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method settingsRestored()V
    .locals 3

    .prologue
    .line 596
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->initialize()V

    .line 597
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    .line 598
    .local v0, "p":Lcyanogenmod/app/Profile;
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcyanogenmod/app/Profile;->validateRingtones(Landroid/content/Context;)V

    goto :goto_0

    .line 600
    .end local v0    # "p":Lcyanogenmod/app/Profile;
    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->persistIfDirty()V

    .line 595
    return-void
.end method
