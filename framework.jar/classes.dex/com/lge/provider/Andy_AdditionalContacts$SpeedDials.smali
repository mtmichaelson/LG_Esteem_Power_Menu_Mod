.class public final Lcom/lge/provider/Andy_AdditionalContacts$SpeedDials;
.super Ljava/lang/Object;
.source "Andy_AdditionalContacts.java"


# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/lge/provider/Andy_AdditionalContacts$SpeedDialsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/Andy_AdditionalContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedDials"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "speed_dials"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/speed_dials"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/speed_dials"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "number ASC"



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1021
    const-string v0, "content://contacts/speed_dials"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/Andy_AdditionalContacts$SpeedDials;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
