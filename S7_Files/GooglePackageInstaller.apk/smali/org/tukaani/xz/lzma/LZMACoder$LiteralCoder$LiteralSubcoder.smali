.class abstract Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;
.super Ljava/lang/Object;
.source "LZMACoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LiteralSubcoder"
.end annotation


# instance fields
.field final probs:[S

.field final synthetic this$1:Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;


# direct methods
.method constructor <init>(Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;)V
    .locals 1
    .param p1, "this$1"    # Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;->this$1:Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/16 v0, 0x300

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;->probs:[S

    .line 108
    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;->probs:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    .line 111
    return-void
.end method
