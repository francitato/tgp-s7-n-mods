.class Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;
.super Ljava/lang/Object;
.source "SemGaussianBlurFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemGaussianBlurFilter;->animateRadius(FFJJLandroid/animation/TimeInterpolator;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private data:[F

.field private data1:[F

.field private data2:[F

.field private params:[F

.field final synthetic this$0:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

.field final synthetic val$aEndValue:F

.field final synthetic val$aStartValue:F


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemGaussianBlurFilter;FF)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/graphics/SemGaussianBlurFilter;
    .param p2, "val$aEndValue"    # F
    .param p3, "val$aStartValue"    # F

    .prologue
    const/16 v1, 0x40

    .line 242
    iput-object p1, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->val$aEndValue:F

    iput p3, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->val$aStartValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->params:[F

    .line 244
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data1:[F

    .line 245
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data2:[F

    .line 246
    const/16 v0, 0x80

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data:[F

    .line 242
    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 18
    .param p1, "aFraction"    # F
    .param p2, "aImageFilterAnimator"    # Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;

    .prologue
    .line 252
    sget-boolean v11, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->sLogingEnabled:Z

    if-eqz v11, :cond_0

    .line 253
    const-string/jumbo v11, "HWUIIF"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "SemGaussianBlurFilter animateRadius aFraction = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->val$aEndValue:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->val$aStartValue:F

    sub-float/2addr v12, v13

    mul-float v12, v12, p1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->val$aStartValue:F

    add-float/2addr v12, v13

    invoke-static {v11, v12}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->-set0(Lcom/samsung/android/graphics/SemGaussianBlurFilter;F)F

    .line 257
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    invoke-static {v11}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->-get0(Lcom/samsung/android/graphics/SemGaussianBlurFilter;)F

    move-result v11

    const/high16 v12, 0x437a0000    # 250.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    .line 258
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    const/high16 v12, 0x437a0000    # 250.0f

    invoke-static {v11, v12}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->-set0(Lcom/samsung/android/graphics/SemGaussianBlurFilter;F)F

    .line 264
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    invoke-static {v11}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->-get0(Lcom/samsung/android/graphics/SemGaussianBlurFilter;)F

    move-result v11

    const v12, 0x3f19999a    # 0.6f

    mul-float/2addr v11, v12

    float-to-int v5, v11

    .line 265
    .local v5, "interFactor":I
    const/4 v8, 0x0

    .line 267
    .local v8, "power":F
    const/16 v11, 0x40

    if-le v5, v11, :cond_3

    .line 268
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    invoke-static {v11}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->-get0(Lcom/samsung/android/graphics/SemGaussianBlurFilter;)F

    move-result v11

    int-to-float v12, v5

    div-float v8, v11, v12

    .line 269
    const/16 v5, 0x40

    .line 277
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    invoke-static {v11}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->-get0(Lcom/samsung/android/graphics/SemGaussianBlurFilter;)F

    move-result v11

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_5

    .line 278
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data1:[F

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    aput v12, v11, v13

    .line 279
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data2:[F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v12, v11, v13

    .line 280
    return-void

    .line 259
    .end local v5    # "interFactor":I
    .end local v8    # "power":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    invoke-static {v11}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->-get0(Lcom/samsung/android/graphics/SemGaussianBlurFilter;)F

    move-result v11

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    .line 260
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->-set0(Lcom/samsung/android/graphics/SemGaussianBlurFilter;F)F

    goto :goto_0

    .line 270
    .restart local v5    # "interFactor":I
    .restart local v8    # "power":F
    :cond_3
    const/4 v11, 0x1

    if-ge v5, v11, :cond_4

    .line 271
    const/high16 v8, 0x3f800000    # 1.0f

    .line 272
    const/4 v5, 0x1

    goto :goto_1

    .line 274
    :cond_4
    const v8, 0x3fd6c12b

    goto :goto_1

    .line 286
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    invoke-static {v11}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->-get0(Lcom/samsung/android/graphics/SemGaussianBlurFilter;)F

    move-result v11

    const v12, 0x3e99999a    # 0.3f

    mul-float/2addr v11, v12

    const v12, 0x3f19999a    # 0.6f

    add-float v10, v11, v12

    .line 287
    .local v10, "sigma":F
    const v11, 0x40c90fdb

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    float-to-double v14, v10

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v12, v14, v12

    double-to-float v2, v12

    .line 288
    .local v2, "coeff1":F
    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v10

    mul-float/2addr v11, v10

    const/high16 v12, -0x40800000    # -1.0f

    div-float v3, v12, v11

    .line 289
    .local v3, "coeff2":F
    const/4 v7, 0x0

    .line 290
    .local v7, "normalizeFactor":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    invoke-static {v11}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->-get0(Lcom/samsung/android/graphics/SemGaussianBlurFilter;)F

    move-result v11

    int-to-float v12, v5

    div-float v6, v11, v12

    .line 291
    .local v6, "interpalationStep":F
    const/4 v9, 0x0

    .line 293
    .local v9, "r":F
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2
    if-ge v4, v5, :cond_6

    .line 294
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data:[F

    float-to-double v12, v2

    const-wide v14, 0x4005bf0a80000000L    # 2.7182817459106445

    mul-float v16, v9, v9

    mul-float v16, v16, v3

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    float-to-double v14, v8

    mul-double/2addr v12, v14

    double-to-float v12, v12

    aput v12, v11, v4

    .line 295
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data:[F

    aget v11, v11, v4

    add-float/2addr v7, v11

    .line 296
    add-float/2addr v9, v6

    .line 293
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 299
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data:[F

    mul-float v12, v2, v8

    const/4 v13, 0x0

    aput v12, v11, v13

    .line 300
    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v7, v11

    .line 301
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    add-float/2addr v7, v11

    .line 303
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_7

    .line 304
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data:[F

    aget v12, v11, v4

    div-float/2addr v12, v7

    aput v12, v11, v4

    .line 303
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 307
    :cond_7
    const/4 v9, 0x0

    .line 309
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v5, :cond_8

    .line 310
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data1:[F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data:[F

    aget v12, v12, v4

    aput v12, v11, v4

    .line 311
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data2:[F

    aput v9, v11, v4

    .line 312
    add-float/2addr v9, v6

    .line 309
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 315
    :cond_8
    sget-boolean v11, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->sLogingEnabled:Z

    if-eqz v11, :cond_9

    .line 316
    const-string/jumbo v11, "HWUIIF"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "SemGaussianBlurFilter animateRadius mRadius = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    invoke-static {v13}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->-get0(Lcom/samsung/android/graphics/SemGaussianBlurFilter;)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "; interFactor = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->params:[F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    invoke-static {v12}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->-get0(Lcom/samsung/android/graphics/SemGaussianBlurFilter;)F

    move-result v12

    const/4 v13, 0x0

    aput v12, v11, v13

    .line 320
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->params:[F

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    aput v12, v11, v13

    .line 321
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->params:[F

    int-to-float v12, v5

    const/4 v13, 0x2

    aput v12, v11, v13

    .line 322
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->params:[F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    iget-object v12, v12, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->params:[F

    array-length v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v11, v14, v12, v15, v13}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 323
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data1:[F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    iget-object v12, v12, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data1:[F

    array-length v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v11, v14, v12, v15, v13}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 324
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data2:[F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    iget-object v12, v12, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data2:[F

    array-length v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v11, v14, v12, v15, v13}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 325
    const-string/jumbo v11, "filterParams"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->params:[F

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    .line 326
    const-string/jumbo v11, "filterData01"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data1:[F

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    .line 327
    const-string/jumbo v11, "filterData02"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;->data2:[F

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    .line 251
    return-void
.end method
