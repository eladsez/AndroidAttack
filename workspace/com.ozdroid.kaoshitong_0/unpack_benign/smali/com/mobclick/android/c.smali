.class Lcom/mobclick/android/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/mobclick/android/a;


# direct methods
.method constructor <init>(Lcom/mobclick/android/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclick/android/c;->a:Lcom/mobclick/android/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mobclick/android/c;->a:Lcom/mobclick/android/a;

    invoke-static {v0}, Lcom/mobclick/android/a;->d(Lcom/mobclick/android/a;)I

    move-result v0

    sget v1, Lcom/mobclick/android/d;->c:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mobclick/android/c;->a:Lcom/mobclick/android/a;

    invoke-static {v0}, Lcom/mobclick/android/a;->e(Lcom/mobclick/android/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclick/android/c;->a:Lcom/mobclick/android/a;

    invoke-static {v0}, Lcom/mobclick/android/a;->f(Lcom/mobclick/android/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mobclick/android/c;->a:Lcom/mobclick/android/a;

    invoke-static {v0}, Lcom/mobclick/android/a;->g(Lcom/mobclick/android/a;)V

    goto :goto_0
.end method
