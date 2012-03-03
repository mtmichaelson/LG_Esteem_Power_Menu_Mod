.class public Lcom/lge/webkit/Andy_MimeTypeMap;
.super Ljava/lang/Object;
.source "Andy_MimeTypeMap.java"



# static fields
.field private static sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

.field private static sMimeTypeMap:Landroid/webkit/MimeTypeMap;



# instance fields
.field private mExtensionToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMimeTypeToExtensionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/webkit/Andy_MimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/webkit/Andy_MimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    .line 48
    return-void
.end method

.method public static getSingleton()Lcom/lge/webkit/Andy_MimeTypeMap;
    .registers 9

    .prologue
    const/4 v4, 0x0

    const-string v8, "dcf"

    const-string v7, "application/vnd.oma.drm.content"

    const-string v6, "3gp"

    const-string v5, "mp3"

    .line 130
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    if-nez v1, :cond_29d

    .line 131
    new-instance v1, Lcom/lge/webkit/Andy_MimeTypeMap;

    invoke-direct {v1}, Lcom/lge/webkit/Andy_MimeTypeMap;-><init>()V

    sput-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    .line 132
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    sput-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    .line 146
    invoke-static {}, Lcom/lge/webkit/Andy_LocaleManager;->getOperator()I

    move-result v0

    .line 153
    .local v0, Operator:I
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "application/vnd.oma.drm.message"

    const-string v3, "dm"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 157
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "image/gif"

    const-string v3, "gif"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "image/vnd.wap.wbmp"

    const-string/jumbo v3, "wbmp"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 159
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "image/wbmp"

    const-string/jumbo v3, "wbmp"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 160
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "image/bmp"

    const-string v3, "bmp"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 161
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "image/x-bmp"

    const-string v3, "bmp"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "image/x-MS-bmp"

    const-string v3, "bmp"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 163
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "image/jpeg"

    const-string v3, "jpg"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 164
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "image/jpg"

    const-string v3, "jpg"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 165
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "image/png"

    const-string/jumbo v3, "png"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "image/x-png"

    const-string/jumbo v3, "png"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "image/raw"

    const-string/jumbo v3, "raw"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/amr"

    const-string v3, "amr"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/x-amr"

    const-string v3, "amr"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 173
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/amr-wb"

    const-string v3, "amr"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/mid"

    const-string v3, "mid"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/x-mid"

    const-string v3, "mid"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 176
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/sp-midi"

    const-string v3, "mid"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 177
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/midi"

    const-string v3, "midi"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 178
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/x-midi"

    const-string v3, "midi"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 179
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/imy"

    const-string v3, "imy"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 180
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/imelody"

    const-string v3, "imy"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/x-imelody"

    const-string v3, "imy"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 182
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/wav"

    const-string/jumbo v3, "wav"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/x-wav"

    const-string/jumbo v3, "wav"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 184
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/3gpp"

    const-string v3, "3gp"

    invoke-direct {v1, v2, v6, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/3gp"

    const-string v3, "3gp"

    invoke-direct {v1, v2, v6, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 186
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/mp3"

    const-string v3, "mp3"

    invoke-direct {v1, v2, v5, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 187
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/x-mp3"

    const-string v3, "mp3"

    invoke-direct {v1, v2, v5, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 188
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/mpeg"

    const-string v3, "mp3"

    invoke-direct {v1, v2, v5, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 189
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/mpg"

    const-string v3, "mp3"

    invoke-direct {v1, v2, v5, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/x-mpeg"

    const-string v3, "mp3"

    invoke-direct {v1, v2, v5, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 191
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/mpeg3"

    const-string v3, "mp3"

    invoke-direct {v1, v2, v5, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/x-mpeg3"

    const-string v3, "mp3"

    invoke-direct {v1, v2, v5, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/mpg3"

    const-string v3, "mp3"

    invoke-direct {v1, v2, v5, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 194
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/m4a"

    const-string v3, "m4a"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 195
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/x-m4a"

    const-string v3, "m4a"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/mp4"

    const-string v3, "mp4"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 197
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/wma"

    const-string/jumbo v3, "wma"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 198
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/x-ms-wma"

    const-string/jumbo v3, "wma"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 199
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/asf"

    const-string v3, "asf"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 200
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/x-ms-asf"

    const-string v3, "asf"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 201
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/3ga"

    const-string v3, "3ga"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 203
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/qcp"

    const-string/jumbo v3, "qcp"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 204
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/aac"

    const-string v3, "aac"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 205
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/mobile-xmf"

    const-string/jumbo v3, "mxmf"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 206
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/sp-midi"

    const-string/jumbo v3, "smf"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 207
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/x-mpegurl"

    const-string v3, "m3u"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 208
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "audio/x-scpls"

    const-string/jumbo v3, "pls"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 211
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string/jumbo v2, "video/wmv"

    const-string/jumbo v3, "wmv"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 212
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string/jumbo v2, "video/x-ms-wmv"

    const-string/jumbo v3, "wmv"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 213
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string/jumbo v2, "video/mpeg4"

    const-string v3, "mp4"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 214
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string/jumbo v2, "video/mp4"

    const-string v3, "mp4"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 215
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string/jumbo v2, "video/3gp"

    const-string v3, "3gp"

    invoke-direct {v1, v2, v6, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 216
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string/jumbo v2, "video/3gpp"

    const-string v3, "3gp"

    invoke-direct {v1, v2, v6, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 217
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string/jumbo v2, "video/H264"

    const-string v3, "3gp"

    invoke-direct {v1, v2, v6, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 218
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string/jumbo v2, "video/H263"

    const-string v3, "3gp"

    invoke-direct {v1, v2, v6, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 219
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string/jumbo v2, "video/asf"

    const-string v3, "asf"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 220
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string/jumbo v2, "video/x-ms-asf"

    const-string v3, "asf"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 222
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string/jumbo v2, "video/3gpp2"

    const-string v3, "3g2"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 223
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string/jumbo v2, "video/avi"

    const-string v3, "avi"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "application/sdp"

    const-string/jumbo v3, "sdp"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 227
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "application/x-sdp"

    const-string/jumbo v3, "sdp"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 230
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "application/vnd.ms-wpl"

    const-string/jumbo v3, "wpl"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 231
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "application/ogg"

    const-string/jumbo v3, "ogg"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 236
    const/16 v1, 0x10

    if-ne v0, v1, :cond_2a0

    .line 238
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "application/vnd.oma.drm.content"

    const-string v2, "dcf"

    invoke-direct {v1, v7, v8, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 240
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "application/vnd.oma.drm.dcf"

    const-string/jumbo v3, "odf"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 309
    .end local v0       #Operator:I,
    :cond_29d
    :goto_29d
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    return-object v1

    .line 247
    .restart local v0       #Operator:I,
    :cond_2a0
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2ae

    .line 248
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "application/vnd.oma.drm.content"

    const-string v2, "dcf"

    invoke-direct {v1, v7, v8, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_29d

    .line 255
    :cond_2ae
    const/4 v1, 0x7

    if-ne v0, v1, :cond_2c5

    .line 257
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "application/vnd.oma.drm.content"

    const-string v2, "dcf"

    invoke-direct {v1, v7, v8, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 259
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "application/vnd.oma.drm.dcf"

    const-string/jumbo v3, "odf"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_29d

    .line 266
    :cond_2c5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2db

    .line 268
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "application/vnd.oma.drm.content"

    const-string v2, "dcf"

    invoke-direct {v1, v7, v8, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 270
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "application/x-lge-cfm"

    const-string v3, "cfm"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_29d

    .line 276
    :cond_2db
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2f3

    .line 278
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "application/vnd.oma.drm.content"

    const-string v2, "dcf"

    invoke-direct {v1, v7, v8, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 280
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "application/vnd.oma.drm.dcf"

    const-string/jumbo v3, "odf"

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_29d

    .line 287
    :cond_2f3
    const/4 v1, 0x1

    if-eq v0, v1, :cond_29d

    .line 304
    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sAndyMimeTypeMap:Lcom/lge/webkit/Andy_MimeTypeMap;

    const-string v2, "application/vnd.oma.drm.content"

    const-string v2, "dcf"

    invoke-direct {v1, v7, v8, v4}, Lcom/lge/webkit/Andy_MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_29d
.end method

.method private loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter "mimeType"
    .parameter "extension"
    .parameter "textType"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/webkit/Andy_MimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 64
    iget-object v0, p0, Lcom/lge/webkit/Andy_MimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_d
    if-nez p3, :cond_14

    .line 74
    iget-object v0, p0, Lcom/lge/webkit/Andy_MimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_14
    return-void
.end method


# virtual methods
.method public getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "mimeType"

    .prologue
    .line 117
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1a

    .line 118
    iget-object v1, p0, Lcom/lge/webkit/Andy_MimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    .local v0, ext:Ljava/lang/String;
    if-nez v0, :cond_18

    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    invoke-virtual {v1, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_18
    move-object v1, v0

    .line 123
    .end local v0       #ext:Ljava/lang/String;,
    :goto_19
    return-object v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "extension"

    .prologue
    .line 93
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1a

    .line 94
    iget-object v1, p0, Lcom/lge/webkit/Andy_MimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    .local v0, type:Ljava/lang/String;
    if-nez v0, :cond_18

    sget-object v1, Lcom/lge/webkit/Andy_MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    invoke-virtual {v1, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_18
    move-object v1, v0

    .line 99
    .end local v0       #type:Ljava/lang/String;,
    :goto_19
    return-object v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .registers 4
    .parameter "extension"

    .prologue
    const/4 v1, 0x0

    .line 106
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 107
    iget-object v0, p0, Lcom/lge/webkit/Andy_MimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/lge/webkit/Andy_MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_19
    const/4 v0, 0x1

    .line 110
    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    .line 107
    goto :goto_1a

    :cond_1d
    move v0, v1

    .line 110
    goto :goto_1a
.end method

.method public hasMimeType(Ljava/lang/String;)Z
    .registers 4
    .parameter "mimeType"

    .prologue
    const/4 v1, 0x0

    .line 82
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 83
    iget-object v0, p0, Lcom/lge/webkit/Andy_MimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/lge/webkit/Andy_MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_19
    const/4 v0, 0x1

    .line 86
    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    .line 83
    goto :goto_1a

    :cond_1d
    move v0, v1

    .line 86
    goto :goto_1a
.end method
