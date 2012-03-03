.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;,
        Landroid/media/MediaFile$AVTypeList;
    }
.end annotation


# static fields
.field private static AVTypeCount:I = 0x0

.field public static final FILE_TYPE_3GPA:I = 0xa

.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AC3:I = 0xb

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AVI:I = 0x1d

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x26

.field public static final FILE_TYPE_DCF:I = 0x34

.field public static final FILE_TYPE_DIVX:I = 0x1e

.field public static final FILE_TYPE_DM:I = 0x33

.field public static final FILE_TYPE_FLV:I = 0x1f

.field public static final FILE_TYPE_GIF:I = 0x24

.field public static final FILE_TYPE_IMY:I = 0xf

.field public static final FILE_TYPE_JPEG:I = 0x23

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0xd

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1b

.field public static final FILE_TYPE_MOV:I = 0x20

.field public static final FILE_TYPE_MP2TS:I = 0x1c

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_O4A:I = 0x37

.field public static final FILE_TYPE_O4V:I = 0x36

.field public static final FILE_TYPE_ODF:I = 0x35

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_OGM:I = 0x21

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x25

.field public static final FILE_TYPE_QCP:I = 0xc

.field public static final FILE_TYPE_SMF:I = 0xe

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x27

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_DRM_FILE_TYPE:I = 0x33

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x23

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xd

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xc

.field private static final LAST_DRM_FILE_TYPE:I = 0x37

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x27

.field private static final LAST_MIDI_FILE_TYPE:I = 0xf

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2b

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x21

.field private static sAVTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/MediaFile$AVTypeList;",
            ">;"
        }
    .end annotation
.end field

.field public static final sFileExtensions:Ljava/lang/String;

.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeMap:Ljava/util/HashMap;
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



# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x7

    const/16 v5, 0xd

    const-string v7, "application/vnd.oma.drm.dcf"

    const-string v6, "audio/midi"

    .line 112
    const/4 v2, 0x0

    sput v2, Landroid/media/MediaFile;->AVTypeCount:I

    .line 125
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sAVTypeMap:Ljava/util/HashMap;

    .line 140
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 142
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 182
    const-string v2, "MP3"

    const/4 v3, 0x1

    const-string v4, "audio/mpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 183
    const-string v2, "M4A"

    const/4 v3, 0x2

    const-string v4, "audio/mp4"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 184
    const-string v2, "WAV"

    const/4 v3, 0x3

    const-string v4, "audio/x-wav"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 185
    const-string v2, "AMR"

    const/4 v3, 0x4

    const-string v4, "audio/amr"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    const-string v2, "AWB"

    const/4 v3, 0x5

    const-string v4, "audio/amr-wb"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 187
    invoke-static {}, Landroid/media/MediaFile;->isWMAEnabled()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 188
    const-string v2, "WMA"

    const/4 v3, 0x6

    const-string v4, "audio/x-ms-wma"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    :cond_57
    const-string v2, "QCP"

    const/16 v3, 0xc

    const-string v4, "audio/qcp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 191
    const-string v2, "OGG"

    const-string v3, "application/ogg"

    invoke-static {v2, v8, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    const-string v2, "OGA"

    const-string v3, "application/ogg"

    invoke-static {v2, v8, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 193
    const-string v2, "AAC"

    const/16 v3, 0x8

    const-string v4, "audio/aac"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 194
    const-string v2, "MKA"

    const/16 v3, 0x9

    const-string v4, "audio/x-matroska"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    const-string v2, "3GPP"

    const-string v3, "audio/3gpp"

    invoke-static {v2, v9, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 196
    const-string v2, "3GA"

    const-string v3, "audio/3gpp"

    invoke-static {v2, v9, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    const-string v2, "MID"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    const-string v2, "MIDI"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    const-string v2, "XMF"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    const-string v2, "RTTTL"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 201
    const-string v2, "SMF"

    const/16 v3, 0xe

    const-string v4, "audio/sp-midi"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    const-string v2, "IMY"

    const/16 v3, 0xf

    const-string v4, "audio/imelody"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    const-string v2, "RTX"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 204
    const-string v2, "OTA"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    const-string v2, "MPEG"

    const/16 v3, 0x15

    const-string/jumbo v4, "video/mpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 207
    const-string v2, "MP4"

    const/16 v3, 0x15

    const-string/jumbo v4, "video/mp4"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 208
    const-string v2, "M4V"

    const/16 v3, 0x16

    const-string/jumbo v4, "video/mp4"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 209
    const-string v2, "3GP"

    const/16 v3, 0x17

    const-string/jumbo v4, "video/3gpp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    const-string v2, "3GPP"

    const/16 v3, 0x17

    const-string/jumbo v4, "video/3gpp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    const-string v2, "3G2"

    const/16 v3, 0x18

    const-string/jumbo v4, "video/3gpp2"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    const-string v2, "3GPP2"

    const/16 v3, 0x18

    const-string/jumbo v4, "video/3gpp2"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 213
    const-string v2, "MKV"

    const/16 v3, 0x1b

    const-string/jumbo v4, "video/x-matroska"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 214
    const-string v2, "WEBM"

    const/16 v3, 0x1b

    const-string/jumbo v4, "video/x-matroska"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 215
    const-string v2, "TS"

    const/16 v3, 0x1c

    const-string/jumbo v4, "video/mp2ts"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 217
    const-string v2, "AVI"

    const/16 v3, 0x1d

    const-string/jumbo v4, "video/avi"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    const-string v2, "DIVX"

    const/16 v3, 0x1e

    const-string/jumbo v4, "video/divx"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    const-string v2, "FLV"

    const/16 v3, 0x1f

    const-string/jumbo v4, "video/flv"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 220
    const-string v2, "MOV"

    const/16 v3, 0x20

    const-string/jumbo v4, "video/mov"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    const-string v2, "OGM"

    const/16 v3, 0x21

    const-string/jumbo v4, "video/ogm"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    invoke-static {}, Landroid/media/MediaFile;->isWMVEnabled()Z

    move-result v2

    if-eqz v2, :cond_17a

    .line 223
    const-string v2, "WMV"

    const/16 v3, 0x19

    const-string/jumbo v4, "video/x-ms-wmv"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    const-string v2, "ASF"

    const/16 v3, 0x1a

    const-string/jumbo v4, "video/x-ms-asf"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 227
    :cond_17a
    const-string v2, "JPG"

    const/16 v3, 0x23

    const-string v4, "image/jpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 228
    const-string v2, "JPEG"

    const/16 v3, 0x23

    const-string v4, "image/jpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 229
    const-string v2, "GIF"

    const/16 v3, 0x24

    const-string v4, "image/gif"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    const-string v2, "PNG"

    const/16 v3, 0x25

    const-string v4, "image/png"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 231
    const-string v2, "BMP"

    const/16 v3, 0x26

    const-string v4, "image/x-ms-bmp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    const-string v2, "WBMP"

    const/16 v3, 0x27

    const-string v4, "image/vnd.wap.wbmp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    const-string v2, "M3U"

    const/16 v3, 0x29

    const-string v4, "audio/x-mpegurl"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    const-string v2, "PLS"

    const/16 v3, 0x2a

    const-string v4, "audio/x-scpls"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    const-string v2, "WPL"

    const/16 v3, 0x2b

    const-string v4, "application/vnd.ms-wpl"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-eqz v2, :cond_1fc

    .line 240
    const-string v2, "DM"

    const/16 v3, 0x33

    const-string v4, "application/vnd.oma.drm.message"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    const-string v2, "DCF"

    const/16 v3, 0x34

    const-string v4, "application/vnd.oma.drm.content"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 242
    const-string v2, "ODF"

    const/16 v3, 0x35

    const-string v4, "application/vnd.oma.drm.dcf"

    invoke-static {v2, v3, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    const-string v2, "O4A"

    const/16 v3, 0x37

    const-string v4, "application/vnd.oma.drm.dcf"

    invoke-static {v2, v3, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 244
    const-string v2, "O4V"

    const/16 v3, 0x36

    const-string v4, "application/vnd.oma.drm.dcf"

    invoke-static {v2, v3, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    :cond_1fc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v2, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 252
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_20b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_226

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_21c

    .line 254
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    :cond_21c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20b

    .line 258
    :cond_226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/MediaFile;->sFileExtensions:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 145
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {p1}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {p1}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 150
    :cond_1f
    sget-object v0, Landroid/media/MediaFile;->sAVTypeMap:Ljava/util/HashMap;

    sget v1, Landroid/media/MediaFile;->AVTypeCount:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/media/MediaFile;->AVTypeCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/media/MediaFile$AVTypeList;

    invoke-direct {v2, p1, p2, p0}, Landroid/media/MediaFile$AVTypeList;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_33
    return-void
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .registers 15
    .parameter "path"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 284
    const-string v8, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 285
    .local v5, lastDot:I
    if-gez v5, :cond_e

    move-object v8, v11

    .line 354
    .end local p0       
    :goto_d
    return-object v8

    .line 289
    .restart local p0       
    :cond_e
    sget-boolean v8, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-eqz v8, :cond_ec

    .line 290
    sget-object v8, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaFile$MediaFileType;

    .line 291
    .local v6, mediaType:Landroid/media/MediaFile$MediaFileType;
    if-nez v6, :cond_28

    move-object v8, v11

    .line 292
    goto :goto_d

    .line 294
    :cond_28
    iget v8, v6, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v9, 0x33

    if-lt v8, v9, :cond_34

    iget v8, v6, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v9, 0x37

    if-le v8, v9, :cond_36

    :cond_34
    move-object v8, v6

    .line 295
    goto :goto_d

    .line 297
    :cond_36
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3e

    move-object v8, v6

    .line 298
    goto :goto_d

    .line 302
    :cond_3e
    :try_start_3e
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContent;->getContentType(Ljava/lang/String;)I

    move-result v1

    .line 304
    .local v1, contentType:I
    const/4 v8, 0x2

    invoke-static {p0, v8}, Lcom/lge/lgdrm/DrmContent;->getContentInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, extension:Ljava/lang/String;
    if-eqz v3, :cond_4f

    if-eq v1, v13, :cond_51

    if-eq v1, v10, :cond_51

    if-eq v1, v12, :cond_51

    :cond_4f
    move-object v8, v11

    .line 312
    goto :goto_d

    .line 314
    :cond_51
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 316
    sget-object v8, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaFile$MediaFileType;

    .line 317
    .local v7, orgMediaType:Landroid/media/MediaFile$MediaFileType;
    if-nez v7, :cond_61

    move-object v8, v11

    .line 318
    goto :goto_d

    .line 322
    :cond_61
    if-ne v1, v13, :cond_71

    .line 323
    new-instance v8, Landroid/media/MediaFile$MediaFileType;

    iget v9, v7, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iget-object v10, v6, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    goto :goto_d

    .line 347
    .end local v1       #contentType:I,
    .end local v3       #extension:Ljava/lang/String;,
    .end local v7       #orgMediaType:Landroid/media/MediaFile$MediaFileType;,
    :catch_6d
    move-exception v8

    move-object v2, v8

    .local v2, e:Ljava/lang/Exception;
    move-object v8, v11

    .line 348
    goto :goto_d

    .line 325
    .end local v2       #e:Ljava/lang/Exception;,
    .restart local v1       #contentType:I,
    .restart local v3       #extension:Ljava/lang/String;,
    .restart local v7       #orgMediaType:Landroid/media/MediaFile$MediaFileType;,
    :cond_71
    if-ne v1, v10, :cond_85

    iget v8, v7, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v8

    if-eqz v8, :cond_85

    .line 326
    new-instance v8, Landroid/media/MediaFile$MediaFileType;

    iget v9, v7, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iget-object v10, v6, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    goto :goto_d

    .line 327
    :cond_85
    if-ne v1, v12, :cond_9a

    iget v8, v7, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v8

    if-eqz v8, :cond_9a

    .line 328
    new-instance v8, Landroid/media/MediaFile$MediaFileType;

    iget v9, v7, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iget-object v10, v6, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 333
    :cond_9a
    sget-object v8, Landroid/media/MediaFile;->sAVTypeMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 334
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 336
    .local v0, avType:Landroid/media/MediaFile$AVTypeList;
    :cond_a5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e9

    .line 337
    sget-object v8, Landroid/media/MediaFile;->sAVTypeMap:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0       #avType:Landroid/media/MediaFile$AVTypeList;,
    check-cast v0, Landroid/media/MediaFile$AVTypeList;

    .line 338
    .restart local v0       #avType:Landroid/media/MediaFile$AVTypeList;,
    iget-object v8, v0, Landroid/media/MediaFile$AVTypeList;->extension:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 339
    if-ne v1, v10, :cond_d4

    iget v8, v0, Landroid/media/MediaFile$AVTypeList;->fileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v8

    if-eqz v8, :cond_d4

    .line 340
    new-instance v8, Landroid/media/MediaFile$MediaFileType;

    iget v9, v0, Landroid/media/MediaFile$AVTypeList;->fileType:I

    iget-object v10, v6, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 341
    :cond_d4
    if-ne v1, v12, :cond_a5

    iget v8, v0, Landroid/media/MediaFile$AVTypeList;->fileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 342
    new-instance v8, Landroid/media/MediaFile$MediaFileType;

    iget v9, v0, Landroid/media/MediaFile$AVTypeList;->fileType:I

    iget-object v10, v6, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_e7} :catch_6d

    goto/16 :goto_d

    :cond_e9
    move-object v8, v11

    .line 351
    goto/16 :goto_d

    .line 354
    .end local v0       #avType:Landroid/media/MediaFile$AVTypeList;,
    .end local v1       #contentType:I,
    .end local v3       #extension:Ljava/lang/String;,
    .end local v4       #iterator:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v6       #mediaType:Landroid/media/MediaFile$MediaFileType;,
    .end local v7       #orgMediaType:Landroid/media/MediaFile$MediaFileType;,
    :cond_ec
    sget-object v8, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Landroid/media/MediaFile$MediaFileType;

    move-object v8, p0

    goto/16 :goto_d
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .registers 3
    .parameter "mimeType"

    .prologue
    .line 358
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 359
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_b
.end method

.method public static isAudioFileType(I)Z
    .registers 3
    .parameter "fileType"

    .prologue
    const/4 v1, 0x1

    .line 262
    if-lt p0, v1, :cond_7

    const/16 v0, 0xc

    if-le p0, v0, :cond_f

    :cond_7
    const/16 v0, 0xd

    if-lt p0, v0, :cond_11

    const/16 v0, 0xf

    if-gt p0, v0, :cond_11

    :cond_f
    move v0, v1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isImageFileType(I)Z
    .registers 2
    .parameter "fileType"

    .prologue
    .line 274
    const/16 v0, 0x23

    if-lt p0, v0, :cond_a

    const/16 v0, 0x27

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isPlayListFileType(I)Z
    .registers 2
    .parameter "fileType"

    .prologue
    .line 279
    const/16 v0, 0x29

    if-lt p0, v0, :cond_a

    const/16 v0, 0x2b

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isVideoFileType(I)Z
    .registers 2
    .parameter "fileType"

    .prologue
    .line 269
    const/16 v0, 0x15

    if-lt p0, v0, :cond_a

    const/16 v0, 0x21

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isWMAEnabled()Z
    .registers 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method private static isWMVEnabled()Z
    .registers 1

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method
