.class public Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;
.super Ljava/lang/Object;
.source "Andy_TodayPlusRichNoteLayout.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RichNoteData"
.end annotation


# instance fields
.field public mAlarm:J

.field public mAudioSize:J

.field public mContentsXml:Ljava/lang/String;

.field public mImageSize:J

.field public mIsAudioData:Z

.field public mIsLocationData:Z

.field public mRowId:J

.field public mTime:J

.field public mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;JLjava/lang/String;Ljava/lang/String;JJJJ)V
    .registers 15
    .parameter
    .parameter "rowId"
    .parameter "title"
    .parameter "contentsXml"
    .parameter "imageSize"
    .parameter "audioSize"
    .parameter "alarm"
    .parameter "time"

    .prologue
    const/4 v0, 0x0

    .line 224
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->this$0:Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-wide p2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->mRowId:J

    .line 226
    iput-object p4, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->mTitle:Ljava/lang/String;

    .line 227
    iput-object p5, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->mContentsXml:Ljava/lang/String;

    .line 228
    iput-wide p6, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->mImageSize:J

    .line 229
    iput-wide p8, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->mAudioSize:J

    .line 230
    iput-wide p10, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->mAlarm:J

    .line 231
    iput-wide p12, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->mTime:J

    .line 232
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->mIsAudioData:Z

    .line 233
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->mIsLocationData:Z

    .line 234
    return-void
.end method


# virtual methods
.method public parseXml(Ljava/lang/String;)Ljava/util/Vector;
    .registers 14
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    .line 244
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 245
    .local v3, parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 246
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v9, "UTF-8"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 247
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_1b} :catch_2e

    move-result v6

    .line 255
    .local v6, xmlParserEvent:I
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 257
    .local v5, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;>;"
    :goto_21
    if-eq v6, v10, :cond_a9

    .line 261
    packed-switch v6, :pswitch_data_ac

    .line 305
    :cond_26
    :goto_26
    :try_start_26
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 306
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_2c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_2c} :catch_60
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2c} :catch_8a

    move-result v6

    goto :goto_21

    .line 249
    .end local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;,
    .end local v3       #parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;,
    .end local v5       #vector:Ljava/util/Vector;,, "Ljava/util/Vector<Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;>;"
    .end local v6       #xmlParserEvent:I,
    :catch_2e
    move-exception v8

    move-object v0, v8

    .line 251
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 252
    const/4 v8, 0x0

    .line 317
    .end local v0       #e:Lorg/xmlpull/v1/XmlPullParserException;,
    :goto_34
    return-object v8

    .line 264
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;,
    .restart local v3       #parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;,
    .restart local v5       #vector:Ljava/util/Vector;,, "Ljava/util/Vector<Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;>;"
    .restart local v6       #xmlParserEvent:I,
    :pswitch_35
    :try_start_35
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, tagString:Ljava/lang/String;
    if-eqz v4, :cond_26

    .line 269
    const-string/jumbo v8, "text"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 271
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 272
    if-ne v6, v11, :cond_26

    .line 274
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 275
    .local v7, xmlText:Ljava/lang/String;
    new-instance v1, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;

    iget-object v8, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->this$0:Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;

    invoke-direct {v1, v8}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;-><init>(Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;)V

    .line 276
    .local v1, elementData:Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->setType(I)V

    .line 277
    invoke-virtual {v1, v7}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->setText(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v5, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35 .. :try_end_5f} :catch_60
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_5f} :catch_8a

    goto :goto_26

    .line 308
    .end local v1       #elementData:Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;,
    .end local v4       #tagString:Ljava/lang/String;,
    .end local v7       #xmlText:Ljava/lang/String;,
    :catch_60
    move-exception v8

    move-object v0, v8

    .line 310
    .restart local v0       #e:Lorg/xmlpull/v1/XmlPullParserException;,
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_21

    .line 281
    .end local v0       #e:Lorg/xmlpull/v1/XmlPullParserException;,
    .restart local v4       #tagString:Ljava/lang/String;,
    :cond_66
    :try_start_66
    const-string v8, "image"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_90

    .line 283
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 284
    if-ne v6, v11, :cond_26

    .line 286
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 287
    .restart local v7       #xmlText:Ljava/lang/String;,
    new-instance v1, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;

    iget-object v8, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->this$0:Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;

    invoke-direct {v1, v8}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;-><init>(Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;)V

    .line 288
    .restart local v1       #elementData:Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;,
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->setType(I)V

    .line 289
    invoke-virtual {v1, v7}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->setFilePath(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v5, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_66 .. :try_end_89} :catch_60
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_89} :catch_8a

    goto :goto_26

    .line 312
    .end local v1       #elementData:Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;,
    .end local v4       #tagString:Ljava/lang/String;,
    .end local v7       #xmlText:Ljava/lang/String;,
    :catch_8a
    move-exception v8

    move-object v0, v8

    .line 314
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 293
    .end local v0       #e:Ljava/io/IOException;,
    .restart local v4       #tagString:Ljava/lang/String;,
    :cond_90
    :try_start_90
    const-string v8, "audio"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9c

    .line 295
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->mIsAudioData:Z

    goto :goto_26

    .line 297
    :cond_9c
    const-string v8, "location"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 299
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->mIsLocationData:Z
    :try_end_a7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_90 .. :try_end_a7} :catch_60
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_a7} :catch_8a

    goto/16 :goto_26

    .end local v4       #tagString:Ljava/lang/String;,
    :cond_a9
    move-object v8, v5

    .line 317
    goto :goto_34

    .line 261
    nop

    :pswitch_data_ac
    .packed-switch 0x2
        :pswitch_35
    .end packed-switch
.end method
