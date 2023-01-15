.class Lnet/youmi/android/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/os/Handler;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/aq;->a:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/aq;->b:Ljava/lang/String;

    iput-object p3, p0, Lnet/youmi/android/aq;->c:Landroid/os/Handler;

    iput-object p4, p0, Lnet/youmi/android/aq;->d:Ljava/lang/String;

    iput p5, p0, Lnet/youmi/android/aq;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/aq;->a:Landroid/content/Context;

    iget-object v1, p0, Lnet/youmi/android/aq;->b:Ljava/lang/String;

    iget-object v2, p0, Lnet/youmi/android/aq;->c:Landroid/os/Handler;

    iget-object v3, p0, Lnet/youmi/android/aq;->d:Ljava/lang/String;

    iget v4, p0, Lnet/youmi/android/aq;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lnet/youmi/android/an;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
