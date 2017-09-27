.class Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsSettingsItem;
.super Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;
.source "PermissionsSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionsSettingsItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter",
        "<",
        "Lcom/android/packageinstaller/permission/model/AppPermissionGroup;",
        ">.SettingsItem;"
    }
.end annotation


# instance fields
.field private final mCenteredAlpha:F

.field private final mNonCenteredAlpha:F

.field private final mState:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsSettingsItem;->this$0:Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;-><init>(Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;Landroid/content/Context;)V

    .line 78
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsSettingsItem;->mCenteredAlpha:F

    .line 79
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsSettingsItem;->mNonCenteredAlpha:F

    .line 83
    const v0, 0x7f110133

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsSettingsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsSettingsItem;->mState:Landroid/widget/TextView;

    .line 81
    return-void
.end method


# virtual methods
.method public onCenterPosition(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 88
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsSettingsItem;->mImage:Landroid/support/wearable/view/CircledImageView;

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsSettingsItem;->mImage:Landroid/support/wearable/view/CircledImageView;

    invoke-virtual {v0}, Landroid/support/wearable/view/CircledImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/wearable/view/CircledImageView;->setAlpha(F)V

    .line 89
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsSettingsItem;->mText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsSettingsItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 90
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsSettingsItem;->mState:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsSettingsItem;->mState:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 87
    return-void

    :cond_0
    move v0, v2

    .line 88
    goto :goto_0

    :cond_1
    move v0, v2

    .line 89
    goto :goto_1

    :cond_2
    move v1, v2

    .line 90
    goto :goto_2
.end method

.method public onNonCenterPosition(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 95
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsSettingsItem;->mImage:Landroid/support/wearable/view/CircledImageView;

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/CircledImageView;->setAlpha(F)V

    .line 96
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsSettingsItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 97
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsSettingsItem;->mState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 94
    return-void
.end method
