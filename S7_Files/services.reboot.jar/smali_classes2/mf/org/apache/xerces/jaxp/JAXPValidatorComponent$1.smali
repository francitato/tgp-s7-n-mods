.class Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$1;
.super Lmf/javax/xml/validation/TypeInfoProvider;
.source "JAXPValidatorComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0}, Lmf/javax/xml/validation/TypeInfoProvider;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getAttributeTypeInfo(I)Lmf/org/w3c/dom/TypeInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 555
    return-object v0
.end method

.method public getAttributeTypeInfo(Ljava/lang/String;)Lmf/org/w3c/dom/TypeInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 558
    return-object v0
.end method

.method public getAttributeTypeInfo(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/TypeInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 561
    return-object v0
.end method

.method public getElementTypeInfo()Lmf/org/w3c/dom/TypeInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 552
    return-object v0
.end method

.method public isIdAttribute(I)Z
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method public isSpecified(I)Z
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    return v0
.end method
