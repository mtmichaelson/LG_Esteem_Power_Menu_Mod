.class public Lcom/lge/sui/widget/list/internal/SUIHanziToPinyin$Token;
.super Ljava/lang/Object;
.source "SUIHanziToPinyin.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/list/internal/SUIHanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# static fields
.field public static final LATIN:I = 0x1

.field public static final PINYIN:I = 0x2

.field public static final SEPARATOR:Ljava/lang/String; = " "

.field public static final UNKNOWN:I = 0x3



# instance fields
.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public type:I



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "type"
    .parameter "source"
    .parameter "target"

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput p1, p0, Lcom/lge/sui/widget/list/internal/SUIHanziToPinyin$Token;->type:I

    .line 325
    iput-object p2, p0, Lcom/lge/sui/widget/list/internal/SUIHanziToPinyin$Token;->source:Ljava/lang/String;

    .line 326
    iput-object p3, p0, Lcom/lge/sui/widget/list/internal/SUIHanziToPinyin$Token;->target:Ljava/lang/String;

    .line 327
    return-void
.end method
