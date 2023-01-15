.class final Lcom/google/android/gms/internal/mh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Lcom/google/android/gms/internal/mc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mc;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mh;->c:Lcom/google/android/gms/internal/mc;

    iput p2, p0, Lcom/google/android/gms/internal/mh;->a:I

    iput p3, p0, Lcom/google/android/gms/internal/mh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->c:Lcom/google/android/gms/internal/mc;

    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->a(Lcom/google/android/gms/internal/mc;)Lcom/google/android/gms/internal/ml;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->c:Lcom/google/android/gms/internal/mc;

    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->a(Lcom/google/android/gms/internal/mc;)Lcom/google/android/gms/internal/ml;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/mh;->a:I

    iget v2, p0, Lcom/google/android/gms/internal/mh;->b:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ml;->a(II)V

    :cond_0
    return-void
.end method
