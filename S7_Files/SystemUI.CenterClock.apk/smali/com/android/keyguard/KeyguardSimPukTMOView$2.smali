.class Lcom/android/keyguard/KeyguardSimPukTMOView$2;
.super Ljava/lang/Object;
.source "KeyguardSimPukTMOView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukTMOView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukTMOView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukTMOView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardSimPukTMOView;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukTMOView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukTMOView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukTMOView;->-get0(Lcom/android/keyguard/KeyguardSimPukTMOView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    if-nez v1, :cond_0

    .line 118
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukTMOView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukTMOView;->-get0(Lcom/android/keyguard/KeyguardSimPukTMOView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "tel"

    const-string/jumbo v2, "911"

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 122
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukTMOView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukTMOView;->-get1(Lcom/android/keyguard/KeyguardSimPukTMOView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method
