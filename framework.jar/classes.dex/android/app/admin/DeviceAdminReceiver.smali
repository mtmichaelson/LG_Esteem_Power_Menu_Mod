.class public Landroid/app/admin/DeviceAdminReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceAdminReceiver.java"



# static fields
.field public static final ACTION_DEVICE_ADMIN_DISABLED:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_DISABLED"

.field public static final ACTION_DEVICE_ADMIN_DISABLE_REQUESTED:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

.field public static final ACTION_DEVICE_ADMIN_ENABLED:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_ENABLED"

.field public static final ACTION_PASSWORD_CHANGED:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_CHANGED"

.field public static final ACTION_PASSWORD_FAILED:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_FAILED"

.field public static final ACTION_PASSWORD_SUCCEEDED:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_SUCCEEDED"

.field private static DEBUG:Z = false

.field public static final DEVICE_ADMIN_META_DATA:Ljava/lang/String; = "android.app.device_admin"

.field public static final EXTRA_DISABLE_WARNING:Ljava/lang/String; = "android.app.extra.DISABLE_WARNING"

.field private static TAG:Ljava/lang/String;

.field private static localLOGV:Z



# instance fields
.field private mManager:Landroid/app/admin/DevicePolicyManager;

.field private mWho:Landroid/content/ComponentName;



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 54
    const-string v0, "DevicePolicy"

    sput-object v0, Landroid/app/admin/DeviceAdminReceiver;->TAG:Ljava/lang/String;

    .line 55
    sput-boolean v1, Landroid/app/admin/DeviceAdminReceiver;->DEBUG:Z

    .line 56
    sget-boolean v0, Landroid/app/admin/DeviceAdminReceiver;->DEBUG:Z

    if-nez v0, :cond_f

    move v0, v1

    :goto_c
    sput-boolean v0, Landroid/app/admin/DeviceAdminReceiver;->localLOGV:Z

    return-void

    :cond_f
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 164
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_7

    .line 165
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    .line 169
    :goto_6
    return-object v0

    .line 167
    :cond_7
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    .line 169
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    goto :goto_6
.end method

.method public getWho(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 4
    .parameter "context"

    .prologue
    .line 178
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    .line 179
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    .line 182
    :goto_6
    return-object v0

    .line 181
    :cond_7
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    .line 182
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    goto :goto_6
.end method

.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 219
    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 193
    return-void
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 231
    return-void
.end method

.method public onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 242
    return-void
.end method

.method public onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 253
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.app.action.ACTION_PASSWORD_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 264
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V

    .line 280
    :cond_f
    :goto_f
    return-void

    .line 265
    :cond_10
    const-string v3, "android.app.action.ACTION_PASSWORD_FAILED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 266
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_f

    .line 267
    :cond_1c
    const-string v3, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 268
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_f

    .line 269
    :cond_28
    const-string v3, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 270
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onEnabled(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_f

    .line 271
    :cond_34
    const-string v3, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 272
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 273
    .local v2, res:Ljava/lang/CharSequence;
    if-eqz v2, :cond_f

    .line 274
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/admin/DeviceAdminReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    .line 275
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 277
    .end local v1       #extras:Landroid/os/Bundle;,
    .end local v2       #res:Ljava/lang/CharSequence;,
    :cond_4d
    const-string v3, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 278
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisabled(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_f
.end method
