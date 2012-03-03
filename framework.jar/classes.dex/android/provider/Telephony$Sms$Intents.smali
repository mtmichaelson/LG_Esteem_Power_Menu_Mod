.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DELETE_SIM_MESSAGE_ACTION:Ljava/lang/String; = "android.provider.Telephony.DELETE_SIM_MESSAGE"

.field public static final DIRECTED_SMS_RECEIVED_ACTION:Ljava/lang/String; = "verizon.intent.action.DIRECTED_SMS_RECEIVED"

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_RESTRICTED:I = 0x5

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .registers 11
    .parameter "intent"

    .prologue
    const/4 v9, -0x1

    .line 780
    const-string/jumbo v8, "pdus"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 781
    .local v3, messages:[Ljava/lang/Object;
    array-length v8, v3

    new-array v6, v8, [[B

    .line 783
    .local v6, pduObjs:[[B
    const-string v8, "encoding"

    invoke-virtual {p0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 785
    .local v1, encoding:I
    const/4 v2, 0x0

    .end local p0       
    .local v2, i:I
    :goto_18
    array-length v8, v3

    if-ge v2, v8, :cond_26

    .line 786
    aget-object p0, v3, v2

    check-cast p0, [B

    check-cast p0, [B

    aput-object p0, v6, v2

    .line 785
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 788
    :cond_26
    array-length v8, v6

    new-array v7, v8, [[B

    .line 789
    .local v7, pdus:[[B
    array-length v5, v7

    .line 790
    .local v5, pduCount:I
    new-array v4, v5, [Landroid/telephony/SmsMessage;

    .line 791
    .local v4, msgs:[Landroid/telephony/SmsMessage;
    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v5, :cond_49

    .line 792
    aget-object v8, v6, v2

    aput-object v8, v7, v2

    .line 793
    if-eq v9, v1, :cond_40

    .line 794
    aget-object v8, v7, v2

    invoke-static {v8, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v8

    aput-object v8, v4, v2

    .line 791
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 796
    :cond_40
    aget-object v8, v7, v2

    invoke-static {v8}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v8

    aput-object v8, v4, v2

    goto :goto_3d

    .line 799
    :cond_49
    return-object v4
.end method
