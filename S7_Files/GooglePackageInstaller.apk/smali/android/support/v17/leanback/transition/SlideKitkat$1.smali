.class final Landroid/support/v17/leanback/transition/SlideKitkat$1;
.super Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlideHorizontal;
.source "SlideKitkat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/SlideKitkat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlideHorizontal;-><init>(Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlideHorizontal;)V

    return-void
.end method


# virtual methods
.method public getGone(Landroid/view/View;)F
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method
