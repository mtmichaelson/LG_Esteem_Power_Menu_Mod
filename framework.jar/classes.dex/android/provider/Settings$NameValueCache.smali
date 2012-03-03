.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE:[Ljava/lang/String;



# instance fields
.field private final mCallCommand:Ljava/lang/String;

.field private mContentProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesVersion:J

.field private final mVersionSystemProperty:Ljava/lang/String;



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 598
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6
    .parameter "versionSystemProperty"
    .parameter "uri"
    .parameter "callCommand"

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 604
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 614
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    .line 615
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 616
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallCommand:Ljava/lang/String;

    .line 617
    return-void
.end method


# virtual methods
.method public getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "cr"
    .parameter "name"

    .prologue
    .line 620
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 622
    .local v10, newValuesVersion:J
    monitor-enter p0

    .line 623
    :try_start_9
    iget-wide v1, p0, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    cmp-long v1, v1, v10

    if-eqz v1, :cond_16

    .line 629
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 630
    iput-wide v10, p0, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    .line 633
    :cond_16
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 634
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1       
    check-cast p1, Ljava/lang/String;

    monitor-exit p0

    move-object v1, p1

    .line 690
    :cond_28
    :goto_28
    return-object v1

    .line 636
    .restart local p1       
    :cond_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_58

    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, cp:Landroid/content/IContentProvider;
    monitor-enter p0

    .line 640
    :try_start_2c
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 641
    if-nez v0, :cond_3d

    .line 642
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v8

    iput-object v8, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .end local v0       #cp:Landroid/content/IContentProvider;,
    .local v8, cp:Landroid/content/IContentProvider;
    move-object v0, v8

    .line 644
    .end local v8       #cp:Landroid/content/IContentProvider;,
    .restart local v0       #cp:Landroid/content/IContentProvider;,
    :cond_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_5b

    .line 650
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mCallCommand:Ljava/lang/String;

    if-eqz v1, :cond_62

    .line 652
    :try_start_42
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mCallCommand:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 653
    .local v6, b:Landroid/os/Bundle;
    if-eqz v6, :cond_62

    .line 654
    invoke-virtual {v6}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v12

    .line 655
    .local v12, value:Ljava/lang/String;
    monitor-enter p0
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_50} :catch_61

    .line 656
    :try_start_50
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_5e

    move-object v1, v12

    .line 658
    goto :goto_28

    .line 636
    .end local v0       #cp:Landroid/content/IContentProvider;,
    .end local v6       #b:Landroid/os/Bundle;,
    .end local v12       #value:Ljava/lang/String;,
    .end local p1       
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1

    .line 644
    .restart local v0       #cp:Landroid/content/IContentProvider;,
    .restart local p1       
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1

    .line 657
    .restart local v6       #b:Landroid/os/Bundle;,
    .restart local v12       #value:Ljava/lang/String;,
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    :try_start_60
    throw v1
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_61} :catch_61

    .line 662
    .end local v6       #b:Landroid/os/Bundle;,
    .end local v12       #value:Ljava/lang/String;,
    :catch_61
    move-exception v1

    .line 668
    :cond_62
    const/4 v7, 0x0

    .line 670
    .local v7, c:Landroid/database/Cursor;
    :try_start_63
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    const-string/jumbo v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 672
    if-nez v7, :cond_a2

    .line 673
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_63 .. :try_end_9b} :catchall_f1
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_9b} :catch_c3

    .line 674
    const/4 v1, 0x0

    .line 690
    if-eqz v7, :cond_28

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_28

    .line 677
    :cond_a2
    :try_start_a2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_bd

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .line 678
    .restart local v12       #value:Ljava/lang/String;,
    :goto_ae
    monitor-enter p0
    :try_end_af
    .catchall {:try_start_a2 .. :try_end_af} :catchall_f1
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_af} :catch_c3

    .line 679
    :try_start_af
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_af .. :try_end_b5} :catchall_c0

    .line 690
    if-eqz v7, :cond_ba

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_ba
    move-object v1, v12

    goto/16 :goto_28

    .line 677
    .end local v12       #value:Ljava/lang/String;,
    :cond_bd
    const/4 v1, 0x0

    move-object v12, v1

    goto :goto_ae

    .line 680
    .restart local v12       #value:Ljava/lang/String;,
    :catchall_c0
    move-exception v1

    :try_start_c1
    monitor-exit p0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    :try_start_c2
    throw v1
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_f1
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_c3} :catch_c3

    .line 686
    .end local v12       #value:Ljava/lang/String;,
    :catch_c3
    move-exception v1

    move-object v9, v1

    .line 687
    .local v9, e:Landroid/os/RemoteException;
    :try_start_c5
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e9
    .catchall {:try_start_c5 .. :try_end_e9} :catchall_f1

    .line 688
    const/4 v1, 0x0

    .line 690
    if-eqz v7, :cond_28

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_28

    .end local v9       #e:Landroid/os/RemoteException;,
    :catchall_f1
    move-exception v1

    if-eqz v7, :cond_f7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_f7
    throw v1
.end method
