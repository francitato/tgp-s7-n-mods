.class Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;
.super Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->animateChangeImpl(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

.field final synthetic val$changeInfo:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;
    .param p2, "val$changeInfo"    # Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;
    .param p3, "val$newViewAnimation"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p4, "val$newView"    # Landroid/view/View;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    iput-object p2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;->val$changeInfo:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;->val$newViewAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object p4, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$VpaListenerAdapter;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$VpaListenerAdapter;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 423
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;->val$newViewAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 424
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 425
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 426
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;->val$changeInfo:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 428
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->-get2(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;->val$changeInfo:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 429
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->-wrap3(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)V

    .line 422
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;->val$changeInfo:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 418
    return-void
.end method
