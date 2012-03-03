.class public final Lcom/lge/provider/Andy_AdditionalTelephony$Andy_Sms;
.super Ljava/lang/Object;
.source "Andy_AdditionalTelephony.java"


# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/lge/provider/Andy_AdditionalTelephony$Andy_TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/Andy_AdditionalTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Andy_Sms"
.end annotation


# static fields
.field private static final COLUMNS_VALUE:Ljava/lang/String; = "value"

.field public static final KEY_MESSAGE_RECEIVE:Ljava/lang/String; = "message_receive"

.field public static final KEY_SERVICE_LOADING:Ljava/lang/String; = "service_loading"

.field public static final SERVICE_LOADING_TYPE_ALWAYS:I = 0x0

.field public static final SERVICE_LOADING_TYPE_DISABLE:I = 0x2

.field public static final SERVICE_LOADING_TYPE_PROMPT:I = 0x1

.field public static final SERVICE_MESSAGE_ADDRESS:Ljava/lang/String; = "Service Message"

.field public static final SERVICE_SETTING_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SETTING_MESSAGE_ADDRESS:Ljava/lang/String; = "Setting Message"



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 126
    const-string v0, "content://com.lge.wapservice.provider.settings/settings/key"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/Andy_AdditionalTelephony$Andy_Sms;->SERVICE_SETTING_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReceiveServiceMessage(Landroid/content/ContentResolver;)Z
    .registers 9
    .parameter "resolver"

    .prologue
    .line 170
    const/4 v6, 0x0

    .line 172
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    sget-object v0, Lcom/lge/provider/Andy_AdditionalTelephony$Andy_Sms;->SERVICE_SETTING_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "message_receive"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 174
    if-eqz v6, :cond_31

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 176
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, value:Ljava/lang/String;
    const-string v0, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_38

    move-result v0

    .line 181
    if-eqz v6, :cond_30

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 186
    .end local v7       #value:Ljava/lang/String;,
    :cond_30
    :goto_30
    return v0

    .line 181
    :cond_31
    if-eqz v6, :cond_36

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_36
    const/4 v0, 0x1

    goto :goto_30

    .line 181
    :catchall_38
    move-exception v0

    if-eqz v6, :cond_3e

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3e
    throw v0
.end method

.method public static getServiceLoadingType(Landroid/content/ContentResolver;)I
    .registers 12
    .parameter "resolver"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 202
    const/4 v6, 0x0

    .line 204
    .local v6, c:Landroid/database/Cursor;
    :try_start_3
    sget-object v0, Lcom/lge/provider/Andy_AdditionalTelephony$Andy_Sms;->SERVICE_SETTING_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "service_loading"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 206
    if-eqz v6, :cond_50

    .line 207
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 208
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 209
    .local v8, value:Ljava/lang/String;
    if-eqz v8, :cond_50

    .line 210
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_57

    move-result v7

    .line 211
    .local v7, intValue:I
    if-nez v7, :cond_37

    .line 212
    const/4 v0, 0x0

    .line 224
    if-eqz v6, :cond_36

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 229
    .end local v7       #intValue:I,
    .end local v8       #value:Ljava/lang/String;,
    :cond_36
    :goto_36
    return v0

    .line 213
    .restart local v7       #intValue:I,
    .restart local v8       #value:Ljava/lang/String;,
    :cond_37
    if-ne v7, v9, :cond_40

    .line 224
    if-eqz v6, :cond_3e

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3e
    move v0, v9

    goto :goto_36

    .line 215
    :cond_40
    if-ne v7, v10, :cond_49

    .line 224
    if-eqz v6, :cond_47

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_47
    move v0, v10

    goto :goto_36

    .line 224
    :cond_49
    if-eqz v6, :cond_4e

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4e
    move v0, v9

    goto :goto_36

    .line 224
    .end local v7       #intValue:I,
    .end local v8       #value:Ljava/lang/String;,
    :cond_50
    if-eqz v6, :cond_55

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_55
    move v0, v9

    .line 229
    goto :goto_36

    .line 224
    :catchall_57
    move-exception v0

    if-eqz v6, :cond_5d

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5d
    throw v0
.end method

.method public static isServiceMsgAddress(Ljava/lang/String;)Z
    .registers 2
    .parameter "address"

    .prologue
    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 151
    const/4 v0, 0x0

    .line 154
    :goto_7
    return v0

    :cond_8
    const-string v0, "Service Message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method public static isSettingMsgAddress(Ljava/lang/String;)Z
    .registers 2
    .parameter "address"

    .prologue
    .line 142
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 143
    const/4 v0, 0x0

    .line 146
    :goto_7
    return v0

    :cond_8
    const-string v0, "Setting Message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method public static setReceiveServiceMessage(Landroid/content/ContentResolver;Z)V
    .registers 7
    .parameter "resolver"
    .parameter "recv"

    .prologue
    .line 160
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 161
    .local v1, values:Landroid/content/ContentValues;
    const-string/jumbo v2, "value"

    if-eqz p1, :cond_1e

    const-string v3, "1"

    :goto_d
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v2, Lcom/lge/provider/Andy_AdditionalTelephony$Andy_Sms;->SERVICE_SETTING_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "message_receive"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    .end local v1       #values:Landroid/content/ContentValues;,
    :goto_1d
    return-void

    .line 161
    .restart local v1       #values:Landroid/content/ContentValues;,
    :cond_1e
    const-string v3, "0"
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_d

    .line 164
    .end local v1       #values:Landroid/content/ContentValues;,
    :catch_21
    move-exception v2

    move-object v0, v2

    .line 165
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1d
.end method

.method public static setServiceLoadingType(Landroid/content/ContentResolver;I)V
    .registers 7
    .parameter "resolver"
    .parameter "type"

    .prologue
    .line 192
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 193
    .local v1, values:Landroid/content/ContentValues;
    const-string/jumbo v2, "value"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v2, Lcom/lge/provider/Andy_AdditionalTelephony$Andy_Sms;->SERVICE_SETTING_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "service_loading"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 199
    .end local v1       #values:Landroid/content/ContentValues;,
    :goto_1e
    return-void

    .line 196
    :catch_1f
    move-exception v2

    move-object v0, v2

    .line 197
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1e
.end method
