.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcInactiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcInactiveState: enter() mTag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcInactiveState: enter notifyConnectCompleted +ALL failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap14(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get10(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcInactiveState: enter notifyDisconnectCompleted +ALL failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get10(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap15(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get10(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcInactiveState: enter notifyAllDisconnectCompleted failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap11(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get6(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->removeActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap7(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcInactiveState nothandled msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "retVal":Z
    :goto_0
    return v1

    .end local v1    # "retVal":Z
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcInactiveState: msg.what=RSP_RESET, ignore we\'re already reset"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    .restart local v1    # "retVal":Z
    goto :goto_0

    .end local v1    # "retVal":Z
    :sswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcInactiveState: mag.what=EVENT_CONNECT"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .local v0, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap3(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap16(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get1(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap19(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    :goto_1
    const/4 v1, 0x1

    .restart local v1    # "retVal":Z
    goto :goto_0

    .end local v1    # "retVal":Z
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcInactiveState: msg.what=EVENT_CONNECT initConnection failed"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-static {v2, v0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap14(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    goto :goto_1

    .end local v0    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :sswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcInactiveState: msg.what=EVENT_DISCONNECT"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    invoke-static {v3, v2, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap15(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    const/4 v1, 0x1

    .restart local v1    # "retVal":Z
    goto :goto_0

    .end local v1    # "retVal":Z
    :sswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcInactiveState: msg.what=EVENT_DISCONNECT_ALL"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    invoke-static {v3, v2, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap15(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    const/4 v1, 0x1

    .restart local v1    # "retVal":Z
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_1
        0x40004 -> :sswitch_2
        0x40006 -> :sswitch_3
        0x4100c -> :sswitch_0
    .end sparse-switch
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 2
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .param p2, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v1, "DcInactiveState: setEnterNoticationParams cp,cause"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set2(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set9(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-void
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V
    .locals 2
    .param p1, "dp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v1, "DcInactiveState: setEnterNoticationParams dp"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set2(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set9(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-void
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 2
    .param p1, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set2(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set9(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-void
.end method