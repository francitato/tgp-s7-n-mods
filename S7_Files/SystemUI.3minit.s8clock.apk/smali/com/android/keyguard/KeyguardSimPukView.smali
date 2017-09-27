.class public Lcom/android/keyguard/KeyguardSimPukView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPukView$1;,
        Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;,
        Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
    }
.end annotation


# instance fields
.field private mCarrierDialog:Landroid/app/AlertDialog;

.field private mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

.field private mPinText:Ljava/lang/String;

.field private mPukText:Ljava/lang/String;

.field private mRemainingAttempts:I

.field private mShowDefaultMessage:Z

.field private mSimImageView:Landroid/widget/ImageView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

.field private mSubId:I

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardSimPukView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardSimPukView;)Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardSimPukView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/KeyguardSimPukView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/keyguard/KeyguardSimPukView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardSimPukView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->checkPin()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardSimPukView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->checkPuk()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardSimPukView;IZ)Ljava/lang/String;
    .locals 1
    .param p1, "attemptsRemaining"    # I
    .param p2, "isDefault"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->handleSubInfoChangeIfNeeded()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView;->showCarrierDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->updateSim()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    .line 63
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    .line 66
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-direct {v0, p0, v2}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$StateMachine;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    .line 68
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    .line 71
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPukView$1;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 91
    return-void
.end method

