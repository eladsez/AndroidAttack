.class public final Lcom/google/android/gms/internal/e/ah;
.super Lcom/google/android/gms/internal/e/dd;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/ce;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/e/dd;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->a()V

    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ah;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ah;->c:Ljava/lang/Boolean;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "com.google.android.gms"

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/e/ah;->c:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/e/ah;->c:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->c()V

    return-void
.end method

.method public final bridge synthetic d()Lcom/google/android/gms/internal/e/q;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->d()Lcom/google/android/gms/internal/e/q;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/internal/e/x;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->e()Lcom/google/android/gms/internal/e/x;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/internal/e/df;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->f()Lcom/google/android/gms/internal/e/df;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/internal/e/au;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->g()Lcom/google/android/gms/internal/e/au;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/internal/e/ah;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->h()Lcom/google/android/gms/internal/e/ah;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/internal/e/ee;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->i()Lcom/google/android/gms/internal/e/ee;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/google/android/gms/internal/e/ea;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->j()Lcom/google/android/gms/internal/e/ea;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Lcom/google/android/gms/common/util/e;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->l()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/internal/e/av;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->m()Lcom/google/android/gms/internal/e/av;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Lcom/google/android/gms/internal/e/ab;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->n()Lcom/google/android/gms/internal/e/ab;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/internal/e/ax;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->o()Lcom/google/android/gms/internal/e/ax;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/internal/e/fo;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->p()Lcom/google/android/gms/internal/e/fo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/internal/e/by;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->q()Lcom/google/android/gms/internal/e/by;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/internal/e/fd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->r()Lcom/google/android/gms/internal/e/fd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/internal/e/bz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->s()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/internal/e/az;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/internal/e/bk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->u()Lcom/google/android/gms/internal/e/bk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/internal/e/aa;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/e/dd;->v()Lcom/google/android/gms/internal/e/aa;

    move-result-object v0

    return-object v0
.end method

.method protected final w()Z
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v2, v0

    int-to-long v2, v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/e/ah;->a:J

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v3, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ah;->b:Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

.method public final x()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dd;->Q()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/e/ah;->a:J

    return-wide v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dd;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ah;->b:Ljava/lang/String;

    return-object v0
.end method
