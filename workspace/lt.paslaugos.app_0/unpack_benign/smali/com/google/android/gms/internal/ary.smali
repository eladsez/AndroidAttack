.class final Lcom/google/android/gms/internal/ary;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/arb;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/arw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/arw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ary;->a:Lcom/google/android/gms/internal/arw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ary;->a:Lcom/google/android/gms/internal/arw;

    invoke-static {p1}, Lcom/google/android/gms/internal/arw;->b(Lcom/google/android/gms/internal/arw;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ary;->a:Lcom/google/android/gms/internal/arw;

    invoke-static {p1}, Lcom/google/android/gms/internal/arw;->a(Lcom/google/android/gms/internal/arw;)V

    return-void
.end method
