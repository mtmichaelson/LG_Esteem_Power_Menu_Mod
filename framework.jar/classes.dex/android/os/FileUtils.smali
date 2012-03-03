.class public Landroid/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileUtils$FileStatus;
    }
.end annotation


# static fields
.field private static final SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 6
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    .line 113
    const/4 v2, 0x0

    .line 115
    .local v2, result:Z
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_13

    .line 117
    .local v1, in:Ljava/io/InputStream;
    :try_start_6
    invoke-static {v1, p1}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_e

    move-result v2

    .line 119
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 124
    .end local v1       #in:Ljava/io/InputStream;,
    :goto_d
    return v2

    .line 119
    .restart local v1       #in:Ljava/io/InputStream;,
    :catchall_e
    move-exception v3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v3
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_13

    .line 121
    .end local v1       #in:Ljava/io/InputStream;,
    :catch_13
    move-exception v3

    move-object v0, v3

    .line 122
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 9
    .parameter "inputStream"
    .parameter "destFile"

    .prologue
    const/4 v6, 0x0

    .line 133
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 134
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 136
    :cond_a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_2d

    .line 138
    .local v3, out:Ljava/io/FileOutputStream;
    const/16 v4, 0x1000

    :try_start_11
    new-array v0, v4, [B

    .line 140
    .local v0, buffer:[B
    :goto_13
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    if-ltz v1, :cond_31

    .line 141
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1e

    goto :goto_13

    .line 144
    .end local v0       #buffer:[B,
    .end local v1       #bytesRead:I,
    :catchall_1e
    move-exception v4

    :try_start_1f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2d

    .line 146
    :try_start_22
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_29} :catch_40

    .line 149
    :goto_29
    :try_start_29
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 152
    .end local v3       #out:Ljava/io/FileOutputStream;,
    :catch_2d
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/io/IOException;
    move v4, v6

    .line 153
    .end local v2       #e:Ljava/io/IOException;,
    :goto_30
    return v4

    .line 144
    .restart local v0       #buffer:[B,
    .restart local v1       #bytesRead:I,
    .restart local v3       #out:Ljava/io/FileOutputStream;,
    :cond_31
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_34} :catch_2d

    .line 146
    :try_start_34
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3b} :catch_42

    .line 149
    :goto_3b
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_2d

    .line 151
    const/4 v4, 0x1

    goto :goto_30

    .line 147
    .end local v0       #buffer:[B,
    .end local v1       #bytesRead:I,
    :catch_40
    move-exception v5

    goto :goto_29

    .restart local v0       #buffer:[B,
    .restart local v1       #bytesRead:I,
    :catch_42
    move-exception v4

    goto :goto_3b
.end method

.method public static native getFatVolumeId(Ljava/lang/String;)I
.end method

.method public static native getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z
.end method

