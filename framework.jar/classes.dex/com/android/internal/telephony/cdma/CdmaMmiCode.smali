.class public final Lcom/android/internal/telephony/cdma/CdmaMmiCode;
.super Landroid/os/Handler;
.source "CdmaMmiCode.java"


# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field static final EVENT_SET_COMPLETE:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "CDMA_MMI"

.field static final MATCH_GROUP_ACTION:I = 0x2

.field static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field static final MATCH_GROUP_POUND_STRING:I = 0x1

.field static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field static final MATCH_GROUP_SIA:I = 0x5

.field static final MATCH_GROUP_SIB:I = 0x7

.field static final MATCH_GROUP_SIC:I = 0x9

.field static final SC_PIN:Ljava/lang/String; = "04"

.field static final SC_PIN2:Ljava/lang/String; = "042"

.field static final SC_PUK:Ljava/lang/String; = "05"

.field static final SC_PUK2:Ljava/lang/String; = "052"

.field static sPatternSuppService:Ljava/util/regex/Pattern;



# instance fields
.field action:Ljava/lang/String;

.field context:Landroid/content/Context;

.field dialingNumber:Ljava/lang/String;

.field mUiccApp:Lcom/android/internal/telephony/UiccCardApplication;

.field message:Ljava/lang/CharSequence;

.field phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field poundString:Ljava/lang/String;

.field pwd:Ljava/lang/String;

.field sc:Ljava/lang/String;

.field sia:Ljava/lang/String;

.field sib:Ljava/lang/String;

.field sic:Ljava/lang/String;

.field state:Lcom/android/internal/telephony/MmiCode$State;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 88
    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/UiccCardApplication;)V
    .registers 4
    .parameter "phone"
    .parameter "app"

    .prologue
    .line 157
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 83
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 158
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 159
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    .line 160
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApp:Lcom/android/internal/telephony/UiccCardApplication;

    .line 161
    return-void
.end method

.method private getScString()Ljava/lang/CharSequence;
    .registers 5

    .prologue
    const v3, 0x20800f0

    const v2, 0x10400cd

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_4e

    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 401
    :goto_1a
    return-object v0

    .line 388
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1a

    .line 390
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1a

    .line 393
    :cond_3d
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v1, "052"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 395
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1a

    .line 401
    :cond_4e
    const-string v0, ""

    goto :goto_1a
.end method

.method private handlePasswordError(I)V
    .registers 4
    .parameter "res"

    .prologue
    .line 357
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 359
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 361
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->message:Ljava/lang/CharSequence;

    .line 362
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V

    .line 363
    return-void
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "s"

    .prologue
    .line 149
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 151
    :goto_9
    return-object v0

    :cond_a
    move-object v0, p0

    goto :goto_9
.end method

.method public static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    .registers 6
    .parameter "dialString"
    .parameter "phone"
    .parameter "app"

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 123
    .local v1, ret:Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 126
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 127
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    .end local v1       #ret:Lcom/android/internal/telephony/cdma/CdmaMmiCode;,
    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/UiccCardApplication;)V

    .line 128
    .restart local v1       #ret:Lcom/android/internal/telephony/cdma/CdmaMmiCode;,
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->poundString:Ljava/lang/String;

    .line 129
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->action:Ljava/lang/String;

    .line 130
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    .line 131
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sia:Ljava/lang/String;

    .line 132
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sib:Ljava/lang/String;

    .line 133
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sic:Ljava/lang/String;

    .line 134
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->pwd:Ljava/lang/String;

    .line 135
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->dialingNumber:Ljava/lang/String;

    .line 139
    :cond_6d
    return-object v1
.end method

