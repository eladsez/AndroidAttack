.class public Lcom/google/android/gms/common/api/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/common/api/internal/g;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/common/api/internal/an;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/an<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Looper;

.field private final g:I

.field private final h:Lcom/google/android/gms/common/api/f;

.field private final i:Lcom/google/android/gms/common/api/internal/af;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/e$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/e;->c:Lcom/google/android/gms/common/api/a;

    iput-object p3, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    iget-object p1, p4, Lcom/google/android/gms/common/api/e$a;->c:Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->f:Landroid/os/Looper;

    iget-object p1, p0, Lcom/google/android/gms/common/api/e;->c:Lcom/google/android/gms/common/api/a;

    iget-object p2, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    invoke-static {p1, p2}, Lcom/google/android/gms/common/api/internal/an;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/internal/an;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->e:Lcom/google/android/gms/common/api/internal/an;

    new-instance p1, Lcom/google/android/gms/common/api/internal/p;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/p;-><init>(Lcom/google/android/gms/common/api/e;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->h:Lcom/google/android/gms/common/api/f;

    iget-object p1, p0, Lcom/google/android/gms/common/api/e;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/g;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->a:Lcom/google/android/gms/common/api/internal/g;

    iget-object p1, p0, Lcom/google/android/gms/common/api/e;->a:Lcom/google/android/gms/common/api/internal/g;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/g;->a()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/api/e;->g:I

    iget-object p1, p4, Lcom/google/android/gms/common/api/e$a;->b:Lcom/google/android/gms/common/api/internal/af;

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->i:Lcom/google/android/gms/common/api/internal/af;

    iget-object p1, p0, Lcom/google/android/gms/common/api/e;->a:Lcom/google/android/gms/common/api/internal/g;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/internal/af;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/internal/af;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/m;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/m;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/m;->a(Lcom/google/android/gms/common/api/internal/af;)Lcom/google/android/gms/common/api/m;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/common/api/m;->a()Lcom/google/android/gms/common/api/e$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/e$a;)V

    return-void
.end method

.method private final a(ILcom/google/android/gms/common/api/internal/ar;)Lcom/google/android/gms/common/api/internal/ar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/ar<",
            "+",
            "Lcom/google/android/gms/common/api/j;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->a:Lcom/google/android/gms/common/api/internal/g;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/e;ILcom/google/android/gms/common/api/internal/ar;)V

    return-object p2
.end method

.method private final e()Lcom/google/android/gms/common/internal/az;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/az;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/az;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    instance-of v1, v1, Lcom/google/android/gms/common/api/a$a$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    check-cast v1, Lcom/google/android/gms/common/api/a$a$b;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$a$b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->d()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    instance-of v1, v1, Lcom/google/android/gms/common/api/a$a$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    check-cast v1, Lcom/google/android/gms/common/api/a$a$a;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$a$a;->a()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/az;->a(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/az;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    instance-of v1, v1, Lcom/google/android/gms/common/api/a$a$b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    check-cast v1, Lcom/google/android/gms/common/api/a$a$b;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$a$b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->j()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/az;->a(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/az;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/i;)Lcom/google/android/gms/common/api/a$f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/internal/i<",
            "TO;>;)",
            "Lcom/google/android/gms/common/api/a$f;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/e;->e()Lcom/google/android/gms/common/internal/az;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/az;->a(Ljava/lang/String;)Lcom/google/android/gms/common/internal/az;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->b:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/az;->b(Ljava/lang/String;)Lcom/google/android/gms/common/internal/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/az;->a()Lcom/google/android/gms/common/internal/ay;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->c:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/a$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/e;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/common/api/a$b;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ay;Ljava/lang/Object;Lcom/google/android/gms/common/api/f$a;Lcom/google/android/gms/common/api/f$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/ab;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/internal/ab;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/e;->e()Lcom/google/android/gms/common/internal/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/az;->a()Lcom/google/android/gms/common/internal/ay;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/common/api/internal/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ay;)V

    return-object v0
.end method

.method public final a()Lcom/google/android/gms/common/api/internal/an;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/an<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->e:Lcom/google/android/gms/common/api/internal/an;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/ar;)Lcom/google/android/gms/common/api/internal/ar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/ar<",
            "+",
            "Lcom/google/android/gms/common/api/j;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/e;->a(ILcom/google/android/gms/common/api/internal/ar;)Lcom/google/android/gms/common/api/internal/ar;

    move-result-object p1

    return-object p1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/e;->g:I

    return v0
.end method

.method public final c()Lcom/google/android/gms/common/api/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->h:Lcom/google/android/gms/common/api/f;

    return-object v0
.end method

.method public final d()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->f:Landroid/os/Looper;

    return-object v0
.end method
