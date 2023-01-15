.class final Lcom/google/android/gms/internal/aiu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/google/android/gms/internal/aiq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aiq;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aiu;->b:Lcom/google/android/gms/internal/aiq;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/aiu;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aiu;->b:Lcom/google/android/gms/internal/aiq;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/aiu;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aiq;->b(Z)V

    return-void
.end method
