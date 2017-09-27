.class public Lcom/google/android/gles_jni/GLImpl;
.super Ljava/lang/Object;
.source "GLImpl.java"

# interfaces
.implements Ljavax/microedition/khronos/opengles/GL10;
.implements Ljavax/microedition/khronos/opengles/GL10Ext;
.implements Ljavax/microedition/khronos/opengles/GL11;
.implements Ljavax/microedition/khronos/opengles/GL11Ext;
.implements Ljavax/microedition/khronos/opengles/GL11ExtensionPack;


# instance fields
.field _colorPointer:Ljava/nio/Buffer;

.field _matrixIndexPointerOES:Ljava/nio/Buffer;

.field _normalPointer:Ljava/nio/Buffer;

.field _pointSizePointerOES:Ljava/nio/Buffer;

.field _texCoordPointer:Ljava/nio/Buffer;

.field _vertexPointer:Ljava/nio/Buffer;

.field _weightPointerOES:Ljava/nio/Buffer;

.field private haveCheckedExtensions:Z

.field private have_OES_blend_equation_separate:Z

.field private have_OES_blend_subtract:Z

.field private have_OES_framebuffer_object:Z

.field private have_OES_texture_cube_map:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lcom/google/android/gles_jni/GLImpl;->_nativeClassInit()V

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/google/android/gles_jni/GLImpl;->_colorPointer:Ljava/nio/Buffer;

    .line 46
    iput-object v0, p0, Lcom/google/android/gles_jni/GLImpl;->_normalPointer:Ljava/nio/Buffer;

    .line 47
    iput-object v0, p0, Lcom/google/android/gles_jni/GLImpl;->_texCoordPointer:Ljava/nio/Buffer;

    .line 48
    iput-object v0, p0, Lcom/google/android/gles_jni/GLImpl;->_vertexPointer:Ljava/nio/Buffer;

    .line 49
    iput-object v0, p0, Lcom/google/android/gles_jni/GLImpl;->_pointSizePointerOES:Ljava/nio/Buffer;

    .line 50
    iput-object v0, p0, Lcom/google/android/gles_jni/GLImpl;->_matrixIndexPointerOES:Ljava/nio/Buffer;

    .line 51
    iput-object v0, p0, Lcom/google/android/gles_jni/GLImpl;->_weightPointerOES:Ljava/nio/Buffer;

    .line 59
    return-void
.end method

.method private static native _nativeClassInit()V
.end method

.method private static allowIndirectBuffers(Ljava/lang/String;)Z
    .locals 10
    .param p0, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 67
    const/4 v3, 0x0

    .line 68
    .local v3, "result":Z
    const/4 v4, 0x0

    .line 69
    .local v4, "version":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 71
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v2, p0, v6, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 72
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 73
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    const-string/jumbo v5, "OpenGLES"

    .line 79
    const-string/jumbo v6, "Application %s (SDK target %d) called a GL11 Pointer method with an indirect Buffer."

    .line 78
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 80
    aput-object p0, v7, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 78
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v5, 0x3

    if-gt v4, v5, :cond_1

    .line 82
    const/4 v3, 0x1

    .line 84
    :cond_1
    return v3

    .line 75
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private native glColorPointerBounds(IIILjava/nio/Buffer;I)V
.end method

.method private native glMatrixIndexPointerOESBounds(IIILjava/nio/Buffer;I)V
.end method

.method private native glNormalPointerBounds(IILjava/nio/Buffer;I)V
.end method

.method private native glPointSizePointerOESBounds(IILjava/nio/Buffer;I)V
.end method

.method private native glTexCoordPointerBounds(IIILjava/nio/Buffer;I)V
.end method

.method private native glVertexPointerBounds(IIILjava/nio/Buffer;I)V
.end method

.method private native glWeightPointerOESBounds(IIILjava/nio/Buffer;I)V
.end method


# virtual methods
.method public native _glGetString(I)Ljava/lang/String;
.end method

