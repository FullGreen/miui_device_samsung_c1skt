.class public Lcyanogenmod/app/StatusBarPanelCustomTile;
.super Ljava/lang/Object;
.source "StatusBarPanelCustomTile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/StatusBarPanelCustomTile$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/StatusBarPanelCustomTile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final customTile:Lcyanogenmod/app/CustomTile;

.field private final id:I

.field private final initialPid:I

.field private final key:Ljava/lang/String;

.field private final opPkg:Ljava/lang/String;

.field private final pkg:Ljava/lang/String;

.field private final postTime:J

.field private final resPkg:Ljava/lang/String;

.field private final tag:Ljava/lang/String;

.field private final uid:I

.field private final user:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcyanogenmod/app/StatusBarPanelCustomTile$1;

    invoke-direct {v0}, Lcyanogenmod/app/StatusBarPanelCustomTile$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/StatusBarPanelCustomTile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 17
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "parcelableVersion":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "parcelableSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .local v4, "startPosition":I
    const/4 v12, 0x0

    .local v12, "tmpResPkg":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "tmpPkg":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "tmpOpPkg":Ljava/lang/String;
    const/4 v6, -0x1

    .local v6, "tmpId":I
    const/4 v13, 0x0

    .local v13, "tmpTag":Ljava/lang/String;
    const/4 v14, -0x1

    .local v14, "tmpUid":I
    const/4 v8, -0x1

    .local v8, "tmpPid":I
    const/4 v5, 0x0

    .local v5, "tmpCustomTile":Lcyanogenmod/app/CustomTile;
    const/4 v15, 0x0

    .local v15, "tmpUser":Landroid/os/UserHandle;
    const-wide/16 v10, -0x1

    .local v10, "tmpPostTime":J
    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v3, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "tmpPkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "tmpOpPkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .end local v13    # "tmpTag":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    new-instance v5, Lcyanogenmod/app/CustomTile;

    .end local v5    # "tmpCustomTile":Lcyanogenmod/app/CustomTile;
    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcyanogenmod/app/CustomTile;-><init>(Landroid/os/Parcel;)V

    .local v5, "tmpCustomTile":Lcyanogenmod/app/CustomTile;
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v15

    .local v15, "tmpUser":Landroid/os/UserHandle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .end local v5    # "tmpCustomTile":Lcyanogenmod/app/CustomTile;
    .end local v7    # "tmpOpPkg":Ljava/lang/String;
    .end local v9    # "tmpPkg":Ljava/lang/String;
    .end local v15    # "tmpUser":Landroid/os/UserHandle;
    :cond_0
    const/16 v16, 0x2

    move/from16 v0, v16

    if-lt v3, v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .end local v12    # "tmpResPkg":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iput-object v12, v0, Lcyanogenmod/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcyanogenmod/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v6, v0, Lcyanogenmod/app/StatusBarPanelCustomTile;->id:I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v14, v0, Lcyanogenmod/app/StatusBarPanelCustomTile;->uid:I

    move-object/from16 v0, p0

    iput v8, v0, Lcyanogenmod/app/StatusBarPanelCustomTile;->initialPid:I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcyanogenmod/app/StatusBarPanelCustomTile;->customTile:Lcyanogenmod/app/CustomTile;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcyanogenmod/app/StatusBarPanelCustomTile;->postTime:J

    invoke-direct/range {p0 .. p0}, Lcyanogenmod/app/StatusBarPanelCustomTile;->key()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcyanogenmod/app/StatusBarPanelCustomTile;->key:Ljava/lang/String;

    add-int v16, v4, v2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .local v5, "tmpCustomTile":Lcyanogenmod/app/CustomTile;
    .restart local v7    # "tmpOpPkg":Ljava/lang/String;
    .restart local v9    # "tmpPkg":Ljava/lang/String;
    .restart local v12    # "tmpResPkg":Ljava/lang/String;
    .restart local v13    # "tmpTag":Ljava/lang/String;
    .local v15, "tmpUser":Landroid/os/UserHandle;
    :cond_2
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcyanogenmod/app/CustomTile;Landroid/os/UserHandle;)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "resPkg"    # Ljava/lang/String;
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "initialPid"    # I
    .param p8, "customTile"    # Lcyanogenmod/app/CustomTile;
    .param p9, "user"    # Landroid/os/UserHandle;

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcyanogenmod/app/StatusBarPanelCustomTile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcyanogenmod/app/CustomTile;Landroid/os/UserHandle;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcyanogenmod/app/CustomTile;Landroid/os/UserHandle;J)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "resPkg"    # Ljava/lang/String;
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "initialPid"    # I
    .param p8, "customTile"    # Lcyanogenmod/app/CustomTile;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "postTime"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-nez p8, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    iput-object p2, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    iput-object p3, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    iput p4, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->id:I

    iput-object p5, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    iput p6, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->uid:I

    iput p7, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->initialPid:I

    iput-object p8, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->customTile:Lcyanogenmod/app/CustomTile;

    iput-object p9, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    iput-wide p10, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->postTime:J

    invoke-direct {p0}, Lcyanogenmod/app/StatusBarPanelCustomTile;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->key:Ljava/lang/String;

    return-void
.end method

.method private key()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Lcyanogenmod/app/StatusBarPanelCustomTile;
    .locals 12

    .prologue
    new-instance v0, Lcyanogenmod/app/StatusBarPanelCustomTile;

    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    iget-object v3, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    iget v4, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->id:I

    iget-object v5, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    iget v6, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->uid:I

    iget v7, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->initialPid:I

    iget-object v8, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->customTile:Lcyanogenmod/app/CustomTile;

    invoke-virtual {v8}, Lcyanogenmod/app/CustomTile;->clone()Lcyanogenmod/app/CustomTile;

    move-result-object v8

    iget-object v9, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    iget-wide v10, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->postTime:J

    invoke-direct/range {v0 .. v11}, Lcyanogenmod/app/StatusBarPanelCustomTile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcyanogenmod/app/CustomTile;Landroid/os/UserHandle;J)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcyanogenmod/app/StatusBarPanelCustomTile;->clone()Lcyanogenmod/app/StatusBarPanelCustomTile;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomTile()Lcyanogenmod/app/CustomTile;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->customTile:Lcyanogenmod/app/CustomTile;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    iget v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->id:I

    return v0
.end method

.method public getInitialPid()I
    .locals 1

    .prologue
    iget v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->initialPid:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOpPkg()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPostTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->postTime:J

    return-wide v0
.end method

.method public getResPkg()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    iget v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->uid:I

    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .local v1, "sizePosition":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .local v2, "startPosition":I
    iget-object v3, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v3, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->id:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget v3, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->uid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->initialPid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->customTile:Lcyanogenmod/app/CustomTile;

    invoke-virtual {v3, p1, p2}, Lcyanogenmod/app/CustomTile;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v3, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v4, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->postTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v3, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .end local v0    # "parcelableSize":I
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
