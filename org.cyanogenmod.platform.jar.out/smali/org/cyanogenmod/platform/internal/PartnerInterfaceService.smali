.class public Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;
.super Lcom/android/server/SystemService;
.source "PartnerInterfaceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CMSettingsService"


# instance fields
.field private mAudioService:Landroid/media/IAudioService;

.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private final mService:Landroid/os/IBinder;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;IJ)Z
    .locals 2
    .param p1, "mode"    # I
    .param p2, "durationMillis"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->setZenModeInternal(IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->enforceCaptureHotwordPermission()V

    return-void
.end method

.method static synthetic -wrap2(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->enforceModifyNetworkSettingsPermission()V

    return-void
.end method

.method static synthetic -wrap3(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->enforceModifySoundSettingsPermission()V

    return-void
.end method

.method static synthetic -wrap4(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->enforceShutdownPermission()V

    return-void
.end method

.method static synthetic -wrap5(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->setAirplaneModeEnabledInternal(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->setMobileDataEnabledInternal(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V
    .locals 0
    .param p1, "reboot"    # Z

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->shutdownInternal(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;-><init>(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mService:Landroid/os/IBinder;

    .line 62
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    .line 63
    const-string/jumbo v0, "cmpartnerinterface"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 60
    return-void
.end method

.method private createZenModeConditionUri(J)Landroid/net/Uri;
    .locals 9
    .param p1, "durationMillis"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 253
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    cmp-long v2, p1, v6

    if-gez v2, :cond_1

    .line 254
    :cond_0
    return-object v4

    .line 256
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v0, v2, p1

    .line 258
    .local v0, "endTimeMillis":J
    cmp-long v2, v0, v6

    if-gez v2, :cond_2

    .line 259
    const-string/jumbo v2, "CMSettingsService"

    const-string/jumbo v3, "createZenModeCondition duration exceeds the max numerical limit. Defaulting to Indefinite"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-object v4

    .line 262
    :cond_2
    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(J)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private enforceCaptureHotwordPermission()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CAPTURE_AUDIO_HOTWORD"

    .line 93
    const-string/jumbo v2, "You do not have permission to query the hotword input package name."

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private enforceModifyNetworkSettingsPermission()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "cyanogenmod.permission.MODIFY_NETWORK_SETTINGS"

    .line 78
    const-string/jumbo v2, "You do not have permissions to change system network settings."

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method private enforceModifySoundSettingsPermission()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "cyanogenmod.permission.MODIFY_SOUND_SETTINGS"

    .line 83
    const-string/jumbo v2, "You do not have permissions to change system sound settings."

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private enforceShutdownPermission()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.REBOOT"

    .line 88
    const-string/jumbo v2, "You do not have permissions to shut down the device."

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private setAirplaneModeEnabledInternal(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 190
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    .line 191
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 190
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 188
    return-void

    .line 191
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabledInternal(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 200
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 199
    return-void
.end method

.method private setZenModeInternal(IJ)Z
    .locals 8
    .param p1, "mode"    # I
    .param p2, "durationMillis"    # J

    .prologue
    const/4 v6, 0x0

    .line 218
    const/4 v2, -0x1

    .line 219
    .local v2, "zenModeValue":I
    const/4 v1, 0x0

    .line 220
    .local v1, "zenModeConditionUri":Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 236
    const-string/jumbo v3, "CMSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setZenMode() called with invalid mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return v6

    .line 222
    :pswitch_0
    const/4 v2, 0x1

    .line 223
    invoke-direct {p0, p2, p3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->createZenModeConditionUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 241
    .end local v1    # "zenModeConditionUri":Landroid/net/Uri;
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mNotificationManager:Landroid/app/INotificationManager;

    const-string/jumbo v4, "setZenMode (PartnerInterface)"

    invoke-interface {v3, v2, v1, v4}, Landroid/app/INotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    const/4 v3, 0x1

    return v3

    .line 226
    .restart local v1    # "zenModeConditionUri":Landroid/net/Uri;
    :pswitch_1
    const/4 v2, 0x0

    .line 229
    goto :goto_0

    .line 231
    :pswitch_2
    const/4 v2, 0x2

    .line 232
    invoke-direct {p0, p2, p3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->createZenModeConditionUri(J)Landroid/net/Uri;

    move-result-object v1

    .local v1, "zenModeConditionUri":Landroid/net/Uri;
    goto :goto_0

    .line 242
    .end local v1    # "zenModeConditionUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CMSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setZenMode() failed for mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return v6

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private shutdownInternal(Z)V
    .locals 5
    .param p1, "reboot"    # Z

    .prologue
    .line 205
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 204
    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 207
    .local v1, "pm":Landroid/os/IPowerManager;
    if-eqz p1, :cond_0

    .line 208
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    .line 203
    :goto_0
    return-void

    .line 210
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->shutdown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CMSettingsService"

    const-string/jumbo v3, "Unable to shutdown."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getHotwordPackageNameInternal()Ljava/lang/String;
    .locals 4

    .prologue
    .line 266
    const/4 v1, 0x0

    .line 268
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v2}, Landroid/media/IAudioService;->getCurrentHotwordInputPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 272
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 269
    .restart local v1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CMSettingsService"

    const-string/jumbo v3, "getHotwordPackageName() failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 71
    const-string/jumbo v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 70
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mNotificationManager:Landroid/app/INotificationManager;

    .line 72
    const-string/jumbo v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 73
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mAudioService:Landroid/media/IAudioService;

    .line 67
    return-void
.end method
