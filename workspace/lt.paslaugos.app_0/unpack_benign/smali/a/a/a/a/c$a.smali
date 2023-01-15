.class public La/a/a/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:[La/a/a/a/i;

.field private c:La/a/a/a/a/c/k;

.field private d:Landroid/os/Handler;

.field private e:La/a/a/a/l;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:La/a/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/f<",
            "La/a/a/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, La/a/a/a/c$a;->a:Landroid/content/Context;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public varargs a([La/a/a/a/i;)La/a/a/a/c$a;
    .locals 1

    iget-object v0, p0, La/a/a/a/c$a;->b:[La/a/a/a/i;

    if-nez v0, :cond_0

    iput-object p1, p0, La/a/a/a/c$a;->b:[La/a/a/a/i;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Kits already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()La/a/a/a/c;
    .locals 11

    iget-object v0, p0, La/a/a/a/c$a;->c:La/a/a/a/a/c/k;

    if-nez v0, :cond_0

    invoke-static {}, La/a/a/a/a/c/k;->a()La/a/a/a/a/c/k;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/c$a;->c:La/a/a/a/a/c/k;

    :cond_0
    iget-object v0, p0, La/a/a/a/c$a;->d:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, La/a/a/a/c$a;->d:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, La/a/a/a/c$a;->e:La/a/a/a/l;

    if-nez v0, :cond_3

    iget-boolean v0, p0, La/a/a/a/c$a;->f:Z

    if-eqz v0, :cond_2

    new-instance v0, La/a/a/a/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, La/a/a/a/b;-><init>(I)V

    :goto_0
    iput-object v0, p0, La/a/a/a/c$a;->e:La/a/a/a/l;

    goto :goto_1

    :cond_2
    new-instance v0, La/a/a/a/b;

    invoke-direct {v0}, La/a/a/a/b;-><init>()V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, La/a/a/a/c$a;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, La/a/a/a/c$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/c$a;->h:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, La/a/a/a/c$a;->i:La/a/a/a/f;

    if-nez v0, :cond_5

    sget-object v0, La/a/a/a/f;->d:La/a/a/a/f;

    iput-object v0, p0, La/a/a/a/c$a;->i:La/a/a/a/f;

    :cond_5
    iget-object v0, p0, La/a/a/a/c$a;->b:[La/a/a/a/i;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_2
    move-object v3, v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, La/a/a/a/c$a;->b:[La/a/a/a/i;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, La/a/a/a/c;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    goto :goto_2

    :goto_3
    iget-object v0, p0, La/a/a/a/c$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v9, La/a/a/a/a/b/p;

    iget-object v0, p0, La/a/a/a/c$a;->h:Ljava/lang/String;

    iget-object v1, p0, La/a/a/a/c$a;->g:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v9, v2, v0, v1, v4}, La/a/a/a/a/b/p;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    new-instance v0, La/a/a/a/c;

    iget-object v4, p0, La/a/a/a/c$a;->c:La/a/a/a/a/c/k;

    iget-object v5, p0, La/a/a/a/c$a;->d:Landroid/os/Handler;

    iget-object v6, p0, La/a/a/a/c$a;->e:La/a/a/a/l;

    iget-boolean v7, p0, La/a/a/a/c$a;->f:Z

    iget-object v8, p0, La/a/a/a/c$a;->i:La/a/a/a/f;

    iget-object v1, p0, La/a/a/a/c$a;->a:Landroid/content/Context;

    invoke-static {v1}, La/a/a/a/c;->c(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v10

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, La/a/a/a/c;-><init>(Landroid/content/Context;Ljava/util/Map;La/a/a/a/a/c/k;Landroid/os/Handler;La/a/a/a/l;ZLa/a/a/a/f;La/a/a/a/a/b/p;Landroid/app/Activity;)V

    return-object v0
.end method
