.class public final Landroid/os/Debug;
.super Ljava/lang/Object;
.source "Debug.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Debug$1;,
        Landroid/os/Debug$DebugProperty;,
        Landroid/os/Debug$InstructionCount;,
        Landroid/os/Debug$MemoryInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_TRACE_BODY:Ljava/lang/String; = "dmtrace"

.field private static final DEFAULT_TRACE_EXTENSION:Ljava/lang/String; = ".trace"

.field private static final DEFAULT_TRACE_FILE_PATH:Ljava/lang/String; = "/sdcard/dmtrace.trace"

.field private static final DEFAULT_TRACE_PATH_PREFIX:Ljava/lang/String; = "/sdcard/"

.field private static final MIN_DEBUGGER_IDLE:I = 0x514

.field public static final SHOW_CLASSLOADER:I = 0x2

.field public static final SHOW_FULL_DETAIL:I = 0x1

.field public static final SHOW_INITIALIZED:I = 0x4

.field private static final SPIN_DELAY:I = 0xc8

.field private static final SYSFS_QEMU_TRACE_STATE:Ljava/lang/String; = "/sys/qemu_trace/state"

.field private static final TAG:Ljava/lang/String; = "Debug"

.field public static final TRACE_COUNT_ALLOCS:I = 0x1

.field private static final debugProperties:Lcom/android/internal/util/TypedProperties;

.field private static volatile mWaiting:Z



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Debug;->mWaiting:Z

    .line 946
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Debug;->debugProperties:Lcom/android/internal/util/TypedProperties;

    .line 948
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final cacheRegisterMap(Ljava/lang/String;)Z
    .registers 2
    .parameter "classAndMethodDesc"

    .prologue
    .line 802
    invoke-static {p0}, Ldalvik/system/VMDebug;->cacheRegisterMap(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static changeDebugPort(I)V
    .registers 1
    .parameter "port"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 285
    return-void
.end method

.method public static dumpHprofData(Ljava/lang/String;)V
    .registers 1
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 741
    invoke-static {p0}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public static dumpHprofDataDdms()V
    .registers 0

    .prologue
    .line 753
    invoke-static {}, Ldalvik/system/VMDebug;->dumpHprofDataDdms()V

    .line 754
    return-void
.end method

.method public static final dumpReferenceTables()V
    .registers 0

    .prologue
    .line 812
    invoke-static {}, Ldalvik/system/VMDebug;->dumpReferenceTables()V

    .line 813
    return-void
.end method

.method public static dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    .registers 9
    .parameter "name"
    .parameter "fd"
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    const-string v5, "Debug"

    .line 1145
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1146
    .local v1, service:Landroid/os/IBinder;
    if-nez v1, :cond_23

    .line 1147
    const-string v2, "Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find service to dump: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1156
    :goto_22
    return v2

    .line 1152
    :cond_23
    :try_start_23
    invoke-interface {v1, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_28

    .line 1153
    const/4 v2, 0x1

    goto :goto_22

    .line 1154
    :catch_28
    move-exception v0

    .line 1155
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t dump service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v4

    .line 1156
    goto :goto_22
.end method

.method public static enableEmulatorTraceOutput()V
    .registers 0

    .prologue
    .line 378
    invoke-static {}, Ldalvik/system/VMDebug;->startEmulatorTracing()V

    .line 379
    return-void
.end method

.method private static fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z
    .registers 8
    .parameter "field"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 958
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 959
    .local v1, fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-ne v1, p1, :cond_a

    move v3, v5

    .line 975
    .end local p0       
    :goto_9
    return v3

    .line 968
    .restart local p0       
    :cond_a
    :try_start_a
    const-string v3, "TYPE"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_f} :catch_1b

    move-result-object v2

    .line 973
    .local v2, primitiveTypeField:Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    :try_start_11
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Ljava/lang/Class;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_17} :catch_21

    if-ne v1, p0, :cond_1f

    move v3, v5

    goto :goto_9

    .line 969
    .end local v2       #primitiveTypeField:Ljava/lang/reflect/Field;,
    .restart local p0       
    :catch_1b
    move-exception v3

    move-object v0, v3

    .local v0, ex:Ljava/lang/NoSuchFieldException;
    move v3, v4

    .line 970
    goto :goto_9

    .end local v0       #ex:Ljava/lang/NoSuchFieldException;,
    .end local p0       
    .restart local v2       #primitiveTypeField:Ljava/lang/reflect/Field;,
    :cond_1f
    move v3, v4

    .line 973
    goto :goto_9

    .line 974
    :catch_21
    move-exception v3

    move-object v0, v3

    .local v0, ex:Ljava/lang/IllegalAccessException;
    move v3, v4

    .line 975
    goto :goto_9
