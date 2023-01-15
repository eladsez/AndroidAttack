.class final Lcom/google/android/gms/internal/wm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:J

.field private synthetic d:Landroid/os/Bundle;

.field private synthetic e:Z

.field private synthetic f:Z

.field private synthetic g:Z

.field private synthetic h:Ljava/lang/String;

.field private synthetic i:Lcom/google/android/gms/internal/we;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/we;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/wm;->i:Lcom/google/android/gms/internal/we;

    iput-object p2, p0, Lcom/google/android/gms/internal/wm;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/wm;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/wm;->c:J

    iput-object p6, p0, Lcom/google/android/gms/internal/wm;->d:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/wm;->e:Z

    iput-boolean p8, p0, Lcom/google/android/gms/internal/wm;->f:Z

    iput-boolean p9, p0, Lcom/google/android/gms/internal/wm;->g:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/wm;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/wm;->i:Lcom/google/android/gms/internal/we;

    iget-object v1, p0, Lcom/google/android/gms/internal/wm;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/wm;->b:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/wm;->c:J

    iget-object v5, p0, Lcom/google/android/gms/internal/wm;->d:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/wm;->e:Z

    iget-boolean v7, p0, Lcom/google/android/gms/internal/wm;->f:Z

    iget-boolean v8, p0, Lcom/google/android/gms/internal/wm;->g:Z

    iget-object v9, p0, Lcom/google/android/gms/internal/wm;->h:Ljava/lang/String;

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/internal/we;->a(Lcom/google/android/gms/internal/we;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
