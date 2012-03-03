.class Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;
.super Landroid/os/Handler;
.source "Andy_FinanceToggleTextView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_FinanceToggleTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToggleHandler"
.end annotation


# static fields
.field private static final MSG_START_TOGGLE:I = 0x1

.field private static final MSG_TOGGLE:I = 0x2



# instance fields
.field private mPosition:I

.field final synthetic this$0:Lcom/lge/appwidget/Andy_FinanceToggleTextView;



# direct methods
.method private constructor <init>(Lcom/lge/appwidget/Andy_FinanceToggleTextView;)V
    .registers 3
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->this$0:Lcom/lge/appwidget/Andy_FinanceToggleTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->mPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/appwidget/Andy_FinanceToggleTextView;Lcom/lge/appwidget/Andy_FinanceToggleTextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;-><init>(Lcom/lge/appwidget/Andy_FinanceToggleTextView;)V

    return-void
.end method


# virtual methods
.method getPosition()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->mPosition:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->mPosition:I

    goto :goto_5
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    .line 116
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_48

    .line 134
    :goto_7
    return-void

    .line 118
    :pswitch_8
    iput v4, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->mPosition:I

    .line 119
    invoke-virtual {p0, v5}, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 122
    :pswitch_e
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->this$0:Lcom/lge/appwidget/Andy_FinanceToggleTextView;

    invoke-static {v2}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->access$100(Lcom/lge/appwidget/Andy_FinanceToggleTextView;)[Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, toggleStrings:[Ljava/lang/String;
    if-eqz v1, :cond_44

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_44

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->this$0:Lcom/lge/appwidget/Andy_FinanceToggleTextView;

    invoke-static {v2}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->access$200(Lcom/lge/appwidget/Andy_FinanceToggleTextView;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 124
    array-length v0, v1

    .line 125
    .local v0, len:I
    iget v2, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->mPosition:I

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v0

    iput v2, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->mPosition:I

    .line 126
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->this$0:Lcom/lge/appwidget/Andy_FinanceToggleTextView;

    iget v3, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->mPosition:I

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->this$0:Lcom/lge/appwidget/Andy_FinanceToggleTextView;

    iget v3, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->mPosition:I

    invoke-static {v2, v3}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->access$300(Lcom/lge/appwidget/Andy_FinanceToggleTextView;I)V

    .line 128
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->this$0:Lcom/lge/appwidget/Andy_FinanceToggleTextView;

    invoke-static {v2}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->access$400(Lcom/lge/appwidget/Andy_FinanceToggleTextView;)J

    move-result-wide v2

    invoke-virtual {p0, v5, v2, v3}, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7

    .line 130
    .end local v0       #len:I,
    :cond_44
    iput v4, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->mPosition:I

    goto :goto_7

    .line 116
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_8
        :pswitch_e
    .end packed-switch
.end method

.method start()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 137
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->this$0:Lcom/lge/appwidget/Andy_FinanceToggleTextView;

    invoke-static {v1}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->access$100(Lcom/lge/appwidget/Andy_FinanceToggleTextView;)[Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, toggleStrings:[Ljava/lang/String;
    if-eqz v0, :cond_1a

    array-length v1, v0

    if-le v1, v2, :cond_1a

    iget-object v1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->this$0:Lcom/lge/appwidget/Andy_FinanceToggleTextView;

    invoke-static {v1}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->access$200(Lcom/lge/appwidget/Andy_FinanceToggleTextView;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 139
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->stop()V

    .line 140
    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->sendEmptyMessage(I)Z

    .line 142
    :cond_1a
    return-void
.end method

.method stop()V
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->removeMessages(I)V

    .line 146
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->removeMessages(I)V

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->mPosition:I

    .line 148
    return-void
.end method
