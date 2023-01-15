.class final Lcom/google/android/gms/common/api/internal/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/aai;

.field private synthetic b:Lcom/google/android/gms/common/api/internal/ab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ab;Lcom/google/android/gms/internal/aai;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ad;->b:Lcom/google/android/gms/common/api/internal/ab;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/ad;->a:Lcom/google/android/gms/internal/aai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->b:Lcom/google/android/gms/common/api/internal/ab;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ad;->a:Lcom/google/android/gms/internal/aai;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/ab;->a(Lcom/google/android/gms/common/api/internal/ab;Lcom/google/android/gms/internal/aai;)V

    return-void
.end method
