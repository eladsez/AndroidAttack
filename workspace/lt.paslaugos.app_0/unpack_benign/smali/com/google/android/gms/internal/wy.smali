.class final Lcom/google/android/gms/internal/wy;
.super Lcom/google/android/gms/internal/wt;


# instance fields
.field public d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/wy;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/wt;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/wy;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/wy;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/wy;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/wy;->b:Ljava/lang/String;

    iget-wide v0, p1, Lcom/google/android/gms/internal/wy;->c:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/wy;->c:J

    iget-boolean p1, p1, Lcom/google/android/gms/internal/wy;->d:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/wy;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/wt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/wy;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/wy;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/wy;->c:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/wy;->d:Z

    return-void
.end method
