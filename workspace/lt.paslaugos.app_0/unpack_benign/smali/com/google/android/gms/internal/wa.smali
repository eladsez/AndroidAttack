.class final Lcom/google/android/gms/internal/wa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:J

.field private synthetic e:Lcom/google/android/gms/internal/vh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/wa;->e:Lcom/google/android/gms/internal/vh;

    iput-object p2, p0, Lcom/google/android/gms/internal/wa;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/wa;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/wa;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/wa;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/wa;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/wa;->e:Lcom/google/android/gms/internal/vh;

    invoke-static {v0}, Lcom/google/android/gms/internal/vh;->a(Lcom/google/android/gms/internal/vh;)Lcom/google/android/gms/internal/vc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->v()Lcom/google/android/gms/internal/wv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/wa;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/wv;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wt;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/wt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wt;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/wa;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/wt;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/wa;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/wt;->b:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/gms/internal/wa;->d:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/wt;->c:J

    iget-object v1, p0, Lcom/google/android/gms/internal/wa;->e:Lcom/google/android/gms/internal/vh;

    invoke-static {v1}, Lcom/google/android/gms/internal/vh;->a(Lcom/google/android/gms/internal/vh;)Lcom/google/android/gms/internal/vc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vc;->v()Lcom/google/android/gms/internal/wv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/wa;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/wv;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wt;)V

    return-void
.end method
