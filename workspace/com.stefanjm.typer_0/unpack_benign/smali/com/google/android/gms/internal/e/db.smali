.class final Lcom/google/android/gms/internal/e/db;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:J

.field private final synthetic e:Lcom/google/android/gms/internal/e/cj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/cj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/db;->e:Lcom/google/android/gms/internal/e/cj;

    iput-object p2, p0, Lcom/google/android/gms/internal/e/db;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/e/db;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/e/db;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/e/db;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/e/db;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/e/db;->e:Lcom/google/android/gms/internal/e/cj;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/cj;->a(Lcom/google/android/gms/internal/e/cj;)Lcom/google/android/gms/internal/e/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->v()Lcom/google/android/gms/internal/e/ea;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/db;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/e/ea;->a(Ljava/lang/String;Lcom/google/android/gms/internal/e/dz;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/e/dz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/e/dz;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/e/db;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/e/dz;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/e/db;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/e/dz;->b:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/gms/internal/e/db;->d:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/e/dz;->c:J

    iget-object v1, p0, Lcom/google/android/gms/internal/e/db;->e:Lcom/google/android/gms/internal/e/cj;

    invoke-static {v1}, Lcom/google/android/gms/internal/e/cj;->a(Lcom/google/android/gms/internal/e/cj;)Lcom/google/android/gms/internal/e/ce;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ce;->v()Lcom/google/android/gms/internal/e/ea;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/e/db;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/e/ea;->a(Ljava/lang/String;Lcom/google/android/gms/internal/e/dz;)V

    return-void
.end method
