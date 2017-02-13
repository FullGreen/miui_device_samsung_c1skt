.class Lorg/cyanogenmod/platform/internal/IconCacheManagerService$2;
.super Lorg/cyanogenmod/internal/themes/IIconCacheManager$Stub;
.source "IconCacheManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/IconCacheManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/IconCacheManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/IconCacheManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/IconCacheManagerService;

    .prologue
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/IconCacheManagerService;

    invoke-direct {p0}, Lorg/cyanogenmod/internal/themes/IIconCacheManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 12
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    new-instance v0, Ljava/io/File;

    sget-object v5, Lorg/cyanogenmod/internal/util/ThemeUtils;->SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/IconCacheManagerService;

    const-wide/16 v8, 0x0

    invoke-static {v5, v8, v9}, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->-set0(Lorg/cyanogenmod/platform/internal/IconCacheManagerService;J)J

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, "outFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v2, "os":Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5a

    invoke-virtual {p1, v5, v8, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    const/16 v5, 0x1fc

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v3, v5, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/IconCacheManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->-get1(Lorg/cyanogenmod/platform/internal/IconCacheManagerService;)J

    move-result-wide v8

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-static {v5, v8, v9}, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->-set0(Lorg/cyanogenmod/platform/internal/IconCacheManagerService;J)J

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/IconCacheManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->-get1(Lorg/cyanogenmod/platform/internal/IconCacheManagerService;)J

    move-result-wide v8

    const-wide/32 v10, 0x2000000

    cmp-long v5, v8, v10

    if-lez v5, :cond_1

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/IconCacheManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->-wrap0(Lorg/cyanogenmod/platform/internal/IconCacheManagerService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v4, 0x1

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .end local v3    # "outFile":Ljava/io/File;
    .local v4, "success":Z
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .end local v4    # "success":Z
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .restart local v4    # "success":Z
    invoke-static {}, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to cache icon "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
