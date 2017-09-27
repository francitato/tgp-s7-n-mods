.class Lcom/android/server/accessibility/DisplayAdjustmentUtils;
.super Ljava/lang/Object;
.source "DisplayAdjustmentUtils.java"


# static fields
.field private static final DEFAULT_DISPLAY_DALTONIZER:I = 0xc

.field private static final GRAYSCALE_MATRIX:[F

.field private static final INVERSION_MATRIX_VALUE_ONLY:[F

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 34
    const-class v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->LOG_TAG:Ljava/lang/String;

    .line 37
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->GRAYSCALE_MATRIX:[F

    .line 51
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->INVERSION_MATRIX_VALUE_ONLY:[F

    .line 33
    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 51
    :array_1
    .array-data 4
        0x3ecdd2f2    # 0.402f
        -0x40e6e979    # -0.598f
        -0x40e6a7f0    # -0.599f
        0x0
        -0x4069ba5e    # -1.174f
        -0x41cdd2f2    # -0.174f
        -0x4069999a    # -1.175f
        0x0
        -0x4196872b    # -0.228f
        -0x4196872b    # -0.228f
        0x3f45a1cb    # 0.772f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyAdjustments(Landroid/content/Context;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 87
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 90
    .local v0, "colorMatrix":[F
    const-string/jumbo v5, "accessibility_display_inversion_enabled"

    .line 89
    invoke-static {v1, v5, v6, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    sget-object v5, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->INVERSION_MATRIX_VALUE_ONLY:[F

    invoke-static {v0, v5}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->multiply([F[F)[F

    move-result-object v0

    .line 95
    .end local v0    # "colorMatrix":[F
    :cond_0
    const-string/jumbo v5, "accessibility_display_daltonizer_enabled"

    .line 94
    invoke-static {v1, v5, v6, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_3

    .line 97
    const-string/jumbo v5, "accessibility_display_daltonizer"

    const/16 v6, 0xc

    .line 96
    invoke-static {v1, v5, v6, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 100
    .local v2, "daltonizerMode":I
    if-nez v2, :cond_2

    .line 101
    sget-object v5, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->GRAYSCALE_MATRIX:[F

    invoke-static {v0, v5}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->multiply([F[F)[F

    move-result-object v0

    .line 102
    .local v0, "colorMatrix":[F
    invoke-static {v7}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->setDaltonizerMode(I)V

    .line 111
    .end local v0    # "colorMatrix":[F
    .end local v2    # "daltonizerMode":I
    :goto_0
    const-string/jumbo v5, "accessibility_display_color_matrix"

    .line 110
    invoke-static {v1, v5, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "matrix":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 113
    invoke-static {v3}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->get4x4Matrix(Ljava/lang/String;)[F

    move-result-object v4

    .line 114
    .local v4, "userMatrix":[F
    if-eqz v4, :cond_1

    .line 115
    invoke-static {v0, v4}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->multiply([F[F)[F

    move-result-object v0

    .line 119
    .end local v4    # "userMatrix":[F
    :cond_1
    invoke-static {v0}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->setColorTransform([F)V

    .line 85
    return-void

    .line 104
    .end local v3    # "matrix":Ljava/lang/String;
    .restart local v2    # "daltonizerMode":I
    :cond_2
    invoke-static {v2}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->setDaltonizerMode(I)V

    goto :goto_0

    .line 107
    .end local v2    # "daltonizerMode":I
    :cond_3
    invoke-static {v7}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->setDaltonizerMode(I)V

    goto :goto_0
.end method

.method private static get4x4Matrix(Ljava/lang/String;)[F
    .locals 7
    .param p0, "matrix"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 123
    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "strValues":[Ljava/lang/String;
    array-length v4, v2

    const/16 v5, 0x10

    if-eq v4, v5, :cond_0

    .line 125
    return-object v6

    .line 127
    :cond_0
    array-length v4, v2

    new-array v3, v4, [F

    .line 129
    .local v3, "values":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 130
    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return-object v6

    .line 135
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    return-object v3
.end method

.method public static hasAdjustments(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "accessibility_display_inversion_enabled"

    .line 69
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    return v3

    .line 75
    :cond_0
    const-string/jumbo v1, "accessibility_display_daltonizer_enabled"

    .line 74
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    return v3

    .line 79
    :cond_1
    return v2
.end method

.method private static multiply([F[F)[F
    .locals 6
    .param p0, "matrix"    # [F
    .param p1, "other"    # [F

    .prologue
    const/4 v1, 0x0

    .line 139
    if-nez p0, :cond_0

    .line 140
    return-object p1

    .line 142
    :cond_0
    const/16 v2, 0x10

    new-array v0, v2, [F

    .local v0, "result":[F
    move-object v2, p0

    move v3, v1

    move-object v4, p1

    move v5, v1

    .line 143
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 144
    return-object v0
.end method

.method private static setColorTransform([F)V
    .locals 7
    .param p0, "m"    # [F

    .prologue
    .line 177
    :try_start_0
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 178
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_2

    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 180
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 181
    if-eqz p0, :cond_0

    .line 182
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 184
    aget v4, p0, v3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v3    # "i":I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    :cond_1
    const/16 v4, 0x3f7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_2
    :goto_1
    return-void

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "ex":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failed to set color transform"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static setDaltonizerMode(I)V
    .locals 6
    .param p0, "mode"    # I

    .prologue
    .line 155
    :try_start_0
    const-string/jumbo v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 156
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 158
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    const/16 v3, 0x3f6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "ex":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to set Daltonizer mode"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
