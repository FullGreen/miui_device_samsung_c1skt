.class Lcyanogenmod/externalviews/KeyguardExternalView$1;
.super Ljava/lang/Object;
.source "KeyguardExternalView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/KeyguardExternalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/externalviews/KeyguardExternalView;


# direct methods
.method constructor <init>(Lcyanogenmod/externalviews/KeyguardExternalView;)V
    .locals 0
    .param p1, "this$0"    # Lcyanogenmod/externalviews/KeyguardExternalView;

    .prologue
    .line 108
    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 112
    :try_start_0
    invoke-static {p2}, Lcyanogenmod/externalviews/IExternalViewProviderFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IExternalViewProviderFactory;

    move-result-object v1

    .line 113
    .local v1, "factory":Lcyanogenmod/externalviews/IExternalViewProviderFactory;
    if-eqz v1, :cond_2

    .line 114
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    .line 115
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcyanogenmod/externalviews/IExternalViewProviderFactory;->createExternalView(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v3

    .line 114
    invoke-static {v3}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lcyanogenmod/externalviews/KeyguardExternalView;->-set0(Lcyanogenmod/externalviews/KeyguardExternalView;Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    .line 116
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get3(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get3(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v2

    .line 118
    iget-object v3, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v3}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get4(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    move-result-object v3

    .line 117
    invoke-interface {v2, v3}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;->registerCallback(Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;)V

    .line 119
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v2, p2}, Lcyanogenmod/externalviews/KeyguardExternalView;->-set2(Lcyanogenmod/externalviews/KeyguardExternalView;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 120
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get5(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 121
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->-wrap0(Lcyanogenmod/externalviews/KeyguardExternalView;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1    # "factory":Lcyanogenmod/externalviews/IExternalViewProviderFactory;
    :goto_0
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get5(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p2, :cond_0

    if-eqz p2, :cond_0

    .line 133
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get2(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v3}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get6(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 110
    :cond_0
    return-void

    .line 123
    .restart local v1    # "factory":Lcyanogenmod/externalviews/IExternalViewProviderFactory;
    :cond_1
    :try_start_1
    invoke-static {}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Unable to get external view provider"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 128
    .end local v1    # "factory":Lcyanogenmod/externalviews/IExternalViewProviderFactory;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 126
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "factory":Lcyanogenmod/externalviews/IExternalViewProviderFactory;
    :cond_2
    :try_start_2
    invoke-static {}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Unable to get external view provider factory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 139
    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v1}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get3(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v1}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get3(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get4(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    move-result-object v2

    .line 141
    invoke-interface {v1, v2}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;->unregisterCallback(Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v1, v4}, Lcyanogenmod/externalviews/KeyguardExternalView;->-set0(Lcyanogenmod/externalviews/KeyguardExternalView;Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    .line 147
    :cond_0
    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v1}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get5(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v1}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get5(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 149
    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v1, v4}, Lcyanogenmod/externalviews/KeyguardExternalView;->-set2(Lcyanogenmod/externalviews/KeyguardExternalView;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 138
    :cond_1
    return-void

    .line 143
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
