.class final Lcom/google/android/gms/internal/mv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/ml;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mu;Lcom/google/android/gms/internal/ml;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/mv;->a:Lcom/google/android/gms/internal/ml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mv;->a:Lcom/google/android/gms/internal/ml;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ml;->g()V

    return-void
.end method
