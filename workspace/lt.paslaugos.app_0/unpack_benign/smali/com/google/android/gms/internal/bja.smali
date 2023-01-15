.class final Lcom/google/android/gms/internal/bja;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/gl;

.field private synthetic b:Lcom/google/android/gms/internal/biz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/biz;Lcom/google/android/gms/internal/gl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bja;->b:Lcom/google/android/gms/internal/biz;

    iput-object p2, p0, Lcom/google/android/gms/internal/bja;->a:Lcom/google/android/gms/internal/gl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bja;->b:Lcom/google/android/gms/internal/biz;

    invoke-static {v0}, Lcom/google/android/gms/internal/biz;->a(Lcom/google/android/gms/internal/biz;)Lcom/google/android/gms/internal/bix;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bja;->a:Lcom/google/android/gms/internal/gl;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bix;->b(Lcom/google/android/gms/internal/gl;)V

    return-void
.end method
