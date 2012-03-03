.class public Lcom/broadcom/bt/util/brcmIOPHelper;
.super Ljava/lang/Object;
.source "brcmIOPHelper.java"


# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final IOPHelperCategoryAll:I = 0x1



# instance fields
.field m_iopService:Lcom/broadcom/bt/service/iop/IBTIOPService;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/util/brcmIOPHelper;->m_iopService:Lcom/broadcom/bt/service/iop/IBTIOPService;

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.brcm.bt.app.IOPDB.BTIOPService.1"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, brcmIOPSrvIntent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 50
    return-void
.end method


# virtual methods
.method public BrcmIOPHelperGetDevList()V
    .registers 1

    .prologue
    .line 54
    return-void
.end method

.method public getIOPDevInfoList(I)[Lcom/broadcom/bt/service/iop/DevInfo;
    .registers 4
    .parameter "nCategory"

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, ret:[Lcom/broadcom/bt/service/iop/DevInfo;
    iget-object v1, p0, Lcom/broadcom/bt/util/brcmIOPHelper;->m_iopService:Lcom/broadcom/bt/service/iop/IBTIOPService;

    if-eqz v1, :cond_b

    .line 74
    :try_start_5
    iget-object v1, p0, Lcom/broadcom/bt/util/brcmIOPHelper;->m_iopService:Lcom/broadcom/bt/service/iop/IBTIOPService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/iop/IBTIOPService;->getIOPDeviceList(I)[Lcom/broadcom/bt/service/iop/DevInfo;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v0

    .line 81
    :cond_b
    :goto_b
    return-object v0

    .line 76
    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 58
    invoke-static {p2}, Lcom/broadcom/bt/service/iop/IBTIOPService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/iop/IBTIOPService;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/util/brcmIOPHelper;->m_iopService:Lcom/broadcom/bt/service/iop/IBTIOPService;

    .line 60
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 65
    return-void
.end method
