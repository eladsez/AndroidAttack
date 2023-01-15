.class final Lcom/google/android/gms/internal/bdl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bdz;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/ayj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bdk;Lcom/google/android/gms/internal/ayj;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/bdl;->a:Lcom/google/android/gms/internal/ayj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/bea;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/bea;->c:Lcom/google/android/gms/internal/ayn;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/bea;->c:Lcom/google/android/gms/internal/ayn;

    iget-object v0, p0, Lcom/google/android/gms/internal/bdl;->a:Lcom/google/android/gms/internal/ayj;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ayn;->a(Lcom/google/android/gms/internal/ayj;)V

    :cond_0
    return-void
.end method
