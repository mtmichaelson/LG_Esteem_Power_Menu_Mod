.class public Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;
.super Ljava/lang/Object;
.source "SUIListItemViewFactory.java"


# interfaces
.implements Lcom/lge/sui/widget/list/SUIListItemConstant;


# static fields
.field protected static final sExtraIconOneLineChildViews:[I

.field protected static final sExtraIconTwoLineChildViews:[I

.field protected static final sExtraOneLineChildViews:[I

.field protected static final sExtraTwoLineChildViews:[I

.field protected static final sIconOneLineChildViews:[I

.field protected static final sIconThreeLineChildViews:[I

.field protected static final sIconTwoLineChildViews:[I

.field protected static final sOneLineChildViews:[I

.field protected static final sThreeLineChildViews:[I

.field protected static final sTwoLineChildViews:[I



# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x3

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x30a0032

    aput v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sOneLineChildViews:[I

    .line 37
    new-array v0, v4, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sTwoLineChildViews:[I

    .line 40
    new-array v0, v3, [I

    fill-array-data v0, :array_56

    sput-object v0, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sThreeLineChildViews:[I

    .line 43
    new-array v0, v4, [I

    fill-array-data v0, :array_60

    sput-object v0, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sIconOneLineChildViews:[I

    .line 46
    new-array v0, v3, [I

    fill-array-data v0, :array_68

    sput-object v0, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sIconTwoLineChildViews:[I

    .line 49
    new-array v0, v5, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sIconThreeLineChildViews:[I

    .line 52
    new-array v0, v4, [I

    fill-array-data v0, :array_7e

    sput-object v0, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sExtraOneLineChildViews:[I

    .line 55
    new-array v0, v3, [I

    fill-array-data v0, :array_86

    sput-object v0, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sExtraTwoLineChildViews:[I

    .line 58
    new-array v0, v3, [I

    fill-array-data v0, :array_90

    sput-object v0, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sExtraIconOneLineChildViews:[I

    .line 61
    new-array v0, v5, [I

    fill-array-data v0, :array_9a

    sput-object v0, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sExtraIconTwoLineChildViews:[I

    return-void

    .line 37
    :array_4e
    .array-data 0x4
        0x32t 0x0t 0xat 0x3t
        0x33t 0x0t 0xat 0x3t
    .end array-data

    .line 40
    :array_56
    .array-data 0x4
        0x32t 0x0t 0xat 0x3t
        0x33t 0x0t 0xat 0x3t
        0x4at 0x0t 0xat 0x3t
    .end array-data

    .line 43
    :array_60
    .array-data 0x4
        0x37t 0x0t 0xat 0x3t
        0x32t 0x0t 0xat 0x3t
    .end array-data

    .line 46
    :array_68
    .array-data 0x4
        0x37t 0x0t 0xat 0x3t
        0x32t 0x0t 0xat 0x3t
        0x33t 0x0t 0xat 0x3t
    .end array-data

    .line 49
    :array_72
    .array-data 0x4
        0x37t 0x0t 0xat 0x3t
        0x32t 0x0t 0xat 0x3t
        0x33t 0x0t 0xat 0x3t
        0x4at 0x0t 0xat 0x3t
    .end array-data

    .line 52
    :array_7e
    .array-data 0x4
        0x32t 0x0t 0xat 0x3t
        0x31t 0x0t 0xat 0x3t
    .end array-data

    .line 55
    :array_86
    .array-data 0x4
        0x32t 0x0t 0xat 0x3t
        0x33t 0x0t 0xat 0x3t
        0x31t 0x0t 0xat 0x3t
    .end array-data

    .line 58
    :array_90
    .array-data 0x4
        0x37t 0x0t 0xat 0x3t
        0x32t 0x0t 0xat 0x3t
        0x31t 0x0t 0xat 0x3t
    .end array-data

    .line 61
    :array_9a
    .array-data 0x4
        0x37t 0x0t 0xat 0x3t
        0x32t 0x0t 0xat 0x3t
        0x33t 0x0t 0xat 0x3t
        0x31t 0x0t 0xat 0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createItemView(Landroid/content/Context;Landroid/view/ViewGroup;II)Landroid/view/View;
    .registers 8
    .parameter "context"
    .parameter "parent"
    .parameter "itemStyle"
    .parameter "mode"

    .prologue
    .line 78
    packed-switch p3, :pswitch_data_86

    .line 110
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, errMsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    .end local v0       #errMsg:Ljava/lang/String;,
    :pswitch_d
    new-instance v1, Lcom/lge/sui/widget/list/internal/SUIOneLineListItemView;

    sget-object v2, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sOneLineChildViews:[I

    invoke-direct {v1, p1, p2, v2, p4}, Lcom/lge/sui/widget/list/internal/SUIOneLineListItemView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;[II)V

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/internal/SUIOneLineListItemView;->getView()Landroid/view/View;

    move-result-object v1

    .line 107
    :goto_18
    return-object v1

    .line 83
    :pswitch_19
    new-instance v1, Lcom/lge/sui/widget/list/internal/SUITwoLineListItemView;

    sget-object v2, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sTwoLineChildViews:[I

    invoke-direct {v1, p1, p2, v2, p4}, Lcom/lge/sui/widget/list/internal/SUITwoLineListItemView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;[II)V

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/internal/SUITwoLineListItemView;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_18

    .line 86
    :pswitch_25
    new-instance v1, Lcom/lge/sui/widget/list/internal/SUIThreeLineListItemView;

    sget-object v2, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sThreeLineChildViews:[I

    invoke-direct {v1, p1, p2, v2, p4}, Lcom/lge/sui/widget/list/internal/SUIThreeLineListItemView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;[II)V

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/internal/SUIThreeLineListItemView;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_18

    .line 89
    :pswitch_31
    new-instance v1, Lcom/lge/sui/widget/list/internal/SUIIconOneLineListItemView;

    sget-object v2, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sIconOneLineChildViews:[I

    invoke-direct {v1, p1, p2, v2, p4}, Lcom/lge/sui/widget/list/internal/SUIIconOneLineListItemView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;[II)V

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/internal/SUIIconOneLineListItemView;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_18

    .line 92
    :pswitch_3d
    new-instance v1, Lcom/lge/sui/widget/list/internal/SUIIconTwoLineListItemView;

    sget-object v2, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sIconTwoLineChildViews:[I

    invoke-direct {v1, p1, p2, v2, p4}, Lcom/lge/sui/widget/list/internal/SUIIconTwoLineListItemView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;[II)V

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/internal/SUIIconTwoLineListItemView;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_18

    .line 95
    :pswitch_49
    new-instance v1, Lcom/lge/sui/widget/list/internal/SUIIconThreeLineListItemView;

    sget-object v2, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sIconThreeLineChildViews:[I

    invoke-direct {v1, p1, p2, v2, p4}, Lcom/lge/sui/widget/list/internal/SUIIconThreeLineListItemView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;[II)V

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/internal/SUIIconThreeLineListItemView;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_18

    .line 98
    :pswitch_55
    new-instance v1, Lcom/lge/sui/widget/list/internal/SUIExtraInfoOneLineListItemView;

    sget-object v2, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sExtraOneLineChildViews:[I

    invoke-direct {v1, p1, p2, v2, p4}, Lcom/lge/sui/widget/list/internal/SUIExtraInfoOneLineListItemView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;[II)V

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/internal/SUIExtraInfoOneLineListItemView;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_18

    .line 101
    :pswitch_61
    new-instance v1, Lcom/lge/sui/widget/list/internal/SUIExtraInfoTwoLineListItemView;

    sget-object v2, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sExtraTwoLineChildViews:[I

    invoke-direct {v1, p1, p2, v2, p4}, Lcom/lge/sui/widget/list/internal/SUIExtraInfoTwoLineListItemView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;[II)V

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/internal/SUIExtraInfoTwoLineListItemView;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_18

    .line 104
    :pswitch_6d
    new-instance v1, Lcom/lge/sui/widget/list/internal/SUIExtraInfoIconOneLineListItemView;

    sget-object v2, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sExtraIconOneLineChildViews:[I

    invoke-direct {v1, p1, p2, v2, p4}, Lcom/lge/sui/widget/list/internal/SUIExtraInfoIconOneLineListItemView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;[II)V

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/internal/SUIExtraInfoIconOneLineListItemView;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_18

    .line 107
    :pswitch_79
    new-instance v1, Lcom/lge/sui/widget/list/internal/SUIExtraInfoIconTwoLineListItemView;

    sget-object v2, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;->sExtraIconTwoLineChildViews:[I

    invoke-direct {v1, p1, p2, v2, p4}, Lcom/lge/sui/widget/list/internal/SUIExtraInfoIconTwoLineListItemView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;[II)V

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/internal/SUIExtraInfoIconTwoLineListItemView;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_18

    .line 78
    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_d
        :pswitch_19
        :pswitch_25
        :pswitch_31
        :pswitch_3d
        :pswitch_49
        :pswitch_55
        :pswitch_61
        :pswitch_6d
        :pswitch_79
    .end packed-switch
.end method
