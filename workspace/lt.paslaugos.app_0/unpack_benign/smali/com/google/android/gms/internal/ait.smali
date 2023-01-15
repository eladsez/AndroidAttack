.class final Lcom/google/android/gms/internal/ait;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/ajn;

.field private synthetic b:I

.field private synthetic c:Lcom/google/android/gms/internal/aiq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/ajn;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ait;->c:Lcom/google/android/gms/internal/aiq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ait;->a:Lcom/google/android/gms/internal/ajn;

    iput p3, p0, Lcom/google/android/gms/internal/ait;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ait;->c:Lcom/google/android/gms/internal/aiq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ait;->a:Lcom/google/android/gms/internal/ajn;

    iget v2, p0, Lcom/google/android/gms/internal/ait;->b:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/aiq;->a(Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/ajn;I)V

    return-void
.end method