.method public native glActiveTexture(I)V
.end method

.method public native glAlphaFunc(IF)V
.end method

.method public native glAlphaFuncx(II)V
.end method

.method public native glBindBuffer(II)V
.end method

.method public native glBindFramebufferOES(II)V
.end method

.method public native glBindRenderbufferOES(II)V
.end method

.method public native glBindTexture(II)V
.end method

.method public native glBlendEquation(I)V
.end method

.method public native glBlendEquationSeparate(II)V
.end method

.method public native glBlendFunc(II)V
.end method

.method public native glBlendFuncSeparate(IIII)V
.end method

.method public native glBufferData(IILjava/nio/Buffer;I)V
.end method

.method public native glBufferSubData(IIILjava/nio/Buffer;)V
.end method

.method public native glCheckFramebufferStatusOES(I)I
.end method

.method public native glClear(I)V
.end method

.method public native glClearColor(FFFF)V
.end method

.method public native glClearColorx(IIII)V
.end method

.method public native glClearDepthf(F)V
.end method

.method public native glClearDepthx(I)V
.end method

.method public native glClearStencil(I)V
.end method

.method public native glClientActiveTexture(I)V
.end method

.method public native glClipPlanef(ILjava/nio/FloatBuffer;)V
.end method

.method public native glClipPlanef(I[FI)V
.end method

.method public native glClipPlanex(ILjava/nio/IntBuffer;)V
.end method

.method public native glClipPlanex(I[II)V
.end method

.method public native glColor4f(FFFF)V
.end method

.method public native glColor4ub(BBBB)V
.end method

.method public native glColor4x(IIII)V
.end method

.method public native glColorMask(ZZZZ)V
.end method

.method public native glColorPointer(IIII)V
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 217
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 212
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gles_jni/GLImpl;->glColorPointerBounds(IIILjava/nio/Buffer;I)V

    .line 219
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 220
    const/16 v0, 0x1406

    if-eq p2, v0, :cond_0

    .line 221
    const/16 v0, 0x1401

    if-ne p2, v0, :cond_2

    .line 223
    :cond_0
    :goto_0
    if-ltz p3, :cond_1

    .line 224
    iput-object p4, p0, Lcom/google/android/gles_jni/GLImpl;->_colorPointer:Ljava/nio/Buffer;

    .line 211
    :cond_1
    return-void

    .line 222
    :cond_2
    const/16 v0, 0x140c

    if-ne p2, v0, :cond_1

    goto :goto_0
.end method

.method public native glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
.end method

.method public native glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
.end method

.method public native glCopyTexImage2D(IIIIIIII)V
.end method

.method public native glCopyTexSubImage2D(IIIIIIII)V
.end method

.method public native glCullFace(I)V
.end method

.method public native glCurrentPaletteMatrixOES(I)V
.end method

.method public native glDeleteBuffers(ILjava/nio/IntBuffer;)V
.end method

.method public native glDeleteBuffers(I[II)V
.end method

.method public native glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V
.end method

.method public native glDeleteFramebuffersOES(I[II)V
.end method

.method public native glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V
.end method

.method public native glDeleteRenderbuffersOES(I[II)V
.end method

.method public native glDeleteTextures(ILjava/nio/IntBuffer;)V
.end method

.method public native glDeleteTextures(I[II)V
.end method

.method public native glDepthFunc(I)V
.end method

.method public native glDepthMask(Z)V
.end method

.method public native glDepthRangef(FF)V
.end method

.method public native glDepthRangex(II)V
.end method

.method public native glDisable(I)V
.end method

.method public native glDisableClientState(I)V
.end method

.method public native glDrawArrays(III)V
.end method

.method public native glDrawElements(IIII)V
.end method

.method public native glDrawElements(IIILjava/nio/Buffer;)V
.end method

.method public native glDrawTexfOES(FFFFF)V
.end method

.method public native glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
.end method

.method public native glDrawTexfvOES([FI)V
.end method

.method public native glDrawTexiOES(IIIII)V
.end method

.method public native glDrawTexivOES(Ljava/nio/IntBuffer;)V
.end method

.method public native glDrawTexivOES([II)V
.end method

.method public native glDrawTexsOES(SSSSS)V
.end method

.method public native glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
.end method

.method public native glDrawTexsvOES([SI)V
.end method

.method public native glDrawTexxOES(IIIII)V
.end method

.method public native glDrawTexxvOES(Ljava/nio/IntBuffer;)V
.end method

.method public native glDrawTexxvOES([II)V
.end method

.method public native glEnable(I)V
.end method

.method public native glEnableClientState(I)V
.end method

.method public native glFinish()V
.end method

.method public native glFlush()V
.end method

.method public native glFogf(IF)V
.end method

.method public native glFogfv(ILjava/nio/FloatBuffer;)V
.end method

.method public native glFogfv(I[FI)V
.end method

.method public native glFogx(II)V
.end method

.method public native glFogxv(ILjava/nio/IntBuffer;)V
.end method

.method public native glFogxv(I[II)V
.end method

.method public native glFramebufferRenderbufferOES(IIII)V
.end method

.method public native glFramebufferTexture2DOES(IIIII)V
.end method

.method public native glFrontFace(I)V
.end method

.method public native glFrustumf(FFFFFF)V
.end method

.method public native glFrustumx(IIIIII)V
.end method

.method public native glGenBuffers(ILjava/nio/IntBuffer;)V
.end method

.method public native glGenBuffers(I[II)V
.end method

.method public native glGenFramebuffersOES(ILjava/nio/IntBuffer;)V
.end method

.method public native glGenFramebuffersOES(I[II)V
.end method

.method public native glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V
.end method

.method public native glGenRenderbuffersOES(I[II)V
.end method

.method public native glGenTextures(ILjava/nio/IntBuffer;)V
.end method

.method public native glGenTextures(I[II)V
.end method

.method public native glGenerateMipmapOES(I)V
.end method

.method public native glGetBooleanv(ILjava/nio/IntBuffer;)V
.end method

.method public native glGetBooleanv(I[ZI)V
.end method

.method public native glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
.end method

.method public native glGetBufferParameteriv(II[II)V
.end method

.method public native glGetClipPlanef(ILjava/nio/FloatBuffer;)V
.end method

.method public native glGetClipPlanef(I[FI)V
.end method

.method public native glGetClipPlanex(ILjava/nio/IntBuffer;)V
.end method

.method public native glGetClipPlanex(I[II)V
.end method

.method public native glGetError()I
.end method

.method public native glGetFixedv(ILjava/nio/IntBuffer;)V
.end method

.method public native glGetFixedv(I[II)V
.end method

.method public native glGetFloatv(ILjava/nio/FloatBuffer;)V
.end method

.method public native glGetFloatv(I[FI)V
.end method

.method public native glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V
.end method

.method public native glGetFramebufferAttachmentParameterivOES(III[II)V
.end method

.method public native glGetIntegerv(ILjava/nio/IntBuffer;)V
.end method

.method public native glGetIntegerv(I[II)V
.end method

.method public native glGetLightfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glGetLightfv(II[FI)V
.end method

.method public native glGetLightxv(IILjava/nio/IntBuffer;)V
.end method

.method public native glGetLightxv(II[II)V
.end method

.method public native glGetMaterialfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glGetMaterialfv(II[FI)V
.end method

.method public native glGetMaterialxv(IILjava/nio/IntBuffer;)V
.end method

.method public native glGetMaterialxv(II[II)V
.end method

.method public glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [Ljava/nio/Buffer;

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "glGetPointerv"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V
.end method

.method public native glGetRenderbufferParameterivOES(II[II)V
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # I

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lcom/google/android/gles_jni/GLImpl;->_glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "returnValue":Ljava/lang/String;
    return-object v0
.end method

.method public native glGetTexEnviv(IILjava/nio/IntBuffer;)V
.end method

.method public native glGetTexEnviv(II[II)V
.end method

.method public native glGetTexEnvxv(IILjava/nio/IntBuffer;)V
.end method

.method public native glGetTexEnvxv(II[II)V
.end method

.method public native glGetTexGenfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glGetTexGenfv(II[FI)V
.end method

.method public native glGetTexGeniv(IILjava/nio/IntBuffer;)V
.end method

.method public native glGetTexGeniv(II[II)V
.end method

.method public native glGetTexGenxv(IILjava/nio/IntBuffer;)V
.end method

.method public native glGetTexGenxv(II[II)V
.end method

.method public native glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glGetTexParameterfv(II[FI)V
.end method

.method public native glGetTexParameteriv(IILjava/nio/IntBuffer;)V
.end method

.method public native glGetTexParameteriv(II[II)V
.end method

.method public native glGetTexParameterxv(IILjava/nio/IntBuffer;)V
.end method

.method public native glGetTexParameterxv(II[II)V
.end method

.method public native glHint(II)V
.end method

.method public native glIsBuffer(I)Z
.end method

.method public native glIsEnabled(I)Z
.end method

.method public native glIsFramebufferOES(I)Z
.end method

.method public native glIsRenderbufferOES(I)Z
.end method

.method public native glIsTexture(I)Z
.end method

.method public native glLightModelf(IF)V
.end method

.method public native glLightModelfv(ILjava/nio/FloatBuffer;)V
.end method

.method public native glLightModelfv(I[FI)V
.end method

.method public native glLightModelx(II)V
.end method

.method public native glLightModelxv(ILjava/nio/IntBuffer;)V
.end method

.method public native glLightModelxv(I[II)V
.end method

.method public native glLightf(IIF)V
.end method

.method public native glLightfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glLightfv(II[FI)V
.end method

.method public native glLightx(III)V
.end method

.method public native glLightxv(IILjava/nio/IntBuffer;)V
.end method

.method public native glLightxv(II[II)V
.end method

.method public native glLineWidth(F)V
.end method

.method public native glLineWidthx(I)V
.end method

.method public native glLoadIdentity()V
.end method

.method public native glLoadMatrixf(Ljava/nio/FloatBuffer;)V
.end method

.method public native glLoadMatrixf([FI)V
.end method

.method public native glLoadMatrixx(Ljava/nio/IntBuffer;)V
.end method

.method public native glLoadMatrixx([II)V
.end method

.method public native glLoadPaletteFromModelViewMatrixOES()V
.end method

.method public native glLogicOp(I)V
.end method

.method public native glMaterialf(IIF)V
.end method

.method public native glMaterialfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glMaterialfv(II[FI)V
.end method

.method public native glMaterialx(III)V
.end method

.method public native glMaterialxv(IILjava/nio/IntBuffer;)V
.end method

.method public native glMaterialxv(II[II)V
.end method

.method public native glMatrixIndexPointerOES(IIII)V
.end method

.method public glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 1846
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1841
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gles_jni/GLImpl;->glMatrixIndexPointerOESBounds(IIILjava/nio/Buffer;I)V

    .line 1848
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1849
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1851
    :cond_0
    :goto_0
    const/16 v0, 0x1406

    if-eq p2, v0, :cond_1

    .line 1852
    const/16 v0, 0x1400

    if-ne p2, v0, :cond_4

    .line 1855
    :cond_1
    :goto_1
    if-ltz p3, :cond_2

    .line 1856
    iput-object p4, p0, Lcom/google/android/gles_jni/GLImpl;->_matrixIndexPointerOES:Ljava/nio/Buffer;

    .line 1840
    :cond_2
    return-void

    .line 1850
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 1853
    :cond_4
    const/16 v0, 0x1402

    if-eq p2, v0, :cond_1

    .line 1854
    const/16 v0, 0x140c

    if-ne p2, v0, :cond_2

    goto :goto_1
.end method

.method public native glMatrixMode(I)V
.end method

.method public native glMultMatrixf(Ljava/nio/FloatBuffer;)V
.end method

.method public native glMultMatrixf([FI)V
.end method

.method public native glMultMatrixx(Ljava/nio/IntBuffer;)V
.end method

.method public native glMultMatrixx([II)V
.end method

.method public native glMultiTexCoord4f(IFFFF)V
.end method

.method public native glMultiTexCoord4x(IIIII)V
.end method

.method public native glNormal3f(FFF)V
.end method

.method public native glNormal3x(III)V
.end method

.method public native glNormalPointer(III)V
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 788
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 784
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gles_jni/GLImpl;->glNormalPointerBounds(IILjava/nio/Buffer;I)V

    .line 790
    const/16 v0, 0x1406

    if-eq p1, v0, :cond_0

    .line 791
    const/16 v0, 0x1400

    if-ne p1, v0, :cond_2

    .line 794
    :cond_0
    :goto_0
    if-ltz p2, :cond_1

    .line 795
    iput-object p3, p0, Lcom/google/android/gles_jni/GLImpl;->_normalPointer:Ljava/nio/Buffer;

    .line 783
    :cond_1
    return-void

    .line 792
    :cond_2
    const/16 v0, 0x1402

    if-eq p1, v0, :cond_0

    .line 793
    const/16 v0, 0x140c

    if-ne p1, v0, :cond_1

    goto :goto_0
.end method

.method public native glOrthof(FFFFFF)V
.end method

.method public native glOrthox(IIIIII)V
.end method

.method public native glPixelStorei(II)V
.end method

.method public native glPointParameterf(IF)V
.end method

.method public native glPointParameterfv(ILjava/nio/FloatBuffer;)V
.end method

.method public native glPointParameterfv(I[FI)V
.end method

.method public native glPointParameterx(II)V
.end method

.method public native glPointParameterxv(ILjava/nio/IntBuffer;)V
.end method

.method public native glPointParameterxv(I[II)V
.end method

.method public native glPointSize(F)V
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 1611
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 1607
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gles_jni/GLImpl;->glPointSizePointerOESBounds(IILjava/nio/Buffer;I)V

    .line 1613
    const/16 v0, 0x1406

    if-eq p1, v0, :cond_0

    .line 1614
    const/16 v0, 0x140c

    if-ne p1, v0, :cond_1

    .line 1615
    :cond_0
    if-ltz p2, :cond_1

    .line 1616
    iput-object p3, p0, Lcom/google/android/gles_jni/GLImpl;->_pointSizePointerOES:Ljava/nio/Buffer;

    .line 1606
    :cond_1
    return-void
.end method

.method public native glPointSizex(I)V
.end method

.method public native glPolygonOffset(FF)V
.end method

.method public native glPolygonOffsetx(II)V
.end method

.method public native glPopMatrix()V
.end method

.method public native glPushMatrix()V
.end method

.method public native glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
.end method

.method public native glQueryMatrixxOES([II[II)I
.end method

.method public native glReadPixels(IIIIIILjava/nio/Buffer;)V
.end method

.method public native glRenderbufferStorageOES(IIII)V
.end method

.method public native glRotatef(FFFF)V
.end method

.method public native glRotatex(IIII)V
.end method

.method public native glSampleCoverage(FZ)V
.end method

.method public native glSampleCoveragex(IZ)V
.end method

.method public native glScalef(FFF)V
.end method

.method public native glScalex(III)V
.end method

.method public native glScissor(IIII)V
.end method

.method public native glShadeModel(I)V
.end method

.method public native glStencilFunc(III)V
.end method

.method public native glStencilMask(I)V
.end method

.method public native glStencilOp(III)V
.end method

.method public native glTexCoordPointer(IIII)V
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 982
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 977
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gles_jni/GLImpl;->glTexCoordPointerBounds(IIILjava/nio/Buffer;I)V

    .line 984
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 985
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 987
    :cond_0
    :goto_0
    const/16 v0, 0x1406

    if-eq p2, v0, :cond_1

    .line 988
    const/16 v0, 0x1400

    if-ne p2, v0, :cond_4

    .line 991
    :cond_1
    :goto_1
    if-ltz p3, :cond_2

    .line 992
    iput-object p4, p0, Lcom/google/android/gles_jni/GLImpl;->_texCoordPointer:Ljava/nio/Buffer;

    .line 976
    :cond_2
    return-void

    .line 986
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 989
    :cond_4
    const/16 v0, 0x1402

    if-eq p2, v0, :cond_1

    .line 990
    const/16 v0, 0x140c

    if-ne p2, v0, :cond_2

    goto :goto_1
.end method

.method public native glTexEnvf(IIF)V
.end method

.method public native glTexEnvfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glTexEnvfv(II[FI)V
.end method

.method public native glTexEnvi(III)V
.end method

.method public native glTexEnviv(IILjava/nio/IntBuffer;)V
.end method

.method public native glTexEnviv(II[II)V
.end method

.method public native glTexEnvx(III)V
.end method

.method public native glTexEnvxv(IILjava/nio/IntBuffer;)V
.end method

.method public native glTexEnvxv(II[II)V
.end method

.method public native glTexGenf(IIF)V
.end method

.method public native glTexGenfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glTexGenfv(II[FI)V
.end method

.method public native glTexGeni(III)V
.end method

.method public native glTexGeniv(IILjava/nio/IntBuffer;)V
.end method

.method public native glTexGeniv(II[II)V
.end method

.method public native glTexGenx(III)V
.end method

.method public native glTexGenxv(IILjava/nio/IntBuffer;)V
.end method

.method public native glTexGenxv(II[II)V
.end method

.method public native glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
.end method

.method public native glTexParameterf(IIF)V
.end method

.method public native glTexParameterfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glTexParameterfv(II[FI)V
.end method

.method public native glTexParameteri(III)V
.end method

.method public native glTexParameteriv(IILjava/nio/IntBuffer;)V
.end method

.method public native glTexParameteriv(II[II)V
.end method

.method public native glTexParameterx(III)V
.end method

.method public native glTexParameterxv(IILjava/nio/IntBuffer;)V
.end method

.method public native glTexParameterxv(II[II)V
.end method

.method public native glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
.end method

.method public native glTranslatef(FFF)V
.end method

.method public native glTranslatex(III)V
.end method

.method public native glVertexPointer(IIII)V
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 1127
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1122
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gles_jni/GLImpl;->glVertexPointerBounds(IIILjava/nio/Buffer;I)V

    .line 1129
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1130
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1132
    :cond_0
    :goto_0
    const/16 v0, 0x1406

    if-eq p2, v0, :cond_1

    .line 1133
    const/16 v0, 0x1400

    if-ne p2, v0, :cond_4

    .line 1136
    :cond_1
    :goto_1
    if-ltz p3, :cond_2

    .line 1137
    iput-object p4, p0, Lcom/google/android/gles_jni/GLImpl;->_vertexPointer:Ljava/nio/Buffer;

    .line 1121
    :cond_2
    return-void

    .line 1131
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 1134
    :cond_4
    const/16 v0, 0x1402

    if-eq p2, v0, :cond_1

    .line 1135
    const/16 v0, 0x140c

    if-ne p2, v0, :cond_2

    goto :goto_1
.end method

.method public native glViewport(IIII)V
.end method

.method public native glWeightPointerOES(IIII)V
.end method

.method public glWeightPointerOES(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 1890
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1885
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gles_jni/GLImpl;->glWeightPointerOESBounds(IIILjava/nio/Buffer;I)V

    .line 1884
    return-void
.end method