.method private checkPin()Z
    .locals 2

    .prologue
    .line 451
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 452
    .local v0, "length":I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 457
    const/4 v1, 0x1

    return v1

    .line 460
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private checkPuk()Z
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    .line 439
    const/4 v0, 0x1

    return v0

    .line 442
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getPukPasswordErrorMessage(IZ)Ljava/lang/String;
    .locals 7
    .param p1, "attemptsRemaining"    # I
    .param p2, "isDefault"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 208
    if-nez p1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_wrong_puk_code_dead:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "KeyguardSimPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPukPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 251
    const-string/jumbo v3, " displayMessage="

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-object v0

    .line 210
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-le p1, v5, :cond_3

    .line 211
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_kor_sim_puk_remaining_attempts:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 213
    rsub-int/lit8 v4, p1, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 212
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 214
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v1, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_ctc_sim_puk_remaining_attempts:I

    new-array v3, v5, [Ljava/lang/Object;

    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 215
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 218
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_sim_puk_remaining_attempts:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 220
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_3
    if-ne p1, v5, :cond_6

    .line 221
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_4

    .line 222
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_kor_sim_puk_remaining_attempts:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 223
    rsub-int/lit8 v4, p1, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 222
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto/16 :goto_0

    .line 224
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_4
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v1, :cond_5

    .line 225
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_ctc_sim_puk_remaining_1_attempt:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto/16 :goto_0

    .line 227
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_sim_puk_remaining_1_attempt:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto/16 :goto_0

    .line 230
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_6
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_RIL_TALLRAT:Z

    if-eqz v1, :cond_7

    .line 231
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->card_crash:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto/16 :goto_0

    .line 233
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_puk_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private getSimIconImage()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x3

    .line 649
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    if-le v3, v5, :cond_3

    .line 650
    const/4 v2, 0x0

    .line 651
    .local v2, "simSlotNum":I
    const-string/jumbo v3, "ril.MSIMM"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, "simMode":Ljava/lang/String;
    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 653
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 655
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    .line 658
    :cond_0
    const-string/jumbo v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 659
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 661
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    .line 660
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 662
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v3

    .line 663
    sget v4, Lcom/android/keyguard/R$drawable;->lock_ic_pin_attempt_sim_02:I

    sget v5, Lcom/android/keyguard/R$drawable;->lock_ic_pin_attempt_sim_02_whitebg:I

    .line 662
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .line 665
    :cond_1
    if-nez v2, :cond_2

    .line 666
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v3

    .line 667
    sget v4, Lcom/android/keyguard/R$drawable;->lock_ic_pin_attempt_sim_01:I

    sget v5, Lcom/android/keyguard/R$drawable;->lock_ic_pin_attempt_sim_01_whitebg:I

    .line 666
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .line 669
    :cond_2
    if-ne v2, v5, :cond_3

    .line 670
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v3

    .line 671
    sget v4, Lcom/android/keyguard/R$drawable;->lock_ic_pin_attempt_sim_02:I

    sget v5, Lcom/android/keyguard/R$drawable;->lock_ic_pin_attempt_sim_02_whitebg:I

    .line 670
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .line 676
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v1    # "simMode":Ljava/lang/String;
    .end local v2    # "simSlotNum":I
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v3

    .line 677
    sget v4, Lcom/android/keyguard/R$drawable;->lock_ic_pin_attempt_sim:I

    sget v5, Lcom/android/keyguard/R$drawable;->lock_ic_pin_attempt_sim_whitebg:I

    .line 676
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3
.end method

.method private getSimPukRetry(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 637
    const/4 v1, 0x0

    .line 639
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getSimPukRetryForSubscriber(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 644
    :goto_0
    const-string/jumbo v2, "KeyguardSimPukView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSimPukLockInfoResult(): num_of_retry is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return v1

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "KeyguardSimPukView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 374
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 376
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_kor_sim_unlock_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 387
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 388
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 389
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 391
    const/16 v1, 0x7d9

    .line 390
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 377
    :cond_1
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 379
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_ctc_sim_unlock_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 382
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sec_sim_unlock_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private handleSubInfoChangeIfNeeded()V
    .locals 3

    .prologue
    .line 187
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 188
    .local v0, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v1

    .line 189
    .local v1, "subId":I
    iget v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    .line 191
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    .line 192
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    .line 186
    :cond_0
    return-void
.end method

.method private showCarrierDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 415
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCarrierDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 416
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 417
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 418
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 419
    sget v1, Lcom/android/keyguard/R$string;->ok:I

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 420
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCarrierDialog:Landroid/app/AlertDialog;

    .line 421
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCarrierDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 422
    const/16 v2, 0x7d9

    .line 421
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 426
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCarrierDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 414
    return-void

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCarrierDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showDefaultMessage()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 556
    const-string/jumbo v3, "KeyguardSimPukView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showDefaultMessage subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 558
    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardSimPukView;->getSimPukRetry(I)I

    move-result v1

    .line 559
    .local v1, "retryCount":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 561
    .local v2, "rez":Landroid/content/res/Resources;
    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 562
    :cond_0
    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DCM_USIM_TEXT:Z

    if-eqz v3, :cond_1

    .line 563
    sget v3, Lcom/android/keyguard/R$string;->kg_dcm_sim_puk_instructions:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v3, v0, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 595
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "retryCount":I
    .end local v2    # "rez":Landroid/content/res/Resources;
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v3}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    .line 554
    return-void

    .line 564
    .restart local v1    # "retryCount":I
    .restart local v2    # "rez":Landroid/content/res/Resources;
    :cond_1
    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v3, :cond_2

    .line 565
    sget v3, Lcom/android/keyguard/R$string;->kg_kor_sim_puk_instructions:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 566
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v3, :cond_3

    .line 567
    sget v3, Lcom/android/keyguard/R$string;->kg_ctc_sim_puk_instructions:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 569
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    sget v3, Lcom/android/keyguard/R$string;->kg_sim_puk_instructions:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 571
    .end local v0    # "msg":Ljava/lang/String;
    :cond_4
    if-ne v1, v7, :cond_7

    .line 572
    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v3, :cond_5

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/keyguard/R$string;->kg_kor_sim_puk_instructions:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 574
    sget v4, Lcom/android/keyguard/R$string;->kg_sim_pin_remaining_1_attempt:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 573
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 575
    .end local v0    # "msg":Ljava/lang/String;
    :cond_5
    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v3, :cond_6

    .line 576
    sget v3, Lcom/android/keyguard/R$string;->kg_ctc_sim_puk_remaining_1_attempt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 578
    .end local v0    # "msg":Ljava/lang/String;
    :cond_6
    sget v3, Lcom/android/keyguard/R$string;->kg_sim_puk_remaining_1_attempt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 581
    .end local v0    # "msg":Ljava/lang/String;
    :cond_7
    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v3, :cond_8

    .line 582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/keyguard/R$string;->kg_kor_sim_puk_instructions:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 583
    sget v4, Lcom/android/keyguard/R$string;->kg_sim_pin_remaining_attempts:I

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 582
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 584
    .end local v0    # "msg":Ljava/lang/String;
    :cond_8
    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v3, :cond_9

    .line 585
    sget v3, Lcom/android/keyguard/R$string;->kg_ctc_sim_puk_remaining_attempts:I

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 587
    .end local v0    # "msg":Ljava/lang/String;
    :cond_9
    sget v3, Lcom/android/keyguard/R$string;->kg_sim_puk_remaining_attempts:I

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 593
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "retryCount":I
    .end local v2    # "rez":Landroid/content/res/Resources;
    :cond_a
    const-string/jumbo v3, "KeyguardSimPukView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showDefaultMessage isValidSubscriptionId failed !!!  subid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateSim()V
    .locals 6

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 475
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    if-nez v0, :cond_0

    .line 476
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget v5, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardSimPukView$2;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    .line 535
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->start()V

    .line 472
    :cond_0
    return-void
.end method


# virtual methods
.method public confirmPin()Z
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 275
    sget v0, Lcom/android/keyguard/R$id;->pukEntry:I

    return v0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 295
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    .line 299
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 294
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 304
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 305
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 307
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 309
    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 303
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 280
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 282
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 284
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sim_icon:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimImageView:Landroid/widget/ImageView;

    .line 279
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 321
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 323
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 319
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 2

    .prologue
    .line 257
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 260
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->showDefaultMessage()V

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getSimIconImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    :cond_0
    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 1
    .param p1, "deadline"    # J

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 545
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->next()V

    .line 540
    return-void
.end method
