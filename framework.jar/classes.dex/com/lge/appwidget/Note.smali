.class Lcom/lge/appwidget/Note;
.super Ljava/lang/Object;
.source "Andy_RichnoteSAXParser.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Note$LocationInfo;
    }
.end annotation


# static fields
.field private static final IMAGE:I = 0x1

.field private static final LOCATION:I = 0x2

.field private static final TEXT:I



# instance fields
.field imageListIndex:I

.field imagePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field locationInfo:Lcom/lge/appwidget/Note$LocationInfo;

.field rowId:I

.field textList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field textListIndex:I

.field typeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field typeListIndex:I



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput v0, p0, Lcom/lge/appwidget/Note;->textListIndex:I

    .line 122
    iput v0, p0, Lcom/lge/appwidget/Note;->imageListIndex:I

    .line 123
    iput v0, p0, Lcom/lge/appwidget/Note;->typeListIndex:I

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Note;->typeList:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Note;->imagePathList:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Note;->textList:Ljava/util/ArrayList;

    .line 131
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/lge/appwidget/Note;->locationInfo:Lcom/lge/appwidget/Note$LocationInfo;

    invoke-virtual {v2}, Lcom/lge/appwidget/Note$LocationInfo;->getAddress()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 220
    .local v1, tempString:Ljava/lang/String;
    :goto_6
    return-object v1

    .line 216
    .end local v1       #tempString:Ljava/lang/String;,
    :catch_7
    move-exception v2

    move-object v0, v2

    .line 218
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1       #tempString:Ljava/lang/String;,
    goto :goto_6
.end method

.method public getNextImagePath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, tempImagePath:Ljava/lang/String;
    iget v1, p0, Lcom/lge/appwidget/Note;->imageListIndex:I

    iget-object v2, p0, Lcom/lge/appwidget/Note;->imagePathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 143
    iget-object v1, p0, Lcom/lge/appwidget/Note;->imagePathList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lge/appwidget/Note;->imageListIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0       #tempImagePath:Ljava/lang/String;,
    check-cast v0, Ljava/lang/String;

    .line 146
    .restart local v0       #tempImagePath:Ljava/lang/String;,
    :cond_15
    iget v1, p0, Lcom/lge/appwidget/Note;->imageListIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/appwidget/Note;->imageListIndex:I

    .line 147
    return-object v0
.end method

.method public getNextText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, tempText:Ljava/lang/String;
    iget v1, p0, Lcom/lge/appwidget/Note;->textListIndex:I

    iget-object v2, p0, Lcom/lge/appwidget/Note;->textList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 155
    iget-object v1, p0, Lcom/lge/appwidget/Note;->textList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lge/appwidget/Note;->textListIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0       #tempText:Ljava/lang/String;,
    check-cast v0, Ljava/lang/String;

    .line 158
    .restart local v0       #tempText:Ljava/lang/String;,
    :cond_15
    iget v1, p0, Lcom/lge/appwidget/Note;->textListIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/appwidget/Note;->textListIndex:I

    .line 159
    return-object v0
.end method

.method public getRowId()I
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lcom/lge/appwidget/Note;->rowId:I

    return v0
.end method

.method public getType()I
    .registers 4

    .prologue
    .line 163
    const/4 v0, -0x1

    .line 165
    .local v0, tempType:I
    iget v1, p0, Lcom/lge/appwidget/Note;->typeListIndex:I

    iget-object v2, p0, Lcom/lge/appwidget/Note;->typeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 167
    iget-object v1, p0, Lcom/lge/appwidget/Note;->typeList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lge/appwidget/Note;->typeListIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 170
    :cond_19
    iget v1, p0, Lcom/lge/appwidget/Note;->typeListIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/appwidget/Note;->typeListIndex:I

    .line 171
    return v0
.end method

.method public initializeLocation()V
    .registers 2

    .prologue
    .line 194
    new-instance v0, Lcom/lge/appwidget/Note$LocationInfo;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Note$LocationInfo;-><init>(Lcom/lge/appwidget/Note;)V

    iput-object v0, p0, Lcom/lge/appwidget/Note;->locationInfo:Lcom/lge/appwidget/Note$LocationInfo;

    .line 196
    return-void
.end method

.method public resetIndex()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/lge/appwidget/Note;->textListIndex:I

    .line 135
    iput v0, p0, Lcom/lge/appwidget/Note;->imageListIndex:I

    .line 136
    iput v0, p0, Lcom/lge/appwidget/Note;->typeListIndex:I

    .line 137
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .registers 4
    .parameter "tempVal"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lge/appwidget/Note;->imagePathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/lge/appwidget/Note;->typeList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public setLocationAddress(Ljava/lang/String;)V
    .registers 3
    .parameter "tempVal"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lge/appwidget/Note;->locationInfo:Lcom/lge/appwidget/Note$LocationInfo;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Note$LocationInfo;->setAddress(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public setLocationImagePath(Ljava/lang/String;)V
    .registers 3
    .parameter "tempVal"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lge/appwidget/Note;->locationInfo:Lcom/lge/appwidget/Note$LocationInfo;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Note$LocationInfo;->setImageLocation(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public setLocationUri(Ljava/lang/String;)V
    .registers 4
    .parameter "tempVal"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lge/appwidget/Note;->locationInfo:Lcom/lge/appwidget/Note$LocationInfo;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Note$LocationInfo;->setUri(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/lge/appwidget/Note;->typeList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method public setRowId(I)V
    .registers 2
    .parameter "rowId"

    .prologue
    .line 119
    iput p1, p0, Lcom/lge/appwidget/Note;->rowId:I

    .line 120
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 4
    .parameter "tempVal"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lge/appwidget/Note;->textList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lcom/lge/appwidget/Note;->typeList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method
