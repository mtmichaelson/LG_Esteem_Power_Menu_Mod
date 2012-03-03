.class Landroid/webkit/DnsResolver$1$1;
.super Ljava/lang/Object;
.source "DnsResolver.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/DnsResolver$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/DnsResolver$1;

.field final synthetic val$hostName:Ljava/lang/String;



# direct methods
.method constructor <init>(Landroid/webkit/DnsResolver$1;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Landroid/webkit/DnsResolver$1$1;->this$1:Landroid/webkit/DnsResolver$1;

    iput-object p2, p0, Landroid/webkit/DnsResolver$1$1;->val$hostName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 152
    :try_start_0
    iget-object v0, p0, Landroid/webkit/DnsResolver$1$1;->val$hostName:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_5} :catch_6

    .line 155
    :goto_5
    return-void

    .line 153
    :catch_6
    move-exception v0

    goto :goto_5
.end method
