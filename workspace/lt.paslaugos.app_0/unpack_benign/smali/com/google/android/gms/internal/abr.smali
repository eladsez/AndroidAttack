.class public final Lcom/google/android/gms/internal/abr;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/gms/internal/afd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/afd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/abr;->a:Lcom/google/android/gms/internal/afd;

    return-void
.end method

.method static final a(Lcom/google/android/gms/internal/afd;)Lcom/google/android/gms/internal/abr;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/afd;->c()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/abr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/abr;-><init>(Lcom/google/android/gms/internal/afd;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/afd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/abr;->a:Lcom/google/android/gms/internal/afd;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/abr;->a:Lcom/google/android/gms/internal/afd;

    invoke-static {}, Lcom/google/android/gms/internal/aff;->a()Lcom/google/android/gms/internal/aff$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/afd;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/aff$a;->a(I)Lcom/google/android/gms/internal/aff$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/afd;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/afd$b;

    invoke-static {}, Lcom/google/android/gms/internal/aff$b;->a()Lcom/google/android/gms/internal/aff$b$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/afd$b;->b()Lcom/google/android/gms/internal/aeu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/aeu;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/aff$b$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/aff$b$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/afd$b;->c()Lcom/google/android/gms/internal/aex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/aff$b$a;->a(Lcom/google/android/gms/internal/aex;)Lcom/google/android/gms/internal/aff$b$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/afd$b;->f()Lcom/google/android/gms/internal/afq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/aff$b$a;->a(Lcom/google/android/gms/internal/afq;)Lcom/google/android/gms/internal/aff$b$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/afd$b;->e()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/aff$b$a;->a(I)Lcom/google/android/gms/internal/aff$b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aky$a;->d()Lcom/google/android/gms/internal/aky;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/aky;

    check-cast v2, Lcom/google/android/gms/internal/aff$b;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/aff$a;->a(Lcom/google/android/gms/internal/aff$b;)Lcom/google/android/gms/internal/aff$a;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/aky$a;->d()Lcom/google/android/gms/internal/aky;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aky;

    check-cast v0, Lcom/google/android/gms/internal/aff;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aky;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