.end method

.method public static final native getBinderDeathObjectCount()I
.end method

.method public static final native getBinderLocalObjectCount()I
.end method

.method public static final native getBinderProxyObjectCount()I
.end method

.method public static native getBinderReceivedTransactions()I
.end method

.method public static native getBinderSentTransactions()I
.end method

.method public static getGlobalAllocCount()I
    .registers 1

    .prologue
    .line 535
    const/4 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalAllocSize()I
    .registers 1

    .prologue
    .line 538
    const/4 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalClassInitCount()I
    .registers 1

    .prologue
    .line 548
    const/16 v0, 0x20

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalClassInitTime()I
    .registers 1

    .prologue
    .line 552
    const/16 v0, 0x40

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalExternalAllocCount()I
    .registers 1

    .prologue
    .line 555
    const/16 v0, 0x1000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalExternalAllocSize()I
    .registers 1

    .prologue
    .line 558
    const/16 v0, 0x2000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalExternalFreedCount()I
    .registers 1

    .prologue
    .line 561
    const/16 v0, 0x4000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalExternalFreedSize()I
    .registers 1

    .prologue
    .line 564
    const v0, 0x8000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalFreedCount()I
    .registers 1

    .prologue
    .line 541
    const/4 v0, 0x4

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalFreedSize()I
    .registers 1

    .prologue
    .line 544
    const/16 v0, 0x8

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalGcInvocationCount()I
    .registers 1

    .prologue
    .line 567
    const/16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getLoadedClassCount()I
    .registers 1

    .prologue
    .line 729
    invoke-static {}, Ldalvik/system/VMDebug;->getLoadedClassCount()I

    move-result v0

    return v0
.end method

.method public static native getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V
.end method

.method public static native getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V
.end method

.method public static native getNativeHeapAllocatedSize()J
.end method

.method public static native getNativeHeapFreeSize()J
.end method

.method public static native getNativeHeapSize()J
.end method

.method public static getThreadAllocCount()I
    .registers 1

    .prologue
    .line 570
    const/high16 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getThreadAllocSize()I
    .registers 1

    .prologue
    .line 573
    const/high16 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getThreadExternalAllocCount()I
    .registers 1

    .prologue
    .line 576
    const/high16 v0, 0x1000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getThreadExternalAllocSize()I
    .registers 1

    .prologue
    .line 579
    const/high16 v0, 0x2000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getThreadGcInvocationCount()I
    .registers 1

    .prologue
    .line 582
    const/high16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getVmFeatureList()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 276
    invoke-static {}, Ldalvik/system/VMDebug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDebuggerConnected()Z
    .registers 1

    .prologue
    .line 265
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggerConnected()Z

    move-result v0

    return v0
.end method

.method public static isMethodTracingActive()Z
    .registers 1

    .prologue
    .line 489
    invoke-static {}, Ldalvik/system/VMDebug;->isMethodTracingActive()Z

    move-result v0

    return v0
.end method

