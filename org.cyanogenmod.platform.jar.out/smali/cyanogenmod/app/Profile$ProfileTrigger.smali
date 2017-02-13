.class public Lcyanogenmod/app/Profile$ProfileTrigger;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileTrigger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/Profile$ProfileTrigger$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/Profile$ProfileTrigger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mState:I

.field private mType:I


# direct methods
.method static synthetic -get0(Lcyanogenmod/app/Profile$ProfileTrigger;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcyanogenmod/app/Profile$ProfileTrigger;)I
    .locals 1

    iget v0, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    return v0
.end method

.method static synthetic -set0(Lcyanogenmod/app/Profile$ProfileTrigger;I)I
    .locals 0

    iput p1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 364
    new-instance v0, Lcyanogenmod/app/Profile$ProfileTrigger$1;

    invoke-direct {v0}, Lcyanogenmod/app/Profile$ProfileTrigger$1;-><init>()V

    .line 363
    sput-object v0, Lcyanogenmod/app/Profile$ProfileTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 195
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput p1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mType:I

    .line 224
    iput-object p2, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    .line 225
    iput p3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    .line 226
    iput-object p4, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    .line 222
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 233
    .local v1, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 234
    .local v0, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 239
    .local v2, "startPosition":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mType:I

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    .line 246
    :cond_0
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 229
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/app/Profile$ProfileTrigger;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/app/Profile$ProfileTrigger;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/app/Profile$ProfileTrigger;
    .locals 7
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 335
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v5, "wifiAP"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 339
    const/4 v4, 0x0

    .line 346
    .local v4, "type":I
    :goto_0
    invoke-static {v4}, Lcyanogenmod/app/Profile$ProfileTrigger;->getIdType(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v5, "state"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 348
    .local v2, "state":I
    const-string/jumbo v5, "name"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, "triggerName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 350
    move-object v3, v0

    .line 353
    :cond_0
    new-instance v5, Lcyanogenmod/app/Profile$ProfileTrigger;

    invoke-direct {v5, v4, v0, v2, v3}, Lcyanogenmod/app/Profile$ProfileTrigger;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-object v5

    .line 340
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "state":I
    .end local v3    # "triggerName":Ljava/lang/String;
    .end local v4    # "type":I
    :cond_1
    const-string/jumbo v5, "btDevice"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 341
    const/4 v4, 0x1

    .restart local v4    # "type":I
    goto :goto_0

    .line 343
    .end local v4    # "type":I
    :cond_2
    return-object v6
.end method

.method private static getIdType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 357
    if-nez p0, :cond_0

    const-string/jumbo v0, "ssid"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "address"

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mType:I

    return v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    iget v1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mType:I

    if-nez v1, :cond_0

    const-string/jumbo v0, "wifiAP"

    .line 316
    .local v0, "itemType":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "<"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string/jumbo v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget v1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mType:I

    invoke-static {v1}, Lcyanogenmod/app/Profile$ProfileTrigger;->getIdType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string/jumbo v1, "=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget-object v1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string/jumbo v1, "\" state=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget v1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    const-string/jumbo v1, "\" name=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string/jumbo v1, "\"></"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string/jumbo v1, ">\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    return-void

    .line 314
    .end local v0    # "itemType":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "btDevice"

    .restart local v0    # "itemType":Ljava/lang/String;
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 253
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 258
    .local v1, "sizePosition":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 261
    .local v2, "startPosition":I
    iget v3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-object v3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget v3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-object v3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .line 268
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 269
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 250
    return-void
.end method
