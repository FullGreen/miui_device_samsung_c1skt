.class final Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;
.super Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;
.source "KeyguardExternalViewProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderImpl"
.end annotation


# instance fields
.field private mAskedShow:Z

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private mShouldShow:Z

.field private final mWindow:Landroid/view/Window;

.field final synthetic this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;


# direct methods
.method static synthetic -get0(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic -get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic -set0(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mAskedShow:Z

    return p1
.end method

.method static synthetic -wrap0(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V
    .locals 0

    invoke-direct {p0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->updateVisibility()V

    return-void
.end method

.method public constructor <init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;)V
    .locals 2
    .param p1, "this$1"    # Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;
    .param p2, "provider"    # Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    .prologue
    .line 139
    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    invoke-direct {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;-><init>()V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mShouldShow:Z

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mAskedShow:Z

    .line 137
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 136
    iput-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 140
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p1, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    .line 141
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->onCreateView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 143
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 144
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->getWindowType()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 145
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->getWindowFlags()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 146
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 147
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 139
    return-void
.end method

.method private updateVisibility()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mShouldShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mAskedShow:Z

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 262
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 260
    return-void

    .line 263
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public alterWindow(IIIIZLandroid/graphics/Rect;)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "visible"    # Z
    .param p6, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 225
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->-get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$8;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$8;-><init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;IIIIZLandroid/graphics/Rect;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    return-void
.end method

.method protected final collapseNotificationPanel()V
    .locals 6

    .prologue
    .line 296
    iget-object v4, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 297
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 298
    iget-object v4, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    .line 300
    .local v1, "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    :try_start_0
    invoke-interface {v1}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;->collapseNotificationPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 304
    .end local v1    # "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 295
    return-void
.end method

.method public onAttach(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->-get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$1;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$1;-><init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method

.method public onBouncerShowing(Z)V
    .locals 2
    .param p1, "showing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->-get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$5;

    invoke-direct {v1, p0, p1}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$5;-><init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method public onDetach()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->-get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$2;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$2;-><init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void
.end method

.method public onKeyguardDismissed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->-get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$4;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$4;-><init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    return-void
.end method

.method public onKeyguardShowing(Z)V
    .locals 2
    .param p1, "screenOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->-get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$3;

    invoke-direct {v1, p0, p1}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$3;-><init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->-get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$7;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$7;-><init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->-get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$6;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$6;-><init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method

.method public registerCallback(Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;)V
    .locals 1
    .param p1, "callback"    # Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    .prologue
    .line 252
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 251
    return-void
.end method

.method protected final requestDismiss()Z
    .locals 7

    .prologue
    .line 268
    const/4 v4, 0x1

    .line 269
    .local v4, "ret":Z
    iget-object v5, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 270
    .local v0, "N":I
    const/4 v3, 0x0

    .end local v4    # "ret":Z
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 271
    iget-object v5, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    .line 273
    .local v1, "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    :try_start_0
    invoke-interface {v1}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;->requestDismiss()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    and-int/2addr v4, v5

    .line 270
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 277
    .end local v1    # "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v5, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 278
    return v4
.end method

.method protected final requestDismissAndStartActivity(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 282
    const/4 v4, 0x1

    .line 283
    .local v4, "ret":Z
    iget-object v5, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 284
    .local v0, "N":I
    const/4 v3, 0x0

    .end local v4    # "ret":Z
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 285
    iget-object v5, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    .line 287
    .local v1, "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    :try_start_0
    invoke-interface {v1, p1}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;->requestDismissAndStartActivity(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    and-int/2addr v4, v5

    .line 284
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 288
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 291
    .end local v1    # "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v5, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 292
    return v4
.end method

.method protected final setInteractivity(Z)V
    .locals 6
    .param p1, "isInteractive"    # Z

    .prologue
    .line 308
    iget-object v4, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 309
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 310
    iget-object v4, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    .line 312
    .local v1, "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    :try_start_0
    invoke-interface {v1, p1}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;->setInteractivity(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 313
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 316
    .end local v1    # "callback":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 307
    return-void
.end method

.method public unregisterCallback(Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;)V
    .locals 1
    .param p1, "callback"    # Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    .prologue
    .line 257
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 256
    return-void
.end method
