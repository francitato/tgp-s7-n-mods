.class public Landroid/graphics/DiscretePathEffect;
.super Landroid/graphics/PathEffect;
.source "DiscretePathEffect.java"


# direct methods
.method public constructor <init>(FF)V
    .locals 2
    .param p1, "segmentLength"    # F
    .param p2, "deviation"    # F

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 26
    invoke-static {p1, p2}, Landroid/graphics/DiscretePathEffect;->nativeCreate(FF)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/DiscretePathEffect;->native_instance:J

    .line 25
    return-void
.end method

.method private static native nativeCreate(FF)J
.end method
