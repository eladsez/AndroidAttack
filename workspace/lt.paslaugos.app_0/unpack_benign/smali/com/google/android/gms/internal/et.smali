.class final Lcom/google/android/gms/internal/et;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/bfz;

.field private synthetic b:Lcom/google/android/gms/internal/aud;

.field private synthetic c:Lcom/google/android/gms/internal/ez;

.field private synthetic d:Lcom/google/android/gms/internal/er;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/er;Lcom/google/android/gms/internal/bfz;Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/ez;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/et;->d:Lcom/google/android/gms/internal/er;

    iput-object p2, p0, Lcom/google/android/gms/internal/et;->a:Lcom/google/android/gms/internal/bfz;

    iput-object p3, p0, Lcom/google/android/gms/internal/et;->b:Lcom/google/android/gms/internal/aud;

    iput-object p4, p0, Lcom/google/android/gms/internal/et;->c:Lcom/google/android/gms/internal/ez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/et;->a:Lcom/google/android/gms/internal/bfz;

    iget-object v1, p0, Lcom/google/android/gms/internal/et;->d:Lcom/google/android/gms/internal/er;

    invoke-static {v1}, Lcom/google/android/gms/internal/er;->a(Lcom/google/android/gms/internal/er;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/b/c;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/et;->b:Lcom/google/android/gms/internal/aud;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/et;->c:Lcom/google/android/gms/internal/ez;

    iget-object v5, p0, Lcom/google/android/gms/internal/et;->d:Lcom/google/android/gms/internal/er;

    invoke-static {v5}, Lcom/google/android/gms/internal/er;->b(Lcom/google/android/gms/internal/er;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/bfz;->a(Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/aud;Ljava/lang/String;Lcom/google/android/gms/internal/ff;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Fail to initialize adapter "

    iget-object v2, p0, Lcom/google/android/gms/internal/et;->d:Lcom/google/android/gms/internal/er;

    iget-object v2, v2, Lcom/google/android/gms/internal/er;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/et;->d:Lcom/google/android/gms/internal/er;

    iget-object v1, p0, Lcom/google/android/gms/internal/et;->d:Lcom/google/android/gms/internal/er;

    iget-object v1, v1, Lcom/google/android/gms/internal/er;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/er;->a(Ljava/lang/String;I)V

    return-void
.end method