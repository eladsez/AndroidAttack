.class final Lcom/google/android/gms/internal/nx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/google/android/gms/internal/fx;

.field private synthetic c:I

.field private synthetic d:Lcom/google/android/gms/internal/nv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nv;Landroid/view/View;Lcom/google/android/gms/internal/fx;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nx;->d:Lcom/google/android/gms/internal/nv;

    iput-object p2, p0, Lcom/google/android/gms/internal/nx;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/nx;->b:Lcom/google/android/gms/internal/fx;

    iput p4, p0, Lcom/google/android/gms/internal/nx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/nx;->d:Lcom/google/android/gms/internal/nv;

    iget-object v1, p0, Lcom/google/android/gms/internal/nx;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/nx;->b:Lcom/google/android/gms/internal/fx;

    iget v3, p0, Lcom/google/android/gms/internal/nx;->c:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/nv;->a(Lcom/google/android/gms/internal/nv;Landroid/view/View;Lcom/google/android/gms/internal/fx;I)V

    return-void
.end method
