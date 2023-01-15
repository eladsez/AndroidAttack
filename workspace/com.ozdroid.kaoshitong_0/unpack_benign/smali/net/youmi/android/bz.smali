.class Lnet/youmi/android/bz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/ac;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/youmi/android/ac;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bz;->a:Lnet/youmi/android/ac;

    iput-object p2, p0, Lnet/youmi/android/bz;->b:Ljava/lang/String;

    iput-object p3, p0, Lnet/youmi/android/bz;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/bz;)Lnet/youmi/android/ac;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bz;->a:Lnet/youmi/android/ac;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/bz;->a:Lnet/youmi/android/ac;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lnet/youmi/android/bz;->a:Lnet/youmi/android/ac;

    iget-object v2, v2, Lnet/youmi/android/ac;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lnet/youmi/android/ac;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lnet/youmi/android/bz;->a:Lnet/youmi/android/ac;

    iget-object v0, v0, Lnet/youmi/android/ac;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lnet/youmi/android/bz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lnet/youmi/android/bz;->a:Lnet/youmi/android/ac;

    iget-object v0, v0, Lnet/youmi/android/ac;->a:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lnet/youmi/android/bz;->a:Lnet/youmi/android/ac;

    iget-object v0, v0, Lnet/youmi/android/ac;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lnet/youmi/android/bz;->a:Lnet/youmi/android/ac;

    iget-object v0, v0, Lnet/youmi/android/ac;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lnet/youmi/android/bz;->a:Lnet/youmi/android/ac;

    iget-object v0, v0, Lnet/youmi/android/ac;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lnet/youmi/android/bz;->a:Lnet/youmi/android/ac;

    iget-object v0, v0, Lnet/youmi/android/ac;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lnet/youmi/android/bz;->c:Ljava/lang/String;

    new-instance v2, Lnet/youmi/android/ck;

    invoke-direct {v2, p0}, Lnet/youmi/android/ck;-><init>(Lnet/youmi/android/bz;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lnet/youmi/android/bz;->a:Lnet/youmi/android/ac;

    iget-object v0, v0, Lnet/youmi/android/ac;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc7

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
