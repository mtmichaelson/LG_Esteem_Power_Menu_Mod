.class Landroid/media/audiofx/BassBoost$BaseParameterListener;
.super Ljava/lang/Object;
.source "BassBoost.java"


# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/BassBoost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/BassBoost;



# direct methods
.method private constructor <init>(Landroid/media/audiofx/BassBoost;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/BassBoost;Landroid/media/audiofx/BassBoost$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Landroid/media/audiofx/BassBoost$BaseParameterListener;-><init>(Landroid/media/audiofx/BassBoost;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 12
    .parameter "effect"
    .parameter "status"
    .parameter "param"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, l:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;
    iget-object v3, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-static {v3}, Landroid/media/audiofx/BassBoost;->access$000(Landroid/media/audiofx/BassBoost;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 180
    :try_start_a
    iget-object v4, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-static {v4}, Landroid/media/audiofx/BassBoost;->access$100(Landroid/media/audiofx/BassBoost;)Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 181
    iget-object v4, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-static {v4}, Landroid/media/audiofx/BassBoost;->access$100(Landroid/media/audiofx/BassBoost;)Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    move-result-object v0

    .line 183
    :cond_18
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_3b

    .line 184
    if-eqz v0, :cond_3a

    .line 185
    const/4 v1, -0x1

    .line 186
    .local v1, p:I
    const/4 v2, -0x1

    .line 188
    .local v2, v:S
    array-length v3, p3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_27

    .line 189
    iget-object v3, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v3, p3, v6}, Landroid/media/audiofx/BassBoost;->byteArrayToInt([BI)I

    move-result v1

    .line 191
    :cond_27
    array-length v3, p4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_31

    .line 192
    iget-object v3, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v3, p4, v6}, Landroid/media/audiofx/BassBoost;->byteArrayToShort([BI)S

    move-result v2

    .line 194
    :cond_31
    if-eq v1, v5, :cond_3a

    if-eq v2, v5, :cond_3a

    .line 195
    iget-object v3, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-interface {v0, v3, p2, v1, v2}, Landroid/media/audiofx/BassBoost$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/BassBoost;IIS)V

    .line 198
    .end local v1       #p:I,
    .end local v2       #v:S,
    :cond_3a
    return-void

    .line 183
    :catchall_3b
    move-exception v4

    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v4
.end method
