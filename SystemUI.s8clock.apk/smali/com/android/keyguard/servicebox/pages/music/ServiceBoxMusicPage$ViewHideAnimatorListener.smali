.class Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ServiceBoxMusicPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHideAnimatorListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
