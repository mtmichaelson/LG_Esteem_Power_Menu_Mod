.class public Lcom/lge/provider/Andy_AdditionalMediaStore;
.super Ljava/lang/Object;
.source "Andy_AdditionalMediaStore.java"



# static fields
.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://media/"

.field public static final DRM_CID:Ljava/lang/String; = "drm_cid"

.field public static final DRM_ORIGINAL_TYPE:Ljava/lang/String; = "drm_original_type"

.field public static final DRM_TYPE:Ljava/lang/String; = "drm_type"

.field public static final EXTERNAL_DRM_CONTENT_URI:Landroid/net/Uri; = null

.field public static final INTENT_ACTION_STILL_AUTO_CAMERA:Ljava/lang/String; = "android.media.action.AUTO_CAMERA"

.field public static final INTENT_ACTION_VIDEO_AUTO_CAMCODER:Ljava/lang/String; = "android.media.action.AUTO_CAMCODER"

.field public static final INTERNAL_DRM_CONTENT_URI:Landroid/net/Uri;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    const-string v0, "internal"

    invoke-static {v0}, Lcom/lge/provider/Andy_AdditionalMediaStore;->getDrmContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/Andy_AdditionalMediaStore;->INTERNAL_DRM_CONTENT_URI:Landroid/net/Uri;

    .line 96
    const-string v0, "external"

    invoke-static {v0}, Lcom/lge/provider/Andy_AdditionalMediaStore;->getDrmContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/Andy_AdditionalMediaStore;->EXTERNAL_DRM_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrmContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "volumeName"

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/drmvideo/media"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
