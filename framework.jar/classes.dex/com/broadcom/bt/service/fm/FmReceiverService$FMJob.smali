.class Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
.super Ljava/lang/Object;
.source "FmReceiverService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FMJob"
.end annotation


# instance fields
.field arg1:I

.field arg2:I

.field arg3:I

.field arg4:I

.field b_arg1:Z

.field final command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field timeSent:J



# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;)V
    .registers 4
    .parameter "command"

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V
    .registers 5
    .parameter "command"
    .parameter "arg1"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 138
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    .line 139
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;II)V
    .registers 6
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 145
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    .line 146
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    .line 147
    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;III)V
    .registers 7
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    .line 154
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    .line 155
    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    .line 156
    iput p4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg3:I

    .line 157
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;IIII)V
    .registers 8
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    .line 163
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    .line 164
    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    .line 165
    iput p4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg3:I

    .line 166
    iput p5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg4:I

    .line 167
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;Z)V
    .registers 5
    .parameter "command"
    .parameter "b_arg1"

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 172
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    .line 173
    iput-boolean p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->b_arg1:Z

    .line 174
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;ZI)V
    .registers 6
    .parameter "command"
    .parameter "b_arg1"
    .parameter "arg2"

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 179
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    .line 180
    iput-boolean p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->b_arg1:Z

    .line 181
    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    .line 182
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, " TimeSent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-wide v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_26

    .line 189
    const-string/jumbo v1, "not yet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :goto_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 191
    :cond_26
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21
.end method
