.class Landroid/view/animation/Animation$3;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/animation/Animation;->setListenerHandler(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/animation/Animation;

    .prologue
    .line 378
    iput-object p1, p0, Landroid/view/animation/Animation$3;->this$0:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Landroid/view/animation/Animation$3;->this$0:Landroid/view/animation/Animation;

    iget-object v0, v0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Landroid/view/animation/Animation$3;->this$0:Landroid/view/animation/Animation;

    iget-object v0, v0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    iget-object v1, p0, Landroid/view/animation/Animation$3;->this$0:Landroid/view/animation/Animation;

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 379
    :cond_0
    return-void
.end method
