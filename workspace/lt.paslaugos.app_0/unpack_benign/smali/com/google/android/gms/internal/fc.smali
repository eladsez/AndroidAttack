.class final synthetic Lcom/google/android/gms/internal/fc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/fb;

.field private final b:Lcom/google/android/gms/internal/gl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fb;Lcom/google/android/gms/internal/gl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fc;->a:Lcom/google/android/gms/internal/fb;

    iput-object p2, p0, Lcom/google/android/gms/internal/fc;->b:Lcom/google/android/gms/internal/gl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fc;->a:Lcom/google/android/gms/internal/fb;

    iget-object v1, p0, Lcom/google/android/gms/internal/fc;->b:Lcom/google/android/gms/internal/gl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fb;->b(Lcom/google/android/gms/internal/gl;)V

    return-void
.end method
