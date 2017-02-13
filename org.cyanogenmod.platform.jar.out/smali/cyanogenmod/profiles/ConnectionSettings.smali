.class public final Lcyanogenmod/profiles/ConnectionSettings;
.super Ljava/lang/Object;
.source "ConnectionSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/profiles/ConnectionSettings$BooleanState;,
        Lcyanogenmod/profiles/ConnectionSettings$1;
    }
.end annotation


# static fields
.field private static final ACTION_MODIFY_NETWORK_MODE:Ljava/lang/String; = "com.android.internal.telephony.MODIFY_NETWORK_MODE"

.field private static final CM_MODE_2G:I = 0x0

.field private static final CM_MODE_2G3G:I = 0x3

.field private static final CM_MODE_3G:I = 0x1

.field private static final CM_MODE_4G:I = 0x2

.field private static final CM_MODE_ALL:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/profiles/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_NETWORK_MODE:Ljava/lang/String; = "networkMode"

.field private static final EXTRA_SUB_ID:Ljava/lang/String; = "subId"

.field public static final PROFILE_CONNECTION_2G3G4G:I = 0x9

.field public static final PROFILE_CONNECTION_BLUETOOTH:I = 0x7

.field public static final PROFILE_CONNECTION_GPS:I = 0x4

.field public static final PROFILE_CONNECTION_MOBILEDATA:I = 0x0

.field public static final PROFILE_CONNECTION_NFC:I = 0x8

.field public static final PROFILE_CONNECTION_SYNC:I = 0x5

.field public static final PROFILE_CONNECTION_WIFI:I = 0x1

.field public static final PROFILE_CONNECTION_WIFIAP:I = 0x2

.field public static final PROFILE_CONNECTION_WIMAX:I = 0x3


# instance fields
.field private mConnectionId:I

.field private mDirty:Z

.field private mOverride:Z

.field private mSubId:I

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcyanogenmod/profiles/ConnectionSettings$1;

    invoke-direct {v0}, Lcyanogenmod/profiles/ConnectionSettings$1;-><init>()V

    .line 143
    sput-object v0, Lcyanogenmod/profiles/ConnectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "connectionId"    # I

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, p1, v0, v0}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    .line 167
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "connectionId"    # I
    .param p2, "value"    # I
    .param p3, "override"    # Z

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    .line 179
    iput p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    .line 180
    iput p2, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    .line 181
    iput-boolean p3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    .line 160
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/ConnectionSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 159
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/ConnectionSettings;
    .locals 5
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 382
    .local v1, "event":I
    new-instance v0, Lcyanogenmod/profiles/ConnectionSettings;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(I)V

    .line 383
    .local v0, "connectionDescriptor":Lcyanogenmod/profiles/ConnectionSettings;
    :goto_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "connectionDescriptor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    return-object v0

    .line 384
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 385
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "connectionId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 387
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    .line 398
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 388
    .restart local v2    # "name":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 389
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    goto :goto_1

    .line 390
    :cond_3
    const-string/jumbo v3, "override"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 391
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    goto :goto_1

    .line 392
    :cond_4
    const-string/jumbo v3, "subId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    goto :goto_1

    .line 395
    .end local v2    # "name":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 396
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Premature end of file while parsing connection settings"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionId()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    return v0
.end method

.method public getSubId()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    return v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 405
    const-string/jumbo v0, "<connectionDescriptor>\n<connectionId>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    const-string/jumbo v0, "</connectionId>\n<value>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    const-string/jumbo v0, "</value>\n<override>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 411
    const-string/jumbo v0, "</override>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    sget v0, Lcyanogenmod/os/Build$CM_VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 413
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 414
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 415
    const-string/jumbo v0, "<subId>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</subId>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_0
    const-string/jumbo v0, "</connectionDescriptor>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    return-void
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    return v0
.end method

.method public isOverride()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    return v0
.end method

