.class public Lcom/samsung/android/visualeffect/circle/CircleContainer;
.super Landroid/widget/FrameLayout;
.source "CircleContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visualeffect/circle/CircleContainer$1;,
        Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;
    }
.end annotation


# static fields
.field private static final SCANNING_FADE_OUT_DELAY:I

.field private static final SCANNING_FADE_OUT_DURATION:I

.field private static final SCANNING_SCALE_DELAY:I

.field private static final SCANNING_SCALE_DURATION:I

.field private static cmulti:I


# instance fields
.field private final BAD_RATIO:[F

.field private final GOOD_RATIO:[F

.field private final WARNING_RATIO:[F

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

.field mCircleListener:Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field ripple1:Landroid/widget/ImageView;

.field ripple2:Landroid/widget/ImageView;

.field ripple3:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/visualeffect/circle/CircleContainer;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/visualeffect/circle/CircleContainer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->cmulti:I

    .line 24
    sget v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->cmulti:I

    mul-int/lit16 v0, v0, 0x5fd

    sput v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->SCANNING_SCALE_DURATION:I

    .line 25
    sget v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->cmulti:I

    mul-int/lit8 v0, v0, 0x43

    sput v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->SCANNING_SCALE_DELAY:I

    .line 26
    sget v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->cmulti:I

    mul-int/lit16 v0, v0, 0x2ee

    sput v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->SCANNING_FADE_OUT_DELAY:I

    .line 27
    sget v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->cmulti:I

    mul-int/lit16 v0, v0, 0x38e

    sput v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->SCANNING_FADE_OUT_DURATION:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x4

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->GOOD_RATIO:[F

    .line 32
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->WARNING_RATIO:[F

    .line 35
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->BAD_RATIO:[F

    .line 49
    new-instance v0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->init(Landroid/content/Context;)V

    .line 66
    return-void

    .line 29
    :array_0
    .array-data 4
        0x0
        0x3f9d9168    # 1.231f
        0x3f9624dd    # 1.173f
        0x3f8d9168    # 1.106f
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x0
        0x3fa9fbe7    # 1.328f
        0x3f991687    # 1.196f
        0x3f8dd2f2    # 1.108f
    .end array-data

    .line 35
    :array_2
    .array-data 4
        0x0
        0x3fc18937    # 1.512f
        0x3fa56042    # 1.292f
        0x3f926e98    # 1.144f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x4

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->GOOD_RATIO:[F

    .line 32
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->WARNING_RATIO:[F

    .line 35
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->BAD_RATIO:[F

    .line 49
    new-instance v0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->init(Landroid/content/Context;)V

    .line 71
    return-void

    .line 29
    :array_0
    .array-data 4
        0x0
        0x3f9d9168    # 1.231f
        0x3f9624dd    # 1.173f
        0x3f8d9168    # 1.106f
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x0
        0x3fa9fbe7    # 1.328f
        0x3f991687    # 1.196f
        0x3f8dd2f2    # 1.108f
    .end array-data

    .line 35
    :array_2
    .array-data 4
        0x0
        0x3fc18937    # 1.512f
        0x3fa56042    # 1.292f
        0x3f926e98    # 1.144f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x4

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->GOOD_RATIO:[F

    .line 32
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->WARNING_RATIO:[F

    .line 35
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->BAD_RATIO:[F

    .line 49
    new-instance v0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->init(Landroid/content/Context;)V

    .line 76
    return-void

    .line 29
    :array_0
    .array-data 4
        0x0
        0x3f9d9168    # 1.231f
        0x3f9624dd    # 1.173f
        0x3f8d9168    # 1.106f
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x0
        0x3fa9fbe7    # 1.328f
        0x3f991687    # 1.196f
        0x3f8dd2f2    # 1.108f
    .end array-data

    .line 35
    :array_2
    .array-data 4
        0x0
        0x3fc18937    # 1.512f
        0x3fa56042    # 1.292f
        0x3f926e98    # 1.144f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x4

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->GOOD_RATIO:[F

    .line 32
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->WARNING_RATIO:[F

    .line 35
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->BAD_RATIO:[F

    .line 49
    new-instance v0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    .line 83
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->init(Landroid/content/Context;)V

    .line 81
    return-void

    .line 29
    :array_0
    .array-data 4
        0x0
        0x3f9d9168    # 1.231f
        0x3f9624dd    # 1.173f
        0x3f8d9168    # 1.106f
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x0
        0x3fa9fbe7    # 1.328f
        0x3f991687    # 1.196f
        0x3f8dd2f2    # 1.108f
    .end array-data

    .line 35
    :array_2
    .array-data 4
        0x0
        0x3fc18937    # 1.512f
        0x3fa56042    # 1.292f
        0x3f926e98    # 1.144f
    .end array-data
.end method

.method private getScaleRatio(II)F
    .locals 1
    .param p1, "colorState"    # I
    .param p2, "target"    # I

    .prologue
    .line 317
    packed-switch p1, :pswitch_data_0

    .line 325
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->GOOD_RATIO:[F

    aget v0, v0, p2

    return v0

    .line 319
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->GOOD_RATIO:[F

    aget v0, v0, p2

    return v0

    .line 321
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->WARNING_RATIO:[F

    aget v0, v0, p2

    return v0

    .line 323
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->BAD_RATIO:[F

    aget v0, v0, p2

    return v0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    .line 88
    const-string/jumbo v0, "circle_container_transition_name"

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setTransitionName(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private setRippleTint(ILandroid/widget/ImageView;)V
    .locals 3
    .param p1, "colorState"    # I
    .param p2, "target"    # Landroid/widget/ImageView;

    .prologue
    .line 330
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v2, v1, p1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v0

    .line 333
    .local v0, "color":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 334
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 329
    .end local v0    # "color":I
    :cond_0
    return-void
.end method

.method private startRippleAnim(I)V
    .locals 22
    .param p1, "colorState"    # I

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple1:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setRippleTint(ILandroid/widget/ImageView;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple2:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setRippleTint(ILandroid/widget/ImageView;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple3:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setRippleTint(ILandroid/widget/ImageView;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple1:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 207
    .local v4, "fadeout1Anim":Landroid/animation/ObjectAnimator;
    sget v17, Lcom/samsung/android/visualeffect/circle/CircleContainer;->SCANNING_FADE_OUT_DURATION:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 208
    sget v17, Lcom/samsung/android/visualeffect/circle/CircleContainer;->SCANNING_FADE_OUT_DELAY:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 209
    new-instance v17, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple2:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_1

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 211
    .local v5, "fadeout2Anim":Landroid/animation/ObjectAnimator;
    sget v17, Lcom/samsung/android/visualeffect/circle/CircleContainer;->SCANNING_FADE_OUT_DURATION:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 212
    sget v17, Lcom/samsung/android/visualeffect/circle/CircleContainer;->SCANNING_FADE_OUT_DELAY:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 213
    new-instance v17, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple3:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_2

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 215
    .local v6, "fadeout3Anim":Landroid/animation/ObjectAnimator;
    sget v17, Lcom/samsung/android/visualeffect/circle/CircleContainer;->SCANNING_FADE_OUT_DURATION:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 216
    sget v17, Lcom/samsung/android/visualeffect/circle/CircleContainer;->SCANNING_FADE_OUT_DELAY:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 217
    new-instance v17, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 219
    new-instance v16, Landroid/view/animation/PathInterpolator;

    const v17, 0x3f333333    # 0.7f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-direct/range {v16 .. v20}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 220
    .local v16, "scaleInterpolator":Landroid/view/animation/PathInterpolator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple1:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    aput v20, v19, v21

    .line 221
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->getScaleRatio(II)F

    move-result v20

    const/16 v21, 0x1

    aput v20, v19, v21

    .line 220
    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 222
    .local v11, "mRippleXAnim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple1:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    aput v20, v19, v21

    .line 223
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->getScaleRatio(II)F

    move-result v20

    const/16 v21, 0x1

    aput v20, v19, v21

    .line 222
    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 224
    .local v12, "mRippleYAnim":Landroid/animation/ObjectAnimator;
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 225
    .local v13, "scale1Set":Landroid/animation/AnimatorSet;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    const/16 v18, 0x1

    aput-object v12, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 226
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 227
    sget v17, Lcom/samsung/android/visualeffect/circle/CircleContainer;->SCANNING_SCALE_DURATION:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple2:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    aput v20, v19, v21

    .line 230
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->getScaleRatio(II)F

    move-result v20

    const/16 v21, 0x1

    aput v20, v19, v21

    .line 229
    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 231
    .local v7, "mRipple2XAnim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple2:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    aput v20, v19, v21

    .line 232
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->getScaleRatio(II)F

    move-result v20

    const/16 v21, 0x1

    aput v20, v19, v21

    .line 231
    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 233
    .local v8, "mRipple2YAnim":Landroid/animation/ObjectAnimator;
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    .line 234
    .local v14, "scale2Set":Landroid/animation/AnimatorSet;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v7, v17, v18

    const/16 v18, 0x1

    aput-object v8, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 235
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    sget v17, Lcom/samsung/android/visualeffect/circle/CircleContainer;->SCANNING_SCALE_DURATION:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 237
    sget v17, Lcom/samsung/android/visualeffect/circle/CircleContainer;->SCANNING_SCALE_DELAY:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple3:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    aput v20, v19, v21

    .line 240
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->getScaleRatio(II)F

    move-result v20

    const/16 v21, 0x1

    aput v20, v19, v21

    .line 239
    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 241
    .local v9, "mRipple3XAnim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple3:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    aput v20, v19, v21

    .line 242
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->getScaleRatio(II)F

    move-result v20

    const/16 v21, 0x1

    aput v20, v19, v21

    .line 241
    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 243
    .local v10, "mRipple3YAnim":Landroid/animation/ObjectAnimator;
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    .line 244
    .local v15, "scale3Set":Landroid/animation/AnimatorSet;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v9, v17, v18

    const/16 v18, 0x1

    aput-object v10, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 245
    invoke-virtual/range {v15 .. v16}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 246
    sget v17, Lcom/samsung/android/visualeffect/circle/CircleContainer;->SCANNING_SCALE_DURATION:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 247
    sget v17, Lcom/samsung/android/visualeffect/circle/CircleContainer;->SCANNING_SCALE_DELAY:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v13, v18, v19

    const/16 v19, 0x1

    aput-object v14, v18, v19

    const/16 v19, 0x2

    aput-object v15, v18, v19

    .line 250
    const/16 v19, 0x3

    aput-object v4, v18, v19

    const/16 v19, 0x4

    aput-object v5, v18, v19

    const/16 v19, 0x5

    aput-object v6, v18, v19

    .line 249
    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    new-instance v18, Lcom/samsung/android/visualeffect/circle/CircleContainer$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer$2;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    invoke-virtual/range {v17 .. v18}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/AnimatorSet;->start()V

    .line 201
    return-void

    .line 206
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 210
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 214
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public cancelAnimations()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 294
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/circle/Circle;->cancelAnim()V

    .line 292
    return-void
.end method

.method public doRippleAnimation(IZZ)V
    .locals 2
    .param p1, "colorState"    # I
    .param p2, "rotateCircle"    # Z
    .param p3, "withRipple"    # Z

    .prologue
    .line 308
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    return-void

    .line 310
    :cond_0
    if-eqz p3, :cond_1

    .line 311
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->startRippleAnim(I)V

    .line 312
    :cond_1
    if-eqz p2, :cond_2

    .line 313
    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    if-eqz p3, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/circle/Circle;->startScanAnim(Landroid/os/Handler;)V

    .line 307
    :cond_2
    return-void

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public removeCircleListener()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircleListener:Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

    .line 95
    return-void
.end method

.method public setCircle(II)V
    .locals 12
    .param p1, "parentSize"    # I
    .param p2, "ringRadius"    # I

    .prologue
    const-wide v10, 0x3ff0a3d70a3d70a4L    # 1.04

    const v8, 0x7f0200ca

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 100
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 101
    const/4 v2, -0x2

    const/4 v3, -0x2

    .line 100
    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    mul-int/lit8 v2, p2, 0x2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 104
    mul-int/lit8 v2, p2, 0x2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 105
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 107
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple1:Landroid/widget/ImageView;

    .line 108
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple1:Landroid/widget/ImageView;

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 108
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple1:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE1:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v3, v4, v6}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 112
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple1:Landroid/widget/ImageView;

    sget-object v3, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE1:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 113
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple1:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple2:Landroid/widget/ImageView;

    .line 116
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple2:Landroid/widget/ImageView;

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple2:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE2:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v3, v4, v6}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 120
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple2:Landroid/widget/ImageView;

    sget-object v3, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE2:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 121
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple2:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple3:Landroid/widget/ImageView;

    .line 124
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple3:Landroid/widget/ImageView;

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 124
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple3:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE3:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v3, v4, v6}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 128
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple3:Landroid/widget/ImageView;

    sget-object v3, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE3:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple3:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple1:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple2:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->ripple3:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 136
    .local v1, "v":Landroid/widget/ImageView;
    mul-int/lit8 v2, p2, 0x2

    int-to-double v2, v2

    mul-double/2addr v2, v10

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 137
    mul-int/lit8 v2, p2, 0x2

    int-to-double v2, v2

    mul-double/2addr v2, v10

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200cb

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    .line 143
    new-instance v2, Lcom/samsung/android/visualeffect/circle/Circle;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    div-int/lit8 v4, p1, 0x2

    sub-int/2addr v4, p2

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/visualeffect/circle/Circle;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    .line 144
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->addView(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method public setCircleColor(I)V
    .locals 3
    .param p1, "colorState"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    .line 197
    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->CIRCLE_PROGRESS:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v1, v2, p1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v1

    .line 196
    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/circle/Circle;->setRingColor(I)V

    .line 194
    :cond_0
    return-void
.end method

.method public setCircleListener(Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircleListener:Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

    .line 91
    return-void
.end method

.method public setScore(IIZ)V
    .locals 1
    .param p1, "score"    # I
    .param p2, "colorState"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 155
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZI)V

    .line 154
    return-void
.end method

.method public setScore(IIZI)V
    .locals 3
    .param p1, "score"    # I
    .param p2, "colorState"    # I
    .param p3, "animate"    # Z
    .param p4, "duration"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    .line 169
    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->CIRCLE_PROGRESS:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v1, v2, p2}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v1

    .line 168
    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/samsung/android/visualeffect/circle/Circle;->setScore(IIZI)V

    .line 166
    :cond_0
    return-void
.end method
