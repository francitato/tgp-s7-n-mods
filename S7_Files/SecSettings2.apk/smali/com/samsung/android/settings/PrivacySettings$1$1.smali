.class Lcom/samsung/android/settings/PrivacySettings$1$1;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/PrivacySettings$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/PrivacySettings$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacySettings$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/PrivacySettings$1;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/samsung/android/settings/PrivacySettings$1$1;->this$1:Lcom/samsung/android/settings/PrivacySettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 388
    const/4 v3, 0x0

    .line 389
    .local v3, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 391
    .local v1, "i":Landroid/content/Intent;
    :try_start_0
    const-string/jumbo v4, "samsungapps://ProductDetail/com.sec.android.easyMover"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 392
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .local v2, "i":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 394
    .end local v1    # "i":Landroid/content/Intent;
    const v4, 0x8000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 395
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings$1$1;->this$1:Lcom/samsung/android/settings/PrivacySettings$1;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 396
    const-string/jumbo v4, "PrivacySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startMarket resolveActivity is not null, start market service, uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings$1$1;->this$1:Lcom/samsung/android/settings/PrivacySettings$1;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V

    .line 398
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    move-object v1, v2

    .line 387
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 401
    .restart local v2    # "i":Landroid/content/Intent;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v4, "PrivacySettings"

    const-string/jumbo v5, "null resolveActivity.try again via google play"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string/jumbo v4, "market://details?id=com.sec.android.easyMover"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 403
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 404
    .end local v2    # "i":Landroid/content/Intent;
    .local v1, "i":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    :try_start_2
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 405
    const v4, 0x8000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 406
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings$1$1;->this$1:Lcom/samsung/android/settings/PrivacySettings$1;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V

    .line 407
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 409
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string/jumbo v4, "PrivacySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "linkToMarket got an error, uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string/jumbo v4, "PrivacySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can not link to market, Exception e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 409
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "i":Landroid/content/Intent;
    .restart local v3    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    move-object v1, v2

    .end local v2    # "i":Landroid/content/Intent;
    .restart local v1    # "i":Landroid/content/Intent;
    goto :goto_1
.end method
