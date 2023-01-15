.class final Lcom/google/android/gms/internal/bdw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bdz;


# instance fields
.field private synthetic a:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bdp;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/bdw;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/bea;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/bea;->e:Lcom/google/android/gms/internal/ej;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/bea;->e:Lcom/google/android/gms/internal/ej;

    iget v0, p0, Lcom/google/android/gms/internal/bdw;->a:I

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ej;->a(I)V

    :cond_0
    return-void
.end method
