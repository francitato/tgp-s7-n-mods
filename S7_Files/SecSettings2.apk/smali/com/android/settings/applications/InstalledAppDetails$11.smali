.class Lcom/android/settings/applications/InstalledAppDetails$11;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/InstalledAppDetails;->addDynamicPrefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 1423
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$11;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$11;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1427
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails$11;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1426
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 1428
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$11;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    .line 1429
    const/4 v0, 0x1

    return v0
.end method
