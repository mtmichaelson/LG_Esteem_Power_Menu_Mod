.class public Lcom/lge/sui/widget/list/SUIColumnBinder;
.super Ljava/lang/Object;
.source "SUIColumnBinder.java"


# interfaces
.implements Lcom/lge/sui/widget/list/SUIListItemConstant;


# static fields
.field public static final COLUMN_EXTRA:Ljava/lang/String; = "EXTRA"

.field public static final COLUMN_ICON:Ljava/lang/String; = "ICON"

.field public static final COLUMN_TEXT1:Ljava/lang/String; = "TEXT1"

.field public static final COLUMN_TEXT2:Ljava/lang/String; = "TEXT2"

.field public static final COLUMN_TEXT3:Ljava/lang/String; = "TEXT3"



# instance fields
.field protected mColumns:[Ljava/lang/String;



# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "columnCnt"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIColumnBinder;->mColumns:[Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 2
    .parameter "customColumns"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIColumnBinder;->mColumns:[Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static createBinder(I)Lcom/lge/sui/widget/list/SUIColumnBinder;
    .registers 10
    .parameter "itemStyle"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "TEXT1"

    .line 105
    packed-switch p0, :pswitch_data_d4

    .line 136
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, errMsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    .end local v0       #errMsg:Ljava/lang/String;,
    :pswitch_13
    new-instance v1, Lcom/lge/sui/widget/list/SUIColumnBinder;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "TEXT1"

    aput-object v6, v2, v4

    invoke-direct {v1, v2}, Lcom/lge/sui/widget/list/SUIColumnBinder;-><init>([Ljava/lang/String;)V

    .line 133
    :goto_1e
    return-object v1

    .line 109
    :pswitch_1f
    new-instance v1, Lcom/lge/sui/widget/list/SUIColumnBinder;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "TEXT1"

    aput-object v6, v2, v4

    const-string v3, "TEXT2"

    aput-object v3, v2, v5

    invoke-direct {v1, v2}, Lcom/lge/sui/widget/list/SUIColumnBinder;-><init>([Ljava/lang/String;)V

    goto :goto_1e

    .line 112
    :pswitch_2f
    new-instance v1, Lcom/lge/sui/widget/list/SUIColumnBinder;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEXT1"

    aput-object v6, v2, v4

    const-string v3, "TEXT2"

    aput-object v3, v2, v5

    const-string v3, "TEXT3"

    aput-object v3, v2, v7

    invoke-direct {v1, v2}, Lcom/lge/sui/widget/list/SUIColumnBinder;-><init>([Ljava/lang/String;)V

    goto :goto_1e

    .line 115
    :pswitch_43
    new-instance v1, Lcom/lge/sui/widget/list/SUIColumnBinder;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ICON"

    aput-object v3, v2, v4

    const-string v3, "TEXT1"

    aput-object v6, v2, v5

    invoke-direct {v1, v2}, Lcom/lge/sui/widget/list/SUIColumnBinder;-><init>([Ljava/lang/String;)V

    goto :goto_1e

    .line 118
    :pswitch_53
    new-instance v1, Lcom/lge/sui/widget/list/SUIColumnBinder;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ICON"

    aput-object v3, v2, v4

    const-string v3, "TEXT1"

    aput-object v6, v2, v5

    const-string v3, "TEXT2"

    aput-object v3, v2, v7

    invoke-direct {v1, v2}, Lcom/lge/sui/widget/list/SUIColumnBinder;-><init>([Ljava/lang/String;)V

    goto :goto_1e

    .line 121
    :pswitch_67
    new-instance v1, Lcom/lge/sui/widget/list/SUIColumnBinder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ICON"

    aput-object v3, v2, v4

    const-string v3, "TEXT1"

    aput-object v6, v2, v5

    const-string v3, "TEXT2"

    aput-object v3, v2, v7

    const-string v3, "TEXT3"

    aput-object v3, v2, v8

    invoke-direct {v1, v2}, Lcom/lge/sui/widget/list/SUIColumnBinder;-><init>([Ljava/lang/String;)V

    goto :goto_1e

    .line 124
    :pswitch_80
    new-instance v1, Lcom/lge/sui/widget/list/SUIColumnBinder;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "TEXT1"

    aput-object v6, v2, v4

    const-string v3, "EXTRA"

    aput-object v3, v2, v5

    invoke-direct {v1, v2}, Lcom/lge/sui/widget/list/SUIColumnBinder;-><init>([Ljava/lang/String;)V

    goto :goto_1e

    .line 127
    :pswitch_90
    new-instance v1, Lcom/lge/sui/widget/list/SUIColumnBinder;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEXT1"

    aput-object v6, v2, v4

    const-string v3, "TEXT2"

    aput-object v3, v2, v5

    const-string v3, "EXTRA"

    aput-object v3, v2, v7

    invoke-direct {v1, v2}, Lcom/lge/sui/widget/list/SUIColumnBinder;-><init>([Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 130
    :pswitch_a5
    new-instance v1, Lcom/lge/sui/widget/list/SUIColumnBinder;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ICON"

    aput-object v3, v2, v4

    const-string v3, "TEXT1"

    aput-object v6, v2, v5

    const-string v3, "EXTRA"

    aput-object v3, v2, v7

    invoke-direct {v1, v2}, Lcom/lge/sui/widget/list/SUIColumnBinder;-><init>([Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 133
    :pswitch_ba
    new-instance v1, Lcom/lge/sui/widget/list/SUIColumnBinder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ICON"

    aput-object v3, v2, v4

    const-string v3, "TEXT1"

    aput-object v6, v2, v5

    const-string v3, "TEXT2"

    aput-object v3, v2, v7

    const-string v3, "EXTRA"

    aput-object v3, v2, v8

    invoke-direct {v1, v2}, Lcom/lge/sui/widget/list/SUIColumnBinder;-><init>([Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 105
    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_13
        :pswitch_1f
        :pswitch_2f
        :pswitch_43
        :pswitch_53
        :pswitch_67
        :pswitch_80
        :pswitch_90
        :pswitch_a5
        :pswitch_ba
    .end packed-switch
.end method


# virtual methods
.method public bindColumn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "columnName"
    .parameter "userColumnName"

    .prologue
    .line 210
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIColumnBinder;->mColumns:[Ljava/lang/String;

    .line 211
    .local v1, columns:[Ljava/lang/String;
    array-length v2, v1

    .line 212
    .local v2, count:I
    const/4 v0, 0x0

    .line 213
    .local v0, bound:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    if-ge v3, v2, :cond_12

    .line 214
    aget-object v4, v1, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 215
    aput-object p2, v1, v3

    .line 216
    const/4 v0, 0x1

    .line 221
    :cond_12
    if-nez v0, :cond_40

    .line 222
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bind failed: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 213
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 225
    :cond_40
    return-void
.end method

.method public getColumnCount()I
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIColumnBinder;->mColumns:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 6
    .parameter "columnName"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIColumnBinder;->mColumns:[Ljava/lang/String;

    .line 235
    .local v0, columns:[Ljava/lang/String;
    array-length v1, v0

    .line 236
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    if-ge v2, v1, :cond_13

    .line 237
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v2

    .line 242
    :goto_f
    return v3

    .line 236
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 242
    :cond_13
    const/4 v3, -0x1

    goto :goto_f
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIColumnBinder;->mColumns:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIColumnBinder;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public isValidColumnName(Ljava/lang/String;)Z
    .registers 6
    .parameter "columnName"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIColumnBinder;->mColumns:[Ljava/lang/String;

    .line 179
    .local v0, columns:[Ljava/lang/String;
    array-length v1, v0

    .line 181
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    if-ge v2, v1, :cond_13

    .line 182
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 183
    const/4 v3, 0x1

    .line 186
    :goto_f
    return v3

    .line 181
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 186
    :cond_13
    const/4 v3, 0x0

    goto :goto_f
.end method
