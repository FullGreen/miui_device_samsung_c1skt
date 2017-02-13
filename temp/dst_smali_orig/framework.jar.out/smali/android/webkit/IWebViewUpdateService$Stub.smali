.class public abstract Landroid/webkit/IWebViewUpdateService$Stub;
.super Landroid/os/Binder;
.source "IWebViewUpdateService.java"

# interfaces
.implements Landroid/webkit/IWebViewUpdateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/IWebViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/IWebViewUpdateService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.webkit.IWebViewUpdateService"

.field static final TRANSACTION_notifyRelroCreationCompleted_0:I = 0x1

.field static final TRANSACTION_waitForRelroCreationCompleted:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p0, p0, v0}, Landroid/webkit/IWebViewUpdateService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.webkit.IWebViewUpdateService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/webkit/IWebViewUpdateService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/webkit/IWebViewUpdateService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_0
    const-string v2, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :sswitch_1
    const-string v2, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .local v0, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/webkit/IWebViewUpdateService$Stub;->notifyRelroCreationCompleted(ZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Z
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Z
    goto :goto_1

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :sswitch_2
    const-string v2, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/webkit/IWebViewUpdateService$Stub;->waitForRelroCreationCompleted(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    .end local v0    # "_arg0":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Z
    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
