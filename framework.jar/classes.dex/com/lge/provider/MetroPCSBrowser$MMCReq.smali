.class public Lcom/lge/provider/MetroPCSBrowser$MMCReq;
.super Ljava/lang/Object;
.source "MetroPCSBrowser.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/MetroPCSBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MMCReq"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/provider/MetroPCSBrowser$MMCReq$InstallParam;,
        Lcom/lge/provider/MetroPCSBrowser$MMCReq$Column;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string v0, "content://com.lge.browser.metropcs/mmc_req"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/MetroPCSBrowser$MMCReq;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method
