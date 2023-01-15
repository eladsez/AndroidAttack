.class Lnet/youmi/android/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/f;->a:Landroid/content/Context;

    iput p2, p0, Lnet/youmi/android/f;->b:I

    iput-object p3, p0, Lnet/youmi/android/f;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/youmi/android/f;->a:Landroid/content/Context;

    iget v1, p0, Lnet/youmi/android/f;->b:I

    iget-object v2, p0, Lnet/youmi/android/f;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/youmi/android/AdManager;->a(Landroid/content/Context;ILjava/lang/String;)Z

    return-void
.end method
