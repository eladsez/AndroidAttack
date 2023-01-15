.class public Lcom/google/android/gms/games/internal/j;
.super Lcom/google/android/gms/common/internal/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/j$d;,
        Lcom/google/android/gms/games/internal/j$e;,
        Lcom/google/android/gms/games/internal/j$a;,
        Lcom/google/android/gms/games/internal/j$b;,
        Lcom/google/android/gms/games/internal/j$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/n<",
        "Lcom/google/android/gms/games/internal/r;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/google/android/gms/internal/d/v;

.field private final f:Ljava/lang/String;

.field private g:Lcom/google/android/gms/games/PlayerEntity;

.field private h:Lcom/google/android/gms/games/GameEntity;

.field private final i:Lcom/google/android/gms/games/internal/d;

.field private j:Z

.field private final k:Landroid/os/Binder;

.field private final l:J

.field private final m:Lcom/google/android/gms/games/b$a;

.field private n:Z

.field private o:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/g;Lcom/google/android/gms/games/b$a;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)V
    .locals 7

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/n;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/g;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)V

    new-instance p2, Lcom/google/android/gms/games/internal/k;

    invoke-direct {p2, p0}, Lcom/google/android/gms/games/internal/k;-><init>(Lcom/google/android/gms/games/internal/j;)V

    iput-object p2, p0, Lcom/google/android/gms/games/internal/j;->e:Lcom/google/android/gms/internal/d/v;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/games/internal/j;->j:Z

    iput-boolean p2, p0, Lcom/google/android/gms/games/internal/j;->n:Z

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/g;->h()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/internal/j;->f:Ljava/lang/String;

    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/games/internal/j;->k:Landroid/os/Binder;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/g;->d()I

    move-result p2

    invoke-static {p0, p2}, Lcom/google/android/gms/games/internal/d;->a(Lcom/google/android/gms/games/internal/j;I)Lcom/google/android/gms/games/internal/d;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/internal/j;->i:Lcom/google/android/gms/games/internal/d;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long p5, p2

    iput-wide p5, p0, Lcom/google/android/gms/games/internal/j;->l:J

    iput-object p4, p0, Lcom/google/android/gms/games/internal/j;->m:Lcom/google/android/gms/games/b$a;

    iget-object p2, p0, Lcom/google/android/gms/games/internal/j;->m:Lcom/google/android/gms/games/b$a;

    iget-boolean p2, p2, Lcom/google/android/gms/games/b$a;->i:Z

    if-nez p2, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/g;->j()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/g;->j()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/j;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private static a(Landroid/os/RemoteException;)V
    .locals 2

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/games/internal/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Lcom/google/android/gms/common/api/internal/c$b;Ljava/lang/SecurityException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/c$b<",
            "TR;>;",
            "Ljava/lang/SecurityException;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p1, 0x4

    invoke-static {p1}, Lcom/google/android/gms/games/c;->b(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/internal/c$b;->b(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;II)Landroid/content/Intent;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/j;->A()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/r;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/internal/r;->a(Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/games/internal/j;->a(Landroid/os/RemoteException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/j;->A()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/r;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/r;->a()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/google/android/gms/games/internal/j;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/j;->o:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/j;->a(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/games/internal/r;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/games/internal/r;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/games/internal/s;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/s;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method protected a(Ljava/util/Set;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/google/android/gms/games/b;->b:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lcom/google/android/gms/games/b;->c:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lcom/google/android/gms/games/b;->e:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    xor-int/lit8 p1, v1, 0x1

    const-string v1, "Cannot have both %s and %s!"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "https://www.googleapis.com/auth/games"

    aput-object v5, v2, v3

    const-string v3, "https://www.googleapis.com/auth/games.firstparty"

    aput-object v3, v2, v4

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/ad;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move p1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v4

    :goto_1
    const-string v5, "Games APIs requires %s function."

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "https://www.googleapis.com/auth/games_lite"

    aput-object v6, v4, v3

    invoke-static {p1, v5, v4}, Lcom/google/android/gms/common/internal/ad;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    sget-object p1, Lcom/google/android/gms/games/b;->c:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-class v0, Lcom/google/android/gms/games/internal/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "show_welcome_popup"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/j;->j:Z

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/j;->j:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/j;->n:Z

    const-string v0, "com.google.android.gms.games.current_player"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/j;->g:Lcom/google/android/gms/games/PlayerEntity;

    const-string v0, "com.google.android.gms.games.current_game"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/GameEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/j;->h:Lcom/google/android/gms/games/GameEntity;

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/n;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final a(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/j;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/j;->A()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/r;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/r;->a(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/games/internal/j;->a(Landroid/os/RemoteException;)V

    :cond_0
    return-void
.end method

.method public synthetic a(Landroid/os/IInterface;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/games/internal/r;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/n;->a(Landroid/os/IInterface;)V

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/j;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/j;->i:Lcom/google/android/gms/games/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/d;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/j;->j:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/j;->m:Lcom/google/android/gms/games/b$a;

    iget-boolean v0, v0, Lcom/google/android/gms/games/b$a;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/j;->m:Lcom/google/android/gms/games/b$a;

    iget-boolean v0, v0, Lcom/google/android/gms/games/b$a;->i:Z

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/games/internal/j$a;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/j;->i:Lcom/google/android/gms/games/internal/d;

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/j$a;-><init>(Lcom/google/android/gms/games/internal/d;)V

    iget-wide v1, p0, Lcom/google/android/gms/games/internal/j;->l:J

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/games/internal/r;->a(Lcom/google/android/gms/games/internal/p;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/games/internal/j;->a(Landroid/os/RemoteException;)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/j;->i:Lcom/google/android/gms/games/internal/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/d;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/c$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/c$b<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/j;->e:Lcom/google/android/gms/internal/d/v;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/d/v;->a()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/j;->A()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/r;

    new-instance v1, Lcom/google/android/gms/games/internal/j$b;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/j$b;-><init>(Lcom/google/android/gms/common/api/internal/c$b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/r;->a(Lcom/google/android/gms/games/internal/n;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/internal/j;->a(Lcom/google/android/gms/common/api/internal/c$b;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/c$b;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/c$b<",
            "Lcom/google/android/gms/games/c/a$a;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/games/internal/j$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/j$c;-><init>(Lcom/google/android/gms/common/api/internal/c$b;)V

    goto :goto_0

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/j;->A()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/r;

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/r;->a(Lcom/google/android/gms/games/internal/n;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/j;->a(Lcom/google/android/gms/common/api/internal/c$b;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/b;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/b;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/j;->j:Z

    return-void
.end method

.method public a(Lcom/google/android/gms/common/internal/f$d;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/j;->g:Lcom/google/android/gms/games/PlayerEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/j;->h:Lcom/google/android/gms/games/GameEntity;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/internal/f$d;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/internal/f$j;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/games/internal/l;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/l;-><init>(Lcom/google/android/gms/games/internal/j;Lcom/google/android/gms/common/internal/f$j;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/j;->a(Lcom/google/android/gms/common/api/internal/c$b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/f$j;->a()V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    return-object v0
.end method

.method public final e()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/j;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/j;->A()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/r;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/r;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/j;->a(Landroid/os/RemoteException;)V

    :cond_0
    return-void
.end method

.method public f()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public g()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/j;->j:Z

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/j;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/j;->A()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/r;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/r;->b()V

    iget-object v1, p0, Lcom/google/android/gms/games/internal/j;->e:Lcom/google/android/gms/internal/d/v;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/d/v;->a()V

    iget-wide v1, p0, Lcom/google/android/gms/games/internal/j;->l:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/internal/r;->a(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "GamesClientImpl"

    const-string v1, "Failed to notify client disconnect."

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/n;->g()V

    return-void
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected k_()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.games.service.START"

    return-object v0
.end method

.method protected y()Landroid/os/Bundle;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/j;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/j;->m:Lcom/google/android/gms/games/b$a;

    invoke-virtual {v1}, Lcom/google/android/gms/games/b$a;->b()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.android.gms.games.key.gamePackageName"

    iget-object v3, p0, Lcom/google/android/gms/games/internal/j;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.google.android.gms.games.key.desiredLocale"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.android.gms.games.key.popupWindowToken"

    new-instance v2, Lcom/google/android/gms/common/internal/BinderWrapper;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/j;->i:Lcom/google/android/gms/games/internal/d;

    iget-object v3, v3, Lcom/google/android/gms/games/internal/d;->b:Lcom/google/android/gms/games/internal/f;

    iget-object v3, v3, Lcom/google/android/gms/games/internal/f;->a:Landroid/os/IBinder;

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "com.google.android.gms.games.key.API_VERSION"

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.google.android.gms.games.key.signInOptions"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/j;->D()Lcom/google/android/gms/common/internal/g;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/c/a/j;->a(Lcom/google/android/gms/common/internal/g;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method
