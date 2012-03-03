.class final Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContextMenuCallback"
.end annotation


# instance fields
.field private mFeatureId:I

.field private mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;



# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;I)V
    .registers 3
    .parameter
    .parameter "featureId"

    .prologue
    .line 2865
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2866
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->mFeatureId:I

    .line 2867
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 5
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 2870
    if-eqz p2, :cond_28

    .line 2871
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2872
    .local v0, callback:Landroid/view/Window$Callback;
    if-eqz v0, :cond_f

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->mFeatureId:I

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2874
    :cond_f
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$500(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    if-ne p1, v1, :cond_1c

    .line 2875
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 2879
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    if-eqz v1, :cond_28

    .line 2880
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 2881
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 2884
    .end local v0       #callback:Landroid/view/Window$Callback;,
    :cond_28
    return-void
.end method

.method public onCloseSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .registers 5
    .parameter "menu"

    .prologue
    .line 2887
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2888
    .local v0, callback:Landroid/view/Window$Callback;
    if-eqz v0, :cond_11

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->mFeatureId:I

    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2889
    :cond_11
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 2892
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2893
    .local v0, callback:Landroid/view/Window$Callback;
    if-eqz v0, :cond_12

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->mFeatureId:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 2897
    return-void
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .registers 4
    .parameter "subMenu"

    .prologue
    .line 2901
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/SubMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 2904
    new-instance v0, Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 2905
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 2907
    const/4 v0, 0x1

    return v0
.end method
