.class public final Lcom/google/android/gms/internal/iv;
.super Lcom/google/android/gms/internal/ij;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/qa;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ij;-><init>(Lcom/google/android/gms/internal/qa;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/iv;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/bep;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/iv;

    new-instance v1, Lcom/google/android/gms/internal/qb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/qb;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/iv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/qa;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "admob_volley"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/internal/bep;

    new-instance v2, Lcom/google/android/gms/internal/lm;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/lm;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/bep;-><init>(Lcom/google/android/gms/internal/qj;Lcom/google/android/gms/internal/avq;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bep;->a()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ban;)Lcom/google/android/gms/internal/ayl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ban<",
            "*>;)",
            "Lcom/google/android/gms/internal/ayl;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ban;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ban;->c()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ban;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/axt;->cz:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/aus;->a()Lcom/google/android/gms/internal/jz;

    iget-object v0, p0, Lcom/google/android/gms/internal/iv;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/jz;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/bcs;

    iget-object v1, p0, Lcom/google/android/gms/internal/iv;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bcs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bcs;->a(Lcom/google/android/gms/internal/ban;)Lcom/google/android/gms/internal/ayl;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Got gmscore asset response: "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ban;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, "Failed to get gmscore asset response: "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ban;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ij;->a(Lcom/google/android/gms/internal/ban;)Lcom/google/android/gms/internal/ayl;

    move-result-object p1

    return-object p1
.end method
