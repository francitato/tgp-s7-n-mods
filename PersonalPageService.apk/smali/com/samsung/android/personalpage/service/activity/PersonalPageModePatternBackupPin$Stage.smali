.class final enum Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;
.super Ljava/lang/Enum;
.source "PersonalPageModePatternBackupPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

.field public static final enum LockedOut:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

.field public static final enum NeedToUnlock:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

.field public static final enum NeedToUnlockWrong:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    const-string/jumbo v1, "NeedToUnlock"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->NeedToUnlock:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    const-string/jumbo v1, "NeedToUnlockWrong"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->NeedToUnlockWrong:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    const-string/jumbo v1, "LockedOut"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->LockedOut:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->NeedToUnlock:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->NeedToUnlockWrong:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->LockedOut:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->$VALUES:[Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;
    .locals 1

    const-class v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;
    .locals 1

    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->$VALUES:[Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    return-object v0
.end method