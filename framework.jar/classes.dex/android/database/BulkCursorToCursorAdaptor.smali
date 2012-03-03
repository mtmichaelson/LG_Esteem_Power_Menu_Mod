.class public final Landroid/database/BulkCursorToCursorAdaptor;
.super Landroid/database/AbstractWindowedCursor;
.source "BulkCursorToCursorAdaptor.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "BulkCursor"



# instance fields
.field private mBulkCursor:Landroid/database/IBulkCursor;

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

.field private mWantsAllOnMoveCalls:Z



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    return-void
.end method

.method public static findRowIdColumnIndex([Ljava/lang/String;)I
    .registers 5
    .parameter "columnNames"

    .prologue
    .line 70
    array-length v1, p0

    .line 71
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_13

    .line 72
    aget-object v2, p0, v0

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v0

    .line 76
    :goto_f
    return v2

    .line 71
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 76
    :cond_13
    const/4 v2, -0x1

    goto :goto_f
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 141
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    .line 143
    :try_start_3
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1}, Landroid/database/IBulkCursor;->close()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_c

    .line 147
    :goto_8
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    .line 148
    return-void

    .line 144
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 145
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "BulkCursor"

    const-string v2, "Remote process exception when closing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, additionalValues:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "BulkCursor"

    .line 229
    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->supportsUpdates()Z

    move-result v2

    if-nez v2, :cond_13

    .line 230
    const-string v2, "BulkCursor"

    const-string v2, "commitUpdates not supported on this cursor, did you include the _id column?"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 255
    :goto_12
    return v2

    .line 234
    :cond_13
    iget-object v2, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    .line 235
    if-eqz p1, :cond_1d

    .line 236
    :try_start_18
    iget-object v3, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 239
    :cond_1d
    iget-object v3, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_28

    .line 240
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_4a

    move v2, v5

    goto :goto_12

    .line 244
    :cond_28
    :try_start_28
    iget-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    iget-object v4, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-interface {v3, v4}, Landroid/database/IBulkCursor;->updateRows(Ljava/util/Map;)Z

    move-result v1

    .line 246
    .local v1, result:Z
    if-ne v1, v6, :cond_3b

    .line 247
    iget-object v3, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 250
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/database/BulkCursorToCursorAdaptor;->onChange(Z)V
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_4a
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3b} :catch_3e

    .line 252
    :cond_3b
    :try_start_3b
    monitor-exit v2

    move v2, v1

    goto :goto_12

    .line 253
    .end local v1       #result:Z,
    :catch_3e
    move-exception v3

    move-object v0, v3

    .line 254
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "BulkCursor"

    const-string v4, "Unable to commit updates because the remote process is dead"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    monitor-exit v2

    move v2, v5

    goto :goto_12

    .line 257
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catchall_4a
    move-exception v3

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_4a

    throw v3
.end method

