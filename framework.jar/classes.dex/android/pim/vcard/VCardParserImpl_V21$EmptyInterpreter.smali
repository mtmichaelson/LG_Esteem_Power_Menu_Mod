.class final Landroid/pim/vcard/VCardParserImpl_V21$EmptyInterpreter;
.super Ljava/lang/Object;
.source "VCardParserImpl_V21.java"


# interfaces
.implements Landroid/pim/vcard/VCardInterpreter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/vcard/VCardParserImpl_V21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyInterpreter"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/pim/vcard/VCardParserImpl_V21$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/pim/vcard/VCardParserImpl_V21$EmptyInterpreter;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method

.method public endEntry()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method

.method public endProperty()V
    .registers 1

    .prologue
    .line 55
    return-void
.end method

.method public propertyGroup(Ljava/lang/String;)V
    .registers 2
    .parameter "group"

    .prologue
    .line 58
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 61
    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 64
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 67
    return-void
.end method

.method public propertyValues(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 73
    return-void
.end method

.method public startEntry()V
    .registers 1

    .prologue
    .line 76
    return-void
.end method

.method public startProperty()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method
