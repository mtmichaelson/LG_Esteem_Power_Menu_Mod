.class Landroid/webkit/WebStorage$2;
.super Landroid/os/Handler;
.source "WebStorage.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebStorage;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebStorage;



# direct methods
.method constructor <init>(Landroid/webkit/WebStorage;)V
    .registers 2
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    const-string/jumbo v13, "origin"

    const-string v11, "callback"

    .line 154
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_fc

    .line 214
    :goto_b
    return-void

    .line 156
    :pswitch_c
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/webkit/WebStorage$Origin;

    .line 157
    .local v9, website:Landroid/webkit/WebStorage$Origin;
    invoke-virtual {v9}, Landroid/webkit/WebStorage$Origin;->getOrigin()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Landroid/webkit/WebStorage$Origin;->getQuota()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/webkit/WebStorage;->access$000(Ljava/lang/String;J)V

    goto :goto_b

    .line 162
    .end local v9       #website:Landroid/webkit/WebStorage$Origin;,
    :pswitch_1c
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/webkit/WebStorage$Origin;

    .line 163
    .restart local v9       #website:Landroid/webkit/WebStorage$Origin;,
    invoke-virtual {v9}, Landroid/webkit/WebStorage$Origin;->getOrigin()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/webkit/WebStorage;->access$100(Ljava/lang/String;)V

    goto :goto_b

    .line 167
    .end local v9       #website:Landroid/webkit/WebStorage$Origin;,
    :pswitch_28
    invoke-static {}, Landroid/webkit/WebStorage;->access$200()V

    goto :goto_b

    .line 171
    :pswitch_2c
    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    invoke-static {v10}, Landroid/webkit/WebStorage;->access$300(Landroid/webkit/WebStorage;)V

    .line 172
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/ValueCallback;

    .line 173
    .local v0, callback:Landroid/webkit/ValueCallback;
    new-instance v2, Ljava/util/HashMap;

    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    invoke-static {v10}, Landroid/webkit/WebStorage;->access$400(Landroid/webkit/WebStorage;)Ljava/util/Map;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 174
    .local v2, origins:Ljava/util/Map;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v8, values:Ljava/util/Map;
    const-string v10, "callback"

    invoke-interface {v8, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v10, "origins"

    invoke-interface {v8, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    const/4 v11, 0x0

    invoke-static {v12, v11, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/webkit/WebStorage;->access$500(Landroid/webkit/WebStorage;Landroid/os/Message;)V

    goto :goto_b

    .line 181
    .end local v0       #callback:Landroid/webkit/ValueCallback;,
    .end local v2       #origins:Ljava/util/Map;,
    .end local v8       #values:Ljava/util/Map;,
    :pswitch_5b
    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    invoke-static {v10}, Landroid/webkit/WebStorage;->access$300(Landroid/webkit/WebStorage;)V

    .line 182
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/util/Map;

    .line 183
    .restart local v8       #values:Ljava/util/Map;,
    const-string/jumbo v10, "origin"

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    .local v1, origin:Ljava/lang/String;
    const-string v10, "callback"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    .line 185
    .restart local v0       #callback:Landroid/webkit/ValueCallback;,
    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    invoke-static {v10}, Landroid/webkit/WebStorage;->access$400(Landroid/webkit/WebStorage;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/webkit/WebStorage$Origin;

    .line 186
    .restart local v9       #website:Landroid/webkit/WebStorage$Origin;,
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 187
    .local v5, retValues:Ljava/util/Map;
    const-string v10, "callback"

    invoke-interface {v5, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    if-eqz v9, :cond_9c

    .line 189
    invoke-virtual {v9}, Landroid/webkit/WebStorage$Origin;->getUsage()J

    move-result-wide v6

    .line 190
    .local v6, usage:J
    const-string/jumbo v10, "usage"

    new-instance v11, Ljava/lang/Long;

    invoke-direct {v11, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v6       #usage:J,
    :cond_9c
    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    const/4 v11, 0x1

    invoke-static {v12, v11, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/webkit/WebStorage;->access$500(Landroid/webkit/WebStorage;Landroid/os/Message;)V

    goto/16 :goto_b

    .line 196
    .end local v0       #callback:Landroid/webkit/ValueCallback;,
    .end local v1       #origin:Ljava/lang/String;,
    .end local v5       #retValues:Ljava/util/Map;,
    .end local v8       #values:Ljava/util/Map;,
    .end local v9       #website:Landroid/webkit/WebStorage$Origin;,
    :pswitch_a8
    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    invoke-static {v10}, Landroid/webkit/WebStorage;->access$300(Landroid/webkit/WebStorage;)V

    .line 197
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/util/Map;

    .line 198
    .restart local v8       #values:Ljava/util/Map;,
    const-string/jumbo v10, "origin"

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    .restart local v1       #origin:Ljava/lang/String;,
    const-string v10, "callback"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    .line 200
    .restart local v0       #callback:Landroid/webkit/ValueCallback;,
    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    invoke-static {v10}, Landroid/webkit/WebStorage;->access$400(Landroid/webkit/WebStorage;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/webkit/WebStorage$Origin;

    .line 201
    .restart local v9       #website:Landroid/webkit/WebStorage$Origin;,
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 202
    .restart local v5       #retValues:Ljava/util/Map;,
    const-string v10, "callback"

    invoke-interface {v5, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    if-eqz v9, :cond_e9

    .line 204
    invoke-virtual {v9}, Landroid/webkit/WebStorage$Origin;->getQuota()J

    move-result-wide v3

    .line 205
    .local v3, quota:J
    const-string/jumbo v10, "quota"

    new-instance v11, Ljava/lang/Long;

    invoke-direct {v11, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .end local v3       #quota:J,
    :cond_e9
    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    const/4 v11, 0x2

    invoke-static {v12, v11, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/webkit/WebStorage;->access$500(Landroid/webkit/WebStorage;Landroid/os/Message;)V

    goto/16 :goto_b

    .line 211
    .end local v0       #callback:Landroid/webkit/ValueCallback;,
    .end local v1       #origin:Ljava/lang/String;,
    .end local v5       #retValues:Ljava/util/Map;,
    .end local v8       #values:Ljava/util/Map;,
    .end local v9       #website:Landroid/webkit/WebStorage$Origin;,
    :pswitch_f5
    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    invoke-static {v10}, Landroid/webkit/WebStorage;->access$300(Landroid/webkit/WebStorage;)V

    goto/16 :goto_b

    .line 154
    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_f5
        :pswitch_c
        :pswitch_1c
        :pswitch_28
        :pswitch_2c
        :pswitch_5b
        :pswitch_a8
    .end packed-switch
.end method
