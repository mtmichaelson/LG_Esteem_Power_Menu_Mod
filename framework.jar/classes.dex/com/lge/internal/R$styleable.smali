.class public final Lcom/lge/internal/R$styleable;
.super Ljava/lang/Object;
.source "R.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Andy_AnalogClockClass:[I = null

.field public static final Andy_AnalogClockClass_clock_dial:I = 0x0

.field public static final Andy_AnalogClockClass_hour_hand:I = 0x1

.field public static final Andy_AnalogClockClass_minute_hand:I = 0x2

.field public static final Andy_AnalogClockClass_second_hand:I = 0x3

.field public static final Panel:[I = null

.field public static final Panel_animationDuration:I = 0x0

.field public static final Panel_closedHandle:I = 0x7

.field public static final Panel_content:I = 0x3

.field public static final Panel_handle:I = 0x2

.field public static final Panel_linearFlying:I = 0x4

.field public static final Panel_openedHandle:I = 0x6

.field public static final Panel_position:I = 0x1

.field public static final Panel_weight:I = 0x5



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2245
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/lge/internal/R$styleable;->Andy_AnalogClockClass:[I

    .line 2312
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/lge/internal/R$styleable;->Panel:[I

    return-void

    .line 2245
    :array_12
    .array-data 0x4
        0x0t 0x0t 0x1t 0x2t
        0x1t 0x0t 0x1t 0x2t
        0x2t 0x0t 0x1t 0x2t
        0x3t 0x0t 0x1t 0x2t
    .end array-data

    .line 2312
    :array_1e
    .array-data 0x4
        0x4t 0x0t 0x1t 0x2t
        0x5t 0x0t 0x1t 0x2t
        0x6t 0x0t 0x1t 0x2t
        0x7t 0x0t 0x1t 0x2t
        0x8t 0x0t 0x1t 0x2t
        0x9t 0x0t 0x1t 0x2t
        0xat 0x0t 0x1t 0x2t
        0xbt 0x0t 0x1t 0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
