.class public Lcom/samsung/android/camera/core/SemCamera$Face;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation


# instance fields
.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5174
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/camera/core/SemCamera$Face;->id:I

    .line 5183
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$Face;->leftEye:Landroid/graphics/Point;

    .line 5192
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$Face;->rightEye:Landroid/graphics/Point;

    .line 5201
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$Face;->mouth:Landroid/graphics/Point;

    .line 5114
    return-void
.end method