.method public static native getPermissions(Ljava/lang/String;[I)I
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .registers 3
    .parameter "file"

    .prologue
    .line 165
    sget-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "file"
    .parameter "max"
    .parameter "ellipsis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 179
    .local v0, input:Ljava/io/InputStream;
    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 180
    .local v1, size:J
    if-gtz p1, :cond_13

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_66

    .end local p0       
    if-nez p1, :cond_66

    .line 181
    :cond_13
    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_21

    if-eqz p1, :cond_20

    int-to-long v3, p1

    cmp-long p0, v1, v3

    if-gez p0, :cond_21

    :cond_20
    long-to-int p1, v1

    .line 182
    :cond_21
    add-int/lit8 p0, p1, 0x1

    new-array p0, p0, [B

    .line 183
    .local p0, data:[B
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 184
    .local v1, length:I
    if-gtz v1, :cond_31

    const-string p0, ""
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_ed

    .line 219
    .end local p0       #data:[B,
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .end local v1       #length:I,
    .end local p2       
    :goto_30
    return-object p0

    .line 185
    .restart local v1       #length:I,
    .restart local p0       #data:[B,
    .restart local p2       
    :cond_31
    if-gt v1, p1, :cond_3e

    :try_start_33
    new-instance p2, Ljava/lang/String;

    .end local p2       
    const/4 v2, 0x0

    invoke-direct {p2, p0, v2, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_ed

    .line 219
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    move-object p0, p2

    goto :goto_30

    .line 186
    .restart local p2       
    :cond_3e
    if-nez p2, :cond_4b

    :try_start_40
    new-instance p2, Ljava/lang/String;

    .end local p2       
    const/4 v1, 0x0

    invoke-direct {p2, p0, v1, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_ed

    .line 219
    .end local v1       #length:I,
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    move-object p0, p2

    goto :goto_30

    .line 187
    .restart local v1       #length:I,
    .restart local p2       
    :cond_4b
    :try_start_4b
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1       #length:I,
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0       #data:[B,
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_61
    .catchall {:try_start_4b .. :try_end_61} :catchall_ed

    move-result-object p0

    .line 219
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_30

    .line 188
    .local v1, size:J
    :cond_66
    if-gez p1, :cond_ce

    .line 190
    const/4 v2, 0x0

    .line 191
    .end local v1       #size:J,
    .local v2, rolled:Z
    const/4 v1, 0x0

    .local v1, last:[B
    const/4 p0, 0x0

    .line 193
    .restart local p0       #data:[B,
    :goto_6b
    if-eqz v1, :cond_f5

    const/4 v2, 0x1

    move v3, v2

    .line 194
    .end local v2       #rolled:Z,
    .local v3, rolled:Z
    :goto_6f
    move-object v2, v1

    .local v2, tmp:[B
    move-object v1, p0

    move-object p0, v2

    .line 195
    if-nez p0, :cond_77

    neg-int p0, p1

    :try_start_75
    new-array p0, p0, [B

    .line 196
    :cond_77
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 197
    .local v2, len:I
    array-length v4, p0

    if-eq v2, v4, :cond_f2

    .line 199
    if-nez v1, :cond_88

    if-gtz v2, :cond_88

    const-string p0, ""
    :try_end_84
    .catchall {:try_start_75 .. :try_end_84} :catchall_ed

    .line 219
    .end local p0       #data:[B,
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_30

    .line 200
    .restart local p0       #data:[B,
    :cond_88
    if-nez v1, :cond_95

    :try_start_8a
    new-instance p2, Ljava/lang/String;

    .end local p2       
    const/4 v1, 0x0

    invoke-direct {p2, p0, v1, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_90
    .catchall {:try_start_8a .. :try_end_90} :catchall_ed

    .line 219
    .end local v1       #last:[B,
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    move-object p0, p2

    goto :goto_30

    .line 201
    .restart local v1       #last:[B,
    .restart local p2       
    :cond_95
    if-lez v2, :cond_a4

    .line 202
    const/4 v3, 0x1

    .line 203
    const/4 v4, 0x0

    :try_start_99
    array-length v5, v1

    sub-int/2addr v5, v2

    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    const/4 v4, 0x0

    array-length v5, v1

    sub-int/2addr v5, v2

    invoke-static {p0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a4
    move p0, v3

    .line 206
    .end local v3       #rolled:Z,
    .local p0, rolled:Z
    if-eqz p2, :cond_a9

    if-nez p0, :cond_b3

    :cond_a9
    new-instance p0, Ljava/lang/String;

    .end local p0       #rolled:Z,
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_ae
    .catchall {:try_start_99 .. :try_end_ae} :catchall_ed

    .line 219
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_30

    .line 207
    .restart local p0       #rolled:Z,
    :cond_b3
    :try_start_b3
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0       #rolled:Z,
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance p2, Ljava/lang/String;

    .end local p2       
    invoke-direct {p2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c8
    .catchall {:try_start_b3 .. :try_end_c8} :catchall_ed

    move-result-object p0

    .line 219
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_30

    .line 209
    .end local v2       #len:I,
    .local v1, size:J
    .restart local p2       
    :cond_ce
    :try_start_ce
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 211
    .local p0, contents:Ljava/io/ByteArrayOutputStream;
    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 213
    .end local v1       #size:J,
    .local p2, data:[B
    :cond_d7
    invoke-virtual {v0, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 214
    .local v1, len:I
    if-lez v1, :cond_e1

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 215
    :cond_e1
    array-length v2, p2

    if-eq v1, v2, :cond_d7

    .line 216
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_e7
    .catchall {:try_start_ce .. :try_end_e7} :catchall_ed

    move-result-object p0

    .line 219
    .end local p0       #contents:Ljava/io/ByteArrayOutputStream;,
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_30

    .end local v1       #len:I,
    .end local p2       #data:[B,
    :catchall_ed
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p0

    .local v1, last:[B
    .restart local v2       #len:I,
    .restart local v3       #rolled:Z,
    .local p0, data:[B
    .local p2, ellipsis:Ljava/lang/String;
    :cond_f2
    move v2, v3

    .end local v3       #rolled:Z,
    .local v2, rolled:Z
    goto/16 :goto_6b

    :cond_f5
    move v3, v2

    .end local v2       #rolled:Z,
    .restart local v3       #rolled:Z,
    goto/16 :goto_6f
.end method

.method public static native setPermissions(Ljava/lang/String;III)I
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .registers 2
    .parameter "stream"

    .prologue
    .line 101
    if-eqz p0, :cond_9

    .line 102
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_b

    .line 104
    :cond_9
    const/4 v0, 0x1

    .line 107
    :goto_a
    return v0

    .line 105
    :catch_b
    move-exception v0

    .line 107
    const/4 v0, 0x0

    goto :goto_a
.end method
