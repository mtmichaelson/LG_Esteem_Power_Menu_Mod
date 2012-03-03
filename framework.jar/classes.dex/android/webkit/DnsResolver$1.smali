.class Landroid/webkit/DnsResolver$1;
.super Ljava/lang/Object;
.source "DnsResolver.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/DnsResolver;->createDnsResolverThreadPool()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/DnsResolver;



# direct methods
.method constructor <init>(Landroid/webkit/DnsResolver;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/16 v11, 0x40

    const/4 v10, 0x1

    .line 115
    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    .line 117
    iget-object v8, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    const/16 v9, 0x8

    invoke-static {v9}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/webkit/DnsResolver;->access$002(Landroid/webkit/DnsResolver;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 118
    iget-object v8, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-static {v8, v9}, Landroid/webkit/DnsResolver;->access$102(Landroid/webkit/DnsResolver;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, bResolvedPriorityHostNames:Z
    const/4 v1, 0x0

    .line 121
    .local v1, dnsQueryCounter:I
    const/4 v5, 0x0

    .line 122
    .local v5, numHosts:I
    :goto_1e
    iget-object v8, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    invoke-static {v8}, Landroid/webkit/DnsResolver;->access$200(Landroid/webkit/DnsResolver;)Z

    move-result v8

    if-nez v8, :cond_d6

    .line 123
    iget-object v8, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    invoke-static {v8}, Landroid/webkit/DnsResolver;->access$100(Landroid/webkit/DnsResolver;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 124
    :try_start_2d
    iget-object v9, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    invoke-static {v9}, Landroid/webkit/DnsResolver;->access$100(Landroid/webkit/DnsResolver;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 125
    monitor-exit v8
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_55

    .line 126
    if-gtz v5, :cond_58

    .line 128
    const/4 v1, 0x0

    .line 129
    const/4 v0, 0x0

    .line 130
    :try_start_3c
    iget-object v8, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/webkit/DnsResolver;->access$302(Landroid/webkit/DnsResolver;Z)Z

    .line 131
    invoke-static {}, Landroid/webkit/DnsResolver;->access$400()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_47} :catch_53

    .line 132
    :try_start_47
    invoke-static {}, Landroid/webkit/DnsResolver;->access$400()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V

    .line 133
    monitor-exit v8

    goto :goto_1e

    :catchall_50
    move-exception v9

    monitor-exit v8
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_50

    :try_start_52
    throw v9
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_53} :catch_53

    .line 134
    :catch_53
    move-exception v8

    goto :goto_1e

    .line 125
    :catchall_55
    move-exception v9

    :try_start_56
    monitor-exit v8
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v9

    .line 138
    :cond_58
    iget-object v8, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    invoke-static {v8}, Landroid/webkit/DnsResolver;->access$100(Landroid/webkit/DnsResolver;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 139
    :try_start_5f
    iget-object v9, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    invoke-static {v9}, Landroid/webkit/DnsResolver;->access$100(Landroid/webkit/DnsResolver;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 140
    .local v4, iterator:Ljava/util/Iterator;
    :cond_6d
    :goto_6d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ba

    iget-object v9, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    invoke-static {v9}, Landroid/webkit/DnsResolver;->access$300(Landroid/webkit/DnsResolver;)Z

    move-result v9

    if-eqz v9, :cond_ba

    if-ge v1, v11, :cond_ba

    .line 141
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 142
    .local v2, entry:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    .local v3, hostName:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 144
    .local v6, priority:Ljava/lang/String;
    if-nez v0, :cond_99

    const-string v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a3

    :cond_99
    if-eqz v0, :cond_6d

    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 147
    :cond_a3
    add-int/lit8 v1, v1, 0x1

    .line 148
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 149
    new-instance v7, Landroid/webkit/DnsResolver$1$1;

    invoke-direct {v7, p0, v3}, Landroid/webkit/DnsResolver$1$1;-><init>(Landroid/webkit/DnsResolver$1;Ljava/lang/String;)V

    .line 157
    .local v7, task:Ljava/lang/Runnable;
    iget-object v9, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    invoke-static {v9}, Landroid/webkit/DnsResolver;->access$000(Landroid/webkit/DnsResolver;)Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_6d

    .line 164
    .end local v2       #entry:Ljava/util/Map$Entry;,
    .end local v3       #hostName:Ljava/lang/String;,
    .end local v4       #iterator:Ljava/util/Iterator;,
    .end local v6       #priority:Ljava/lang/String;,
    .end local v7       #task:Ljava/lang/Runnable;,
    :catchall_b7
    move-exception v9

    monitor-exit v8
    :try_end_b9
    .catchall {:try_start_5f .. :try_end_b9} :catchall_b7

    throw v9

    .line 160
    .restart local v4       #iterator:Ljava/util/Iterator;,
    :cond_ba
    :try_start_ba
    iget-object v9, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    invoke-static {v9}, Landroid/webkit/DnsResolver;->access$300(Landroid/webkit/DnsResolver;)Z

    move-result v9

    if-eqz v9, :cond_c4

    if-lt v1, v11, :cond_cd

    .line 161
    :cond_c4
    iget-object v9, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    invoke-static {v9}, Landroid/webkit/DnsResolver;->access$100(Landroid/webkit/DnsResolver;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 163
    :cond_cd
    if-eqz v0, :cond_d4

    const/4 v9, 0x0

    move v0, v9

    .line 164
    :goto_d1
    monitor-exit v8
    :try_end_d2
    .catchall {:try_start_ba .. :try_end_d2} :catchall_b7

    goto/16 :goto_1e

    :cond_d4
    move v0, v10

    .line 163
    goto :goto_d1

    .line 167
    .end local v4       #iterator:Ljava/util/Iterator;,
    :cond_d6
    iget-object v8, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    invoke-static {v8}, Landroid/webkit/DnsResolver;->access$000(Landroid/webkit/DnsResolver;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 168
    const/4 v8, 0x0

    invoke-static {v8}, Landroid/webkit/DnsResolver;->access$502(Landroid/webkit/DnsResolver;)Landroid/webkit/DnsResolver;

    .line 169
    return-void
.end method
