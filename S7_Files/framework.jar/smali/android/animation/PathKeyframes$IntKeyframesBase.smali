.class abstract Landroid/animation/PathKeyframes$IntKeyframesBase;
.super Landroid/animation/PathKeyframes$SimpleKeyframes;
.source "PathKeyframes.java"

# interfaces
.implements Landroid/animation/Keyframes$IntKeyframes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PathKeyframes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "IntKeyframesBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/PathKeyframes$SimpleKeyframes;-><init>(Landroid/animation/PathKeyframes$SimpleKeyframes;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 238
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Landroid/animation/PathKeyframes$IntKeyframesBase;->getIntValue(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
