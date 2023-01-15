.class Lnet/youmi/android/bv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/ac;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/youmi/android/ac;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bv;->a:Lnet/youmi/android/ac;

    iput p2, p0, Lnet/youmi/android/bv;->b:I

    iput-object p3, p0, Lnet/youmi/android/bv;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/bv;->a:Lnet/youmi/android/ac;

    iget-object v0, v0, Lnet/youmi/android/ac;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    iget v1, p0, Lnet/youmi/android/bv;->b:I

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lnet/youmi/android/bv;->a:Lnet/youmi/android/ac;

    iget-object v1, v1, Lnet/youmi/android/ac;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lnet/youmi/android/bv;->a:Lnet/youmi/android/ac;

    iget-object v0, v0, Lnet/youmi/android/ac;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lnet/youmi/android/bv;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x57

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
