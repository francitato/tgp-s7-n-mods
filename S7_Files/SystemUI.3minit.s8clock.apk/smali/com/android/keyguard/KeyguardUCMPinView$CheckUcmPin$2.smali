.class Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin$2;
.super Ljava/lang/Object;
.source "KeyguardUCMPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin$2;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 502
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin$2;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;->onVerifyPinResponse(III)V

    .line 501
    return-void
.end method
