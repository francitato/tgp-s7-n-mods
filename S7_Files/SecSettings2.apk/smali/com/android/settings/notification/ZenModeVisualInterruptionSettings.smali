.class public Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeVisualInterruptionSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mDisableListeners:Z

.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private mScreenOff:Landroid/preference/SwitchPreference;

.field private mScreenOn:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;ZI)I
    .locals 1
    .param p1, "suppress"    # Z
    .param p2, "effectType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->getNewSuppressedEffects(ZI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;I)V
    .locals 0
    .param p1, "suppressedVisualEffects"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->savePolicy(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$1;-><init>()V

    .line 142
    sput-object v0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private getNewSuppressedEffects(ZI)I
    .locals 2
    .param p1, "suppress"    # Z
    .param p2, "effectType"    # I

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 124
    .local v0, "effects":I
    if-nez p1, :cond_0

    .line 126
    or-int/2addr v0, p2

    .line 130
    :goto_0
    return v0

    .line 128
    :cond_0
    not-int v1, p2

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method private isEffectSuppressed(I)Z
    .locals 2
    .param p1, "effect"    # I

    .prologue
    const/4 v0, 0x0

    .line 116
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private savePolicy(I)V
    .locals 4
    .param p1, "suppressedVisualEffects"    # I

    .prologue
    .line 134
    new-instance v0, Landroid/app/NotificationManager$Policy;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 135
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v2, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 134
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 137
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 133
    return-void
.end method

.method private updateControls()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 107
    iput-boolean v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mDisableListeners:Z

    .line 108
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mScreenOff:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->isEffectSuppressed(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mScreenOn:Landroid/preference/SwitchPreference;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->isEffectSuppressed(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mDisableListeners:Z

    .line 106
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x106

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v1, 0x7f080164

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->addPreferencesFromResource(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 55
    .local v0, "root":Landroid/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 57
    const-string/jumbo v1, "screenOff"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mScreenOff:Landroid/preference/SwitchPreference;

    .line 64
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mScreenOff:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$2;-><init>(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    const-string/jumbo v1, "screenOn"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mScreenOn:Landroid/preference/SwitchPreference;

    .line 77
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mScreenOn:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$3;-><init>(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 103
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->updateControls()V

    .line 101
    return-void
.end method
