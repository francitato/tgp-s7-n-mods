.class Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemAddDeleteGridAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 580
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 581
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-get0(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 582
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-get0(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 583
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onAnimationEnd(Z)V

    .line 579
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-get0(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 574
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onAnimationStart(Z)V

    .line 571
    :cond_0
    return-void
.end method
