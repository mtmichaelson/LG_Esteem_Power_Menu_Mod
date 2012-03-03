.class public Landroid/text/ClipboardManager;
.super Ljava/lang/Object;
.source "ClipboardManager.java"



# static fields
.field private static sService:Landroid/text/IClipboard;



# instance fields
.field private mContext:Landroid/content/Context;



# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/text/ClipboardManager;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private static getService()Landroid/text/IClipboard;
    .registers 2

    .prologue
    .line 42
    sget-object v1, Landroid/text/ClipboardManager;->sService:Landroid/text/IClipboard;

    if-eqz v1, :cond_7

    .line 43
    sget-object v1, Landroid/text/ClipboardManager;->sService:Landroid/text/IClipboard;

    .line 47
    :goto_6
    return-object v1

    .line 45
    :cond_7
    const-string v1, "clipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 46
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v1

    sput-object v1, Landroid/text/ClipboardManager;->sService:Landroid/text/IClipboard;

    .line 47
    sget-object v1, Landroid/text/ClipboardManager;->sService:Landroid/text/IClipboard;

    goto :goto_6
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 62
    :try_start_0
    invoke-static {}, Landroid/text/ClipboardManager;->getService()Landroid/text/IClipboard;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/IClipboard;->getClipboardText()Ljava/lang/CharSequence;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 64
    :goto_8
    return-object v1

    .line 63
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 64
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public hasText()Z
    .registers 3

    .prologue
    .line 83
    :try_start_0
    invoke-static {}, Landroid/text/ClipboardManager;->getService()Landroid/text/IClipboard;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/IClipboard;->hasClipboardText()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 85
    :goto_8
    return v1

    .line 84
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 85
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 73
    :try_start_0
    invoke-static {}, Landroid/text/ClipboardManager;->getService()Landroid/text/IClipboard;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 76
    :goto_7
    return-void

    .line 74
    :catch_8
    move-exception v0

    goto :goto_7
.end method
