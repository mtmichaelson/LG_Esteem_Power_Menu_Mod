.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$NumberRangeKeyListener;,
        Landroid/widget/NumberPicker$NumberPickerInputFilter;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$OnChangedListener;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C

.field public static final TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;



# instance fields
.field private mCurrent:I

.field private mDecrement:Z

.field private mDecrementButton:Landroid/widget/NumberPickerButton;

.field private mDisplayedValues:[Ljava/lang/String;

.field private mEnd:I

.field private mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mIncrement:Z

.field private mIncrementButton:Landroid/widget/NumberPickerButton;

.field private mListener:Landroid/widget/NumberPicker$OnChangedListener;

.field private final mNumberInputFilter:Landroid/text/InputFilter;

.field private mPrevious:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSpeed:J

.field private mStart:I

.field private final mText:Landroid/widget/EditText;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    new-instance v0, Landroid/widget/NumberPicker$1;

    invoke-direct {v0}, Landroid/widget/NumberPicker$1;-><init>()V

    sput-object v0, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    .line 402
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_12
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 137
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance v5, Landroid/widget/NumberPicker$2;

    invoke-direct {v5, p0}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v5, p0, Landroid/widget/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    .line 118
    const-wide/16 v5, 0x12c

    iput-wide v5, p0, Landroid/widget/NumberPicker;->mSpeed:J

    .line 138
    invoke-virtual {p0, v7}, Landroid/widget/NumberPicker;->setOrientation(I)V

    .line 139
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 141
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x1090043

    invoke-virtual {v2, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 142
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Landroid/widget/NumberPicker;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance v0, Landroid/widget/NumberPicker$3;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    .line 158
    .local v0, clickListener:Landroid/view/View$OnClickListener;
    new-instance v1, Landroid/widget/NumberPicker$4;

    invoke-direct {v1, p0}, Landroid/widget/NumberPicker$4;-><init>(Landroid/widget/NumberPicker;)V

    .line 170
    .local v1, focusListener:Landroid/view/View$OnFocusChangeListener;
    new-instance v4, Landroid/widget/NumberPicker$5;

    invoke-direct {v4, p0}, Landroid/widget/NumberPicker$5;-><init>(Landroid/widget/NumberPicker;)V

    .line 192
    .local v4, longClickListener:Landroid/view/View$OnLongClickListener;
    new-instance v3, Landroid/widget/NumberPicker$NumberPickerInputFilter;

    invoke-direct {v3, p0, v9}, Landroid/widget/NumberPicker$NumberPickerInputFilter;-><init>(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker$1;)V

    .line 193
    .local v3, inputFilter:Landroid/text/InputFilter;
    new-instance v5, Landroid/widget/NumberPicker$NumberRangeKeyListener;

    invoke-direct {v5, p0, v9}, Landroid/widget/NumberPicker$NumberRangeKeyListener;-><init>(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker$1;)V

    iput-object v5, p0, Landroid/widget/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    .line 194
    const v5, 0x10201fd

    invoke-virtual {p0, v5}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPickerButton;

    iput-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    .line 195
    iget-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, v0}, Landroid/widget/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, v4}, Landroid/widget/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 197
    iget-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, p0}, Landroid/widget/NumberPickerButton;->setNumberPicker(Landroid/widget/NumberPicker;)V

    .line 199
    const v5, 0x10201ff

    invoke-virtual {p0, v5}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPickerButton;

    iput-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    .line 200
    iget-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, v0}, Landroid/widget/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, v4}, Landroid/widget/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 202
    iget-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, p0}, Landroid/widget/NumberPickerButton;->setNumberPicker(Landroid/widget/NumberPicker;)V

    .line 204
    const v5, 0x10201fe

    invoke-virtual {p0, v5}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    .line 205
    iget-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 206
    iget-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    new-array v6, v7, [Landroid/text/InputFilter;

    aput-object v3, v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 207
    iget-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 209
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_a2

    .line 210
    invoke-virtual {p0, v8}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 212
    :cond_a2
    return-void
.end method

.method static synthetic access$000(Landroid/widget/NumberPicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrement:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/NumberPicker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mIncrement:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/NumberPicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/NumberPicker;)Landroid/text/InputFilter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/widget/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$1200()[C
    .registers 1

    .prologue
    .line 39
    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/NumberPicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/NumberPicker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mSpeed:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/widget/NumberPicker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/widget/NumberPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/NumberPicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrement:Z

    return v0
.end method

.method static synthetic access$402(Landroid/widget/NumberPicker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mDecrement:Z

    return p1
.end method

.method static synthetic access$500(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/NumberPicker;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/widget/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 307
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .registers 4
    .parameter "str"

    .prologue
    .line 475
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_9

    .line 477
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_2d

    move-result v1

    .line 500
    :goto_8
    return v1

    .line 482
    :cond_9
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 484
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 485
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 486
    iget v1, p0, Landroid/widget/NumberPicker;->mStart:I

    add-int/2addr v1, v0

    goto :goto_8

    .line 482
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 494
    :cond_28
    :try_start_28
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2b} :catch_31

    move-result v1

    goto :goto_8

    .line 478
    .end local v0       #i:I,
    :catch_2d
    move-exception v1

    .line 500
    :goto_2e
    iget v1, p0, Landroid/widget/NumberPicker;->mStart:I

    goto :goto_8

    .line 495
    .restart local v0       #i:I,
    :catch_31
    move-exception v1

    goto :goto_2e
.end method

.method private notifyChange()V
    .registers 4

    .prologue
    .line 339
    iget-object v0, p0, Landroid/widget/NumberPicker;->mListener:Landroid/widget/NumberPicker$OnChangedListener;

    if-eqz v0, :cond_d

    .line 340
    iget-object v0, p0, Landroid/widget/NumberPicker;->mListener:Landroid/widget/NumberPicker$OnChangedListener;

    iget v1, p0, Landroid/widget/NumberPicker;->mPrevious:I

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrent:I

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/NumberPicker$OnChangedListener;->onChanged(Landroid/widget/NumberPicker;II)V

    .line 342
    :cond_d
    return-void
.end method

.method private updateView()V
    .registers 5

    .prologue
    .line 355
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 356
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget v1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :goto_f
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 361
    return-void

    .line 358
    :cond_1f
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrent:I

    iget v3, p0, Landroid/widget/NumberPicker;->mStart:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method

.method private validateCurrentView(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 364
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 365
    .local v0, val:I
    iget v1, p0, Landroid/widget/NumberPicker;->mStart:I

    if-lt v0, v1, :cond_1d

    iget v1, p0, Landroid/widget/NumberPicker;->mEnd:I

    if-gt v0, v1, :cond_1d

    .line 366
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    if-eq v1, v0, :cond_1d

    .line 367
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    iput v1, p0, Landroid/widget/NumberPicker;->mPrevious:I

    .line 368
    iput v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 369
    invoke-direct {p0}, Landroid/widget/NumberPicker;->notifyChange()V

    .line 372
    :cond_1d
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 373
    return-void
.end method

.method private validateInput(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 376
    check-cast p1, Landroid/widget/TextView;

    .end local p1       
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, str:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 380
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 386
    :goto_15
    return-void

    .line 384
    :cond_16
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->validateCurrentView(Ljava/lang/CharSequence;)V

    goto :goto_15
.end method


# virtual methods
.method public cancelDecrement()V
    .registers 2

    .prologue
    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrement:Z

    .line 400
    return-void
.end method

.method public cancelIncrement()V
    .registers 2

    .prologue
    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrement:Z

    .line 393
    return-void
.end method

.method protected changeCurrent(I)V
    .registers 3
    .parameter "current"

    .prologue
    .line 323
    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_13

    .line 324
    iget p1, p0, Landroid/widget/NumberPicker;->mStart:I

    .line 328
    :cond_6
    :goto_6
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    iput v0, p0, Landroid/widget/NumberPicker;->mPrevious:I

    .line 329
    iput p1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 330
    invoke-direct {p0}, Landroid/widget/NumberPicker;->notifyChange()V

    .line 331
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 332
    return-void

    .line 325
    :cond_13
    iget v0, p0, Landroid/widget/NumberPicker;->mStart:I

    if-ge p1, v0, :cond_6

    .line 326
    iget p1, p0, Landroid/widget/NumberPicker;->mEnd:I

    goto :goto_6
.end method

.method protected getBeginRange()I
    .registers 2

    .prologue
    .line 524
    iget v0, p0, Landroid/widget/NumberPicker;->mStart:I

    return v0
.end method

.method public getCurrent()I
    .registers 2

    .prologue
    .line 508
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    return v0
.end method

.method protected getEndRange()I
    .registers 2

    .prologue
    .line 516
    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    return v0
.end method

.method public setCurrent(I)V
    .registers 4
    .parameter "current"

    .prologue
    .line 287
    iget v0, p0, Landroid/widget/NumberPicker;->mStart:I

    if-lt p1, v0, :cond_8

    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_10

    .line 288
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "current should be >= start and <= end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_10
    iput p1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 292
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 293
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPickerButton;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPickerButton;->setEnabled(Z)V

    .line 225
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 226
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .registers 2
    .parameter "formatter"

    .prologue
    .line 242
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 243
    return-void
.end method

.method public setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 233
    iput-object p1, p0, Landroid/widget/NumberPicker;->mListener:Landroid/widget/NumberPicker$OnChangedListener;

    .line 234
    return-void
.end method

.method public setRange(II)V
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/NumberPicker;->setRange(II[Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public setRange(II[Ljava/lang/String;)V
    .registers 6
    .parameter "start"
    .parameter "end"
    .parameter "displayedValues"

    .prologue
    .line 266
    iput-object p3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 267
    iput p1, p0, Landroid/widget/NumberPicker;->mStart:I

    .line 268
    iput p2, p0, Landroid/widget/NumberPicker;->mEnd:I

    .line 269
    iput p1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 270
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 272
    if-eqz p3, :cond_15

    .line 274
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 277
    :cond_15
    return-void
.end method

.method public setSpeed(J)V
    .registers 3
    .parameter "speed"

    .prologue
    .line 303
    iput-wide p1, p0, Landroid/widget/NumberPicker;->mSpeed:J

    .line 304
    return-void
.end method
