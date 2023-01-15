.class final Lcom/google/android/gms/internal/ss;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:J

.field private synthetic c:Lcom/google/android/gms/internal/sr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/sr;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ss;->c:Lcom/google/android/gms/internal/sr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ss;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ss;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ss;->c:Lcom/google/android/gms/internal/sr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ss;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ss;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/sr;->a(Lcom/google/android/gms/internal/sr;Ljava/lang/String;J)V

    return-void
.end method
