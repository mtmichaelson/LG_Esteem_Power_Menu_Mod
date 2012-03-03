.class public final Lcom/lge/provider/Andy_AdditionalTelephony$Andy_AdditionalIntents;
.super Ljava/lang/Object;
.source "Andy_AdditionalTelephony.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/Andy_AdditionalTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Andy_AdditionalIntents"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCBSMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .registers 9
    .parameter "intent"

    .prologue
    .line 249
    const-string/jumbo v7, "pdus"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    .end local p0       
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 250
    .local v2, messages:[Ljava/lang/Object;
    array-length v7, v2

    new-array v5, v7, [[B

    .line 252
    .local v5, pduObjs:[[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    array-length v7, v2

    if-ge v1, v7, :cond_1f

    .line 253
    aget-object p0, v2, v1

    check-cast p0, [B

    check-cast p0, [B

    aput-object p0, v5, v1

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 255
    :cond_1f
    array-length v7, v5

    new-array v6, v7, [[B

    .line 256
    .local v6, pdus:[[B
    array-length v4, v6

    .line 257
    .local v4, pduCount:I
    new-array v3, v4, [Landroid/telephony/SmsMessage;

    .line 258
    .local v3, msgs:[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    :goto_26
    if-ge v1, v4, :cond_37

    .line 259
    aget-object v7, v5, v1

    aput-object v7, v6, v1

    .line 260
    aget-object v7, v6, v1

    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v3, v1

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 262
    :cond_37
    return-object v3
.end method
