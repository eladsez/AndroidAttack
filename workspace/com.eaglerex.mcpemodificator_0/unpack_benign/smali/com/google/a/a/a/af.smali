.class Lcom/google/a/a/a/af;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/google/a/a/a/z;


# direct methods
.method private constructor <init>(Lcom/google/a/a/a/z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/a/a/af;->a:Lcom/google/a/a/a/z;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/a/a/z;Lcom/google/a/a/a/aa;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/a/a/a/af;-><init>(Lcom/google/a/a/a/z;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/a/a/a/af;->a:Lcom/google/a/a/a/z;

    invoke-static {v0}, Lcom/google/a/a/a/z;->b(Lcom/google/a/a/a/z;)Lcom/google/a/a/a/ad;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/ad;->a:Lcom/google/a/a/a/ad;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/af;->a:Lcom/google/a/a/a/z;

    invoke-static {v0}, Lcom/google/a/a/a/z;->c(Lcom/google/a/a/a/z;)V

    :cond_0
    return-void
.end method
