.class final Landroid/view/RenderNodeAnimator$1;
.super Landroid/util/SparseIntArray;
.source "RenderNodeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/RenderNodeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 5
    .param p1, "$anonymous0"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 68
    invoke-direct {p0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    .line 70
    invoke-virtual {p0, v2, v1}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    .line 71
    invoke-virtual {p0, v3, v2}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    .line 72
    const/4 v0, 0x3

    invoke-virtual {p0, v4, v0}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    .line 73
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v3}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    .line 74
    const/16 v0, 0x20

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    .line 75
    const/16 v0, 0x40

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    .line 76
    const/16 v0, 0x80

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    .line 77
    const/16 v0, 0x100

    invoke-virtual {p0, v0, v4}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    .line 78
    const/16 v0, 0x200

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    .line 79
    const/16 v0, 0x400

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    .line 80
    const/16 v0, 0x800

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    .line 68
    return-void
.end method
