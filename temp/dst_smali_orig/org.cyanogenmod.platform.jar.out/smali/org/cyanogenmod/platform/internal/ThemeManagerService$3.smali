.class Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;
.super Lcyanogenmod/themes/IThemeService$Stub;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    .prologue
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-direct {p0}, Lcyanogenmod/themes/IThemeService$Stub;-><init>()V

    return-void
.end method

.method private enforcePermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get2(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyDefaultTheme()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->enforcePermission()V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get4(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getLastThemeChangeRequestType()I
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get6(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)I

    move-result v0

    return v0
.end method

.method public getLastThemeChangeTime()J
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get7(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->enforcePermission()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get10(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isThemeApplying()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->enforcePermission()V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get5(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Z

    move-result v0

    return v0
.end method

.method public isThemeBeingProcessed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "themePkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->enforcePermission()V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public processThemeResources(Ljava/lang/String;)Z
    .locals 5
    .param p1, "themePkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->enforcePermission()V

    :try_start_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get8(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get11(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v4, v4, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get11(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x1

    return v2

    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v4
.end method

.method public rebuildResourceCache()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->enforcePermission()V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get4(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public registerThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/themes/IThemeProcessingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->enforcePermission()V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get9(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public removeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/themes/IThemeChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->enforcePermission()V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get1(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public requestThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;Z)V
    .locals 10
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p2, "removePerAppThemes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->enforcePermission()V

    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v7}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    invoke-virtual {p1}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemeComponentsMap()Ljava/util/Map;

    move-result-object v0

    .local v0, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "key":Ljava/lang/Object;
    const-string v8, "mods_overlays"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "mods_navigation_bar"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "mods_status_bar"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "mods_icons"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "pkgName":Ljava/lang/String;
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v8}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v8}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v8}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v8}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get11(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .local v3, "msg":Landroid/os/Message;
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v8}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get11(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "pkgName":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5

    .restart local v0    # "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "key$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v7

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .restart local v3    # "msg":Landroid/os/Message;
    iput v5, v3, Landroid/os/Message;->what:I

    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p2, :cond_3

    :goto_1
    iput v5, v3, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get4(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_3
    move v5, v6

    goto :goto_1
.end method

.method public requestThemeChangeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/themes/IThemeChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->enforcePermission()V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get1(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregisterThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/themes/IThemeProcessingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->enforcePermission()V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get9(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
