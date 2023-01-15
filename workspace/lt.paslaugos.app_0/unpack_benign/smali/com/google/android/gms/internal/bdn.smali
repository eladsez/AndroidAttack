.class final Lcom/google/android/gms/internal/bdn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bdz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bdm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/bea;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/bea;->d:Lcom/google/android/gms/internal/auv;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/bea;->d:Lcom/google/android/gms/internal/auv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/auv;->a()V

    :cond_0
    return-void
.end method
