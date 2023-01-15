.class final Lcom/google/android/gms/internal/e/du;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/android/gms/internal/e/df;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/df;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/du;->b:Lcom/google/android/gms/internal/e/df;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/e/du;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/du;->b:Lcom/google/android/gms/internal/e/df;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/e/du;->a:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/e/df;->a(Lcom/google/android/gms/internal/e/df;Z)V

    return-void
.end method
