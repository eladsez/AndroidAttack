.class final Lcom/google/android/gms/internal/ny;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/fx;

.field private synthetic b:Lcom/google/android/gms/internal/nv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nv;Lcom/google/android/gms/internal/fx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ny;->b:Lcom/google/android/gms/internal/nv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ny;->a:Lcom/google/android/gms/internal/fx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ny;->b:Lcom/google/android/gms/internal/nv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ny;->a:Lcom/google/android/gms/internal/fx;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Lcom/google/android/gms/internal/nv;Landroid/view/View;Lcom/google/android/gms/internal/fx;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method