.class Landroid/widget/AbsListView$9;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->semSetGoToTopEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .prologue
    .line 1896
    iput-object p1, p0, Landroid/widget/AbsListView$9;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1917
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1908
    :try_start_0
    const-string/jumbo v1, "AbsListView"

    const-string/jumbo v2, " GTT fade out end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    iget-object v1, p0, Landroid/widget/AbsListView$9;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/widget/AbsListView;->-set12(Landroid/widget/AbsListView;I)I

    .line 1910
    iget-object v1, p0, Landroid/widget/AbsListView$9;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1906
    :goto_0
    return-void

    .line 1911
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1915
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1900
    :try_start_0
    const-string/jumbo v1, "AbsListView"

    const-string/jumbo v2, " GTT fade out start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    iget-object v1, p0, Landroid/widget/AbsListView$9;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/widget/AbsListView;->-set12(Landroid/widget/AbsListView;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1898
    :goto_0
    return-void

    .line 1902
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
