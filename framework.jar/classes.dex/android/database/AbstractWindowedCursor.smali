.class public abstract Landroid/database/AbstractWindowedCursor;
.super Landroid/database/AbstractCursor;
.source "AbstractWindowedCursor.java"



# instance fields
.field protected mWindow:Landroid/database/CursorWindow;



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkPosition()V
    .registers 3

    .prologue
    .line 214
    invoke-super {p0}, Landroid/database/AbstractCursor;->checkPosition()V

    .line 216
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-nez v0, :cond_f

    .line 217
    new-instance v0, Landroid/database/StaleDataException;

    const-string v1, "Access closed cursor"

    invoke-direct {v0, v1}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_f
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .registers 5
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 57
    iget-object v0, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v0

    .line 58
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 59
    invoke-super {p0, p1, p2}, Landroid/database/AbstractCursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 61
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_18

    .line 63
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    .line 64
    return-void

    .line 61
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public getBlob(I)[B
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 29
    iget-object v0, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v0

    .line 30
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 31
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, [B

    check-cast p0, [B

    monitor-exit v0

    move-object v0, p0

    .line 35
    :goto_16
    return-object v0

    .line 33
    .restart local p0       
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_21

    .line 35
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getBlob(II)[B

    move-result-object v0

    goto :goto_16

    .line 33
    .end local p0       
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public getDouble(I)D
    .registers 6
    .parameter "columnIndex"

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 131
    iget-object v1, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 132
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 133
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 134
    .local v0, value:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    monitor-exit v1

    move-wide v1, v2

    .line 138
    .end local v0       #value:Ljava/lang/Number;,
    :goto_18
    return-wide v1

    .line 136
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_23

    .line 138
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide v1

    goto :goto_18

    .line 136
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public getFloat(I)F
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 116
    iget-object v1, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 117
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 118
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 119
    .local v0, value:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    monitor-exit v1

    move v1, v2

    .line 123
    .end local v0       #value:Ljava/lang/Number;,
    :goto_18
    return v1

    .line 121
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_23

    .line 123
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Landroid/database/CursorWindow;->getFloat(II)F

    move-result v1

    goto :goto_18

    .line 121
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public getInt(I)I
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 86
    iget-object v1, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 87
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 88
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 89
    .local v0, value:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    monitor-exit v1

    move v1, v2

    .line 93
    .end local v0       #value:Ljava/lang/Number;,
    :goto_18
    return v1

    .line 91
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_23

    .line 93
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v1

    goto :goto_18

    .line 91
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public getLong(I)J
    .registers 6
    .parameter "columnIndex"

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 101
    iget-object v1, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 102
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 103
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 104
    .local v0, value:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    monitor-exit v1

    move-wide v1, v2

    .line 108
    .end local v0       #value:Ljava/lang/Number;,
    :goto_18
    return-wide v1

    .line 106
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_23

    .line 108
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v1

    goto :goto_18

    .line 106
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public getShort(I)S
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 71
    iget-object v1, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 72
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 73
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 74
    .local v0, value:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v2

    monitor-exit v1

    move v1, v2

    .line 78
    .end local v0       #value:Ljava/lang/Number;,
    :goto_18
    return v1

    .line 76
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_23

    .line 78
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Landroid/database/CursorWindow;->getShort(II)S

    move-result v1

    goto :goto_18

    .line 76
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 43
    iget-object v0, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v0

    .line 44
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 45
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    move-object v0, p0

    .line 49
    :goto_14
    return-object v0

    .line 47
    .restart local p0       
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_1f

    .line 49
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 47
    .end local p0       
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    return-object v0
.end method

.method public hasWindow()Z
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isBlob(I)Z
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 159
    iget-object v1, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 160
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 161
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    .line 162
    .local v0, object:Ljava/lang/Object;
    if-eqz v0, :cond_16

    instance-of v2, v0, [B

    if-eqz v2, :cond_1a

    :cond_16
    const/4 v2, 0x1

    :goto_17
    monitor-exit v1

    move v1, v2

    .line 166
    .end local v0       #object:Ljava/lang/Object;,
    :goto_19
    return v1

    .line 162
    .restart local v0       #object:Ljava/lang/Object;,
    :cond_1a
    const/4 v2, 0x0

    goto :goto_17

    .line 164
    .end local v0       #object:Ljava/lang/Object;,
    :cond_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_26

    .line 166
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Landroid/database/CursorWindow;->isBlob(II)Z

    move-result v1

    goto :goto_19

    .line 164
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public isFloat(I)Z
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 201
    iget-object v1, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 202
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 203
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    .line 204
    .local v0, object:Ljava/lang/Object;
    if-eqz v0, :cond_1e

    instance-of v2, v0, Ljava/lang/Float;

    if-nez v2, :cond_1a

    instance-of v2, v0, Ljava/lang/Double;

    if-eqz v2, :cond_1e

    :cond_1a
    const/4 v2, 0x1

    :goto_1b
    monitor-exit v1

    move v1, v2

    .line 208
    .end local v0       #object:Ljava/lang/Object;,
    :goto_1d
    return v1

    .line 204
    .restart local v0       #object:Ljava/lang/Object;,
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1b

    .line 206
    .end local v0       #object:Ljava/lang/Object;,
    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_2a

    .line 208
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Landroid/database/CursorWindow;->isFloat(II)Z

    move-result v1

    goto :goto_1d

    .line 206
    :catchall_2a
    move-exception v2

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method public isLong(I)Z
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 187
    iget-object v1, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 188
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 189
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, object:Ljava/lang/Object;
    if-eqz v0, :cond_1e

    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_1a

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_1e

    :cond_1a
    const/4 v2, 0x1

    :goto_1b
    monitor-exit v1

    move v1, v2

    .line 194
    .end local v0       #object:Ljava/lang/Object;,
    :goto_1d
    return v1

    .line 190
    .restart local v0       #object:Ljava/lang/Object;,
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1b

    .line 192
    .end local v0       #object:Ljava/lang/Object;,
    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_2a

    .line 194
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Landroid/database/CursorWindow;->isLong(II)Z

    move-result v1

    goto :goto_1d

    .line 192
    :catchall_2a
    move-exception v2

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method public isNull(I)Z
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 146
    iget-object v0, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v0

    .line 147
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 148
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    :goto_13
    monitor-exit v0

    move v0, v1

    .line 152
    :goto_15
    return v0

    .line 148
    :cond_16
    const/4 v1, 0x0

    goto :goto_13

    .line 150
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_22

    .line 152
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->isNull(II)Z

    move-result v0

    goto :goto_15

    .line 150
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public isString(I)Z
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 173
    iget-object v1, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 174
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 175
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, object:Ljava/lang/Object;
    if-eqz v0, :cond_16

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1a

    :cond_16
    const/4 v2, 0x1

    :goto_17
    monitor-exit v1

    move v1, v2

    .line 180
    .end local v0       #object:Ljava/lang/Object;,
    :goto_19
    return v1

    .line 176
    .restart local v0       #object:Ljava/lang/Object;,
    :cond_1a
    const/4 v2, 0x0

    goto :goto_17

    .line 178
    .end local v0       #object:Ljava/lang/Object;,
    :cond_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_26

    .line 180
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Landroid/database/CursorWindow;->isString(II)Z

    move-result v1

    goto :goto_19

    .line 178
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public setWindow(Landroid/database/CursorWindow;)V
    .registers 3
    .parameter "window"

    .prologue
    .line 231
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_9

    .line 232
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 234
    :cond_9
    iput-object p1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    .line 235
    return-void
.end method
