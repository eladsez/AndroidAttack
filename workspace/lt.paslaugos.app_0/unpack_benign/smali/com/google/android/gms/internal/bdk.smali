.class final Lcom/google/android/gms/internal/bdk;
.super Lcom/google/android/gms/internal/ayo;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/bcz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bcz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bdk;->a:Lcom/google/android/gms/internal/bcz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ayo;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ayj;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bdk;->a:Lcom/google/android/gms/internal/bcz;

    invoke-static {v0}, Lcom/google/android/gms/internal/bcz;->a(Lcom/google/android/gms/internal/bcz;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/bdl;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/bdl;-><init>(Lcom/google/android/gms/internal/bdk;Lcom/google/android/gms/internal/ayj;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
