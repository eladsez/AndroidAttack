.class Lnet/youmi/android/q;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/youmi/android/q;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/q;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lnet/youmi/android/q;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/c;->i:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/c;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/bj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/q;->e:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/q;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/q;->e:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/q;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/c;->i:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/c;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/cp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/q;->e:Ljava/lang/String;

    :cond_1
    sget-object v0, Lnet/youmi/android/q;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    sget-object v0, Lnet/youmi/android/q;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/youmi/android/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lnet/youmi/android/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?da="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/youmi/android/q;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/q;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lnet/youmi/android/q;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/cj;->f:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/aa;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/q;->a:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/q;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/q;->a:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/q;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/cj;->f:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/aa;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/bj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/q;->a:Ljava/lang/String;

    :cond_1
    sget-object v0, Lnet/youmi/android/q;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    sget-object v0, Lnet/youmi/android/q;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/youmi/android/q;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lnet/youmi/android/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/youmi/android/q;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/q;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lnet/youmi/android/q;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/cj;->h:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/aa;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/q;->c:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/q;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/q;->c:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/q;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/cj;->h:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/aa;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/bj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/q;->c:Ljava/lang/String;

    :cond_1
    sget-object v0, Lnet/youmi/android/q;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    sget-object v0, Lnet/youmi/android/q;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/youmi/android/q;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lnet/youmi/android/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static d()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/youmi/android/q;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/q;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lnet/youmi/android/q;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/c;->j:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/ac;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/cj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/q;->b:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/q;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/q;->b:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/q;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/c;->j:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/ac;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/am;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/q;->b:Ljava/lang/String;

    :cond_1
    sget-object v0, Lnet/youmi/android/q;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    sget-object v0, Lnet/youmi/android/q;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/youmi/android/q;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lnet/youmi/android/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static e()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/youmi/android/q;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/q;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lnet/youmi/android/q;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/cj;->c:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/ac;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/an;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/q;->d:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/q;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/q;->d:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/q;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/cj;->c:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/ac;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/cp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/q;->d:Ljava/lang/String;

    :cond_1
    sget-object v0, Lnet/youmi/android/q;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    sget-object v0, Lnet/youmi/android/q;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/youmi/android/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lnet/youmi/android/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
