.class public Lcom/samsung/android/app/interactivepanoramaviewer/util/JniUtil;
.super Ljava/lang/Object;
.source "JniUtil.java"


# static fields
.field public static final NV12:I = 0x0

.field public static final YUV420PlANAR:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    :try_start_0
    const-string/jumbo v0, "InteractivePanoramaUtil"

    .line 17
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    const-string/jumbo v1, "InteractivePanoramaUtil loaded"

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to Load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native postProcessBufferHW(ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIII)V
.end method

.method public static native swABGR8888ToNV12(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)I
.end method

.method public static native swABGR8888ToRGB565(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)I
.end method

.method public static native swCrop(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)V
.end method

.method public static native swPPResize(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIII)I
.end method
