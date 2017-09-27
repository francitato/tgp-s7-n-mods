.class final Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;
.super Ljava/lang/Object;
.source "SchemaNamespaceSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SchemaRootContext"
.end annotation


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field fDOMContextBuilt:Z

.field fNamespace:[Ljava/lang/String;

.field fNamespaceSize:I

.field private final fSchemaRoot:Lmf/org/w3c/dom/Element;

.field private final fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method constructor <init>(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 161
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    .line 164
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    .line 170
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fDOMContextBuilt:Z

    .line 179
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 182
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSchemaRoot:Lmf/org/w3c/dom/Element;

    .line 183
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 184
    return-void
.end method

.method private declarePrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 233
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 240
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    aput-object p1, v0, v1

    .line 241
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    aput-object p2, v0, v1

    .line 242
    return-void

    .line 234
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 235
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    goto :goto_0
.end method

.method private fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 248
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    .line 249
    if-nez v0, :cond_1

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 250
    if-nez v2, :cond_2

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 251
    if-nez v3, :cond_3

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 252
    if-nez v4, :cond_4

    :cond_0
    move-object v0, v1

    :goto_3
    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 253
    return-void

    .line 249
    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v5, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 251
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 252
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method fillNamespaceContext()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSchemaRoot:Lmf/org/w3c/dom/Element;

    if-nez v0, :cond_1

    .line 218
    :cond_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSchemaRoot:Lmf/org/w3c/dom/Element;

    invoke-interface {v0}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v3, v0

    .line 189
    :goto_0
    if-eqz v3, :cond_0

    .line 190
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_3

    .line 215
    :cond_2
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 191
    :cond_3
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 192
    invoke-interface {v6}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    move v4, v5

    .line 193
    :goto_1
    if-ge v4, v7, :cond_2

    .line 194
    invoke-interface {v6, v4}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    .line 195
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 196
    if-eqz v1, :cond_4

    .line 199
    :goto_2
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-direct {p0, v8, v0}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V

    .line 203
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v0, v8, :cond_5

    .line 193
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 197
    :cond_4
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    .line 205
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v0, v8, :cond_6

    .line 209
    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v2

    :goto_4
    invoke-direct {p0, v8, v0}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 206
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v2

    :goto_5
    invoke-direct {p0, v8, v0}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 209
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 222
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    if-ge v0, v1, :cond_1

    .line 223
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_0

    .line 222
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 224
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 228
    return-object v0
.end method
