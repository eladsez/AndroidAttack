.class final Lcom/google/android/gms/internal/e/ed;
.super Lcom/google/android/gms/internal/e/dz;


# instance fields
.field public d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/e/ed;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/e/dz;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/e/ed;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ed;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/e/ed;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ed;->b:Ljava/lang/String;

    iget-wide v0, p1, Lcom/google/android/gms/internal/e/ed;->c:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/e/ed;->c:J

    iget-boolean p1, p1, Lcom/google/android/gms/internal/e/ed;->d:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/e/ed;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/e/dz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/e/ed;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/e/ed;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/e/ed;->c:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/e/ed;->d:Z

    return-void
.end method