.method private static modifyFieldIfSet(Ljava/lang/reflect/Field;Lcom/android/internal/util/TypedProperties;Ljava/lang/String;)V
    .registers 13
    .parameter "field"
    .parameter "properties"
    .parameter "propertyName"

    .prologue
    const-string v9, "Type of "

    const-string v8, "Cannot set field for "

    const-string v7, ")"

    const-string v6, " does not match field type ("

    .line 986
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_8d

    .line 987
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->getStringInfo(Ljava/lang/String;)I

    move-result v1

    .line 988
    .local v1, stringInfo:I
    packed-switch v1, :pswitch_data_fe

    .line 1007
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected getStringInfo("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 994
    :pswitch_3a
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_3c
    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 1026
    .end local v1       #stringInfo:I,
    :cond_3f
    :goto_3f
    :pswitch_3f
    return-void

    .line 995
    .restart local v1       #stringInfo:I,
    :catch_40
    move-exception v0

    .line 996
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set field for "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1003
    .end local v0       #ex:Ljava/lang/IllegalAccessException;,
    :pswitch_5a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type of "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not match field type ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1012
    .end local v1       #stringInfo:I,
    :cond_8d
    :pswitch_8d
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1013
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_3f

    .line 1014
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/os/Debug;->fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_de

    .line 1015
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type of "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not match field type ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1020
    :cond_de
    const/4 v3, 0x0

    :try_start_df
    invoke-virtual {p0, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e2
    .catch Ljava/lang/IllegalAccessException; {:try_start_df .. :try_end_e2} :catch_e4

    goto/16 :goto_3f

    .line 1021
    :catch_e4
    move-exception v0

    .line 1022
    .restart local v0       #ex:Ljava/lang/IllegalAccessException;,
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set field for "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 988
    :pswitch_data_fe
    .packed-switch -0x2
        :pswitch_5a
        :pswitch_3f
        :pswitch_3a
        :pswitch_8d
    .end packed-switch
.end method

.method public static printLoadedClasses(I)V
    .registers 1
    .parameter "flags"

    .prologue
    .line 721
    invoke-static {p0}, Ldalvik/system/VMDebug;->printLoadedClasses(I)V

    .line 722
    return-void
.end method

.method public static resetAllCounts()V
    .registers 1

    .prologue
    .line 634
    const/4 v0, -0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 635
    return-void
.end method

.method public static resetGlobalAllocCount()V
    .registers 1

    .prologue
    .line 586
    const/4 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 587
    return-void
.end method

.method public static resetGlobalAllocSize()V
    .registers 1

    .prologue
    .line 589
    const/4 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 590
    return-void
.end method

.method public static resetGlobalClassInitCount()V
    .registers 1

    .prologue
    .line 598
    const/16 v0, 0x20

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 599
    return-void
.end method

.method public static resetGlobalClassInitTime()V
    .registers 1

    .prologue
    .line 601
    const/16 v0, 0x40

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 602
    return-void
.end method

.method public static resetGlobalExternalAllocCount()V
    .registers 1

    .prologue
    .line 604
    const/16 v0, 0x1000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 605
    return-void
.end method

.method public static resetGlobalExternalAllocSize()V
    .registers 1

    .prologue
    .line 607
    const/16 v0, 0x2000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 608
    return-void
.end method

.method public static resetGlobalExternalFreedCount()V
    .registers 1

    .prologue
    .line 610
    const/16 v0, 0x4000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 611
    return-void
.end method

.method public static resetGlobalExternalFreedSize()V
    .registers 1

    .prologue
    .line 613
    const v0, 0x8000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 614
    return-void
.end method

.method public static resetGlobalFreedCount()V
    .registers 1

    .prologue
    .line 592
    const/4 v0, 0x4

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 593
    return-void
.end method

.method public static resetGlobalFreedSize()V
    .registers 1

    .prologue
    .line 595
    const/16 v0, 0x8

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 596
    return-void
.end method

.method public static resetGlobalGcInvocationCount()V
    .registers 1

    .prologue
    .line 616
    const/16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 617
    return-void
.end method

.method public static resetThreadAllocCount()V
    .registers 1

    .prologue
    .line 619
    const/high16 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 620
    return-void
.end method

.method public static resetThreadAllocSize()V
    .registers 1

    .prologue
    .line 622
    const/high16 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 623
    return-void
.end method

.method public static resetThreadExternalAllocCount()V
    .registers 1

    .prologue
    .line 625
    const/high16 v0, 0x1000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 626
    return-void
.end method

.method public static resetThreadExternalAllocSize()V
    .registers 1

    .prologue
    .line 628
    const/high16 v0, 0x2000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 629
    return-void
.end method

.method public static resetThreadGcInvocationCount()V
    .registers 1

    .prologue
    .line 631
    const/high16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 632
    return-void
.end method

.method public static setAllocationLimit(I)I
    .registers 2
    .parameter "limit"

    .prologue
    .line 697
    invoke-static {p0}, Ldalvik/system/VMDebug;->setAllocationLimit(I)I

    move-result v0

    return v0
.end method

.method public static setFieldsOn(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1037
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/Debug;->setFieldsOn(Ljava/lang/Class;Z)V

    .line 1038
    return-void
.end method

.method public static setFieldsOn(Ljava/lang/Class;Z)V
    .registers 5
    .parameter
    .parameter "partial"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 1116
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v0, "Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFieldsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p0, :cond_25

    const-string/jumbo v2, "null"

    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") called in non-DEBUG build"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    return-void

    .line 1116
    :cond_25
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_13
.end method

.method public static setGlobalAllocationLimit(I)I
    .registers 3
    .parameter "limit"

    .prologue
    .line 710
    if-eqz p0, :cond_d

    const/4 v0, -0x1

    if-eq p0, v0, :cond_d

    .line 711
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "limit must be 0 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_d
    invoke-static {p0}, Ldalvik/system/VMDebug;->setGlobalAllocationLimit(I)I

    move-result v0

    return v0
.end method

.method public static startAllocCounting()V
    .registers 0

    .prologue
    .line 528
    invoke-static {}, Ldalvik/system/VMDebug;->startAllocCounting()V

    .line 529
    return-void
.end method

.method public static startMethodTracing()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 388
    const-string v0, "/sdcard/dmtrace.trace"

    invoke-static {v0, v1, v1}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;II)V

    .line 389
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;)V
    .registers 2
    .parameter "traceName"

    .prologue
    const/4 v0, 0x0

    .line 404
    invoke-static {p0, v0, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    .line 405
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;I)V
    .registers 3
    .parameter "traceName"
    .parameter "bufferSize"

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    .line 422
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;II)V
    .registers 7
    .parameter "traceName"
    .parameter "bufferSize"
    .parameter "flags"

    .prologue
    const-string v3, ".trace"

    .line 450
    move-object v0, p0

    .line 451
    .local v0, pathName:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1f

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    :cond_1f
    const-string v1, ".trace"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".trace"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    :cond_3a
    invoke-static {v0, p1, p2}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;II)V

    .line 457
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;II)V
    .registers 4
    .parameter "traceName"
    .parameter "fd"
    .parameter "bufferSize"
    .parameter "flags"

    .prologue
    .line 470
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;II)V

    .line 471
    return-void
