.class public Lcom/android/packageinstaller/UninstallerActivity;
.super Landroid/app/Activity;
.source "UninstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/UninstallerActivity$AppNotFoundDialogFragment;,
        Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;,
        Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;
    }
.end annotation


# instance fields
.field private mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/packageinstaller/UninstallerActivity;)Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showAppNotFound()V
    .locals 1

    new-instance v0, Lcom/android/packageinstaller/UninstallerActivity$AppNotFoundDialogFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/UninstallerActivity$AppNotFoundDialogFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/UninstallerActivity;->showDialogFragment(Landroid/app/DialogFragment;)V

    return-void
.end method

.method private showConfirmationDialog()V
    .locals 1

    new-instance v0, Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/UninstallerActivity$UninstallAlertDialogFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/UninstallerActivity;->showDialogFragment(Landroid/app/DialogFragment;)V

    return-void
.end method

.method private showDialogFragment(Landroid/app/DialogFragment;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    const-string/jumbo v2, "dialog"

    invoke-virtual {p1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method dispatchAborted()V
    .locals 5

    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v2, v2, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v2, v2, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "Cancelled by user"

    const/4 v4, -0x5

    invoke-interface {v1, v2, v4, v3}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v5, "UninstallerActivity"

    const-string/jumbo v6, "No package URI in intent"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showAppNotFound()V

    return-void

    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string/jumbo v5, "UninstallerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid package name in URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showAppNotFound()V

    return-void

    :cond_1
    const-string/jumbo v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    new-instance v5, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    invoke-direct {v5}, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;-><init>()V

    iput-object v5, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v6, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    const-string/jumbo v5, "android.intent.extra.USER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    iput-object v5, v6, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v5, v5, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    iput-object v6, v5, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    :cond_2
    iget-object v5, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    const-string/jumbo v6, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    iget-object v5, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    const-string/jumbo v6, "android.content.pm.extra.CALLBACK"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v5, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    :try_start_0
    iget-object v5, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v6, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v7, v7, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    const/16 v8, 0x2000

    invoke-interface {v4, v6, v8, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iput-object v6, v5, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v5, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v5, v5, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v5, :cond_3

    const-string/jumbo v5, "UninstallerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showAppNotFound()V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v5, "UninstallerActivity"

    const-string/jumbo v6, "Unable to get packageName. Package manager is dead?"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v5, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    invoke-direct {v6, v7, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v7, v7, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8, v7}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iput-object v6, v5, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showConfirmationDialog()V

    return-void

    :catch_1
    move-exception v1

    const-string/jumbo v5, "UninstallerActivity"

    const-string/jumbo v6, "Unable to get className. Package manager is dead?"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method startUninstallProgress()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.extra.USER"

    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v2, v2, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.UNINSTALL_ALL_USERS"

    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-boolean v2, v2, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.content.pm.extra.CALLBACK"

    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v2, v2, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    const-string/jumbo v1, "com.android.packageinstaller.applicationInfo"

    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v2, v2, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.RETURN_RESULT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.intent.extra.RETURN_RESULT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-class v1, Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/UninstallerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
