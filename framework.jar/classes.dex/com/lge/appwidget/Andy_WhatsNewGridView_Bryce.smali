.class public Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;
.super Landroid/widget/GridView;
.source "Andy_WhatsNewGridView_Bryce.java"


# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;
    }
.end annotation


# static fields
.field public static final ALARM:I = 0x4

.field public static final CALENDAR:I = 0x5

.field public static final E_MAIL:I = 0x3

.field public static final FACEBOOK:I = 0x7

.field public static final MAIL_SNS_NOT_LOGINED:I = 0x4

.field public static final MISSED_CALL:I = 0x0

.field public static final MYSPACE:I = 0x8

.field public static final NONE_OTHER_TYPE:I = 0x0

.field public static final REMOTE_WHATSNEW_ITEMS_PARCELABLE_KEY:Ljava/lang/String; = "WhatsNewParcelable"

.field public static final SMS_MMS:I = 0x1

.field public static final TWITTER:I = 0x6

.field public static final UNKNOWN:I = -0x1

.field public static final URGENT_VOICE_MAIL:I = 0x2

.field public static final URGENT_VVM:I = 0x3

.field public static final VOICE_MAIL:I = 0x2

.field public static final VVM_LOGINED:I = 0x1



# instance fields
.field private _var:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mWhatsNewGridAdapter:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;

.field private mWhatsNewParcelableArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->_var:Ljava/util/HashMap;

    .line 55
    iput-object p1, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->_var:Ljava/util/HashMap;

    .line 61
    iput-object p1, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->mWhatsNewParcelableArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->mWhatsNewParcelableArray:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->_var:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public isDimmed(Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;)Z
    .registers 12
    .parameter "whatsNew"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "N"

    .line 103
    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->getGroupView()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, groupView:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->getSettingView()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, settingView:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->getAppType()I

    move-result v1

    .line 106
    .local v1, appType:I
    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->getAnotherType()I

    move-result v0

    .line 107
    .local v0, anotherType:I
    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->getUnreadCount()I

    move-result v5

    .line 108
    .local v5, unread_count:I
    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->getReadCount()I

    move-result v3

    .line 110
    .local v3, read_count:I
    const-string v6, "N"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    if-eqz v1, :cond_2d

    if-eq v1, v8, :cond_2d

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2d

    move v6, v8

    .line 133
    :goto_2c
    return v6

    .line 116
    :cond_2d
    const-string v6, "N"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    move v6, v8

    .line 118
    goto :goto_2c

    .line 122
    :cond_37
    const/4 v6, 0x4

    if-ne v0, v6, :cond_3c

    move v6, v7

    .line 124
    goto :goto_2c

    .line 127
    :cond_3c
    if-gtz v5, :cond_40

    move v6, v7

    .line 129
    goto :goto_2c

    :cond_40
    move v6, v7

    .line 133
    goto :goto_2c
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const-string v6, "isDimmed"

    .line 66
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->_var:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 67
    .local v0, appType:Ljava/lang/Integer;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.sizechangable.whatsnew.action.ITEM_SELECTED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "appType"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 72
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->mWhatsNewParcelableArray:Ljava/util/ArrayList;

    if-eqz v3, :cond_33

    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, whatsNew:Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->mWhatsNewParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2       #whatsNew:Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;,
    check-cast v2, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;

    .line 76
    .restart local v2       #whatsNew:Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;,
    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->isDimmed(Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;)Z

    move-result v3

    if-ne v3, v5, :cond_39

    .line 78
    const-string v3, "isDimmed"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    .end local v2       #whatsNew:Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;,
    :cond_33
    :goto_33
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    return-void

    .line 82
    .restart local v2       #whatsNew:Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;,
    :cond_39
    const-string v3, "isDimmed"

    const/4 v3, 0x0

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_33
.end method

.method public setWhatsNewGridItem(Landroid/os/Bundle;)V
    .registers 5
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->_var:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 95
    const-string v1, "WhatsNewParcelable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 96
    .local v0, parcelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;>;"
    new-instance v1, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;-><init>(Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->mWhatsNewGridAdapter:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;

    .line 97
    invoke-virtual {p0, p0}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    iget-object v1, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->mWhatsNewGridAdapter:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    return-void
.end method
