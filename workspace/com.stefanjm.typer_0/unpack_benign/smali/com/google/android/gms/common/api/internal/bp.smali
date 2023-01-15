.class public final Lcom/google/android/gms/common/api/internal/bp;
.super Lcom/google/android/gms/c/a/c;

# interfaces
.implements Lcom/google/android/gms/common/api/f$b;
.implements Lcom/google/android/gms/common/api/f$c;


# static fields
.field private static a:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lcom/google/android/gms/c/b;",
            "Lcom/google/android/gms/c/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lcom/google/android/gms/c/b;",
            "Lcom/google/android/gms/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/common/internal/g;

.field private g:Lcom/google/android/gms/c/b;

.field private h:Lcom/google/android/gms/common/api/internal/bt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/c/a;->c:Lcom/google/android/gms/common/api/a$a;

    sput-object v0, Lcom/google/android/gms/common/api/internal/bp;->a:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/g;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/bp;->a:Lcom/google/android/gms/common/api/a$a;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/internal/bp;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/g;Lcom/google/android/gms/common/api/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/g;Lcom/google/android/gms/common/api/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/common/internal/g;",
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lcom/google/android/gms/c/b;",
            "Lcom/google/android/gms/c/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/c/a/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bp;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/bp;->c:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/g;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bp;->f:Lcom/google/android/gms/common/internal/g;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/g;->e()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bp;->e:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/bp;->d:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/bp;)Lcom/google/android/gms/common/api/internal/bt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/bp;->h:Lcom/google/android/gms/common/api/internal/bt;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/bp;Lcom/google/android/gms/c/a/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/bp;->b(Lcom/google/android/gms/c/a/m;)V

    return-void
.end method

.method private final b(Lcom/google/android/gms/c/a/m;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/c/a/m;->a()Lcom/google/android/gms/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/c/a/m;->b()Lcom/google/android/gms/common/internal/ag;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ag;->b()Lcom/google/android/gms/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->b()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "SignInCoordinator"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bp;->h:Lcom/google/android/gms/common/api/internal/bt;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/bt;->b(Lcom/google/android/gms/common/b;)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bp;->g:Lcom/google/android/gms/c/b;

    invoke-interface {p1}, Lcom/google/android/gms/c/b;->g()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bp;->h:Lcom/google/android/gms/common/api/internal/bt;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ag;->a()Lcom/google/android/gms/common/internal/u;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bp;->e:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/bt;->a(Lcom/google/android/gms/common/internal/u;Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/c/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bp;->g:Lcom/google/android/gms/c/b;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bp;->g:Lcom/google/android/gms/c/b;

    invoke-interface {p1}, Lcom/google/android/gms/c/b;->g()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bp;->g:Lcom/google/android/gms/c/b;

    invoke-interface {p1, p0}, Lcom/google/android/gms/c/b;->a(Lcom/google/android/gms/c/a/f;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/c/a/m;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bp;->c:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/bs;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/bs;-><init>(Lcom/google/android/gms/common/api/internal/bp;Lcom/google/android/gms/c/a/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/bt;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bp;->g:Lcom/google/android/gms/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bp;->g:Lcom/google/android/gms/c/b;

    invoke-interface {v0}, Lcom/google/android/gms/c/b;->g()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bp;->f:Lcom/google/android/gms/common/internal/g;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/g;->a(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bp;->d:Lcom/google/android/gms/common/api/a$a;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/bp;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bp;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/bp;->f:Lcom/google/android/gms/common/internal/g;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bp;->f:Lcom/google/android/gms/common/internal/g;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/g;->k()Lcom/google/android/gms/c/c;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/g;Ljava/lang/Object;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/b;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/bp;->g:Lcom/google/android/gms/c/b;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bp;->h:Lcom/google/android/gms/common/api/internal/bt;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bp;->e:Ljava/util/Set;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bp;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bp;->g:Lcom/google/android/gms/c/b;

    invoke-interface {p1}, Lcom/google/android/gms/c/b;->o()V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bp;->c:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/api/internal/bq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/bq;-><init>(Lcom/google/android/gms/common/api/internal/bp;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bp;->h:Lcom/google/android/gms/common/api/internal/bt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/bt;->b(Lcom/google/android/gms/common/b;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bp;->g:Lcom/google/android/gms/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bp;->g:Lcom/google/android/gms/c/b;

    invoke-interface {v0}, Lcom/google/android/gms/c/b;->g()V

    :cond_0
    return-void
.end method
