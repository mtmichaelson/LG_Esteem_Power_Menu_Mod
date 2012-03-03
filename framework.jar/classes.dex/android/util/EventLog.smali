.class public Landroid/util/EventLog;
.super Ljava/lang/Object;
.source "EventLog.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/EventLog$Event;
    }
.end annotation


# static fields
.field private static final COMMENT_PATTERN:Ljava/lang/String; = "^\\s*(#.*)?$"

.field private static final TAG:Ljava/lang/String; = "EventLog"

.field private static final TAGS_FILE:Ljava/lang/String; = "/system/etc/event-log-tags"

.field private static final TAG_PATTERN:Ljava/lang/String; = "^\\s*(\\d+)\\s+(\\w+)\\s*(\\(.*\\))?\\s*$"

.field private static sTagCodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sTagNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput-object v0, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    .line 51
    sput-object v0, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static getTagCode(Ljava/lang/String;)I
    .registers 3
    .parameter "name"

    .prologue
    .line 209
    invoke-static {}, Landroid/util/EventLog;->readTagsFile()V

    .line 210
    sget-object v1, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 211
    .local v0, code:Ljava/lang/Integer;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_11
    return v1

    :cond_12
    const/4 v1, -0x1

    goto :goto_11
.end method

.method public static getTagName(I)Ljava/lang/String;
    .registers 3
    .parameter "tag"

    .prologue
    .line 199
    invoke-static {}, Landroid/util/EventLog;->readTagsFile()V

    .line 200
    sget-object v0, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static native readEvents([ILjava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/EventLog$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation.end method

.method private static declared-synchronized readTagsFile()V
    .registers 13

    .prologue
    const-string v9, "EventLog"

    .line 218
    const-class v9, Landroid/util/EventLog;

    monitor-enter v9

    :try_start_5
    sget-object v10, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    if-eqz v10, :cond_f

    sget-object v10, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_c1

    if-eqz v10, :cond_f

    .line 254
    :cond_d
    :goto_d
    monitor-exit v9

    return-void

    .line 220
    :cond_f
    :try_start_f
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    .line 221
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    .line 223
    const-string v10, "^\\s*(#.*)?$"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 224
    .local v0, comment:Ljava/util/regex/Pattern;
    const-string v10, "^\\s*(\\d+)\\s+(\\w+)\\s*(\\(.*\\))?\\s*$"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_c1

    move-result-object v8

    .line 225
    .local v8, tag:Ljava/util/regex/Pattern;
    const/4 v6, 0x0

    .line 229
    .local v6, reader:Ljava/io/BufferedReader;
    :try_start_2a
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    const-string v11, "/system/etc/event-log-tags"

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x100

    invoke-direct {v7, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_d2
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_38} :catch_d4

    .line 230
    .end local v6       #reader:Ljava/io/BufferedReader;,
    .local v7, reader:Ljava/io/BufferedReader;
    :cond_38
    :goto_38
    :try_start_38
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_c4

    .line 231
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_38

    .line 233
    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 234
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_7d

    .line 235
    const-string v10, "EventLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad entry in /system/etc/event-log-tags: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_38 .. :try_end_6a} :catchall_b9
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_6a} :catch_6b

    goto :goto_38

    .line 248
    .end local v2       #line:Ljava/lang/String;,
    .end local v3       #m:Ljava/util/regex/Matcher;,
    :catch_6b
    move-exception v10

    move-object v1, v10

    move-object v6, v7

    .line 249
    .end local v7       #reader:Ljava/io/BufferedReader;,
    .local v1, e:Ljava/io/IOException;
    .restart local v6       #reader:Ljava/io/BufferedReader;,
    :goto_6e
    :try_start_6e
    const-string v10, "EventLog"

    const-string v11, "Error reading /system/etc/event-log-tags"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_d2

    .line 252
    if-eqz v6, :cond_d

    :try_start_77
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_c1
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_d

    :catch_7b
    move-exception v10

    goto :goto_d

    .line 240
    .end local v1       #e:Ljava/io/IOException;,
    .end local v6       #reader:Ljava/io/BufferedReader;,
    .restart local v2       #line:Ljava/lang/String;,
    .restart local v3       #m:Ljava/util/regex/Matcher;,
    .restart local v7       #reader:Ljava/io/BufferedReader;,
    :cond_7d
    const/4 v10, 0x1

    :try_start_7e
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 241
    .local v5, num:I
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, name:Ljava/lang/String;
    sget-object v10, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v10, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9d
    .catchall {:try_start_7e .. :try_end_9d} :catchall_b9
    .catch Ljava/lang/NumberFormatException; {:try_start_7e .. :try_end_9d} :catch_9e
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_9d} :catch_6b

    goto :goto_38

    .line 244
    .end local v4       #name:Ljava/lang/String;,
    .end local v5       #num:I,
    :catch_9e
    move-exception v10

    move-object v1, v10

    .line 245
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_a0
    const-string v10, "EventLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in /system/etc/event-log-tags: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b8
    .catchall {:try_start_a0 .. :try_end_b8} :catchall_b9
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_b8} :catch_6b

    goto :goto_38

    .line 252
    .end local v1       #e:Ljava/lang/NumberFormatException;,
    .end local v2       #line:Ljava/lang/String;,
    .end local v3       #m:Ljava/util/regex/Matcher;,
    :catchall_b9
    move-exception v10

    move-object v6, v7

    .end local v7       #reader:Ljava/io/BufferedReader;,
    .restart local v6       #reader:Ljava/io/BufferedReader;,
    :goto_bb
    if-eqz v6, :cond_c0

    :try_start_bd
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_c1
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_d0

    :cond_c0
    :goto_c0
    :try_start_c0
    throw v10
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_c1

    .line 218
    .end local v0       #comment:Ljava/util/regex/Pattern;,
    .end local v6       #reader:Ljava/io/BufferedReader;,
    .end local v8       #tag:Ljava/util/regex/Pattern;,
    :catchall_c1
    move-exception v10

    monitor-exit v9

    throw v10

    .line 252
    .restart local v0       #comment:Ljava/util/regex/Pattern;,
    .restart local v2       #line:Ljava/lang/String;,
    .restart local v7       #reader:Ljava/io/BufferedReader;,
    .restart local v8       #tag:Ljava/util/regex/Pattern;,
    :cond_c4
    if-eqz v7, :cond_c9

    :try_start_c6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_c1
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_cc

    :cond_c9
    move-object v6, v7

    .end local v7       #reader:Ljava/io/BufferedReader;,
    .restart local v6       #reader:Ljava/io/BufferedReader;,
    goto/16 :goto_d

    .end local v6       #reader:Ljava/io/BufferedReader;,
    .restart local v7       #reader:Ljava/io/BufferedReader;,
    :catch_cc
    move-exception v10

    move-object v6, v7

    .line 253
    .end local v7       #reader:Ljava/io/BufferedReader;,
    .restart local v6       #reader:Ljava/io/BufferedReader;,
    goto/16 :goto_d

    .line 252
    .end local v2       #line:Ljava/lang/String;,
    :catch_d0
    move-exception v11

    goto :goto_c0

    :catchall_d2
    move-exception v10

    goto :goto_bb

    .line 248
    :catch_d4
    move-exception v10

    move-object v1, v10

    goto :goto_6e
.end method

.method public static native writeEvent(II)I
.end method

.method public static native writeEvent(IJ)I
.end method

.method public static native writeEvent(ILjava/lang/String;)I
.end method

.method public static varargs native writeEvent(I[Ljava/lang/Object;)I
.end method
