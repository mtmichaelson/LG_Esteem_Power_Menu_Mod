.class public Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;
.super Landroid/widget/TextView;
.source "Andy_TodayPlusRichNoteView.java"



# static fields
.field private static final IMAGE_BOUND:Ljava/lang/String; = " "



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method private addPhoto(Ljava/lang/String;)Landroid/text/SpannableString;
    .registers 7
    .parameter "filename"

    .prologue
    const/4 v4, 0x1

    .line 75
    new-instance v1, Landroid/text/SpannableString;

    const-string v2, " "

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 77
    .local v1, span:Landroid/text/SpannableString;
    new-instance v0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x20201c9

    invoke-direct {v0, v2, v4, p1, v3}, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;-><init>(Landroid/content/Context;SLjava/lang/String;I)V

    .line 79
    .local v0, ris:Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;
    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->setSource(Ljava/lang/String;)V

    .line 80
    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 82
    return-object v1
.end method


# virtual methods
.method public setTodayPlusRichNoteView(Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;)Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;
    .registers 9
    .parameter "richNoteData"

    .prologue
    .line 40
    iget-object v5, p1, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->mContentsXml:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->parseXml(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    .line 43
    .local v3, parsedRichNoteData:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;>;"
    const-string v5, ""

    invoke-virtual {p0, v5}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_5e

    .line 46
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;

    .line 48
    .local v0, data:Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;
    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_60

    .line 44
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 53
    :pswitch_22
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 54
    .local v4, tempString:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_28
    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3e

    .line 56
    const/16 v5, 0xa

    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_4a

    .line 61
    :cond_3e
    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {p0, v4}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 54
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 65
    .end local v2       #j:I,
    .end local v4       #tempString:Ljava/lang/String;,
    :pswitch_4d
    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;->addPhoto(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;->append(Ljava/lang/CharSequence;)V

    .line 66
    const-string v5, "\n"

    invoke-virtual {p0, v5}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 70
    .end local v0       #data:Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;,
    :cond_5e
    return-object p1

    .line 48
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_22
        :pswitch_4d
    .end packed-switch
.end method