.end method

.method public static startMethodTracingDdms(II)V
    .registers 2
    .parameter "bufferSize"
    .parameter "flags"

    .prologue
    .line 481
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->startMethodTracingDdms(II)V

    .line 482
    return-void
.end method

.method public static startNativeTracing()V
    .registers 4

    .prologue
    .line 323
    const/4 v1, 0x0

    .line 325
    .local v1, outStream:Ljava/io/PrintWriter;
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v3, "/sys/qemu_trace/state"

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, fos:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_21

    .line 327
    .end local v1       #outStream:Ljava/io/PrintWriter;,
    .local v2, outStream:Ljava/io/PrintWriter;
    :try_start_12
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_2f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_32

    .line 330
    if-eqz v2, :cond_35

    .line 331
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    move-object v1, v2

    .line 334
    .end local v0       #fos:Ljava/io/FileOutputStream;,
    .end local v2       #outStream:Ljava/io/PrintWriter;,
    .restart local v1       #outStream:Ljava/io/PrintWriter;,
    :cond_1d
    :goto_1d
    invoke-static {}, Ldalvik/system/VMDebug;->startEmulatorTracing()V

    .line 335
    return-void

    .line 328
    :catch_21
    move-exception v3

    .line 330
    :goto_22
    if-eqz v1, :cond_1d

    .line 331
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_1d

    .line 330
    :catchall_28
    move-exception v3

    :goto_29
    if-eqz v1, :cond_2e

    .line 331
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_2e
    throw v3

    .line 330
    .end local v1       #outStream:Ljava/io/PrintWriter;,
    .restart local v0       #fos:Ljava/io/FileOutputStream;,
    .restart local v2       #outStream:Ljava/io/PrintWriter;,
    :catchall_2f
    move-exception v3

    move-object v1, v2

    .end local v2       #outStream:Ljava/io/PrintWriter;,
    .restart local v1       #outStream:Ljava/io/PrintWriter;,
    goto :goto_29

    .line 328
    .end local v1       #outStream:Ljava/io/PrintWriter;,
    .restart local v2       #outStream:Ljava/io/PrintWriter;,
    :catch_32
    move-exception v3

    move-object v1, v2

    .end local v2       #outStream:Ljava/io/PrintWriter;,
    .restart local v1       #outStream:Ljava/io/PrintWriter;,
    goto :goto_22

    .end local v1       #outStream:Ljava/io/PrintWriter;,
    .restart local v2       #outStream:Ljava/io/PrintWriter;,
    :cond_35
    move-object v1, v2

    .end local v2       #outStream:Ljava/io/PrintWriter;,
    .restart local v1       #outStream:Ljava/io/PrintWriter;,
    goto :goto_1d
.end method

.method public static stopAllocCounting()V
    .registers 0

    .prologue
    .line 531
    invoke-static {}, Ldalvik/system/VMDebug;->stopAllocCounting()V

    .line 532
    return-void
.end method

.method public static stopMethodTracing()V
    .registers 0

    .prologue
    .line 496
    invoke-static {}, Ldalvik/system/VMDebug;->stopMethodTracing()V

    .line 497
    return-void
