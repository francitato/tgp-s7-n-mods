.class Lcom/android/server/LockSettingsService$CredentialInfo;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CredentialInfo"
.end annotation


# instance fields
.field public credential:Ljava/lang/String;

.field public isMdfppEnabled:Z

.field public isSdpEnabled:Z

.field public lockType:I

.field final synthetic this$0:Lcom/android/server/LockSettingsService;

.field public userId:I

.field public verifType:I


# direct methods
.method public constructor <init>(Lcom/android/server/LockSettingsService;IIILjava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/LockSettingsService;
    .param p2, "userId"    # I
    .param p3, "lockType"    # I
    .param p4, "verifType"    # I
    .param p5, "credential"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 800
    iput-object p1, p0, Lcom/android/server/LockSettingsService$CredentialInfo;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    iput p2, p0, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    .line 802
    iput p3, p0, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    .line 803
    iput p4, p0, Lcom/android/server/LockSettingsService$CredentialInfo;->verifType:I

    .line 804
    iput-object p5, p0, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    .line 806
    and-int/lit8 v0, p4, 0x3

    if-lez v0, :cond_0

    move v0, v1

    .line 805
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/LockSettingsService$CredentialInfo;->isSdpEnabled:Z

    .line 808
    and-int/lit8 v0, p4, 0x5

    if-lez v0, :cond_1

    .line 807
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/LockSettingsService$CredentialInfo;->isMdfppEnabled:Z

    .line 800
    return-void

    :cond_0
    move v0, v2

    .line 806
    goto :goto_0

    :cond_1
    move v1, v2

    .line 808
    goto :goto_1
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 2

    .prologue
    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "#### Dump : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/LockSettingsService$CredentialInfo;->verifType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/HIDDEN/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/LockSettingsService$CredentialInfo;->isSdpEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/LockSettingsService$CredentialInfo;->isMdfppEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ####"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
