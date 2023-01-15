.class public final Lcom/google/android/gms/internal/asw;
.super Lcom/google/android/gms/internal/anv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/anv<",
        "Lcom/google/android/gms/internal/asw;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:[Lcom/google/android/gms/internal/asw;


# instance fields
.field private b:Ljava/lang/Integer;

.field private c:Lcom/google/android/gms/internal/atk;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/anv;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/asw;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/asw;->c:Lcom/google/android/gms/internal/atk;

    iput-object v0, p0, Lcom/google/android/gms/internal/asw;->X:Lcom/google/android/gms/internal/anx;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/asw;->Y:I

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ans;)Lcom/google/android/gms/internal/asw;
    .locals 6

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->a()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/anv;->a(Lcom/google/android/gms/internal/ans;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/asw;->c:Lcom/google/android/gms/internal/atk;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/atk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/atk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/asw;->c:Lcom/google/android/gms/internal/atk;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/asw;->c:Lcom/google/android/gms/internal/atk;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ans;->a(Lcom/google/android/gms/internal/aob;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->m()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->h()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    :pswitch_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/asw;->b:Ljava/lang/Integer;

    goto :goto_0

    :goto_1
    const/16 v4, 0x2c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum AdFormatType"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ans;->e(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/anv;->a(Lcom/google/android/gms/internal/ans;I)Z

    goto :goto_0

    :cond_4
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b()[Lcom/google/android/gms/internal/asw;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/asw;->a:[Lcom/google/android/gms/internal/asw;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/anz;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/asw;->a:[Lcom/google/android/gms/internal/asw;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/asw;

    sput-object v1, Lcom/google/android/gms/internal/asw;->a:[Lcom/google/android/gms/internal/asw;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/asw;->a:[Lcom/google/android/gms/internal/asw;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/anv;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/asw;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/asw;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/asw;->c:Lcom/google/android/gms/internal/atk;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/asw;->c:Lcom/google/android/gms/internal/atk;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ans;)Lcom/google/android/gms/internal/aob;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/asw;->b(Lcom/google/android/gms/internal/ans;)Lcom/google/android/gms/internal/asw;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/ant;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/asw;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/asw;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/asw;->c:Lcom/google/android/gms/internal/atk;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/asw;->c:Lcom/google/android/gms/internal/atk;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/anv;->a(Lcom/google/android/gms/internal/ant;)V

    return-void
.end method
