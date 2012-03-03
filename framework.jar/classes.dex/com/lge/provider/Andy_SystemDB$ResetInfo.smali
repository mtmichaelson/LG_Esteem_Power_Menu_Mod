.class public final Lcom/lge/provider/Andy_SystemDB$ResetInfo;
.super Ljava/lang/Object;
.source "Andy_SystemDB.java"


# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/Andy_SystemDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResetInfo"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.lge.system"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.lge.system"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final RESET_CLIENT:Ljava/lang/String; = "reset_client"

.field public static final RESET_CLIENT_COM_LGE_SYSTEM:Ljava/lang/String; = "com.lge.system"

.field public static final RESET_CLIENT_COM_LGE_TEST1:Ljava/lang/String; = "com.lge.test1"

.field public static final RESET_CLIENT_COM_LGE_TEST2:Ljava/lang/String; = "com.lge.test2"

.field public static final RESET_CLIENT_COM_LGE_TEST3:Ljava/lang/String; = "com.lge.test3"

.field public static final RESET_CLIENT_LIST:[Ljava/lang/String; = null

.field public static final RESET_FACTORY:I = 0x1

.field public static final RESET_NORESET:I = 0x0

.field public static final RESET_SETTINGS:I = 0x2

.field public static final RESET_STATUS:Ljava/lang/String; = "reset_status"

.field public static final _ID:Ljava/lang/String; = "_id"



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 35
    const-string v0, "content://LGSystemDB/resetinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/Andy_SystemDB$ResetInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.lge.system"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.lge.test1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.lge.test2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.lge.test3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/provider/Andy_SystemDB$ResetInfo;->RESET_CLIENT_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
