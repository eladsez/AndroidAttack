.class final Lcom/mobclick/android/i;
.super Ljava/lang/Thread;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mobclick/android/i;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/mobclick/android/i;->b:Landroid/content/Context;

    iput p2, p0, Lcom/mobclick/android/i;->c:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/mobclick/android/i;->b:Landroid/content/Context;

    iput p3, p0, Lcom/mobclick/android/i;->c:I

    iput-object p2, p0, Lcom/mobclick/android/i;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/mobclick/android/i;->b:Landroid/content/Context;

    iput p4, p0, Lcom/mobclick/android/i;->c:I

    iput-object p2, p0, Lcom/mobclick/android/i;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobclick/android/i;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/mobclick/android/i;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v1, p0, Lcom/mobclick/android/i;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/mobclick/android/i;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "MobclickAgent"

    const-string v2, "unexpected null context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_4
    invoke-static {}, Lcom/mobclick/android/MobclickAgent;->a()Lcom/mobclick/android/MobclickAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/mobclick/android/i;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mobclick/android/MobclickAgent;->a(Lcom/mobclick/android/MobclickAgent;Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_1
    :try_start_5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    const-string v0, "MobclickAgent"

    const-string v1, "Exception occurred when recording usage."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_7
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/mobclick/android/i;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/mobclick/android/MobclickAgent;->a()Lcom/mobclick/android/MobclickAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/mobclick/android/i;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobclick/android/i;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/mobclick/android/i;->e:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/mobclick/android/MobclickAgent;->a(Lcom/mobclick/android/MobclickAgent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/mobclick/android/i;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/mobclick/android/MobclickAgent;->a()Lcom/mobclick/android/MobclickAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/mobclick/android/i;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobclick/android/i;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/mobclick/android/MobclickAgent;->a(Lcom/mobclick/android/MobclickAgent;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method
