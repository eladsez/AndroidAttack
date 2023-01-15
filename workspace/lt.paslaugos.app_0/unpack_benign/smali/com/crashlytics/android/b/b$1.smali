.class Lcom/crashlytics/android/b/b$1;
.super La/a/a/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/b/b;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/b/b$1;->a:Lcom/crashlytics/android/b/b;

    invoke-direct {p0}, La/a/a/a/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Lcom/crashlytics/android/b/b$1;->a:Lcom/crashlytics/android/b/b;

    invoke-virtual {p1}, Lcom/crashlytics/android/b/b;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/crashlytics/android/b/b$1;->a:Lcom/crashlytics/android/b/b;

    invoke-static {p1}, Lcom/crashlytics/android/b/b;->a(Lcom/crashlytics/android/b/b;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/crashlytics/android/b/b$1$1;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/b/b$1$1;-><init>(Lcom/crashlytics/android/b/b$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method
