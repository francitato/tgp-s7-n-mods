.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;
.super Ljava/lang/Object;
.source "SignatureValue.java"


# instance fields
.field private id:Ljava/lang/String;

.field private signatureValue:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getignatureValue()[B
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;->signatureValue:[B

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;->id:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSignatureValue([B)V
    .locals 0
    .param p1, "signatureValue"    # [B

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;->signatureValue:[B

    .line 25
    return-void
.end method
