.class public Lorg/cyanogenmod/platform/internal/ThemeManagerService;
.super Lcom/android/server/SystemService;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;,
        Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;,
        Lorg/cyanogenmod/platform/internal/ThemeManagerService$1;,
        Lorg/cyanogenmod/platform/internal/ThemeManagerService$2;,
        Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;
    }
.end annotation


# static fields
.field private static final CM_SETUPWIZARD_PACKAGE:Ljava/lang/String; = "com.cyanogenmod.setupwizard"

.field private static final DEBUG:Z = false

.field private static final GOOGLE_SETUPWIZARD_PACKAGE:Ljava/lang/String; = "com.google.android.setupwizard"

.field private static final MANAGED_PROVISIONING_PACKAGE:Ljava/lang/String; = "com.android.managedprovisioning"

.field private static final MIN_COMPATIBLE_VERSION:I = 0x15

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcyanogenmod/themes/IThemeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;

.field private mIsThemeApplying:Z

.field private mLastThemeChangeRequestType:I

.field private mLastThemeChangeTime:J

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mProcessingListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcyanogenmod/themes/IThemeProcessingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:I

.field private mResourceProcessingHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;

.field private final mService:Landroid/os/IBinder;

.field private final mThemesToProcessQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperChangedByUs:Z

.field private mWorker:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mClients:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get10(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProgress:I

    return v0
.end method

.method static synthetic -get11(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mResourceProcessingHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;

    return-object v0
.end method

.method static synthetic -get12(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mThemesToProcessQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get14(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mWallpaperChangedByUs:Z

    return v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic -get4(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;

    return-object v0
.end method

.method static synthetic -get5(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mIsThemeApplying:Z

    return v0
.end method

.method static synthetic -get6(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mLastThemeChangeRequestType:I

    return v0
.end method

.method static synthetic -get7(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)J
    .locals 2

    iget-wide v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mLastThemeChangeTime:J

    return-wide v0
.end method

.method static synthetic -get8(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get9(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/platform/internal/ThemeManagerService;I)I
    .locals 0

    iput p1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic -set1(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mWallpaperChangedByUs:Z

    return p1
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->getThemeName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->doApplyDefaultTheme()V

    return-void
.end method

.method static synthetic -wrap2(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Lcyanogenmod/themes/ThemeChangeRequest;Z)V
    .locals 0
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p2, "removePerAppTheme"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->doApplyTheme(Lcyanogenmod/themes/ThemeChangeRequest;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->doRebuildResourceCache()V

    return-void
.end method

.method static synthetic -wrap4(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->postFailedThemeInstallNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->postFinishedProcessing(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "themePkgName"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->sendThemeResourcesCachedBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap7(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Lcyanogenmod/themes/ThemeChangeRequest;J)V
    .locals 0
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p2, "updateTime"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateProvider(Lcyanogenmod/themes/ThemeChangeRequest;J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x0

    .line 215
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 109
    iput-boolean v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mWallpaperChangedByUs:Z

    .line 110
    iput v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mCurrentUserId:I

    .line 112
    iput-boolean v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mIsThemeApplying:Z

    .line 114
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mClients:Landroid/os/RemoteCallbackList;

    .line 117
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 116
    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mThemesToProcessQueue:Ljava/util/ArrayList;

    .line 121
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mLastThemeChangeTime:J

    .line 991
    new-instance v1, Lorg/cyanogenmod/platform/internal/ThemeManagerService$1;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$1;-><init>(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1005
    new-instance v1, Lorg/cyanogenmod/platform/internal/ThemeManagerService$2;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$2;-><init>(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1114
    new-instance v1, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;-><init>(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mService:Landroid/os/IBinder;

    .line 216
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    .line 217
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "ThemeServiceWorker"

    invoke-direct {v1, v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mWorker:Landroid/os/HandlerThread;

    .line 218
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 219
    new-instance v1, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;-><init>(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;

    .line 220
    sget-object v1, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Spawned worker thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ResourceProcessingThread"

    invoke-direct {v0, v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 224
    .local v0, "processingThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 226
    new-instance v1, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;-><init>(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Landroid/os/Looper;)V

    .line 225
    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mResourceProcessingHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;

    .line 229
    invoke-static {}, Lorg/cyanogenmod/internal/util/ThemeUtils;->createThemeDirIfNotExists()V

    .line 230
    invoke-static {}, Lorg/cyanogenmod/internal/util/ThemeUtils;->createFontDirIfNotExists()V

    .line 231
    invoke-static {}, Lorg/cyanogenmod/internal/util/ThemeUtils;->createAlarmDirIfNotExists()V

    .line 232
    invoke-static {}, Lorg/cyanogenmod/internal/util/ThemeUtils;->createNotificationDirIfNotExists()V

    .line 233
    invoke-static {}, Lorg/cyanogenmod/internal/util/ThemeUtils;->createRingtoneDirIfNotExists()V

    .line 234
    invoke-static {}, Lorg/cyanogenmod/internal/util/ThemeUtils;->createIconCacheDirIfNotExists()V

    .line 214
    return-void
.end method

.method private applyBootAnimation(Ljava/lang/String;)Z
    .locals 9
    .param p1, "themePath"    # Ljava/lang/String;

    .prologue
    .line 963
    const/4 v3, 0x0

    .line 965
    .local v3, "success":Z
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 966
    .local v5, "zip":Ljava/util/zip/ZipFile;
    const-string/jumbo v6, "assets/bootanimation/bootanimation.zip"

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 967
    .local v4, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v4, :cond_0

    .line 968
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->clearBootAnimation()V

    .line 969
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 970
    .local v2, "is":Ljava/io/BufferedInputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/data/system/theme"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 971
    const-string/jumbo v7, "bootanimation.zip"

    .line 970
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 972
    .local v0, "bootAnimationPath":Ljava/lang/String;
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v0}, Lorg/cyanogenmod/internal/util/ThemeUtils;->copyAndScaleBootAnimation(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 974
    const/16 v6, 0x1e4

    const/4 v7, -0x1

    const/4 v8, -0x1

    .line 973
    invoke-static {v0, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 976
    .end local v0    # "bootAnimationPath":Ljava/lang/String;
    .end local v2    # "is":Ljava/io/BufferedInputStream;
    :cond_0
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    const/4 v3, 0x1

    .line 982
    .end local v4    # "ze":Ljava/util/zip/ZipEntry;
    .end local v5    # "zip":Ljava/util/zip/ZipFile;
    :goto_0
    return v3

    .line 978
    :catch_0
    move-exception v1

    .line 979
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to load boot animation for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private broadcastThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;J)V
    .locals 6
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p2, "updateTime"    # J

    .prologue
    .line 943
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemeComponentsMap()Ljava/util/Map;

    move-result-object v0

    .line 944
    .local v0, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    .line 946
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "org.cyanogenmod.intent.action.THEME_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 947
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 948
    .local v1, "componentsArrayList":Ljava/util/ArrayList;
    const-string/jumbo v3, "components"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 949
    const-string/jumbo v3, "request_type"

    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getReqeustType()Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    move-result-object v4

    invoke-virtual {v4}, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->ordinal()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 950
    const-string/jumbo v3, "update_time"

    invoke-virtual {v2, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 951
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 942
    return-void
.end method

.method private clearBootAnimation()V
    .locals 3

    .prologue
    .line 986
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/data/system/theme"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "bootanimation.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 987
    .local v0, "anim":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 988
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 985
    :cond_0
    return-void
.end method

.method private static createBuilderFrom(Landroid/content/res/Configuration;Lcyanogenmod/themes/ThemeChangeRequest;Ljava/lang/String;Z)Landroid/content/res/ThemeConfig$Builder;
    .locals 6
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "removePerAppThemes"    # Z

    .prologue
    .line 793
    new-instance v3, Landroid/content/res/ThemeConfig$Builder;

    iget-object v4, p0, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-direct {v3, v4}, Landroid/content/res/ThemeConfig$Builder;-><init>(Landroid/content/res/ThemeConfig;)V

    .line 795
    .local v3, "builder":Landroid/content/res/ThemeConfig$Builder;
    if-eqz p3, :cond_0

    iget-object v4, p0, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-static {v3, v4}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->removePerAppThemesFromConfig(Landroid/content/res/ThemeConfig$Builder;Landroid/content/res/ThemeConfig;)V

    .line 797
    :cond_0
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getIconsThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 798
    if-nez p2, :cond_8

    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getIconsThemePackageName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/ThemeConfig$Builder;->defaultIcon(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 801
    :cond_1
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getOverlayThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 802
    if-nez p2, :cond_9

    .line 803
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getOverlayThemePackageName()Ljava/lang/String;

    move-result-object v4

    .line 802
    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/res/ThemeConfig$Builder;->defaultOverlay(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 806
    :cond_2
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getFontThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 807
    if-nez p2, :cond_a

    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getFontThemePackageName()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Landroid/content/res/ThemeConfig$Builder;->defaultFont(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 810
    :cond_3
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getStatusBarThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 811
    const-string/jumbo v5, "com.android.systemui"

    if-nez p2, :cond_b

    .line 812
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getStatusBarThemePackageName()Ljava/lang/String;

    move-result-object v4

    .line 811
    :goto_3
    invoke-virtual {v3, v5, v4}, Landroid/content/res/ThemeConfig$Builder;->overlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 815
    :cond_4
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getNavBarThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 816
    const-string/jumbo v4, "com.android.systemui.navbar"

    if-nez p2, :cond_5

    .line 817
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getNavBarThemePackageName()Ljava/lang/String;

    move-result-object p2

    .line 816
    .end local p2    # "pkgName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3, v4, p2}, Landroid/content/res/ThemeConfig$Builder;->overlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 821
    :cond_6
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getPerAppOverlays()Ljava/util/Map;

    move-result-object v0

    .line 822
    .local v0, "appOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "appPkgName$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 823
    .local v1, "appPkgName":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 824
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/content/res/ThemeConfig$Builder;->overlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    goto :goto_4

    .end local v0    # "appOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "appPkgName":Ljava/lang/String;
    .end local v2    # "appPkgName$iterator":Ljava/util/Iterator;
    .restart local p2    # "pkgName":Ljava/lang/String;
    :cond_8
    move-object v4, p2

    .line 798
    goto :goto_0

    :cond_9
    move-object v4, p2

    .line 803
    goto :goto_1

    :cond_a
    move-object v4, p2

    .line 807
    goto :goto_2

    :cond_b
    move-object v4, p2

    .line 812
    goto :goto_3

    .line 828
    .end local p2    # "pkgName":Ljava/lang/String;
    .restart local v0    # "appOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "appPkgName$iterator":Ljava/util/Iterator;
    :cond_c
    return-object v3
.end method

.method private doApplyDefaultTheme()V
    .locals 11

    .prologue
    .line 473
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 475
    .local v7, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v8, "default_theme_package"

    .line 474
    invoke-static {v7, v8}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 476
    .local v5, "defaultThemePkg":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 478
    const-string/jumbo v8, "default_theme_components"

    .line 477
    invoke-static {v7, v8}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, "defaultThemeComponents":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 481
    invoke-static {}, Lorg/cyanogenmod/internal/util/ThemeUtils;->getAllComponents()Ljava/util/List;

    move-result-object v3

    .line 486
    .local v3, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    new-instance v0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    invoke-direct {v0}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;-><init>()V

    .line 487
    .local v0, "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "component$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 488
    .local v1, "component":Ljava/lang/String;
    invoke-virtual {v0, v1, v5}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    goto :goto_1

    .line 483
    .end local v0    # "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .end local v1    # "component":Ljava/lang/String;
    .end local v2    # "component$iterator":Ljava/util/Iterator;
    .end local v3    # "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 484
    const-string/jumbo v8, "\\|"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 483
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v3    # "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 491
    .restart local v0    # "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .restart local v2    # "component$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_0
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mService:Landroid/os/IBinder;

    check-cast v8, Lcyanogenmod/themes/IThemeService;

    invoke-virtual {v0}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->build()Lcyanogenmod/themes/ThemeChangeRequest;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Lcyanogenmod/themes/IThemeService;->requestThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v0    # "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .end local v2    # "component$iterator":Ljava/util/Iterator;
    .end local v3    # "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "defaultThemeComponents":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 492
    .restart local v0    # "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .restart local v2    # "component$iterator":Ljava/util/Iterator;
    .restart local v3    # "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "defaultThemeComponents":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 493
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v8, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Unable to set default theme"

    invoke-static {v8, v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private doApplyTheme(Lcyanogenmod/themes/ThemeChangeRequest;Z)V
    .locals 8
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p2, "removePerAppTheme"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 388
    monitor-enter p0

    .line 389
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 392
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getNumChangesRequested()I

    move-result v2

    if-nez v2, :cond_1

    .line 393
    :cond_0
    const-wide/16 v2, 0x0

    invoke-direct {p0, v6, p1, v2, v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->postFinish(ZLcyanogenmod/themes/ThemeChangeRequest;J)V

    .line 394
    return-void

    .line 388
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 396
    :cond_1
    iput-boolean v6, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mIsThemeApplying:Z

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mLastThemeChangeTime:J

    .line 398
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getReqeustType()Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    move-result-object v2

    invoke-virtual {v2}, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->ordinal()I

    move-result v2

    iput v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mLastThemeChangeRequestType:I

    .line 400
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 403
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getNumChangesRequested()I

    move-result v2

    const/16 v3, 0x4b

    div-int v1, v3, v2

    .line 405
    .local v1, "progressIncrement":I
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getIconsThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 406
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getIconsThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateIcons(Ljava/lang/String;)Z

    .line 407
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 410
    :cond_2
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getWallpaperThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 411
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getWallpaperThemePackageName()Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getWallpaperId()J

    move-result-wide v4

    .line 411
    invoke-direct {p0, v2, v4, v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateWallpaper(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 413
    iput-boolean v6, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mWallpaperChangedByUs:Z

    .line 415
    :cond_3
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 418
    :cond_4
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getLockWallpaperThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 419
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getLockWallpaperThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateLockscreen(Ljava/lang/String;)Z

    .line 420
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 423
    :cond_5
    invoke-static {v7}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 424
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getNotificationThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 425
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getNotificationThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateNotifications(Ljava/lang/String;)Z

    .line 426
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 429
    :cond_6
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getAlarmThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 430
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getAlarmThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateAlarms(Ljava/lang/String;)Z

    .line 431
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 434
    :cond_7
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getRingtoneThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 435
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getRingtoneThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateRingtones(Ljava/lang/String;)Z

    .line 436
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 438
    :cond_8
    invoke-static {v6}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 440
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getBootanimationThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 441
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getBootanimationThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateBootAnim(Ljava/lang/String;)Z

    .line 442
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 445
    :cond_9
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getFontThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 446
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getFontThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateFonts(Ljava/lang/String;)Z

    .line 447
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 450
    :cond_a
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getLiveLockScreenThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 451
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getLiveLockScreenThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateLiveLockScreen(Ljava/lang/String;)Z

    .line 452
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->incrementProgress(I)V

    .line 456
    :cond_b
    :try_start_1
    iget-wide v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mLastThemeChangeTime:J

    invoke-direct {p0, p1, v2, v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateProvider(Lcyanogenmod/themes/ThemeChangeRequest;J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 462
    :goto_0
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->shouldUpdateConfiguration(Lcyanogenmod/themes/ThemeChangeRequest;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 463
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateConfiguration(Lcyanogenmod/themes/ThemeChangeRequest;Z)Z

    .line 466
    :cond_c
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->killLaunchers(Lcyanogenmod/themes/ThemeChangeRequest;)V

    .line 468
    iget-wide v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mLastThemeChangeTime:J

    invoke-direct {p0, v6, p1, v2, v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->postFinish(ZLcyanogenmod/themes/ThemeChangeRequest;J)V

    .line 469
    iput-boolean v7, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mIsThemeApplying:Z

    .line 387
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Not updating the theme provider since it is unavailable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doRebuildResourceCache()V
    .locals 2

    .prologue
    .line 499
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/resource-cache/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 500
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->processInstalledThemes()V

    .line 498
    return-void
.end method

.method private static getDefaultThemePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1097
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1098
    const-string/jumbo v4, "default_theme_package"

    .line 1097
    invoke-static {v3, v4}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, "defaultThemePkg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1100
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1102
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1103
    return-object v0

    .line 1105
    :catch_0
    move-exception v1

    .line 1107
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Default theme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1111
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const-string/jumbo v3, "system"

    return-object v3
.end method

.method private getThemeName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v1, 0x0

    .line 1078
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->themeInfo:Landroid/content/pm/ThemeInfo;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->themeInfo:Landroid/content/pm/ThemeInfo;

    iget-object v0, v0, Landroid/content/pm/ThemeInfo;->name:Ljava/lang/String;

    return-object v0

    .line 1080
    :cond_0
    iget-boolean v0, p1, Landroid/content/pm/PackageInfo;->isLegacyIconPackApk:Z

    if-eqz v0, :cond_1

    .line 1081
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    return-object v0

    .line 1084
    :cond_1
    return-object v1
.end method

.method private handlesThemeChanges(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 884
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 885
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 886
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 887
    const/4 v2, 0x1

    return v2

    .line 891
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_1
    return v3
.end method

.method private incrementProgress(I)V
    .locals 2
    .param p1, "increment"    # I

    .prologue
    const/16 v1, 0x64

    .line 955
    monitor-enter p0

    .line 956
    :try_start_0
    iget v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProgress:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProgress:I

    .line 957
    iget v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProgress:I

    if-le v0, v1, :cond_0

    const/16 v0, 0x64

    iput v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 959
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->postProgress()V

    .line 954
    return-void

    .line 955
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isSetupActivity(Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 878
    const-string/jumbo v0, "com.google.android.setupwizard"

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 879
    const-string/jumbo v0, "com.android.managedprovisioning"

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 878
    if-nez v0, :cond_0

    .line 880
    const-string/jumbo v0, "com.cyanogenmod.setupwizard"

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 878
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isThemeApiUpToDate()Z
    .locals 6

    .prologue
    .line 363
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 364
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 367
    .local v1, "recordedApiLevel":I
    :try_start_0
    const-string/jumbo v3, "theme_prev_boot_api_level"

    .line 366
    invoke-static {v2, v3}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 372
    :goto_0
    sget-object v3, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Prev api level was: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 373
    const-string/jumbo v5, ", api is now: "

    .line 372
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 373
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 372
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;
    const/4 v1, -0x1

    .line 370
    sget-object v3, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Previous api level not found. First time booting?"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    .end local v0    # "e":Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isThemeCompatibleWithUpgradedApi(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 350
    .local v0, "compatible":Z
    :try_start_0
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 351
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    sget-object v3, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Comparing theme target: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 352
    const-string/jumbo v5, "to "

    .line 351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 352
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    const/4 v0, 0x1

    .line 357
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return v0

    .line 353
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 354
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get package info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private killLaunchers(Lcyanogenmod/themes/ThemeChangeRequest;)V
    .locals 12
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;

    .prologue
    const/4 v11, 0x0

    .line 846
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getOverlayThemePackageName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 847
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getIconsThemePackageName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 848
    return-void

    .line 852
    :cond_0
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 854
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 855
    .local v2, "homeIntent":Landroid/content/Intent;
    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 856
    const-string/jumbo v8, "android.intent.category.HOME"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 858
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v2, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 859
    .local v5, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    .line 860
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "org.cyanogenmod.intent.action.THEME_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v8, v9, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 861
    .local v7, "themeChangeInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 862
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_1

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_1

    .line 863
    invoke-direct {p0, v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->isSetupActivity(Landroid/content/pm/ResolveInfo;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 864
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 863
    invoke-direct {p0, v8, v7}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->handlesThemeChanges(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 865
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 866
    .local v6, "pkgToStop":Ljava/lang/String;
    sget-object v8, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Force stopping "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " for theme change"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :try_start_0
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 869
    :catch_0
    move-exception v1

    .line 870
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Unable to force stop package, did you forget platform signature?"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 845
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "pkgToStop":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private postFailedThemeInstallNotification(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1063
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1064
    .local v0, "nm":Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1068
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    const v4, 0x3f06004b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1064
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1070
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    const v4, 0x3f06004c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1069
    new-array v4, v6, [Ljava/lang/Object;

    .line 1070
    aput-object p1, v4, v5

    .line 1069
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1064
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1071
    const v3, 0x1080078

    .line 1064
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1072
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1064
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1074
    .local v1, "notice":Landroid/app/Notification;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1061
    return-void
.end method

.method private postFinish(ZLcyanogenmod/themes/ThemeChangeRequest;J)V
    .locals 7
    .param p1, "isSuccess"    # Z
    .param p2, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p3, "updateTime"    # J

    .prologue
    const/4 v6, 0x0

    .line 908
    monitor-enter p0

    .line 909
    const/4 v4, 0x0

    :try_start_0
    iput v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 912
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 913
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 914
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcyanogenmod/themes/IThemeChangeListener;

    .line 916
    .local v3, "listener":Lcyanogenmod/themes/IThemeChangeListener;
    :try_start_1
    invoke-interface {v3, p1}, Lcyanogenmod/themes/IThemeChangeListener;->onFinish(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 913
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 908
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "listener":Lcyanogenmod/themes/IThemeChangeListener;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 917
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "listener":Lcyanogenmod/themes/IThemeChangeListener;
    :catch_0
    move-exception v1

    .line 918
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to post progress to client listener"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 921
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Lcyanogenmod/themes/IThemeChangeListener;
    :cond_0
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 924
    if-eqz p1, :cond_1

    .line 925
    invoke-direct {p0, p2, p3, p4}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->broadcastThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;J)V

    .line 907
    :cond_1
    return-void
.end method

.method private postFinishedProcessing(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 930
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 931
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 932
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcyanogenmod/themes/IThemeProcessingListener;

    .line 934
    .local v3, "listener":Lcyanogenmod/themes/IThemeProcessingListener;
    :try_start_0
    invoke-interface {v3, p1}, Lcyanogenmod/themes/IThemeProcessingListener;->onFinishedProcessing(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 935
    :catch_0
    move-exception v1

    .line 936
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to post progress to listener"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 939
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Lcyanogenmod/themes/IThemeProcessingListener;
    :cond_0
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 929
    return-void
.end method

.method private postProgress()V
    .locals 6

    .prologue
    .line 895
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 896
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 897
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mClients:Landroid/os/RemoteCallbackList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcyanogenmod/themes/IThemeChangeListener;

    .line 899
    .local v3, "listener":Lcyanogenmod/themes/IThemeChangeListener;
    :try_start_0
    iget v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mProgress:I

    invoke-interface {v3, v4}, Lcyanogenmod/themes/IThemeChangeListener;->onProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 900
    :catch_0
    move-exception v1

    .line 901
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to post progress to client listener"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 904
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Lcyanogenmod/themes/IThemeChangeListener;
    :cond_0
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 894
    return-void
.end method

.method private processInstalledThemes()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 1028
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->getDefaultThemePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    .local v0, "defaultTheme":Ljava/lang/String;
    const-string/jumbo v5, "system"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1032
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;

    invoke-virtual {v5, v8, v7, v7, v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1035
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mResourceProcessingHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;

    invoke-virtual {v5, v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1038
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 1039
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1040
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1041
    iget-boolean v5, v1, Landroid/content/pm/PackageInfo;->isThemeApk:Z

    if-nez v5, :cond_2

    iget-boolean v5, v1, Landroid/content/pm/PackageInfo;->isLegacyIconPackApk:Z

    .line 1040
    if-eqz v5, :cond_1

    .line 1042
    :cond_2
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;

    .line 1044
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1042
    invoke-virtual {v5, v8, v7, v7, v6}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1045
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mResourceProcessingHandler:Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;

    invoke-virtual {v5, v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1027
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_3
    return-void
.end method

.method private registerAppsFailureReceiver()V
    .locals 3

    .prologue
    .line 266
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 267
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "cyanogenmod.intent.action.APP_FAILURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v1, "org.cyanogenmod.intent.action.THEME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;

    invoke-direct {v2}, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    return-void
.end method

.method private removeObsoleteThemeOverlayIfExists()V
    .locals 15

    .prologue
    .line 274
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 275
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v3, 0x0

    .line 277
    .local v3, "config":Landroid/content/res/ThemeConfig;
    if-eqz v0, :cond_0

    .line 278
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget-object v3, v12, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    .line 286
    .end local v3    # "config":Landroid/content/res/ThemeConfig;
    :goto_0
    if-nez v3, :cond_1

    return-void

    .line 280
    .restart local v3    # "config":Landroid/content/res/ThemeConfig;
    :cond_0
    sget-object v12, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "ActivityManager getDefault() returned null, cannot remove obsolete theme"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v7

    .line 284
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v12, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Failed to get the theme config "

    invoke-static {v12, v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 290
    .end local v3    # "config":Landroid/content/res/ThemeConfig;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 291
    .local v4, "currentThemeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v12, "mods_status_bar"

    invoke-virtual {v3}, Landroid/content/res/ThemeConfig;->getOverlayForStatusBar()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string/jumbo v12, "mods_navigation_bar"

    .line 293
    invoke-virtual {v3}, Landroid/content/res/ThemeConfig;->getOverlayForNavBar()Ljava/lang/String;

    move-result-object v13

    .line 292
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string/jumbo v12, "mods_overlays"

    invoke-virtual {v3}, Landroid/content/res/ThemeConfig;->getOverlayPkgName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v12, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lorg/cyanogenmod/internal/util/ThemeUtils;->getDefaultComponents(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    .line 300
    .local v6, "defaults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    invoke-direct {v1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;-><init>()V

    .line 301
    .local v1, "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 302
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 303
    .local v2, "component":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 304
    .local v10, "pkgName":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 306
    .local v5, "defaultPkg":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 307
    sget-object v12, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Default package is null, skipping "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 312
    :cond_3
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 313
    sget-object v12, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Current overlay theme is same as default. Not doing anything for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 319
    :cond_4
    const-string/jumbo v12, "system"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 320
    sget-object v12, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Current overlay theme for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 321
    const-string/jumbo v14, " was system. no need to unapply"

    .line 320
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 325
    :cond_5
    invoke-direct {p0, v10}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->isThemeCompatibleWithUpgradedApi(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 326
    sget-object v12, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "is incompatible with latest theme api for component "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 327
    const-string/jumbo v14, ", Applying "

    .line 326
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v1, v2, v10}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    goto/16 :goto_1

    .line 333
    .end local v2    # "component":Ljava/lang/String;
    .end local v5    # "defaultPkg":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->build()Lcyanogenmod/themes/ThemeChangeRequest;

    move-result-object v11

    .line 334
    .local v11, "request":Lcyanogenmod/themes/ThemeChangeRequest;
    invoke-virtual {v11}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemeComponentsMap()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    .line 336
    :try_start_1
    iget-object v12, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mService:Landroid/os/IBinder;

    check-cast v12, Lcyanogenmod/themes/IThemeService;

    const/4 v13, 0x1

    invoke-interface {v12, v11, v13}, Lcyanogenmod/themes/IThemeService;->requestThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    :goto_2
    return-void

    .line 341
    :cond_7
    sget-object v12, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Current theme is compatible with the system. Not unapplying anything"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 337
    :catch_1
    move-exception v7

    .restart local v7    # "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private static removePerAppThemesFromConfig(Landroid/content/res/ThemeConfig$Builder;Landroid/content/res/ThemeConfig;)V
    .locals 5
    .param p0, "builder"    # Landroid/content/res/ThemeConfig$Builder;
    .param p1, "themeConfig"    # Landroid/content/res/ThemeConfig;

    .prologue
    const/4 v4, 0x0

    .line 833
    if-eqz p1, :cond_1

    .line 834
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getAppThemes()Ljava/util/Map;

    move-result-object v2

    .line 835
    .local v2, "themes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "appPkgName$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 836
    .local v0, "appPkgName":Ljava/lang/String;
    invoke-static {v0}, Lorg/cyanogenmod/internal/util/ThemeUtils;->isPerAppThemeComponent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    invoke-virtual {p0, v0, v4}, Landroid/content/res/ThemeConfig$Builder;->overlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    goto :goto_0

    .line 832
    .end local v0    # "appPkgName":Ljava/lang/String;
    .end local v1    # "appPkgName$iterator":Ljava/util/Iterator;
    .end local v2    # "themes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    :cond_1
    return-void
.end method

.method private sendThemeResourcesCachedBroadcast(Ljava/lang/String;I)V
    .locals 3
    .param p1, "themePkgName"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .prologue
    .line 1051
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.THEME_RESOURCES_CACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1052
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1053
    const-string/jumbo v1, "android.intent.extra.RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1054
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1050
    return-void
.end method

.method private setCustomLockScreenWallpaper(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 690
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 692
    .local v2, "wm":Landroid/app/WallpaperManager;
    :try_start_0
    const-string/jumbo v3, "system"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 693
    :cond_0
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->clearKeyguardWallpaper()V

    .line 705
    :cond_1
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 695
    :cond_2
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lorg/cyanogenmod/internal/util/ImageUtils;->getCroppedKeyguardStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 696
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 697
    invoke-virtual {v2, v1}, Landroid/app/WallpaperManager;->setKeyguardStream(Ljava/io/InputStream;)V

    .line 698
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 701
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "There was an error setting lockscreen wp for pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
    const/4 v3, 0x0

    return v3
.end method

.method private shouldUpdateConfiguration(Lcyanogenmod/themes/ThemeChangeRequest;)Z
    .locals 3
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 783
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getOverlayThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 784
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getFontThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 783
    :cond_0
    :goto_0
    return v0

    .line 785
    :cond_1
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getIconsThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 786
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getStatusBarThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 787
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getNavBarThemePackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 788
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getPerAppOverlays()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private updateAlarms(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 604
    sget-object v0, Lorg/cyanogenmod/internal/util/ThemeUtils;->SYSTEM_THEME_ALARM_PATH:Ljava/lang/String;

    const-string/jumbo v1, "alarms"

    .line 605
    const/4 v2, 0x4

    .line 604
    invoke-direct {p0, v0, v1, v2, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateAudible(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateAudible(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 14
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "assetPath"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 620
    iget-object v11, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11, p1}, Lorg/cyanogenmod/internal/util/ThemeUtils;->clearAudibles(Landroid/content/Context;Ljava/lang/String;)V

    .line 621
    const-string/jumbo v11, "system"

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 622
    iget-object v11, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    move/from16 v0, p3

    invoke-static {v11, v0}, Lorg/cyanogenmod/internal/util/ThemeUtils;->setDefaultAudible(Landroid/content/Context;I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 623
    sget-object v11, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "There was an error installing the default audio file"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v11, 0x0

    return v11

    .line 626
    :cond_0
    const/4 v11, 0x1

    return v11

    .line 629
    :cond_1
    const/4 v9, 0x0

    .line 631
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v11, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v11, v0, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 641
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v11, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    const/4 v12, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v11, v0, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    .line 642
    .local v10, "themeCtx":Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 643
    .local v3, "assetManager":Landroid/content/res/AssetManager;
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 648
    .local v2, "assetList":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v11, v2

    if-nez v11, :cond_3

    .line 649
    :cond_2
    sget-object v11, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Could not find any audio assets"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v11, 0x0

    return v11

    .line 632
    .end local v2    # "assetList":[Ljava/lang/String;
    .end local v3    # "assetManager":Landroid/content/res/AssetManager;
    .end local v10    # "themeCtx":Landroid/content/Context;
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v4

    .line 633
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v11, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to update audible "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    const/4 v11, 0x0

    return v11

    .line 644
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v5

    .line 645
    .local v5, "e":Ljava/lang/Exception;
    sget-object v11, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "There was an error getting assets for pkg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    const/4 v11, 0x0

    return v11

    .line 655
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "assetList":[Ljava/lang/String;
    .restart local v3    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v10    # "themeCtx":Landroid/content/Context;
    :cond_3
    const/4 v11, 0x0

    aget-object v1, v2, v11

    .line 656
    .local v1, "asset":Ljava/lang/String;
    invoke-static {v1}, Lorg/cyanogenmod/internal/util/ThemeUtils;->isValidAudible(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x0

    return v11

    .line 658
    :cond_4
    const/4 v6, 0x0

    .line 659
    .local v6, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 661
    .local v7, "os":Ljava/io/OutputStream;
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "file:///android_asset/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 662
    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    .line 661
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/cyanogenmod/internal/util/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 663
    .local v6, "is":Ljava/io/InputStream;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    .local v8, "outFile":Ljava/io/File;
    invoke-static {v6, v8}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 666
    const/16 v11, 0x1e7

    const/4 v12, -0x1

    const/4 v13, -0x1

    .line 665
    invoke-static {v8, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 667
    iget-object v11, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v9, Landroid/content/pm/PackageInfo;->themeInfo:Landroid/content/pm/ThemeInfo;

    iget-object v12, v12, Landroid/content/pm/ThemeInfo;->name:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v11, v8, v0, v12}, Lorg/cyanogenmod/internal/util/ThemeUtils;->setAudible(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 672
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 673
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 675
    const/4 v11, 0x1

    return v11

    .line 668
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v8    # "outFile":Ljava/io/File;
    :catch_2
    move-exception v5

    .line 669
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v11, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "There was an error installing the new audio file for pkg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 670
    const/4 v11, 0x0

    .line 672
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 673
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 670
    return v11

    .line 671
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 672
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 673
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 671
    throw v11
.end method

.method private updateBootAnim(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 588
    const-string/jumbo v2, "system"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->clearBootAnimation()V

    .line 590
    return v5

    .line 594
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 595
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->applyBootAnimation(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    return v5

    .line 596
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 597
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Changing boot animation failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    return v4
.end method

.method private updateConfiguration(Landroid/content/res/ThemeConfig;)Z
    .locals 6
    .param p1, "themeConfig"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 765
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 766
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 767
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 769
    .local v4, "token":J
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 771
    .local v1, "config":Landroid/content/res/Configuration;
    iput-object p1, v1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    .line 772
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v4    # "token":J
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 773
    .restart local v4    # "token":J
    :catch_0
    move-exception v2

    .line 774
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 776
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 774
    return v3

    .line 775
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 776
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 775
    throw v3
.end method

.method private updateConfiguration(Lcyanogenmod/themes/ThemeChangeRequest;Z)Z
    .locals 8
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p2, "removePerAppThemes"    # Z

    .prologue
    .line 744
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 745
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 746
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 748
    .local v6, "token":J
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 749
    .local v1, "config":Landroid/content/res/Configuration;
    const/4 v5, 0x0

    invoke-static {v1, p1, v5, p2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->createBuilderFrom(Landroid/content/res/Configuration;Lcyanogenmod/themes/ThemeChangeRequest;Ljava/lang/String;Z)Landroid/content/res/ThemeConfig$Builder;

    move-result-object v4

    .line 751
    .local v4, "themeBuilder":Landroid/content/res/ThemeConfig$Builder;
    invoke-virtual {v4}, Landroid/content/res/ThemeConfig$Builder;->build()Landroid/content/res/ThemeConfig;

    move-result-object v3

    .line 753
    .local v3, "newConfig":Landroid/content/res/ThemeConfig;
    iput-object v3, v1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    .line 754
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 761
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v3    # "newConfig":Landroid/content/res/ThemeConfig;
    .end local v4    # "themeBuilder":Landroid/content/res/ThemeConfig$Builder;
    .end local v6    # "token":J
    :cond_0
    const/4 v5, 0x1

    return v5

    .line 755
    .restart local v6    # "token":J
    :catch_0
    move-exception v2

    .line 756
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    .line 758
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 756
    return v5

    .line 757
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    .line 758
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 757
    throw v5
.end method

.method private updateFonts(Ljava/lang/String;)Z
    .locals 14
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 542
    new-instance v8, Ljava/io/File;

    sget-object v10, Lorg/cyanogenmod/internal/util/ThemeUtils;->SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 544
    const-string/jumbo v8, "system"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 549
    :try_start_0
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    const/4 v10, 0x2

    invoke-virtual {v8, p1, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 550
    .local v7, "themeCtx":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 551
    .local v2, "assetManager":Landroid/content/res/AssetManager;
    const-string/jumbo v8, "fonts"

    invoke-virtual {v2, v8}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 556
    .local v1, "assetList":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v8, v1

    if-nez v8, :cond_1

    .line 557
    :cond_0
    sget-object v8, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Could not find any font assets"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return v9

    .line 552
    .end local v1    # "assetList":[Ljava/lang/String;
    .end local v2    # "assetManager":Landroid/content/res/AssetManager;
    .end local v7    # "themeCtx":Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 553
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "There was an error getting assets  for pkg "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    return v9

    .line 562
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "assetList":[Ljava/lang/String;
    .restart local v2    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v7    # "themeCtx":Landroid/content/Context;
    :cond_1
    array-length v10, v1

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v0, v1, v8

    .line 563
    .local v0, "asset":Ljava/lang/String;
    const/4 v4, 0x0

    .line 564
    .local v4, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 567
    .local v5, "os":Ljava/io/OutputStream;
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "file:///android_asset/fonts/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 566
    invoke-static {v7, v11}, Lorg/cyanogenmod/internal/util/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 568
    .local v4, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/File;

    sget-object v11, Lorg/cyanogenmod/internal/util/ThemeUtils;->SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

    invoke-direct {v6, v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    .local v6, "outFile":Ljava/io/File;
    invoke-static {v4, v6}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 571
    const/16 v11, 0x1e7

    const/4 v12, -0x1

    const/4 v13, -0x1

    .line 570
    invoke-static {v6, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 577
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 562
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 572
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "outFile":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 573
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v8, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "There was an error installing the new fonts for pkg "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 576
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 577
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 574
    return v9

    .line 575
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 576
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 577
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 575
    throw v8

    .line 583
    .end local v0    # "asset":Ljava/lang/String;
    .end local v1    # "assetList":[Ljava/lang/String;
    .end local v2    # "assetManager":Landroid/content/res/AssetManager;
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v7    # "themeCtx":Landroid/content/Context;
    :cond_2
    const-string/jumbo v8, "sys.refresh_theme"

    const-string/jumbo v9, "1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const/4 v8, 0x1

    return v8
.end method

.method private updateIcons(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 526
    invoke-static {}, Lorg/cyanogenmod/internal/util/ThemeUtils;->clearIconCache()V

    .line 528
    :try_start_0
    const-string/jumbo v1, "system"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->updateIconMaps(Ljava/lang/String;)V

    .line 537
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 531
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->updateIconMaps(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Changing icons failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    const/4 v1, 0x0

    return v1
.end method

.method private updateLiveLockScreen(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 739
    const/4 v0, 0x1

    return v0
.end method

.method private updateLockscreen(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 680
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->setCustomLockScreenWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 682
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 683
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.KEYGUARD_WALLPAPER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 684
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 683
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 686
    :cond_0
    return v0
.end method

.method private updateNotifications(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 609
    sget-object v0, Lorg/cyanogenmod/internal/util/ThemeUtils;->SYSTEM_THEME_NOTIFICATION_PATH:Ljava/lang/String;

    const-string/jumbo v1, "notifications"

    .line 610
    const/4 v2, 0x2

    .line 609
    invoke-direct {p0, v0, v1, v2, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateAudible(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateProvider(Lcyanogenmod/themes/ThemeChangeRequest;J)V
    .locals 12
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p2, "updateTime"    # J

    .prologue
    const/4 v10, 0x0

    .line 504
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 505
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "update_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 506
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemeComponentsMap()Ljava/util/Map;

    move-result-object v2

    .line 507
    .local v2, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "component$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 508
    .local v0, "component":Ljava/lang/String;
    const-string/jumbo v7, "value"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string/jumbo v5, "key=?"

    .line 510
    .local v5, "where":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {v0}, Lcyanogenmod/providers/ThemesContract$MixnMatchColumns;->componentToMixNMatchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v10

    .line 511
    .local v3, "selectionArgs":[Ljava/lang/String;
    aget-object v6, v3, v10

    if-eqz v6, :cond_0

    .line 516
    const-string/jumbo v6, "mods_homescreen"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 517
    const-string/jumbo v6, "component_id"

    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getWallpaperId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 520
    :cond_1
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcyanogenmod/providers/ThemesContract$MixnMatchColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v4, v5, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 503
    .end local v0    # "component":Ljava/lang/String;
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    .end local v5    # "where":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private updateRingtones(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 614
    sget-object v0, Lorg/cyanogenmod/internal/util/ThemeUtils;->SYSTEM_THEME_RINGTONE_PATH:Ljava/lang/String;

    const-string/jumbo v1, "ringtones"

    .line 615
    const/4 v2, 0x1

    .line 614
    invoke-direct {p0, v0, v1, v2, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateAudible(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateThemeApi()V
    .locals 4

    .prologue
    .line 379
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 381
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "theme_prev_boot_api_level"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 380
    invoke-static {v0, v2, v3}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 382
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 383
    sget-object v2, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to store latest API level to secure settings"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    return-void
.end method

.method private updateWallpaper(Ljava/lang/String;J)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    const/4 v5, 0x0

    .line 709
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 710
    .local v3, "wm":Landroid/app/WallpaperManager;
    const-string/jumbo v4, "system"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 712
    :try_start_0
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, "e":Ljava/io/IOException;
    return v5

    .line 716
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 718
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v4}, Landroid/app/WallpaperManager;->clear(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 719
    :catch_1
    move-exception v0

    .line 720
    .restart local v0    # "e":Ljava/io/IOException;
    return v5

    .line 723
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x0

    .line 725
    .local v2, "in":Ljava/io/InputStream;
    :try_start_2
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v4}, Lorg/cyanogenmod/internal/util/ImageUtils;->getCroppedWallpaperStream(Ljava/lang/String;JLandroid/content/Context;)Ljava/io/InputStream;

    move-result-object v2

    .line 726
    .local v2, "in":Ljava/io/InputStream;
    if-eqz v2, :cond_2

    .line 727
    invoke-virtual {v3, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 731
    :cond_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 728
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 731
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 729
    return v5

    .line 730
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 731
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 730
    throw v4
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 253
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 254
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->isThemeApiUpToDate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    sget-object v0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "The system has been upgraded to a theme new api, checking if currently set theme is compatible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->removeObsoleteThemeOverlayIfExists()V

    .line 258
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->updateThemeApi()V

    .line 260
    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->registerAppsFailureReceiver()V

    .line 261
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->processInstalledThemes()V

    .line 251
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 239
    const-string/jumbo v1, "cmthemes"

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v1, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 241
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 244
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 245
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->mPM:Landroid/content/pm/PackageManager;

    .line 238
    return-void
.end method