.end method

.method public static stopNativeTracing()V
    .registers 4

    .prologue
    .line 348
    invoke-static {}, Ldalvik/system/VMDebug;->stopEmulatorTracing()V

    .line 351
    const/4 v1, 0x0

    .line 353
    .local v1, outStream:Ljava/io/PrintWriter;
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v3, "/sys/qemu_trace/state"

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, fos:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_21

    .line 355
    .end local v1       #outStream:Ljava/io/PrintWriter;,
    .local v2, outStream:Ljava/io/PrintWriter;
    :try_start_15
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_2f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_32

    .line 360
    if-eqz v2, :cond_35

    .line 361
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    move-object v1, v2

    .line 363
    .end local v0       #fos:Ljava/io/FileOutputStream;,
    .end local v2       #outStream:Ljava/io/PrintWriter;,
    .restart local v1       #outStream:Ljava/io/PrintWriter;,
    :cond_20
    :goto_20
    return-void

    .line 356
    :catch_21
    move-exception v3

    .line 360
    :goto_22
    if-eqz v1, :cond_20

    .line 361
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_20

    .line 360
    :catchall_28
    move-exception v3

    :goto_29
    if-eqz v1, :cond_2e

    .line 361
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_2e
    throw v3

    .line 360
    .end local v1       #outStream:Ljava/io/PrintWriter;,
    .restart local v0       #fos:Ljava/io/FileOutputStream;,
    .restart local v2       #outStream:Ljava/io/PrintWriter;,
    :catchall_2f
    move-exception v3

    move-object v1, v2

    .end local v2       #outStream:Ljava/io/PrintWriter;,
    .restart local v1       #outStream:Ljava/io/PrintWriter;,
    goto :goto_29

    .line 356
    .end local v1       #outStream:Ljava/io/PrintWriter;,
    .restart local v2       #outStream:Ljava/io/PrintWriter;,
    :catch_32
    move-exception v3

    move-object v1, v2

    .end local v2       #outStream:Ljava/io/PrintWriter;,
    .restart local v1       #outStream:Ljava/io/PrintWriter;,
    goto :goto_22

    .end local v1       #outStream:Ljava/io/PrintWriter;,
    .restart local v2       #outStream:Ljava/io/PrintWriter;,
    :cond_35
    move-object v1, v2

    .end local v2       #outStream:Ljava/io/PrintWriter;,
    .restart local v1       #outStream:Ljava/io/PrintWriter;,
    goto :goto_20
.end method

.method public static threadCpuTimeNanos()J
    .registers 2

    .prologue
    .line 511
    invoke-static {}, Ldalvik/system/VMDebug;->threadCpuTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public static waitForDebugger()V
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 204
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggingEnabled()Z

    move-result v4

    if-nez v4, :cond_9

    .line 251
    :cond_8
    :goto_8
    return-void

    .line 208
    :cond_9
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v4

    if-nez v4, :cond_8

    .line 212
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Sending WAIT chunk"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    new-array v0, v7, [B

    aput-byte v6, v0, v6

    .line 214
    .local v0, data:[B
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    const-string v4, "WAIT"

    invoke-static {v4}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4, v0, v6, v7}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 215
    .local v3, waitChunk:Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {v3}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    .line 217
    sput-boolean v7, Landroid/os/Debug;->mWaiting:Z

    .line 218
    :goto_2a
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v4

    if-nez v4, :cond_38

    .line 219
    const-wide/16 v4, 0xc8

    :try_start_32
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_2a

    .line 220
    :catch_36
    move-exception v4

    goto :goto_2a

    .line 222
    :cond_38
    sput-boolean v6, Landroid/os/Debug;->mWaiting:Z

    .line 224
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Debugger has connected"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    :goto_41
    invoke-static {}, Ldalvik/system/VMDebug;->lastDebuggerActivity()J

    move-result-wide v1

    .line 237
    .local v1, delta:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_53

    .line 238
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "debugger detached?"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 242
    :cond_53
    const-wide/16 v4, 0x514

    cmp-long v4, v1, v4

    if-gez v4, :cond_69

    .line 243
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "waiting for debugger to settle..."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    const-wide/16 v4, 0xc8

    :try_start_63
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_41

    .line 245
    :catch_67
    move-exception v4

    goto :goto_41

    .line 247
    :cond_69
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "debugger has settled ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static waitingForDebugger()Z
    .registers 1

    .prologue
    .line 258
    sget-boolean v0, Landroid/os/Debug;->mWaiting:Z

    return v0
.end method
