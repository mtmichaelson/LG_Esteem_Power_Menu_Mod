.class public interface abstract Lcom/lge/content/Andy_ILockEvent;
.super Ljava/lang/Object;
.source "Andy_ILockEvent.java"



# static fields
.field public static final MSG_BGM:I = 0xfa7

.field public static final MSG_BLUETOOTH:I = 0xfa8

.field public static final MSG_EVENT_GROUP:[I = null

.field public static final MSG_FMRADIO:I = 0xfa6

.field public static final MSG_LOCK_SCREEN_EVENT:I = 0xfa1

.field public static final MSG_MISSED_CALLS:I = 0xfa2

.field public static final MSG_UNREAD_EMAILS:I = 0xfa4

.field public static final MSG_UNREAD_MESSAGES:I = 0xfa3

.field public static final MSG_UNREAD_VOICEMAILS:I = 0xfa5

.field public static final MUSIC_IS_CLOSE:I = 0x2

.field public static final MUSIC_IS_OFF:I = 0x0

.field public static final MUSIC_IS_PLAYING:I = 0x1



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/lge/content/Andy_ILockEvent;->MSG_EVENT_GROUP:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0xa2t 0xft 0x0t 0x0t
        0xa3t 0xft 0x0t 0x0t
        0xa4t 0xft 0x0t 0x0t
        0xa5t 0xft 0x0t 0x0t
        0xa6t 0xft 0x0t 0x0t
        0xa7t 0xft 0x0t 0x0t
        0xa8t 0xft 0x0t 0x0t
    .end array-data
.end method
