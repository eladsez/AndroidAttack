.class Lnet/youmi/android/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lnet/youmi/android/bm;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Lnet/youmi/android/bm;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/g;->a:Landroid/content/Context;

    iput p2, p0, Lnet/youmi/android/g;->b:I

    iput-object p3, p0, Lnet/youmi/android/g;->c:Ljava/lang/String;

    iput-object p4, p0, Lnet/youmi/android/g;->d:Lnet/youmi/android/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lnet/youmi/android/g;->a:Landroid/content/Context;

    iget v1, p0, Lnet/youmi/android/g;->b:I

    iget-object v2, p0, Lnet/youmi/android/g;->c:Ljava/lang/String;

    iget-object v3, p0, Lnet/youmi/android/g;->d:Lnet/youmi/android/bm;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lnet/youmi/android/bp;->a(Landroid/content/Context;ILjava/lang/String;Lnet/youmi/android/bm;Lnet/youmi/android/u;)Lnet/youmi/android/ae;

    return-void
.end method
