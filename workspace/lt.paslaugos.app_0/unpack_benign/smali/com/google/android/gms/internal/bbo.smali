.class final Lcom/google/android/gms/internal/bbo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:J

.field private synthetic c:Lcom/google/android/gms/internal/ban;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ban;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bbo;->c:Lcom/google/android/gms/internal/ban;

    iput-object p2, p0, Lcom/google/android/gms/internal/bbo;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/bbo;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bbo;->c:Lcom/google/android/gms/internal/ban;

    invoke-static {v0}, Lcom/google/android/gms/internal/ban;->a(Lcom/google/android/gms/internal/ban;)Lcom/google/android/gms/internal/eg$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bbo;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/bbo;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/eg$a;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bbo;->c:Lcom/google/android/gms/internal/ban;

    invoke-static {v0}, Lcom/google/android/gms/internal/ban;->a(Lcom/google/android/gms/internal/ban;)Lcom/google/android/gms/internal/eg$a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/eg$a;->a(Ljava/lang/String;)V

    return-void
.end method
