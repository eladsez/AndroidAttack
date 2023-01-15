.class Lnet/youmi/android/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/aj;->a:Landroid/content/Context;

    iput p2, p0, Lnet/youmi/android/aj;->b:I

    iput-object p3, p0, Lnet/youmi/android/aj;->c:Ljava/lang/String;

    iput p4, p0, Lnet/youmi/android/aj;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/aj;->a:Landroid/content/Context;

    iget v1, p0, Lnet/youmi/android/aj;->b:I

    iget-object v2, p0, Lnet/youmi/android/aj;->c:Ljava/lang/String;

    iget v3, p0, Lnet/youmi/android/aj;->d:I

    invoke-static {v0, v1, v2, v3}, Lnet/youmi/android/bp;->a(Landroid/content/Context;ILjava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
