.class public Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;
.super Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;
.source "SprDrawableAnimationFrame.java"


# instance fields
.field private mCurrentFrameIndex:I

.field private final mFrameCount:I

.field private final mTotalFrameCount:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/samsung/android/graphics/spr/document/SprDocument;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;

    .prologue
    .line 14
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;-><init>(BLandroid/graphics/drawable/Drawable;Lcom/samsung/android/graphics/spr/document/SprDocument;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mCurrentFrameIndex:I

    .line 15
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getFrameAnimationCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mFrameCount:I

    .line 16
    iget v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mFrameCount:I

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mTotalFrameCount:I

    .line 13
    return-void
.end method


# virtual methods
.method public getAnimationIndex()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 30
    const/4 v1, 0x0

    .line 31
    .local v1, "result":I
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget-byte v2, v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    if-ne v2, v3, :cond_0

    .line 32
    iget v2, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mCurrentFrameIndex:I

    iget v3, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mFrameCount:I

    rem-int v1, v2, v3

    .line 37
    :goto_0
    return v1

    .line 34
    :cond_0
    iget v2, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mCurrentFrameIndex:I

    iget v3, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mFrameCount:I

    mul-int/lit8 v3, v3, 0x2

    rem-int v0, v2, v3

    .line 35
    .local v0, "index":I
    iget v2, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mFrameCount:I

    if-ge v0, v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mFrameCount:I

    iget v3, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mFrameCount:I

    rem-int v3, v0, v3

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 42
    iget v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mCurrentFrameIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mCurrentFrameIndex:I

    .line 44
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mCurrentFrameIndex:I

    iget v1, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mTotalFrameCount:I

    if-ge v0, v1, :cond_2

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget v1, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mInterval:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mCurrentFrameIndex:I

    iget v1, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mFrameCount:I

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    .line 47
    iget v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mCurrentFrameIndex:I

    iget v1, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mFrameCount:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mCurrentFrameIndex:I

    .line 53
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 41
    return-void

    .line 50
    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mIsRunning:Z

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 21
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->start()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;->mCurrentFrameIndex:I

    .line 25
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 20
    return-void
.end method
