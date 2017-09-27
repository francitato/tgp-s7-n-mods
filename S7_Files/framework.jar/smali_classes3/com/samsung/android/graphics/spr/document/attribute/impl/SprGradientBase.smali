.class public abstract Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;
.super Ljava/lang/Object;
.source "SprGradientBase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final SPREAD_TYPE_NONE:B = 0x0t

.field public static final SPREAD_TYPE_PAD:B = 0x1t

.field public static final SPREAD_TYPE_REFLECT:B = 0x2t

.field public static final SPREAD_TYPE_REPEAT:B = 0x3t

.field static final sTileModeArray:[Landroid/graphics/Shader$TileMode;


# instance fields
.field public colors:[I

.field protected final mIntrinsic:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

.field public matrix:Landroid/graphics/Matrix;

.field public positions:[F

.field public shader:Landroid/graphics/Shader;

.field public spreadMode:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->sTileModeArray:[Landroid/graphics/Shader$TileMode;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->spreadMode:B

    .line 24
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->matrix:Landroid/graphics/Matrix;

    .line 25
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->shader:Landroid/graphics/Shader;

    .line 30
    iput-object p0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 29
    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 81
    .local v0, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    .line 82
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v2, v2

    new-array v2, v2, [F

    iput-object v2, v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    .line 84
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 85
    iget-object v2, v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    aget v3, v3, v1

    aput v3, v2, v1

    .line 86
    iget-object v2, v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    aget v3, v3, v1

    aput v3, v2, v1

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->updateGradient()V

    .line 91
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->clone()Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    move-result-object v0

    return-object v0
.end method

.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 7
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v5

    iput-byte v5, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->spreadMode:B

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    .line 37
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v5, v5

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    .line 41
    .local v2, "offset":F
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v0

    .line 42
    .local v0, "color":I
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v3

    .line 44
    .local v3, "opacity":F
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v6, v3

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v6, v0

    aput v6, v5, v1

    .line 45
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    aput v2, v5, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "color":I
    .end local v2    # "offset":F
    .end local v3    # "opacity":F
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v4

    .line 49
    .local v4, "useMatrix":B
    invoke-static {p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprMatrix;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)Landroid/graphics/Matrix;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->matrix:Landroid/graphics/Matrix;

    .line 50
    if-nez v4, :cond_1

    .line 51
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->matrix:Landroid/graphics/Matrix;

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->updateGradient()V

    .line 33
    return-void
.end method

.method public getSPRSize()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-byte v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->spreadMode:B

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 60
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 64
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    aget v1, v1, v0

    const v2, 0xffffff

    and-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 65
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    aget v1, v1, v0

    shr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->matrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 69
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->matrix:Landroid/graphics/Matrix;

    invoke-static {p1, v1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprMatrix;->toSPR(Ljava/io/DataOutputStream;Landroid/graphics/Matrix;)V

    .line 57
    return-void

    .line 68
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public abstract updateGradient()V
.end method
