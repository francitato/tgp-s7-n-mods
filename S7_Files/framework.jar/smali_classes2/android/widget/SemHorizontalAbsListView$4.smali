.class Landroid/widget/SemHorizontalAbsListView$4;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemHorizontalAbsListView;->onTouchUp(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;


# direct methods
.method constructor <init>(Landroid/widget/SemHorizontalAbsListView;Landroid/view/View;Landroid/widget/SemHorizontalAbsListView$PerformClick;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;
    .param p2, "val$child"    # Landroid/view/View;
    .param p3, "val$performClick"    # Landroid/widget/SemHorizontalAbsListView$PerformClick;

    .prologue
    .line 6145
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$4;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iput-object p2, p0, Landroid/widget/SemHorizontalAbsListView$4;->val$child:Landroid/view/View;

    iput-object p3, p0, Landroid/widget/SemHorizontalAbsListView$4;->val$performClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6148
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$4;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->-set7(Landroid/widget/SemHorizontalAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 6149
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$4;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6150
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$4;->val$child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 6151
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$4;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 6152
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$4;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-get12(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$4;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$4;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-get14(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6147
    :cond_0
    :goto_0
    return-void

    .line 6152
    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$4;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6153
    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$4;->val$performClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->run()V

    goto :goto_0
.end method
