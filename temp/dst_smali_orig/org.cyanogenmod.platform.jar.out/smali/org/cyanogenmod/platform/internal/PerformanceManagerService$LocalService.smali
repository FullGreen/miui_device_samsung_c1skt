.class final Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;
.super Ljava/lang/Object;
.source "PerformanceManagerService.java"

# interfaces
.implements Lcyanogenmod/power/PerformanceManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;


# direct methods
.method private constructor <init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    .prologue
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;-><init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V

    return-void
.end method


# virtual methods
.method public activityResumed(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .local v0, "activityName":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "activityName":Ljava/lang/String;
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v2, v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-set0(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-wrap3(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Z)V

    return-void
.end method

.method public cpuBoost(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-wrap4(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;I)V

    return-void
.end method

.method public launchBoost()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get0(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get0(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get1(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get1(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get1(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;->sendEmptyMessage(I)Z

    return-void
.end method
