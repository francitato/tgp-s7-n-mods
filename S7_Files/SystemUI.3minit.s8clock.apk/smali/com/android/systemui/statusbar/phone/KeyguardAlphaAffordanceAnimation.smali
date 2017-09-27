.class public Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;
.super Ljava/lang/Object;
.source "KeyguardAlphaAffordanceAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;
    }
.end annotation


# instance fields
.field private mAlpha:F

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mSineIn33:Landroid/view/animation/Interpolator;

.field private final mSineOut33:Landroid/view/animation/Interpolator;

.field private final mView:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mAlpha:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;)Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mView:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mAlpha:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;)V
    .locals 5
    .param p1, "v"    # Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;

    .prologue
    const v4, 0x3f547ae1    # 0.83f

    const v3, 0x3e2e147b    # 0.17f

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mView:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;

    .line 47
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mSineOut33:Landroid/view/animation/Interpolator;

    .line 48
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mSineIn33:Landroid/view/animation/Interpolator;

    .line 44
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAnimator()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->cancelAnimator(Landroid/animation/Animator;)V

    .line 99
    return-void
.end method

.method public getViewAlpha()F
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mView:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;->getAlpha()F

    move-result v0

    return v0
.end method

.method public setViewAlpha(FJJLjava/lang/Runnable;)V
    .locals 6
    .param p1, "alpha"    # F
    .param p2, "duration"    # J
    .param p4, "startdelay"    # J
    .param p6, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x1

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->cancelAnimator(Landroid/animation/Animator;)V

    .line 53
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mView:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    aput p1, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 54
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 55
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mSineOut33:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 56
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;

    invoke-direct {v1, p0, p6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mView:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;

    invoke-interface {v1, v4}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;->setPlayingAlphaAnimation(Z)V

    .line 86
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 51
    return-void

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mSineIn33:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method
