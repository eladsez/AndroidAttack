.class Lnet/youmi/android/ck;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lnet/youmi/android/bz;


# direct methods
.method constructor <init>(Lnet/youmi/android/bz;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ck;->a:Lnet/youmi/android/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ck;->a:Lnet/youmi/android/bz;

    invoke-static {v0}, Lnet/youmi/android/bz;->a(Lnet/youmi/android/bz;)Lnet/youmi/android/ac;

    move-result-object v0

    iget-object v0, v0, Lnet/youmi/android/ac;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    iget-object v0, p0, Lnet/youmi/android/ck;->a:Lnet/youmi/android/bz;

    invoke-static {v0}, Lnet/youmi/android/bz;->a(Lnet/youmi/android/bz;)Lnet/youmi/android/ac;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/youmi/android/ac;->a(Lnet/youmi/android/ac;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
