.class public Lcom/lge/provider/Andy_Browser$Andy_BookmarkColumns;
.super Landroid/provider/Browser$BookmarkColumns;
.source "Andy_Browser.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/Andy_Browser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Andy_BookmarkColumns"
.end annotation


# static fields
.field public static final READONLY:Ljava/lang/String; = "readonly"

.field public static final SEQUENCE:Ljava/lang/String; = "sequence"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/provider/Browser$BookmarkColumns;-><init>()V

    return-void
.end method