.method public deactivate()V
    .registers 4

    .prologue
    .line 129
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    .line 132
    :try_start_3
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1}, Landroid/database/IBulkCursor;->deactivate()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_c

    .line 136
    :goto_8
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    .line 137
    return-void

    .line 133
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 134
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "BulkCursor"

    const-string v2, "Remote process exception when deactivating"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public deleteRow()Z
    .registers 6

    .prologue
    .line 184
    :try_start_0
    iget-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    iget v4, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-interface {v3, v4}, Landroid/database/IBulkCursor;->deleteRow(I)Z

    move-result v2

    .line 185
    .local v2, result:Z
    if-eqz v2, :cond_27

    .line 187
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    .line 190
    iget-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v3}, Landroid/database/IBulkCursor;->count()I

    move-result v3

    iput v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    .line 191
    iget v3, p0, Landroid/database/AbstractCursor;->mPos:I

    iget v4, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    if-ge v3, v4, :cond_29

    .line 192
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 193
    .local v1, oldPos:I
    const/4 v3, -0x1

    iput v3, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 194
    invoke-virtual {p0, v1}, Landroid/database/BulkCursorToCursorAdaptor;->moveToPosition(I)Z

    .line 200
    .end local v1       #oldPos:I,
    :goto_23
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/database/BulkCursorToCursorAdaptor;->onChange(Z)V

    :cond_27
    move v3, v2

    .line 205
    .end local v2       #result:Z,
    :goto_28
    return v3

    .line 196
    .restart local v2       #result:Z,
    :cond_29
    iget v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    iput v3, p0, Landroid/database/AbstractCursor;->mPos:I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_23

    .line 203
    .end local v2       #result:Z,
    :catch_2e
    move-exception v3

    move-object v0, v3

    .line 204
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "BulkCursor"

    const-string v4, "Unable to delete row because the remote process is dead"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v3, 0x0

    goto :goto_28
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 211
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    if-nez v1, :cond_c

    .line 213
    :try_start_4
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1}, Landroid/database/IBulkCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_f

    .line 219
    :cond_c
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    :goto_e
    return-object v1

    .line 214
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 215
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "BulkCursor"

    const-string v2, "Unable to fetch column names because the remote process is dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 263
    :try_start_0
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1}, Landroid/database/IBulkCursor;->getExtras()Landroid/os/Bundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 264
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 267
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized getObserver()Landroid/database/IContentObserver;
    .registers 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

    if-nez v0, :cond_c

    .line 87
    new-instance v0, Landroid/database/AbstractCursor$SelfContentObserver;

    invoke-direct {v0, p0}, Landroid/database/AbstractCursor$SelfContentObserver;-><init>(Landroid/database/AbstractCursor;)V

    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

    .line 89
    :cond_c
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

    invoke-virtual {v0}, Landroid/database/AbstractCursor$SelfContentObserver;->getContentObserver()Landroid/database/IContentObserver;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 86
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onMove(II)Z
    .registers 7
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v3, 0x0

    .line 101
    :try_start_1
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v1, :cond_3f

    .line 102
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    if-lt p2, v1, :cond_1c

    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    iget-object v2, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    add-int/2addr v1, v2

    if-lt p2, v1, :cond_2a

    .line 104
    :cond_1c
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1, p2}, Landroid/database/IBulkCursor;->getWindow(I)Landroid/database/CursorWindow;

    move-result-object v1

    iput-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_24} :catch_34

    .line 118
    :cond_24
    :goto_24
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-nez v1, :cond_48

    move v1, v3

    .line 122
    :goto_29
    return v1

    .line 105
    :cond_2a
    :try_start_2a
    iget-boolean v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    if-eqz v1, :cond_24

    .line 106
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1, p2}, Landroid/database/IBulkCursor;->onMove(I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_33} :catch_34

    goto :goto_24

    .line 111
    :catch_34
    move-exception v1

    move-object v0, v1

    .line 113
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "BulkCursor"

    const-string v2, "Unable to get window because the remote process is dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 114
    goto :goto_29

    .line 109
    .end local v0       #ex:Landroid/os/RemoteException;,
    :cond_3f
    :try_start_3f
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1, p2}, Landroid/database/IBulkCursor;->getWindow(I)Landroid/database/CursorWindow;

    move-result-object v1

    iput-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_47} :catch_34

    goto :goto_24

    .line 122
    :cond_48
    const/4 v1, 0x1

    goto :goto_29
.end method

.method public requery()Z
    .registers 9

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 153
    :try_start_2
    iget v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    .line 155
    .local v1, oldCount:I
    iget-object v2, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->getObserver()Landroid/database/IContentObserver;

    move-result-object v3

    new-instance v4, Landroid/database/CursorWindow;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/database/CursorWindow;-><init>(Z)V

    invoke-interface {v2, v3, v4}, Landroid/database/IBulkCursor;->requery(Landroid/database/IContentObserver;Landroid/database/CursorWindow;)I

    move-result v2

    iput v2, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    .line 157
    iget v2, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    if-eq v2, v7, :cond_25

    .line 158
    const/4 v2, -0x1

    iput v2, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 159
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    .line 164
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z

    .line 165
    const/4 v2, 0x1

    .line 173
    .end local v1       #oldCount:I,
    :goto_24
    return v2

    .line 167
    .restart local v1       #oldCount:I,
    :cond_25
    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->deactivate()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_2a

    move v2, v6

    .line 168
    goto :goto_24

    .line 170
    .end local v1       #oldCount:I,
    :catch_2a
    move-exception v2

    move-object v0, v2

    .line 171
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "BulkCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to requery because the remote process exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->deactivate()V

    move v2, v6

    .line 173
    goto :goto_24
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .parameter "extras"

    .prologue
    .line 274
    :try_start_0
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1, p1}, Landroid/database/IBulkCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 280
    :goto_6
    return-object v1

    .line 275
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 279
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BulkCursor"

    const-string/jumbo v2, "respond() threw RemoteException, returning an empty bundle."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_6
.end method

.method public set(Landroid/database/IBulkCursor;)V
    .registers 5
    .parameter "bulkCursor"

    .prologue
    .line 41
    iput-object p1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    .line 44
    :try_start_2
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1}, Landroid/database/IBulkCursor;->count()I

    move-result v1

    iput v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    .line 45
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1}, Landroid/database/IBulkCursor;->getWantsAllOnMoveCalls()Z

    move-result v1

    iput-boolean v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    .line 48
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1}, Landroid/database/IBulkCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    .line 49
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    invoke-static {v1}, Landroid/database/BulkCursorToCursorAdaptor;->findRowIdColumnIndex([Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_22} :catch_23

    .line 53
    :goto_22
    return-void

    .line 50
    :catch_23
    move-exception v1

    move-object v0, v1

    .line 51
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "BulkCursor"

    const-string v2, "Setup failed because the remote process is dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public set(Landroid/database/IBulkCursor;II)V
    .registers 5
    .parameter "bulkCursor"
    .parameter "count"
    .parameter "idIndex"

    .prologue
    .line 60
    iput-object p1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    .line 62
    iput p2, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    .line 63
    iput p3, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    .line 64
    return-void
.end method
