.class Lcom/samsung/android/visualeffect/circle/BounceAnimation$2;
.super Ljava/lang/Object;
.source "BounceAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/circle/BounceAnimation;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/circle/BounceAnimation;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/circle/BounceAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/visualeffect/circle/BounceAnimation;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation$2;->this$0:Lcom/samsung/android/visualeffect/circle/BounceAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation$2;->this$0:Lcom/samsung/android/visualeffect/circle/BounceAnimation;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mListener:Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation$2;->this$0:Lcom/samsung/android/visualeffect/circle/BounceAnimation;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mListener:Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;->onBounceFinished()V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation$2;->this$0:Lcom/samsung/android/visualeffect/circle/BounceAnimation;

    iput-object v1, v0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mListener:Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;

    .line 87
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 95
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 82
    return-void
.end method
