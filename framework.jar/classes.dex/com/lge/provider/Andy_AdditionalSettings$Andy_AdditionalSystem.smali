.class public final Lcom/lge/provider/Andy_AdditionalSettings$Andy_AdditionalSystem;
.super Landroid/provider/Settings$NameValueTable;
.source "Andy_AdditionalSettings.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/Andy_AdditionalSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Andy_AdditionalSystem"
.end annotation


# static fields
.field public static final AUTO_ANSWER_TIMEOUT:Ljava/lang/String; = "auto_answer"

.field public static final DB_Hidden_Reset:Ljava/lang/String; = "hidden_reset"

.field public static final DEFAULT_FILE_MANAGER:Ljava/lang/String; = "default_file_manager"

.field public static final MODE_IN_CALL:Ljava/lang/String; = "mode_in_call"

.field public static final MODE_NORMAL:Ljava/lang/String; = "mode_normal"

.field public static final MODE_RINGTONE:Ljava/lang/String; = "mode_ringtone"

.field public static final NETWORK_SELECTION_MODE:Ljava/lang/String; = "network_selection_mode"

.field public static final OFFICIAL_IMAGE:Ljava/lang/String; = "official_image"

.field public static final SHOW_HEAP_FREE_INFO:Ljava/lang/String; = "show_heap_free_info"

.field public static final SOCKET_DATA_CALL_ENABLE:Ljava/lang/String; = "socket_data_call_enable"

.field public static final VIBRATION_FEEDBACK_ENABLED:Ljava/lang/String; = "vibration_feedback_enabled"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method
