.class final Lcom/android/server/display/OverlayDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DISPLAY_PATTERN:Ljava/util/regex/Pattern;

.field private static final MAX_HEIGHT:I = 0x1000

.field private static final MAX_WIDTH:I = 0x1000

.field private static final MIN_HEIGHT:I = 0x64

.field private static final MIN_WIDTH:I = 0x64

.field private static final MODE_PATTERN:Ljava/util/regex/Pattern;

.field static final TAG:Ljava/lang/String; = "OverlayDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "overlay:"


# instance fields
.field private mCurrentOverlaySetting:Ljava/lang/String;

.field private final mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/display/OverlayDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevices()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "([^,]+)(,[a-z]+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\d+)x(\\d+)/(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->MODE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .locals 6
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "uiHandler"    # Landroid/os/Handler;

    .prologue
    const-string v5, "OverlayDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method private static chooseOverlayGravity(I)I
    .locals 1
    .param p0, "overlayNumber"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x53

    return v0

    :pswitch_0
    const/16 v0, 0x33

    return v0

    :pswitch_1
    const/16 v0, 0x55

    return v0

    :pswitch_2
    const/16 v0, 0x35

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateOverlayDisplayDevices()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevicesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateOverlayDisplayDevicesLocked()V
    .locals 30

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "overlay_display_devices"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .local v21, "value":Ljava/lang/String;
    if-nez v21, :cond_0

    const-string v21, ""

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "OverlayDisplayAdapter"

    const-string v3, "Dismissing all overlay display devices."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "overlay$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .local v18, "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dismissLocked()V

    goto :goto_0

    .end local v18    # "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .end local v19    # "overlay$iterator":Ljava/util/Iterator;
    :cond_3
    const/4 v9, 0x0

    .local v9, "count":I
    const-string v2, ";"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/4 v2, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v23, v2

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    aget-object v20, v24, v23

    .local v20, "part":Ljava/lang/String;
    sget-object v2, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .local v11, "displayMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x4

    if-lt v9, v2, :cond_5

    const-string v2, "OverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Too many overlay display devices specified: "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v11    # "displayMatcher":Ljava/util/regex/Matcher;
    .end local v20    # "part":Ljava/lang/String;
    :cond_4
    return-void

    .restart local v11    # "displayMatcher":Ljava/util/regex/Matcher;
    .restart local v20    # "part":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    .local v17, "modeString":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "flagString":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    const-string v2, "\\|"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    array-length v0, v3

    move/from16 v26, v0

    :goto_2
    move/from16 v0, v26

    if-ge v2, v0, :cond_9

    aget-object v15, v3, v2

    .local v15, "mode":Ljava/lang/String;
    sget-object v27, Lcom/android/server/display/OverlayDisplayAdapter;->MODE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .local v16, "modeMatcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->matches()Z

    move-result v27

    if-eqz v27, :cond_8

    const/16 v27, 0x1

    :try_start_0
    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0xa

    invoke-static/range {v27 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v22

    .local v22, "width":I
    const/16 v27, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0xa

    invoke-static/range {v27 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    .local v14, "height":I
    const/16 v27, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0xa

    invoke-static/range {v27 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .local v10, "densityDpi":I
    const/16 v27, 0x64

    move/from16 v0, v22

    move/from16 v1, v27

    if-lt v0, v1, :cond_7

    const/16 v27, 0x1000

    move/from16 v0, v22

    move/from16 v1, v27

    if-gt v0, v1, :cond_7

    const/16 v27, 0x64

    move/from16 v0, v27

    if-lt v14, v0, :cond_7

    const/16 v27, 0x1000

    move/from16 v0, v27

    if-gt v14, v0, :cond_7

    const/16 v27, 0x78

    move/from16 v0, v27

    if-lt v10, v0, :cond_7

    const/16 v27, 0x280

    move/from16 v0, v27

    if-gt v10, v0, :cond_7

    new-instance v27, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-direct {v0, v1, v14, v10}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;-><init>(III)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v10    # "densityDpi":I
    .end local v14    # "height":I
    .end local v22    # "width":I
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .restart local v10    # "densityDpi":I
    .restart local v14    # "height":I
    .restart local v22    # "width":I
    :cond_7
    const-string v27, "OverlayDisplayAdapter"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Ignoring out-of-range overlay display mode: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .end local v10    # "densityDpi":I
    .end local v14    # "height":I
    .end local v22    # "width":I
    :catch_0
    move-exception v12

    .local v12, "ex":Ljava/lang/NumberFormatException;
    goto :goto_3

    .end local v12    # "ex":Ljava/lang/NumberFormatException;
    :cond_8
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_6

    goto :goto_3

    .end local v15    # "mode":Ljava/lang/String;
    .end local v16    # "modeMatcher":Ljava/util/regex/Matcher;
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    add-int/lit8 v9, v9, 0x1

    move v8, v9

    .local v8, "number":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v3, v27

    const v26, 0x1040553

    move/from16 v0, v26

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "name":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/display/OverlayDisplayAdapter;->chooseOverlayGravity(I)I

    move-result v6

    .local v6, "gravity":I
    if-eqz v13, :cond_a

    const-string v2, ",secure"

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    :goto_4
    const-string v2, "OverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Showing overlay display device #"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v26, ": name="

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v26, ", modes="

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    new-instance v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;IZI)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .end local v6    # "gravity":I
    .end local v8    # "number":I
    .end local v13    # "flagString":Ljava/lang/String;
    .end local v17    # "modeString":Ljava/lang/String;
    :goto_5
    add-int/lit8 v2, v23, 0x1

    move/from16 v23, v2

    goto/16 :goto_1

    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .restart local v6    # "gravity":I
    .restart local v8    # "number":I
    .restart local v13    # "flagString":Ljava/lang/String;
    .restart local v17    # "modeString":Ljava/lang/String;
    :cond_a
    const/4 v7, 0x0

    .local v7, "secure":Z
    goto :goto_4

    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .end local v6    # "gravity":I
    .end local v7    # "secure":Z
    .end local v8    # "number":I
    .end local v13    # "flagString":Ljava/lang/String;
    .end local v17    # "modeString":Ljava/lang/String;
    :cond_b
    const-string v2, "OverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Malformed overlay display devices setting: "

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentOverlaySetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOverlays: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "overlay$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .local v0, "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual {v0, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_0

    .end local v0    # "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    :cond_0
    return-void
.end method

.method public registerLocked()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/OverlayDisplayAdapter$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method