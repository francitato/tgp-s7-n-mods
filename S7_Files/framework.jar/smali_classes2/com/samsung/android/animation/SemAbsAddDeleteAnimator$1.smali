.class Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$1;
.super Ljava/lang/Object;
.source "SemAbsAddDeleteAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$1;->this$0:Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "anim"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 184
    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$1;->this$0:Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;

    iget-object v3, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 185
    .local v0, "ghostViewCount":I
    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$1;->this$0:Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;

    iget-object v3, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mBitmapUpdateBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 190
    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$1;->this$0:Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;

    iget-object v3, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 191
    .local v2, "vInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$1;->this$0:Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;

    iget-object v3, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mBitmapUpdateBounds:Landroid/graphics/Rect;

    iget-object v4, v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v2    # "vInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$1;->this$0:Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;

    iget-object v3, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mHostView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$1;->this$0:Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;

    iget-object v4, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mBitmapUpdateBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 182
    return-void
.end method
