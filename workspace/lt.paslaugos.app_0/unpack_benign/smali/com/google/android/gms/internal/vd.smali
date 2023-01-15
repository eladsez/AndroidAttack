.class final Lcom/google/android/gms/internal/vd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/wd;

.field private synthetic b:Lcom/google/android/gms/internal/vc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vc;Lcom/google/android/gms/internal/wd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/vd;->b:Lcom/google/android/gms/internal/vc;

    iput-object p2, p0, Lcom/google/android/gms/internal/vd;->a:Lcom/google/android/gms/internal/wd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vd;->b:Lcom/google/android/gms/internal/vc;

    iget-object v1, p0, Lcom/google/android/gms/internal/vd;->a:Lcom/google/android/gms/internal/wd;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/vc;Lcom/google/android/gms/internal/wd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vd;->b:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->c()V

    return-void
.end method
