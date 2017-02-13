.class Lcom/android/server/wifi/WifiNative$PnoMonitor;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PnoMonitor"
.end annotation


# static fields
.field private static final ACTION_TOGGLE_PNO:Ljava/lang/String; = "com.android.server.Wifi.action.TOGGLE_PNO"

.field private static final MINIMUM_PNO_GAP:I = 0x1388


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field mCurrentPnoState:Z

.field mExpectedPnoState:Z

.field mLastPnoChangeTimeStamp:J

.field private final mPnoIntent:Landroid/app/PendingIntent;

.field final mPnoLock:Ljava/lang/Object;

.field mWaitForTimer:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/WifiNative$PnoMonitor;Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative$PnoMonitor;->setPno(Z)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiNative;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    const/4 v4, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mLastPnoChangeTimeStamp:J

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mExpectedPnoState:Z

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mCurrentPnoState:Z

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mWaitForTimer:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mPnoLock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->-get1(Lcom/android/server/wifi/WifiNative;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.Wifi.action.TOGGLE_PNO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/server/wifi/WifiNative;->-get1(Lcom/android/server/wifi/WifiNative;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mPnoIntent:Landroid/app/PendingIntent;

    invoke-static {p1}, Lcom/android/server/wifi/WifiNative;->-get1(Lcom/android/server/wifi/WifiNative;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/WifiNative$PnoMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiNative$PnoMonitor$1;-><init>(Lcom/android/server/wifi/WifiNative$PnoMonitor;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.Wifi.action.TOGGLE_PNO"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setPno(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    if-eqz p1, :cond_1

    const-string v0, "SET pno 1"

    .local v0, "cmd":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiNative;->-wrap0(Lcom/android/server/wifi/WifiNative;Ljava/lang/String;)Z

    move-result v1

    .local v1, "ret":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mLastPnoChangeTimeStamp:J

    if-eqz v1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mCurrentPnoState:Z

    :cond_0
    return v1

    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "ret":Z
    :cond_1
    const-string v0, "SET pno 0"

    .restart local v0    # "cmd":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public enableBackgroundScan(Z)Z
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    const/4 v8, 0x1

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mPnoLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mWaitForTimer:Z

    if-eqz v2, :cond_1

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mExpectedPnoState:Z

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v2}, Lcom/android/server/wifi/WifiNative;->-get2(Lcom/android/server/wifi/WifiNative;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update expected PNO to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mExpectedPnoState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    return v8

    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mCurrentPnoState:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, p1, :cond_2

    monitor-exit v3

    return v8

    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mLastPnoChangeTimeStamp:J

    sub-long v0, v4, v6

    .local v0, "timeDifference":J
    const-wide/16 v4, 0x1388

    cmp-long v2, v0, v4

    if-ltz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative$PnoMonitor;->setPno(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_3
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mExpectedPnoState:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mWaitForTimer:Z

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->-get0()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v2}, Lcom/android/server/wifi/WifiNative;->-get2(Lcom/android/server/wifi/WifiNative;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start PNO timer with delay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    iget-object v6, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mPnoIntent:Landroid/app/PendingIntent;

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "timeDifference":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
