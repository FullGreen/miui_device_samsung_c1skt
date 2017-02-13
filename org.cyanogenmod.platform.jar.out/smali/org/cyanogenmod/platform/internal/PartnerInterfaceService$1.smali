.class Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;
.super Lcyanogenmod/app/IPartnerInterface$Stub;
.source "PartnerInterfaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    .prologue
    .line 96
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-direct {p0}, Lcyanogenmod/app/IPartnerInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentHotwordPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 180
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap1(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 181
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v2

    .line 182
    .local v2, "token":J
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-virtual {v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->getHotwordPackageNameInternal()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 184
    return-object v0
.end method

.method public reboot()V
    .locals 4

    .prologue
    .line 139
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap4(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 145
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v0

    .line 146
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap7(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V

    .line 147
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 138
    return-void
.end method

.method public setAirplaneModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 100
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap2(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 106
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v0

    .line 107
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v2, p1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap5(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V

    .line 108
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 99
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 113
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap2(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 119
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v0

    .line 120
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v2, p1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap6(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V

    .line 121
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 112
    return-void
.end method

.method public setZenMode(I)Z
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 152
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap3(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 158
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v2

    .line 159
    .local v2, "token":J
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    const-wide/16 v4, -0x1

    invoke-static {v1, p1, v4, v5}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap0(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;IJ)Z

    move-result v0

    .line 160
    .local v0, "success":Z
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 161
    return v0
.end method

.method public setZenModeWithDuration(IJ)Z
    .locals 4
    .param p1, "mode"    # I
    .param p2, "durationMillis"    # J

    .prologue
    .line 166
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap3(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 172
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v2

    .line 173
    .local v2, "token":J
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v1, p1, p2, p3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap0(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;IJ)Z

    move-result v0

    .line 174
    .local v0, "success":Z
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 175
    return v0
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 126
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap4(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 132
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v0

    .line 133
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap7(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V

    .line 134
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 125
    return-void
.end method
