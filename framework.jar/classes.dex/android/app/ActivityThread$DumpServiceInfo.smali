.class final Landroid/app/ActivityThread$DumpServiceInfo;
.super Ljava/lang/Object;
.source "ActivityThread.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DumpServiceInfo"
.end annotation


# instance fields
.field args:[Ljava/lang/String;

.field dumped:Z

.field fd:Ljava/io/FileDescriptor;

.field service:Landroid/os/IBinder;



# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 341
    invoke-direct {p0}, Landroid/app/ActivityThread$DumpServiceInfo;-><init>()V

    return-void
.end method
