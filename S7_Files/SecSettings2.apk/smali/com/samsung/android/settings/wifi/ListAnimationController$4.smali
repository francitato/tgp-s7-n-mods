.class Lcom/samsung/android/settings/wifi/ListAnimationController$4;
.super Ljava/lang/Object;
.source "ListAnimationController.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/ListAnimationController;->initController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/ListAnimationController;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$4;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$4;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get5(Lcom/samsung/android/settings/wifi/ListAnimationController;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$4;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get4(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$4;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get4(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;->onRefresh()V

    .line 127
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string/jumbo v0, "WifiSettings.VI"

    const-string/jumbo v1, "onRefresh - listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
