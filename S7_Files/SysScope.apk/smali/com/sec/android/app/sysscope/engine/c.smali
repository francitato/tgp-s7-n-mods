.class public Lcom/sec/android/app/sysscope/engine/c;
.super Lcom/sec/android/app/sysscope/engine/h;


# instance fields
.field a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/engine/c;->a:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/sec/android/app/sysscope/service/g;
    .locals 6

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v0, Lcom/sec/android/app/sysscope/service/g;->a:Lcom/sec/android/app/sysscope/service/g;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, v3

    if-ge v0, v1, :cond_3

    new-instance v4, Ljava/io/File;

    aget-object v1, v3, v0

    invoke-direct {v4, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sysscope/engine/c;->a(Ljava/lang/String;)Lcom/sec/android/app/sysscope/service/g;

    move-result-object v1

    sget-object v5, Lcom/sec/android/app/sysscope/service/g;->a:Lcom/sec/android/app/sysscope/service/g;

    if-eq v1, v5, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v5, "filepath"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sysscope/engine/c;->b:Lcom/sec/android/app/sysscope/engine/d;

    invoke-interface {v4, v1}, Lcom/sec/android/app/sysscope/engine/d;->a(Landroid/os/Bundle;)Lcom/sec/android/app/sysscope/service/g;

    move-result-object v1

    sget-object v4, Lcom/sec/android/app/sysscope/service/g;->a:Lcom/sec/android/app/sysscope/service/g;

    if-eq v1, v4, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/sec/android/app/sysscope/service/g;->a:Lcom/sec/android/app/sysscope/service/g;

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/c;->b:Lcom/sec/android/app/sysscope/engine/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/sec/android/app/sysscope/service/g;->a:Lcom/sec/android/app/sysscope/service/g;

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sysscope/engine/c;->a(Ljava/lang/String;)Lcom/sec/android/app/sysscope/service/g;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/sysscope/service/g;->a:Lcom/sec/android/app/sysscope/service/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v3, :cond_2

    :goto_2
    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/c;->b:Lcom/sec/android/app/sysscope/engine/d;

    invoke-interface {v0}, Lcom/sec/android/app/sysscope/engine/d;->e()V

    const-string v0, "FILE_SCAN"

    const-string v2, "Exception generation!!"

    invoke-static {v0, v2}, Lcom/sec/android/app/sysscope/engine/i;->c(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sysscope/service/g;->f:Lcom/sec/android/app/sysscope/service/g;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/c;->b:Lcom/sec/android/app/sysscope/engine/d;

    invoke-interface {v0}, Lcom/sec/android/app/sysscope/engine/d;->e()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/engine/c;->a(Landroid/os/Bundle;)V

    const-string v2, "result"

    invoke-virtual {v1}, Lcom/sec/android/app/sysscope/service/g;->a()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "info"

    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/engine/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public a(Lcom/sec/android/app/sysscope/engine/d;)Lcom/sec/android/app/sysscope/engine/h;
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sysscope/engine/h;->a(Lcom/sec/android/app/sysscope/engine/d;)Lcom/sec/android/app/sysscope/engine/h;

    instance-of v0, p1, Lcom/sec/android/app/sysscope/engine/b;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    :cond_0
    return-object p0

    :cond_1
    check-cast p1, Lcom/sec/android/app/sysscope/engine/b;

    invoke-virtual {p1}, Lcom/sec/android/app/sysscope/engine/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sysscope/engine/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/engine/c;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
