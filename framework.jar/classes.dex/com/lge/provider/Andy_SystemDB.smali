.class public final Lcom/lge/provider/Andy_SystemDB;
.super Ljava/lang/Object;
.source "Andy_SystemDB.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/provider/Andy_SystemDB$ResetInfo;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "LGSystemDB"

.field public static final CONTENT_URI:Landroid/net/Uri;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string v0, "content://LGSystemDB"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/Andy_SystemDB;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method
