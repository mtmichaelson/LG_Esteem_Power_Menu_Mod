.class public Lcom/lge/provider/Andy_CallLog$Andy_Calls;
.super Landroid/provider/CallLog$Calls;
.source "Andy_CallLog.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/Andy_CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Andy_Calls"
.end annotation


# static fields
.field public static final REJECTED_TYPE:I = 0x4



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/provider/CallLog$Calls;-><init>()V

    return-void
.end method
