.class Landroid/app/DownloadManager$CursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorTranslator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z



# instance fields
.field private mBaseUri:Landroid/net/Uri;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 914
    const-class v0, Landroid/app/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;)V
    .registers 3
    .parameter "cursor"
    .parameter "baseUri"

    .prologue
    .line 918
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 919
    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 920
    return-void
.end method

.method private getErrorCode(I)J
    .registers 4
    .parameter "status"

    .prologue
    .line 1105
    const/16 v0, 0x190

    if-gt v0, p1, :cond_8

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_12

    const/16 v0, 0x258

    if-ge p1, v0, :cond_12

    .line 1108
    :cond_10
    int-to-long v0, p1

    .line 1143
    :goto_11
    return-wide v0

    .line 1111
    :cond_12
    packed-switch p1, :pswitch_data_34

    .line 1143
    :pswitch_15
    const-wide/16 v0, 0x3e8

    goto :goto_11

    .line 1113
    :pswitch_18
    const-wide/16 v0, 0x3e9

    goto :goto_11

    .line 1117
    :pswitch_1b
    const-wide/16 v0, 0x3ea

    goto :goto_11

    .line 1120
    :pswitch_1e
    const-wide/16 v0, 0x3ec

    goto :goto_11

    .line 1123
    :pswitch_21
    const-wide/16 v0, 0x3ed

    goto :goto_11

    .line 1126
    :pswitch_24
    const-wide/16 v0, 0x3ee

    goto :goto_11

    .line 1129
    :pswitch_27
    const-wide/16 v0, 0x3ef

    goto :goto_11

    .line 1132
    :pswitch_2a
    const-wide/16 v0, 0x3f0

    goto :goto_11

    .line 1135
    :pswitch_2d
    const-wide/16 v0, 0x3f1

    goto :goto_11

    .line 1139
    :pswitch_30
    const-wide/16 v0, 0x3f2

    goto :goto_11

    .line 1111
    nop

    :pswitch_data_34
    .packed-switch 0x1e7
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_15
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1b
        :pswitch_1e
        :pswitch_15
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .registers 8

    .prologue
    .line 1022
    const-string v5, "destination"

    invoke-direct {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1023
    .local v0, destinationType:J
    const-wide/16 v5, 0x4

    cmp-long v5, v0, v5

    if-nez v5, :cond_13

    .line 1025
    const-string v5, "hint"

    invoke-direct {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1039
    :goto_12
    return-object v5

    .line 1028
    :cond_13
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-nez v5, :cond_31

    .line 1030
    const-string v5, "_data"

    invoke-direct {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1031
    .local v4, localPath:Ljava/lang/String;
    if-nez v4, :cond_23

    .line 1032
    const/4 v5, 0x0

    goto :goto_12

    .line 1034
    :cond_23
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_12

    .line 1038
    .end local v4       #localPath:Ljava/lang/String;,
    :cond_31
    const-string v5, "_id"

    invoke-direct {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1039
    .local v2, downloadId:J
    iget-object v5, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_12
.end method

.method private getPausedReason(I)J
    .registers 4
    .parameter "status"

    .prologue
    .line 1089
    packed-switch p1, :pswitch_data_10

    .line 1100
    const-wide/16 v0, 0x4

    :goto_5
    return-wide v0

    .line 1091
    :pswitch_6
    const-wide/16 v0, 0x1

    goto :goto_5

    .line 1094
    :pswitch_9
    const-wide/16 v0, 0x2

    goto :goto_5

    .line 1097
    :pswitch_c
    const-wide/16 v0, 0x3

    goto :goto_5

    .line 1089
    nop

    :pswitch_data_10
    .packed-switch 0xc2
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private getReason(I)J
    .registers 5
    .parameter "status"

    .prologue
    const-wide/16 v1, 0x0

    .line 1068
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_26

    move-wide v0, v1

    .line 1084
    :goto_a
    return-wide v0

    .line 1070
    :sswitch_b
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    goto :goto_a

    .line 1073
    :sswitch_10
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    goto :goto_a

    .line 1077
    :sswitch_15
    const/16 v0, 0x122

    if-ne p1, v0, :cond_1c

    .line 1078
    const-wide/16 v0, 0x5

    goto :goto_a

    .line 1079
    :cond_1c
    const/16 v0, 0x123

    if-ne p1, v0, :cond_23

    .line 1080
    const-wide/16 v0, 0x6

    goto :goto_a

    :cond_23
    move-wide v0, v1

    .line 1081
    goto :goto_a

    .line 1068
    nop

    :sswitch_data_26
    .sparse-switch
        0x4 -> :sswitch_10
        0x8 -> :sswitch_15
        0x10 -> :sswitch_b
    .end sparse-switch
.end method

.method private getUnderlyingLong(Ljava/lang/String;)J
    .registers 4
    .parameter "column"

    .prologue
    .line 1148
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "column"

    .prologue
    .line 1152
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isLongColumn(Ljava/lang/String;)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 969
    invoke-static {}, Landroid/app/DownloadManager;->access$100()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private translateLong(Ljava/lang/String;)J
    .registers 5
    .parameter "column"

    .prologue
    const-string v2, "_id"

    const-string/jumbo v1, "status"

    .line 1043
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->isLongColumn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1045
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1064
    :goto_17
    return-wide v0

    .line 1048
    :cond_18
    const-string v0, "_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1049
    const-string v0, "_id"

    invoke-direct {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_17

    .line 1051
    :cond_27
    const-string/jumbo v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1052
    const-string/jumbo v0, "total_bytes"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_17

    .line 1054
    :cond_38
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1055
    const-string/jumbo v0, "status"

    invoke-direct {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_17

    .line 1057
    :cond_4f
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1058
    const-string/jumbo v0, "status"

    invoke-direct {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getReason(I)J

    move-result-wide v0

    goto :goto_17

    .line 1060
    :cond_65
    const-string v0, "bytes_so_far"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1061
    const-string v0, "current_bytes"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_17

    .line 1063
    :cond_74
    sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_86

    const-string v0, "last_modified_timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1064
    :cond_86
    const-string v0, "lastmod"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_17
.end method

.method private translateStatus(I)I
    .registers 3
    .parameter "status"

    .prologue
    const/16 v0, 0x8

    .line 1156
    sparse-switch p1, :sswitch_data_1e

    .line 1179
    sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_1b

    invoke-static {p1}, Landroid/provider/Downloads;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1158
    :sswitch_15
    const/4 v0, 0x1

    .line 1180
    :goto_16
    :sswitch_16
    return v0

    .line 1161
    :sswitch_17
    const/4 v0, 0x2

    goto :goto_16

    .line 1167
    :sswitch_19
    const/4 v0, 0x4

    goto :goto_16

    .line 1180
    :cond_1b
    const/16 v0, 0x10

    goto :goto_16

    .line 1156
    :sswitch_data_1e
    .sparse-switch
        0xbe -> :sswitch_15
        0xc0 -> :sswitch_17
        0xc1 -> :sswitch_19
        0xc2 -> :sswitch_19
        0xc3 -> :sswitch_19
        0xc4 -> :sswitch_19
        0xc8 -> :sswitch_16
        0x122 -> :sswitch_16
        0x123 -> :sswitch_16
    .end sparse-switch
.end method

.method private translateString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "column"

    .prologue
    const-string/jumbo v4, "uri"

    const-string/jumbo v3, "title"

    const-string v2, "mediaprovider_uri"

    const-string v1, "description"

    .line 998
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->isLongColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 999
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 1018
    :goto_18
    return-object v0

    .line 1001
    :cond_19
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1002
    const-string/jumbo v0, "title"

    invoke-direct {p0, v3}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1004
    :cond_2a
    const-string v0, "description"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1005
    const-string v0, "description"

    invoke-direct {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1007
    :cond_39
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1008
    const-string/jumbo v0, "uri"

    invoke-direct {p0, v4}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1010
    :cond_4a
    const-string v0, "media_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1011
    const-string v0, "mimetype"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1013
    :cond_59
    const-string v0, "mediaprovider_uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1014
    const-string v0, "mediaprovider_uri"

    invoke-direct {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1017
    :cond_68
    sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_7a

    const-string v0, "local_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1018
    :cond_7a
    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method


# virtual methods
.method public getBlob(I)[B
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 960
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getColumnCount()I
    .registers 2

    .prologue
    .line 955
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 3
    .parameter "columnName"

    .prologue
    .line 924
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 6
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 929
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 930
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    .line 931
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 933
    :cond_20
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 6
    .parameter "columnIndex"

    .prologue
    .line 938
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    .line 939
    .local v0, numColumns:I
    if-ltz p1, :cond_9

    if-lt p1, v0, :cond_32

    .line 940
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid column index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " columns exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 943
    :cond_32
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    return-object v1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 948
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/String;

    .line 949
    .local v0, returnColumns:[Ljava/lang/String;
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 950
    return-object v0
.end method

.method public getDouble(I)D
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 965
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 974
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInt(I)I
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 979
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 984
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->translateLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 989
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 994
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->translateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
