.class final Lcom/google/android/gms/internal/e/eu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/ComponentName;

.field private final synthetic b:Lcom/google/android/gms/internal/e/es;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/es;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/eu;->b:Lcom/google/android/gms/internal/e/es;

    iput-object p2, p0, Lcom/google/android/gms/internal/e/eu;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/eu;->b:Lcom/google/android/gms/internal/e/es;

    iget-object v0, v0, Lcom/google/android/gms/internal/e/es;->a:Lcom/google/android/gms/internal/e/ee;

    iget-object v1, p0, Lcom/google/android/gms/internal/e/eu;->a:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/e/ee;->a(Lcom/google/android/gms/internal/e/ee;Landroid/content/ComponentName;)V

    return-void
.end method
