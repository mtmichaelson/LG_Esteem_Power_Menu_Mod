.class Lcom/android/internal/view/menu/MenuBuilder$MenuType;
.super Ljava/lang/Object;
.source "MenuBuilder.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuType"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mMenuType:I

.field private mMenuView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/view/menu/MenuView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/view/menu/MenuBuilder;



# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;I)V
    .registers 3
    .parameter
    .parameter "menuType"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p2, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuType:I

    .line 174
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/MenuBuilder$MenuType;)Ljava/lang/ref/WeakReference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/view/menu/MenuBuilder$MenuType;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    return-object p1
.end method


# virtual methods
.method getInflater()Landroid/view/LayoutInflater;
    .registers 5

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_1f

    .line 179
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-static {v1}, Lcom/android/internal/view/menu/MenuBuilder;->access$000(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/view/menu/MenuBuilder;->THEME_RES_FOR_TYPE:[I

    iget v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuType:I

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 181
    .local v0, wrappedContext:Landroid/content/Context;
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mInflater:Landroid/view/LayoutInflater;

    .line 185
    .end local v0       #wrappedContext:Landroid/content/Context;,
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mInflater:Landroid/view/LayoutInflater;

    return-object v1
.end method

.method getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .registers 8
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 189
    sget-object v3, Lcom/android/internal/view/menu/MenuBuilder;->LAYOUT_RES_FOR_TYPE:[I

    iget v4, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuType:I

    aget v3, v3, v4

    if-nez v3, :cond_b

    move-object v3, v5

    .line 213
    :goto_a
    return-object v3

    .line 193
    :cond_b
    monitor-enter p0

    .line 194
    :try_start_c
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuView;

    move-object v1, v3

    .line 196
    .local v1, menuView:Lcom/android/internal/view/menu/MenuView;
    :goto_19
    if-nez v1, :cond_5c

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget-object v4, Lcom/android/internal/view/menu/MenuBuilder;->LAYOUT_RES_FOR_TYPE:[I

    iget v5, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuType:I

    aget v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1       #menuView:Lcom/android/internal/view/menu/MenuView;,
    check-cast v1, Lcom/android/internal/view/menu/MenuView;

    .line 199
    .restart local v1       #menuView:Lcom/android/internal/view/menu/MenuView;,
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    iget v4, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuType:I

    invoke-interface {v1, v3, v4}, Lcom/android/internal/view/menu/MenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;I)V

    .line 202
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    .line 204
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-static {v3}, Lcom/android/internal/view/menu/MenuBuilder;->access$100(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/util/SparseArray;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 205
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    .line 206
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-static {v3}, Lcom/android/internal/view/menu/MenuBuilder;->access$100(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 209
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-static {v3}, Lcom/android/internal/view/menu/MenuBuilder;->access$100(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 213
    .end local v2       #view:Landroid/view/View;,
    :cond_5c
    monitor-exit p0

    move-object v3, v1

    goto :goto_a

    .end local v1       #menuView:Lcom/android/internal/view/menu/MenuView;,
    :cond_5f
    move-object v1, v5

    .line 194
    goto :goto_19

    .line 214
    :catchall_61
    move-exception v3

    monitor-exit p0
    :try_end_63
    .catchall {:try_start_c .. :try_end_63} :catchall_61

    throw v3
.end method

.method hasMenuView()Z
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
