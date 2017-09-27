.class public final Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;
.super Landroid/app/Activity;
.source "WarningConfirmationActivity.java"


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mViewHandler:Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;


# direct methods
.method static synthetic -get0(Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->setResultAndFinish(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setResultAndFinish(I)V
    .locals 5
    .param p1, "result"    # I

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "EXTRA_INDEX"

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "EXTRA_INDEX"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, p1, v0}, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->setResult(ILandroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->finish()V

    .line 112
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_WARNING_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->mMessage:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity$1;-><init>(Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->mViewHandler:Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;

    .line 108
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->mViewHandler:Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->createView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->setContentView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->mViewHandler:Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->invalidate()V

    .line 36
    return-void
.end method
