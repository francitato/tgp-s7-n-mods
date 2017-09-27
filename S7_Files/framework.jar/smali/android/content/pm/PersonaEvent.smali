.class public Landroid/content/pm/PersonaEvent;
.super Ljava/lang/Object;
.source "PersonaEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PersonaEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PersonaEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CREATE_COMPLETE:I = 0x1

.field public static final EVENT_INVALID:I = -0x1

.field public static final EVENT_KLMS_LOCK:I = 0xc

.field public static final EVENT_KLMS_UNLOCK:I = 0xd

.field public static final EVENT_LOCK:I = 0x0

.field public static final EVENT_SETUP_COMPLETE:I = 0x2

.field public static final EVENT_UNLOCK:I = 0x3

.field public static final KNOX_EVENT_ADMIN_LOCK:I = 0xb

.field public static final KNOX_EVENT_ADMIN_UNLOCK:I = 0x6

.field public static final KNOX_EVENT_DELETE_PERSONA:I = 0x8

.field public static final KNOX_EVENT_DISABLE_KEYGUARD:I = 0xe

.field public static final KNOX_EVENT_ENABLE_KEYGUARD:I = 0xf

.field public static final KNOX_EVENT_FORCE_PASSWORD_RESET:I = 0x4

.field public static final KNOX_EVENT_PASSWORD_CHANGE_SUCCESS:I = 0x5

.field public static final KNOX_EVENT_TIMA_COMPROMISE:I = 0xa

.field public static final KNOX_EVENT_UPGRADE_COMPLETE:I = 0x7

.field public static final KNOX_EVENT_UPGRADE_PERSONA:I = 0x9

.field private static final readableStrings:[Ljava/lang/String;


# instance fields
.field private event:I

.field private extras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "KNOX_EVENT_LOCK"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "KNOX_EVENT_CREATE_COMPLETE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 32
    const-string/jumbo v1, "KNOX_EVENT_SETUP_COMPLETE"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "KNOX_EVENT_UNLOCK"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "KNOX_EVENT_FORCE_PASSWORD_RESET"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "KNOX_EVENT_PASSWORD_CHANGE_SUCCESS"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 33
    const-string/jumbo v1, "KNOX_EVENT_ADMIN_UNLOCK"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "KNOX_EVENT_UPGRADE_COMPLETE"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "KNOX_EVENT_DELETE_PERSONA"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "KNOX_EVENT_UPGRADE_PERSONA"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 34
    const-string/jumbo v1, "KNOX_EVENT_TIMA_COMPROMISE"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "KNOX_EVENT_ADMIN_LOCK"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "KNOX_EVENT_KLMS_LOCK"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "KNOX_EVENT_KLMS_UNLOCK"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 35
    const-string/jumbo v1, "KNOX_EVENT_DISABLE_KEYGUARD"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "KNOX_EVENT_ENABLE_KEYGUARD"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 31
    sput-object v0, Landroid/content/pm/PersonaEvent;->readableStrings:[Ljava/lang/String;

    .line 104
    new-instance v0, Landroid/content/pm/PersonaEvent$1;

    invoke-direct {v0}, Landroid/content/pm/PersonaEvent$1;-><init>()V

    sput-object v0, Landroid/content/pm/PersonaEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Landroid/content/pm/PersonaEvent;->event:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaEvent;->event:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    .line 49
    return-void
.end method

.method public static toReadableString(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 41
    if-ltz p0, :cond_0

    sget-object v0, Landroid/content/pm/PersonaEvent;->readableStrings:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "KNOX_EVENT_INVALID"

    return-object v0

    .line 42
    :cond_1
    sget-object v0, Landroid/content/pm/PersonaEvent;->readableStrings:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->describeContents()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEvent()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Landroid/content/pm/PersonaEvent;->event:I

    return v0
.end method

.method public getIntExtra(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 88
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 89
    .restart local p2    # "defaultValue":I
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0
.end method

.method public getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public putExtra(Ljava/lang/String;I)Landroid/content/pm/PersonaEvent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 74
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    .line 77
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 79
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PersonaEvent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    .line 68
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-object p0
.end method

.method public setEvent(I)Landroid/content/pm/PersonaEvent;
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 59
    iput p1, p0, Landroid/content/pm/PersonaEvent;->event:I

    .line 60
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 99
    iget v0, p0, Landroid/content/pm/PersonaEvent;->event:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 98
    return-void
.end method
