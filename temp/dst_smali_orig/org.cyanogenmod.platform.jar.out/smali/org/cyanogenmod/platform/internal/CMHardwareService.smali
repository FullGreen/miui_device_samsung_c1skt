.class public Lorg/cyanogenmod/platform/internal/CMHardwareService;
.super Lcom/android/server/SystemService;
.source "CMHardwareService.java"

# interfaces
.implements Lorg/cyanogenmod/hardware/ThermalUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;,
        Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;,
        Lorg/cyanogenmod/platform/internal/CMHardwareService$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCmHwImpl:Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

.field private final mContext:Landroid/content/Context;

.field private mCurrentThermalState:I

.field private mRemoteCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcyanogenmod/hardware/IThermalListenerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mCmHwImpl:Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    return-object v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/platform/internal/CMHardwareService;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mCurrentThermalState:I

    return v0
.end method

.method static synthetic -get4(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mCurrentThermalState:I

    new-instance v0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;-><init>(Lorg/cyanogenmod/platform/internal/CMHardwareService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mService:Landroid/os/IBinder;

    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->getImpl(Landroid/content/Context;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mCmHwImpl:Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "org.cyanogenmod.hardware"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cmhardware"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->TAG:Ljava/lang/String;

    const-string v1, "CM hardware service started by system server but feature xml not declared. Not publishing binder service!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getImpl(Landroid/content/Context;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;-><init>(Lorg/cyanogenmod/platform/internal/CMHardwareService;)V

    return-object v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cyanogenmod.intent.action.INITIALIZE_CM_HARDWARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mContext:Landroid/content/Context;

    const-string v2, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    invoke-static {}, Lorg/cyanogenmod/hardware/ThermalMonitor;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/cyanogenmod/hardware/ThermalMonitor;->initialize(Lorg/cyanogenmod/hardware/ThermalUpdateCallback;)V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    :cond_0
    return-void
.end method

.method public setThermalState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    iput p1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mCurrentThermalState:I

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    :try_start_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcyanogenmod/hardware/IThermalListenerCallback;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/IThermalListenerCallback;->onThermalChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method