.method public processOverride(Landroid/content/Context;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 248
    .local v4, "bta":Landroid/bluetooth/BluetoothAdapter;
    const-string/jumbo v19, "location"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/LocationManager;

    .line 249
    .local v11, "lm":Landroid/location/LocationManager;
    const-string/jumbo v19, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiManager;

    .line 251
    .local v18, "wm":Landroid/net/wifi/WifiManager;
    const-string/jumbo v19, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 250
    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 252
    .local v15, "tm":Landroid/telephony/TelephonyManager;
    const/4 v12, 0x0

    .line 254
    .local v12, "nfcAdapter":Landroid/nfc/NfcAdapter;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 259
    .end local v12    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/4 v8, 0x1

    .line 262
    .local v8, "forcedState":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 246
    :cond_0
    :goto_2
    :pswitch_0
    return-void

    .line 255
    .end local v8    # "forcedState":Z
    .restart local v12    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0

    .line 259
    .end local v7    # "e":Ljava/lang/UnsupportedOperationException;
    .end local v12    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "forcedState":Z
    goto :goto_1

    .line 264
    :pswitch_1
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v6

    .line 265
    .local v6, "currentState":Z
    if-eq v8, v6, :cond_0

    .line 266
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v13

    .line 267
    .local v13, "phoneCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-ge v9, v13, :cond_0

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 269
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "mobile_data"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    if-eqz v8, :cond_2

    const/16 v19, 0x1

    .line 268
    :goto_4
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 270
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v14

    .line 271
    .local v14, "subId":[I
    const/16 v19, 0x0

    aget v19, v14, v19

    move/from16 v0, v19

    invoke-virtual {v15, v0, v8}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 267
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 269
    .end local v14    # "subId":[I
    :cond_2
    const/16 v19, 0x0

    goto :goto_4

    .line 276
    .end local v6    # "currentState":Z
    .end local v9    # "i":I
    .end local v13    # "phoneCount":I
    :pswitch_2
    sget v19, Lcyanogenmod/os/Build$CM_VERSION;->SDK_INT:I

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 277
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v19, "com.android.internal.telephony.MODIFY_NETWORK_MODE"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v19, "networkMode"

    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    const-string/jumbo v19, "subId"

    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/profiles/ConnectionSettings;->getSubId()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    const-string/jumbo v19, "com.android.phone.CHANGE_NETWORK_MODE"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 282
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v19, "com.android.internal.telephony.MODIFY_NETWORK_MODE"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .restart local v10    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v19

    packed-switch v19, :pswitch_data_1

    .line 301
    return-void

    .line 285
    :pswitch_3
    const-string/jumbo v19, "networkMode"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 288
    :pswitch_4
    const-string/jumbo v19, "networkMode"

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 291
    :pswitch_5
    const-string/jumbo v19, "networkMode"

    const/16 v20, 0xb

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 294
    :pswitch_6
    const-string/jumbo v19, "networkMode"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 297
    :pswitch_7
    const-string/jumbo v19, "networkMode"

    .line 298
    const/16 v20, 0x9

    .line 297
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 307
    .end local v10    # "intent":Landroid/content/Intent;
    :pswitch_8
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    .line 308
    .local v5, "btstate":I
    if-eqz v8, :cond_5

    const/16 v19, 0xa

    move/from16 v0, v19

    if-eq v5, v0, :cond_4

    .line 309
    const/16 v19, 0xd

    move/from16 v0, v19

    if-ne v5, v0, :cond_5

    .line 310
    :cond_4
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto/16 :goto_2

    .line 311
    :cond_5
    if-nez v8, :cond_0

    const/16 v19, 0xc

    move/from16 v0, v19

    if-eq v5, v0, :cond_6

    .line 312
    const/16 v19, 0xb

    move/from16 v0, v19

    if-ne v5, v0, :cond_0

    .line 313
    :cond_6
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto/16 :goto_2

    .line 317
    .end local v5    # "btstate":I
    :pswitch_9
    const-string/jumbo v19, "gps"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    .line 318
    .restart local v6    # "currentState":Z
    if-eq v6, v8, :cond_0

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 320
    const-string/jumbo v20, "gps"

    .line 319
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 324
    .end local v6    # "currentState":Z
    :pswitch_a
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v6

    .line 325
    .restart local v6    # "currentState":Z
    if-eq v8, v6, :cond_0

    .line 326
    invoke-static {v8}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto/16 :goto_2

    .line 330
    .end local v6    # "currentState":Z
    :pswitch_b
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v16

    .line 331
    .local v16, "wifiApState":I
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    .line 332
    .restart local v6    # "currentState":Z
    if-eq v6, v8, :cond_0

    .line 334
    if-eqz v8, :cond_8

    const/16 v19, 0xc

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 336
    :goto_6
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 338
    :cond_7
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_2

    .line 335
    :cond_8
    const/16 v19, 0xd

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    goto :goto_6

    .line 342
    .end local v6    # "currentState":Z
    .end local v16    # "wifiApState":I
    :pswitch_c
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v17

    .line 343
    .local v17, "wifiState":I
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v6

    .line 344
    .restart local v6    # "currentState":Z
    if-eq v6, v8, :cond_0

    .line 346
    if-eqz v8, :cond_a

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 348
    :goto_7
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 350
    :cond_9
    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_2

    .line 347
    :cond_a
    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    goto :goto_7

    .line 354
    .end local v6    # "currentState":Z
    .end local v17    # "wifiState":I
    :pswitch_d
    invoke-static/range {p1 .. p1}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 355
    invoke-static/range {p1 .. p1}, Landroid/net/wimax/WimaxHelper;->isWimaxEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 356
    .restart local v6    # "currentState":Z
    if-eq v6, v8, :cond_0

    .line 357
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/net/wimax/WimaxHelper;->setWimaxEnabled(Landroid/content/Context;Z)Z

    goto/16 :goto_2

    .line 362
    .end local v6    # "currentState":Z
    :pswitch_e
    if-eqz v12, :cond_0

    .line 363
    invoke-virtual {v12}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    .line 364
    .local v3, "adapterState":I
    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v3, v0, :cond_b

    .line 365
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v3, v0, :cond_c

    const/4 v6, 0x1

    .line 366
    .local v6, "currentState":Z
    :goto_8
    if-eq v6, v8, :cond_0

    .line 367
    if-eqz v8, :cond_d

    .line 368
    invoke-virtual {v12}, Landroid/nfc/NfcAdapter;->enable()Z

    goto/16 :goto_2

    .line 364
    .end local v6    # "currentState":Z
    :cond_b
    const/4 v6, 0x1

    .restart local v6    # "currentState":Z
    goto :goto_8

    .line 365
    .end local v6    # "currentState":Z
    :cond_c
    const/4 v6, 0x0

    .restart local v6    # "currentState":Z
    goto :goto_8

    .line 369
    :cond_d
    if-nez v8, :cond_0

    const/16 v19, 0x4

    move/from16 v0, v19

    if-eq v3, v0, :cond_0

    .line 370
    invoke-virtual {v12}, Landroid/nfc/NfcAdapter;->disable()Z

    goto/16 :goto_2

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_8
        :pswitch_e
        :pswitch_2
    .end packed-switch

    .line 283
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 462
    .local v1, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 463
    .local v0, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 468
    .local v2, "startPosition":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    iput-boolean v4, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 475
    :cond_0
    const/4 v3, 0x5

    if-lt v1, v3, :cond_1

    .line 476
    iget v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    .line 481
    :cond_1
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 458
    return-void

    :cond_2
    move v3, v5

    .line 470
    goto :goto_0

    :cond_3
    move v4, v5

    .line 472
    goto :goto_1
.end method

.method public setOverride(Z)V
    .locals 1
    .param p1, "override"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 214
    return-void
.end method

.method public setSubId(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 220
    iput p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 219
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 206
    iput p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 205
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 431
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 436
    .local v1, "sizePosition":I
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 440
    .local v2, "startPosition":I
    iget v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    iget-boolean v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    iget-boolean v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    .line 447
    iget v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .line 452
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 453
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 428
    return-void

    .end local v0    # "parcelableSize":I
    :cond_1
    move v3, v5

    .line 441
    goto :goto_0

    :cond_2
    move v4, v5

    .line 443
    goto :goto_1
.end method
