.class public Landroid/pim/vcard/exception/VCardAgentNotSupportedException;
.super Landroid/pim/vcard/exception/VCardNotSupportedException;
.source "VCardAgentNotSupportedException.java"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/pim/vcard/exception/VCardNotSupportedException;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/pim/vcard/exception/VCardNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method
