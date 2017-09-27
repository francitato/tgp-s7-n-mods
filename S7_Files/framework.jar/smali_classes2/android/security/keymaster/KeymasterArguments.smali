.class public Landroid/security/keymaster/KeymasterArguments;
.super Ljava/lang/Object;
.source "KeymasterArguments.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keymaster/KeymasterArguments$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/security/keymaster/KeymasterArguments;",
            ">;"
        }
    .end annotation
.end field

.field public static final UINT32_MAX_VALUE:J = 0xffffffffL

.field private static final UINT32_RANGE:J = 0x100000000L

.field public static final UINT64_MAX_VALUE:Ljava/math/BigInteger;

.field private static final UINT64_RANGE:Ljava/math/BigInteger;


# instance fields
.field private mArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/security/keymaster/KeymasterArgument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/security/keymaster/KeymasterArguments;->UINT64_RANGE:Ljava/math/BigInteger;

    .line 39
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->UINT64_RANGE:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    .line 43
    new-instance v0, Landroid/security/keymaster/KeymasterArguments$1;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Landroid/security/keymaster/KeymasterArgument;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/security/keymaster/KeymasterArguments;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private addEnumTag(II)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .prologue
    .line 127
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    new-instance v1, Landroid/security/keymaster/KeymasterIntArgument;

    invoke-direct {v1, p1, p2}, Landroid/security/keymaster/KeymasterIntArgument;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method private addLongTag(ILjava/math/BigInteger;)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 204
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_1

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Long tag value out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_1
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    new-instance v1, Landroid/security/keymaster/KeymasterLongArgument;

    invoke-virtual {p2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Landroid/security/keymaster/KeymasterLongArgument;-><init>(IJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method private getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;
    .locals 3
    .param p1, "tag"    # I

    .prologue
    .line 340
    iget-object v2, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "arg$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterArgument;

    .line 341
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    iget v2, v0, Landroid/security/keymaster/KeymasterArgument;->tag:I

    if-ne v2, p1, :cond_0

    .line 342
    return-object v0

    .line 345
    .end local v0    # "arg":Landroid/security/keymaster/KeymasterArgument;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getEnumTagValue(Landroid/security/keymaster/KeymasterArgument;)I
    .locals 1
    .param p1, "arg"    # Landroid/security/keymaster/KeymasterArgument;

    .prologue
    .line 131
    check-cast p1, Landroid/security/keymaster/KeymasterIntArgument;

    .end local p1    # "arg":Landroid/security/keymaster/KeymasterArgument;
    iget v0, p1, Landroid/security/keymaster/KeymasterIntArgument;->value:I

    return v0
.end method

.method private getLongTagValue(Landroid/security/keymaster/KeymasterArgument;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "arg"    # Landroid/security/keymaster/KeymasterArgument;

    .prologue
    .line 213
    check-cast p1, Landroid/security/keymaster/KeymasterLongArgument;

    .end local p1    # "arg":Landroid/security/keymaster/KeymasterArgument;
    iget-wide v0, p1, Landroid/security/keymaster/KeymasterLongArgument;->value:J

    invoke-static {v0, v1}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static toUint64(J)Ljava/math/BigInteger;
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 375
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 376
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 378
    :cond_0
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Landroid/security/keymaster/KeymasterArguments;->UINT64_RANGE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addBoolean(I)V
    .locals 3
    .param p1, "tag"    # I

    .prologue
    .line 223
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x70000000

    if-eq v0, v1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a boolean tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    new-instance v1, Landroid/security/keymaster/KeymasterBooleanArgument;

    invoke-direct {v1, p1}, Landroid/security/keymaster/KeymasterBooleanArgument;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method public addBytes(I[B)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "value"    # [B

    .prologue
    .line 251
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, -0x70000000

    if-eq v0, v1, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a bytes tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    if-nez p2, :cond_1

    .line 255
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value == nulll"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_1
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    new-instance v1, Landroid/security/keymaster/KeymasterBlobArgument;

    invoke-direct {v1, p1, p2}, Landroid/security/keymaster/KeymasterBlobArgument;-><init>(I[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method public addDate(ILjava/util/Date;)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/util/Date;

    .prologue
    .line 284
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x60000000

    if-eq v0, v1, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a date tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    if-nez p2, :cond_1

    .line 288
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value == nulll"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Date tag value out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_2
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    new-instance v1, Landroid/security/keymaster/KeymasterDateArgument;

    invoke-direct {v1, p1, p2}, Landroid/security/keymaster/KeymasterDateArgument;-><init>(ILjava/util/Date;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method public addDateIfNotNull(ILjava/util/Date;)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/util/Date;

    .prologue
    .line 306
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x60000000

    if-eq v0, v1, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a date tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    if-eqz p2, :cond_1

    .line 310
    invoke-virtual {p0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    .line 305
    :cond_1
    return-void
.end method

.method public addEnum(II)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .prologue
    .line 70
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    .line 71
    .local v0, "tagType":I
    const/high16 v1, 0x10000000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x20000000

    if-eq v0, v1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not an enum or repeating enum tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->addEnumTag(II)V

    .line 69
    return-void
.end method

.method public varargs addEnums(I[I)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "values"    # [I

    .prologue
    .line 83
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v1

    const/high16 v2, 0x20000000

    if-eq v1, v2, :cond_0

    .line 84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not a repeating enum tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    const/4 v1, 0x0

    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_1

    aget v0, p2, v1

    .line 87
    .local v0, "value":I
    invoke-direct {p0, p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnumTag(II)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "value":I
    :cond_1
    return-void
.end method

.method public addUnsignedInt(IJ)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "value"    # J

    .prologue
    .line 141
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    .line 142
    .local v0, "tagType":I
    const/high16 v1, 0x30000000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 143
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not an int or repeating int tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-ltz v1, :cond_1

    const-wide v2, 0xffffffffL

    cmp-long v1, p2, v2

    if-lez v1, :cond_2

    .line 147
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Int tag value out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_2
    iget-object v1, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    new-instance v2, Landroid/security/keymaster/KeymasterIntArgument;

    long-to-int v3, p2

    invoke-direct {v2, p1, v3}, Landroid/security/keymaster/KeymasterIntArgument;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public addUnsignedLong(ILjava/math/BigInteger;)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 177
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    .line 178
    .local v0, "tagType":I
    const/high16 v1, 0x50000000

    if-eq v0, v1, :cond_0

    const/high16 v1, -0x60000000

    if-eq v0, v1, :cond_0

    .line 179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not a long or repeating long tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->addLongTag(ILjava/math/BigInteger;)V

    .line 176
    return-void
.end method

.method public containsTag(I)Z
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 349
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public getBoolean(I)Z
    .locals 4
    .param p1, "tag"    # I

    .prologue
    .line 235
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v1

    const/high16 v2, 0x70000000

    if-eq v1, v2, :cond_0

    .line 236
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not a boolean tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_0
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    move-result-object v0

    .line 239
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    if-nez v0, :cond_1

    .line 240
    const/4 v1, 0x0

    return v1

    .line 242
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public getBytes(I[B)[B
    .locals 4
    .param p1, "tag"    # I
    .param p2, "defaultValue"    # [B

    .prologue
    .line 267
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v1

    const/high16 v2, -0x70000000

    if-eq v1, v2, :cond_0

    .line 268
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not a bytes tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_0
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    move-result-object v0

    .line 271
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    if-nez v0, :cond_1

    .line 272
    return-object p2

    .line 274
    :cond_1
    check-cast v0, Landroid/security/keymaster/KeymasterBlobArgument;

    .end local v0    # "arg":Landroid/security/keymaster/KeymasterArgument;
    iget-object v1, v0, Landroid/security/keymaster/KeymasterBlobArgument;->blob:[B

    return-object v1
.end method

.method public getDate(ILjava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p1, "tag"    # I
    .param p2, "defaultValue"    # Ljava/util/Date;

    .prologue
    .line 323
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v2

    const/high16 v3, 0x60000000

    if-eq v2, v3, :cond_0

    .line 324
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tag is not a date type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_0
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    move-result-object v0

    .line 327
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    if-nez v0, :cond_1

    .line 328
    return-object p2

    .line 330
    :cond_1
    check-cast v0, Landroid/security/keymaster/KeymasterDateArgument;

    .end local v0    # "arg":Landroid/security/keymaster/KeymasterArgument;
    iget-object v1, v0, Landroid/security/keymaster/KeymasterDateArgument;->date:Ljava/util/Date;

    .line 333
    .local v1, "result":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 334
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tag value too large. Tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    :cond_2
    return-object v1
.end method

.method public getEnum(II)I
    .locals 4
    .param p1, "tag"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 98
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v1

    const/high16 v2, 0x10000000

    if-eq v1, v2, :cond_0

    .line 99
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not an enum tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_0
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    move-result-object v0

    .line 102
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    if-nez v0, :cond_1

    .line 103
    return p2

    .line 105
    :cond_1
    invoke-direct {p0, v0}, Landroid/security/keymaster/KeymasterArguments;->getEnumTagValue(Landroid/security/keymaster/KeymasterArgument;)I

    move-result v1

    return v1
.end method

.method public getEnums(I)Ljava/util/List;
    .locals 6
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v3

    const/high16 v4, 0x20000000

    if-eq v3, v4, :cond_0

    .line 115
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not a repeating enum tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "arg$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterArgument;

    .line 119
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    iget v3, v0, Landroid/security/keymaster/KeymasterArgument;->tag:I

    if-ne v3, p1, :cond_1

    .line 120
    invoke-direct {p0, v0}, Landroid/security/keymaster/KeymasterArguments;->getEnumTagValue(Landroid/security/keymaster/KeymasterArgument;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .end local v0    # "arg":Landroid/security/keymaster/KeymasterArgument;
    :cond_2
    return-object v2
.end method

.method public getUnsignedInt(IJ)J
    .locals 6
    .param p1, "tag"    # I
    .param p2, "defaultValue"    # J

    .prologue
    .line 159
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v1

    const/high16 v2, 0x30000000

    if-eq v1, v2, :cond_0

    .line 160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not an int tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_0
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    move-result-object v0

    .line 163
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    if-nez v0, :cond_1

    .line 164
    return-wide p2

    .line 167
    :cond_1
    check-cast v0, Landroid/security/keymaster/KeymasterIntArgument;

    .end local v0    # "arg":Landroid/security/keymaster/KeymasterArgument;
    iget v1, v0, Landroid/security/keymaster/KeymasterIntArgument;->value:I

    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    return-wide v2
.end method

.method public getUnsignedLongs(I)Ljava/util/List;
    .locals 6
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v3

    const/high16 v4, -0x60000000

    if-eq v3, v4, :cond_0

    .line 191
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Tag is not a repeating long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 193
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    iget-object v3, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "arg$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterArgument;

    .line 195
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    iget v3, v0, Landroid/security/keymaster/KeymasterArgument;->tag:I

    if-ne v3, p1, :cond_1

    .line 196
    invoke-direct {p0, v0}, Landroid/security/keymaster/KeymasterArguments;->getLongTagValue(Landroid/security/keymaster/KeymasterArgument;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    .end local v0    # "arg":Landroid/security/keymaster/KeymasterArgument;
    :cond_2
    return-object v2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 362
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    sget-object v1, Landroid/security/keymaster/KeymasterArgument;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 361
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 358
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 357
    return-void
.end method