.method private onSetComplete(Landroid/os/AsyncResult;)V
    .registers 10
    .parameter "ar"

    .prologue
    const v7, 0x20800f2

    const v6, 0x10400c1

    const v5, 0x10400b7

    const v4, 0x10400c6

    const-string v3, "\n"

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 407
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_16b

    .line 410
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 411
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_65

    .line 429
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 430
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_f7

    .line 431
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPinCommand()Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 453
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v3, "05"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 454
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 455
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 457
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPuk1RemainingCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    .end local v0       #err:Lcom/android/internal/telephony/CommandException$Error;,
    :cond_65
    :goto_65
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->message:Ljava/lang/CharSequence;

    .line 523
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V

    .line 524
    return-void

    .line 459
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;,
    :cond_6d
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v3, "052"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 460
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 461
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 463
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPuk2RemainingCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_65

    .line 466
    :cond_95
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v3, "04"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 467
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400c0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 468
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 470
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin1RemainingCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_65

    .line 472
    :cond_c0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v3, "042"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 473
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 474
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 476
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin2RemainingCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_65

    .line 482
    :cond_e9
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400be

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_65

    .line 485
    :cond_f7
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_117

    .line 486
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 488
    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400c5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_65

    .line 491
    :cond_117
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_130

    .line 492
    const-string v2, "CDMA_MMI"

    const-string v3, "FDN_CHECK_FAILURE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400b8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_65

    .line 497
    :cond_130
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v3, "04"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_148

    .line 498
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    const v3, 0x20800ee

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_65

    .line 500
    :cond_148
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v3, "042"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_160

    .line 501
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    const v3, 0x20800f1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_65

    .line 504
    :cond_160
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_65

    .line 512
    .end local v0       #err:Lcom/android/internal/telephony/CommandException$Error;,
    :cond_16b
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isRegister()Z

    move-result v2

    if-eqz v2, :cond_183

    .line 513
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 514
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_65

    .line 517
    :cond_183
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 518
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_65
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_d

    .line 185
    :cond_c
    :goto_c
    return-void

    .line 183
    :cond_d
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V

    goto :goto_c
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->message:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 369
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 370
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .line 371
    .local v1, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->onSetComplete(Landroid/os/AsyncResult;)V

    .line 375
    .end local v1       #ar:Landroid/os/AsyncResult;,
    :goto_10
    return-void

    .line 373
    :cond_11
    const-string v2, "CDMA_MMI"

    const-string v3, "Unexpected reply"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public isCancelable()Z
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method isPinCommand()Z
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v1, "052"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method isPukCommand()Z
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method isRegister()Z
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->action:Ljava/lang/String;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isUssdRequest()Z
    .registers 3

    .prologue
    .line 205
    const-string v0, "CDMA_MMI"

    const-string v1, "isUssdRequest is not implemented in CdmaMmiCode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method processCode()V
    .registers 8

    .prologue
    const-string v4, "052"

    const-string v4, "05"

    const-string v4, "04"

    const-string v4, "042"

    .line 255
    :try_start_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPinCommand()Z

    move-result v4

    if-eqz v4, :cond_19d

    .line 259
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sia:Ljava/lang/String;

    .line 260
    .local v2, oldPinOrPuk:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sib:Ljava/lang/String;

    .line 261
    .local v1, newPin:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 262
    .local v3, pinLen:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_195

    .line 263
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sic:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 267
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v5, "042"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 268
    const v4, 0x20800ef

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V

    .line 354
    .end local v1       #newPin:Ljava/lang/String;,
    .end local v2       #oldPinOrPuk:Ljava/lang/String;,
    .end local v3       #pinLen:I,
    :cond_34
    :goto_34
    return-void

    .line 270
    .restart local v1       #newPin:Ljava/lang/String;,
    .restart local v2       #oldPinOrPuk:Ljava/lang/String;,
    .restart local v3       #pinLen:I,
    :cond_35
    const v4, 0x10400c2

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_3b} :catch_3c

    goto :goto_34

    .line 349
    .end local v1       #newPin:Ljava/lang/String;,
    .end local v2       #oldPinOrPuk:Ljava/lang/String;,
    .end local v3       #pinLen:I,
    :catch_3c
    move-exception v4

    move-object v0, v4

    .line 350
    .local v0, exc:Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 351
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    const v5, 0x10400b7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->message:Ljava/lang/CharSequence;

    .line 352
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V

    goto :goto_34

    .line 271
    .end local v0       #exc:Ljava/lang/RuntimeException;,
    .restart local v1       #newPin:Ljava/lang/String;,
    .restart local v2       #oldPinOrPuk:Ljava/lang/String;,
    .restart local v3       #pinLen:I,
    :cond_53
    const/4 v4, 0x4

    if-lt v3, v4, :cond_5a

    const/16 v4, 0x8

    if-le v3, v4, :cond_72

    .line 273
    :cond_5a
    :try_start_5a
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v5, "042"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 274
    const v4, 0x20800ed

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V

    goto :goto_34

    .line 276
    :cond_6b
    const v4, 0x10400c3

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V

    goto :goto_34

    .line 277
    :cond_72
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v5, "04"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v4, :cond_95

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v4, v5, :cond_95

    .line 281
    const v4, 0x10400c4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V

    goto :goto_34

    .line 286
    :cond_95
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v5, "05"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d7

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v4, :cond_d7

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getIccLockEnabled()Z

    move-result v4

    if-nez v4, :cond_d7

    .line 289
    const-string v4, "CDMA_MMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIccLockEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/UiccCardApplication;->getIccLockEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const v4, 0x20800ee

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V

    goto/16 :goto_34

    .line 295
    :cond_d7
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v5, "042"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_eb

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v5, "052"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11d

    :cond_eb
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFdnAvailable()Z

    move-result v4

    if-nez v4, :cond_11d

    .line 296
    const-string v4, "CDMA_MMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIccFdnAvailable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFdnAvailable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const v4, 0x20800f3

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V

    goto/16 :goto_34

    .line 321
    :cond_11d
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v5, "04"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13b

    .line 322
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v4, :cond_34

    .line 323
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v5, 0x1

    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5}, Lcom/android/internal/telephony/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_34

    .line 325
    :cond_13b
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v5, "042"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_159

    .line 326
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v4, :cond_34

    .line 327
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v5, 0x1

    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5}, Lcom/android/internal/telephony/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_34

    .line 329
    :cond_159
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v5, "05"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_177

    .line 330
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v4, :cond_34

    .line 331
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v5, 0x1

    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_34

    .line 333
    :cond_177
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v5, "052"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 334
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v4, :cond_34

    .line 335
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v5, 0x1

    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_34

    .line 341
    :cond_195
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 347
    .end local v1       #newPin:Ljava/lang/String;,
    .end local v2       #oldPinOrPuk:Ljava/lang/String;,
    .end local v3       #pinLen:I,
    :cond_19d
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1a5
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_1a5} :catch_3c
.end method
